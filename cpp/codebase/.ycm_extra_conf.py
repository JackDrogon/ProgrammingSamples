import os
import glob
import ycm_core


# DEBUG
def debug_write(obj):
    f = open("/tmp/ycm_debug", "a")
    f.write(str(obj) + "\n")
    f.flush()
    f.close


# These are the compilation flags that will be used in case there's no
# compilation database set (by default, one is not set).
# CHANGE THIS LIST OF FLAGS. YES, THIS IS THE DROID YOU HAVE BEEN LOOKING FOR.

SYSTEM_HEADERS = [
    '-isystem',
    '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1',
    '-isystem',
    '/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include',
    '-isystem',
    '/usr/local/include',
]

LINUX_SYSTEM_HEADERS = [
    # '-isystem',
    # '/home/xuruiliang/.linuxbrew/opt/gcc@9/include/c++/9.4.0',
    # '-isystem',
    # '/home/xuruiliang/.linuxbrew/opt/gcc@9/include/c++/9.4.0/x86_64-pc-linux-gnu',
    '-isystem',
    '/usr/include',
    '-isystem',
    '/usr/local/include',
    '-isystem',
    '/usr/include/c++/12',
    '-isystem',
    '/usr/include/x86_64-linux-gnu',
]

flags = [
    '-Wall',
    '-Wextra',
    '-Wno-long-long',
    '-Wno-variadic-macros',
    '-fexceptions',
    '-fms-extensions',
    '-DNDEBUG',
    # You 100% do NOT need -DUSE_CLANG_COMPLETER in your flags; only the YCM
    # source code needs it.
    '-DUSE_CLANG_COMPLETER',
    # THIS IS IMPORTANT! Without a "-std=<something>" flag, clang won't know which
    # language to use when compiling headers. So it will guess. Badly. So C++
    # headers will be compiled as C headers. You don't want that so ALWAYS specify
    # a "-std=<something>".
    # For a C project, you would set this to something like 'c99' instead of
    # 'c++11'.
    # '-std=c++1y',
    # ...and the same thing goes for the magic -x option which specifies the
    # language that the files to be compiled are written in. This is mostly
    # relevant for c++ headers.
    # For a C project, you would set this to 'c' instead of 'c++'.
    # '-x',
    # 'c++',

    # This path will only work on OS X, but extra paths that don't exist are not
    # harmful
    '-isystem',
    '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1',
    # '-isystem',
    # '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include',
    '-isystem',
    '/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include',
    '-isystem',
    '/usr/include',
    '-isystem',
    '/usr/local/include',
    '-isystem',
    '/usr/include/c++/4.2.1',
    #'-isystem',
    #'/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.0.2/include',
    '-isystem',
    '/System/Library/Frameworks',
    '-isystem',
    '/Library/Frameworks',
    # Third party libs
    '-I',
    '/usr/local/opt/openssl@1.1/include',
    '-I',
    '/Users/Nepenthe/Source/Github/Company/Google/abseil-cpp',
    '-I',
    '.',
    '-I',
    './include',
    '-I',
    './lib',
    '-I',
    './src',
]

c_flags = [
    '-Weverything',
    '-std=c11',
    '-x',
    'c',
]

cpp_flags = [
    '-Weverything',
    '-Wno-c++98-compat',
    '-Wno-c++98-compat-pedantic',
    '-std=c++20',
    # '-Wc++98-compat',
    '-x',
    'c++',
]

header_flags = [
    '-Weverything',
    '-std=c++1z',
    # '-Wc++98-compat',
    '-Wno-c++98-compat',
    '-Wno-c++98-compat-pedantic',
    '-x',
    'c++',
]

various_languages_flags = {"c": c_flags, "cpp": cpp_flags, "h": header_flags}

# Set this to the absolute path to the folder (NOT the file!) containing the
# compile_commands.json file to use that instead of 'flags'. See here for
# more details: http://clang.llvm.org/docs/JSONCompilationDatabase.html
#
# You can get CMake to generate this file for you by adding:
#   set( CMAKE_EXPORT_COMPILE_COMMANDS 1 )
# to your CMakeLists.txt file.
#
# Most projects will NOT need to set this to anything; you can just change the
# 'flags' list of compilation flags. Notice that YCM itself uses that approach.
compilation_database_folder = '_build/debug'

if os.path.exists(compilation_database_folder):
    database = ycm_core.CompilationDatabase(compilation_database_folder)
else:
    database = None

SOURCE_EXTENSIONS = ['.cpp', '.cxx', '.cc', '.c', '.m', '.mm']


def DirectoryOfThisScript():
    return os.path.dirname(os.path.abspath(__file__))


def MakeRelativePathsInFlagsAbsolute(flags, working_directory):
    if not working_directory:
        return list(flags)
    new_flags = []
    make_next_absolute = False
    path_flags = ['-isystem', '-I', '-iquote', '--sysroot=']
    for flag in flags:
        new_flag = flag

        if make_next_absolute:
            make_next_absolute = False
            if not flag.startswith('/'):
                new_flag = os.path.join(working_directory, flag)

        for path_flag in path_flags:
            if flag == path_flag:
                make_next_absolute = True
                break

            if flag.startswith(path_flag):
                path = flag[len(path_flag):]
                new_flag = path_flag + os.path.join(working_directory, path)
                break

        if new_flag:
            new_flags.append(new_flag)
    return new_flags


def IsHeaderFile(filename):
    extension = os.path.splitext(filename)[1]
    return extension in ['.h', '.hxx', '.hpp', '.hh']


def AddOSRelatedFlags():
    uname = os.uname()
    if uname[0] == "Linux":
        return [
            '-isystem', "/usr/src/linux-headers-" +
            uname[2].rstrip("-generic") + "/include", '-isystem',
            "/home/linuxbrew/.linuxbrew/include"
        ]
    elif uname[0] == "Darwin":
        clang_flags = []
        clang_include_dirs = glob.glob(
            "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/*"
        )
        for dir in clang_include_dirs:
            clang_flags += ['-isystem', dir + "/include"]
        return clang_flags
    else:
        return []


def AddFlagsForLanguageType(filename, flags):
    # SOURCE_EXTENSIONS = [ '.cpp', '.cxx', '.cc', '.c', '.m', '.mm' ]
    extension = os.path.splitext(filename)[1]
    extra_flags = []

    if extension in ['.h']:
        extra_flags = various_languages_flags['h'] + AddOSRelatedFlags()
    if extension in ['.c']:
        extra_flags = various_languages_flags['c'] + AddOSRelatedFlags()
    elif extension in ['.hpp', '.hh', '.ipp', '.cpp', '.cxx', '.cc', '.C']:
        extra_flags = various_languages_flags['cpp'] + AddOSRelatedFlags()

    return LINUX_SYSTEM_HEADERS + flags + extra_flags


def GetCompilationInfoForFile(filename):
    # The compilation_commands.json file generated by CMake does not have entries
    # for header files. So we do our best by asking the db for flags for a
    # corresponding source file, if any. If one exists, the flags for that file
    # should be good enough.
    if IsHeaderFile(filename):
        basename = os.path.splitext(filename)[0]
        for extension in SOURCE_EXTENSIONS:
            replacement_file = basename + extension
            if os.path.exists(replacement_file):
                compilation_info = database.GetCompilationInfoForFile(
                    replacement_file)
                if compilation_info.compiler_flags_:
                    return compilation_info
        return None
    return database.GetCompilationInfoForFile(filename)


class FlagsGenerator():

    def __init__(self):
        pass

    def generate(self):
        return []

    @staticmethod
    def is_header(filename):
        extension = os.path.splitext(filename)[1]
        return extension in ['.h', '.hxx', '.hpp', '.hh']


class OSFlagsGenerator(FlagsGenerator):

    def __init__(self):
        super().__init__()

    def generate(self, filename):
        return self.__system_header() + super().generate()

    def __system_header(self):
        # raise "OSFlagsGenerator:__system_header not NotImplemented"
        raise NotImplementedError


class OSXFlagsGenerator(OSFlagsGenerator):

    def __init__(self):
        super().__init__()

    def __system_header(self):
        system_headers = [
            '-isystem',
            '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1',
            '-isystem',
            '/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include',
            '-isystem',
            '/usr/local/include',
        ]

        clang_flags = []
        clang_include_dirs = glob.glob(
            "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/*"
        )
        for dir in clang_include_dirs:
            clang_flags += ['-isystem', dir + "/include"]

        return system_headers + clang_flags


class LinuxFlagsGenerator(OSFlagsGenerator):

    def __init__(self):
        super().__init__()

    def __system_header(self):
        SYSTEM_HEADERS = [
            '-isystem',
            '/usr/src/linux-headers-' + os.uname()[2].rstrip("-generic") +
            '/include',
            '-isystem',
            '/home/linuxbrew/.linuxbrew/include',
            # '-isystem',
            # '/home/xuruiliang/.linuxbrew/opt/gcc@9/include/c++/9.4.0',
            # '-isystem',
            # '/home/xuruiliang/.linuxbrew/opt/gcc@9/include/c++/9.4.0/x86_64-pc-linux-gnu',
            '-isystem',
            '/usr/include',
            '-isystem',
            '/usr/local/include',
            '-isystem',
            '/usr/include/c++/12',
            '-isystem',
            '/usr/include/x86_64-linux-gnu',
        ]
        return SYSTEM_HEADERS


# OSFlagsGenerator factory
def OSFlagsGeneratorFactory():
    if os.uname()[0] == "Linux":
        return LinuxFlagsGenerator()
    elif os.uname()[0] == "Darwin":
        return OSXFlagsGenerator()
    else:
        return FlagsGenerator()


def Settings(**kwargs):
    filename = kwargs['filename']
    if database:
        # Bear in mind that compilation_info.compiler_flags_ does NOT return a
        # python list, but a "list-like" StringVec object
        compilation_info = GetCompilationInfoForFile(filename)
        if not compilation_info:
            return None

        compiler_flags = compilation_info.compiler_flags_
        for flag in LINUX_SYSTEM_HEADERS:
            compiler_flags.append(flag)

        final_flags = MakeRelativePathsInFlagsAbsolute(
            compiler_flags, compilation_info.compiler_working_dir_)

    else:
        relative_to = DirectoryOfThisScript()
        final_flags = MakeRelativePathsInFlagsAbsolute(
            AddFlagsForLanguageType(filename, flags), relative_to)

    return {'flags': final_flags, 'do_cache': True}
