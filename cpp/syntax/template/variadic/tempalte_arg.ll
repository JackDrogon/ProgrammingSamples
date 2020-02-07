; ModuleID = './tempalte_arg.cc'
source_filename = "./tempalte_arg.cc"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }>
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::ctype" = type <{ %"class.std::__1::locale::facet", i32*, i8, [7 x i8] }>
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32, [4 x i8] }>
%"class.std::__1::ostreambuf_iterator" = type { %"class.std::__1::basic_streambuf"* }
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"struct.std::__1::iterator" = type { i8 }
%"class.std::__1::__libcpp_compressed_pair_imp" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"class.std::__1::__compressed_pair" = type { %"class.std::__1::__libcpp_compressed_pair_imp" }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::allocator" = type { i8 }
%"class.std::__1::__basic_string_common" = type { i8 }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.0, [23 x i8] }
%union.anon.0 = type { i8 }

@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"ha\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8

; Function Attrs: norecurse ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  store double 1.230000e+00, double* %3, align 8
  %4 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_Z5printIiJA3_cdEERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEES6_RKT_DpRKT0_(%"class.std::__1::basic_ostream"* dereferenceable(160) @_ZNSt3__14coutE, i32* dereferenceable(4) %2, [3 x i8]* dereferenceable(3) @.str, double* dereferenceable(8) %3)
  ret i32 0
}

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_Z5printIiJA3_cdEERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEES6_RKT_DpRKT0_(%"class.std::__1::basic_ostream"* dereferenceable(160), i32* dereferenceable(4), [3 x i8]* dereferenceable(3), double* dereferenceable(8)) #1 {
  %5 = alloca %"class.std::__1::basic_ostream"*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [3 x i8]*, align 8
  %8 = alloca double*, align 8
  store %"class.std::__1::basic_ostream"* %0, %"class.std::__1::basic_ostream"** %5, align 8
  store i32* %1, i32** %6, align 8
  store [3 x i8]* %2, [3 x i8]** %7, align 8
  store double* %3, double** %8, align 8
  %9 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %9, i32 %11)
  %13 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  %14 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %5, align 8
  %15 = load [3 x i8]*, [3 x i8]** %7, align 8
  %16 = load double*, double** %8, align 8
  %17 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_Z5printIA3_cJdEERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEES6_RKT_DpRKT0_(%"class.std::__1::basic_ostream"* dereferenceable(160) %14, [3 x i8]* dereferenceable(3) %15, double* dereferenceable(8) %16)
  ret %"class.std::__1::basic_ostream"* %17
}

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160), i8*) #1 {
  %3 = alloca %"class.std::__1::basic_ostream"*, align 8
  %4 = alloca i8*, align 8
  store %"class.std::__1::basic_ostream"* %0, %"class.std::__1::basic_ostream"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %7)
  %9 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %5, i8* %6, i64 %8)
  ret %"class.std::__1::basic_ostream"* %9
}

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"*, i32) #2

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_Z5printIA3_cJdEERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEES6_RKT_DpRKT0_(%"class.std::__1::basic_ostream"* dereferenceable(160), [3 x i8]* dereferenceable(3), double* dereferenceable(8)) #1 {
  %4 = alloca %"class.std::__1::basic_ostream"*, align 8
  %5 = alloca [3 x i8]*, align 8
  %6 = alloca double*, align 8
  store %"class.std::__1::basic_ostream"* %0, %"class.std::__1::basic_ostream"** %4, align 8
  store [3 x i8]* %1, [3 x i8]** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %4, align 8
  %8 = load [3 x i8]*, [3 x i8]** %5, align 8
  %9 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i32 0, i32 0
  %10 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %7, i8* %9)
  %11 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160) %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  %12 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %4, align 8
  %13 = load double*, double** %6, align 8
  %14 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_Z5printIdERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEES5_RKT_(%"class.std::__1::basic_ostream"* dereferenceable(160) %12, double* dereferenceable(8) %13)
  ret %"class.std::__1::basic_ostream"* %14
}

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160), i8*, i64) #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::__1::ctype"*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %"class.std::__1::locale"*, align 8
  %7 = alloca %"class.std::__1::basic_ios"*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %"class.std::__1::locale", align 8
  %10 = alloca i8*
  %11 = alloca i32
  %12 = alloca %"class.std::__1::basic_ios"*, align 8
  %13 = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %14 = alloca %"class.std::__1::ios_base"*, align 8
  %15 = alloca %"class.std::__1::ios_base"*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %"class.std::__1::basic_ios"*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %"class.std::__1::ios_base"*, align 8
  %20 = alloca %"class.std::__1::basic_ios"*, align 8
  %21 = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %22 = alloca %"class.std::__1::basic_ostream"*, align 8
  %23 = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %24 = alloca %"class.std::__1::basic_ostream"*, align 8
  %25 = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, align 8
  %26 = alloca %"class.std::__1::basic_ostream"*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8
  %30 = alloca i8*
  %31 = alloca i32
  %32 = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %33 = alloca %"class.std::__1::ostreambuf_iterator", align 8
  store %"class.std::__1::basic_ostream"* %0, %"class.std::__1::basic_ostream"** %26, align 8
  store i8* %1, i8** %27, align 8
  store i64 %2, i64* %28, align 8
  %34 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %26, align 8
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %29, %"class.std::__1::basic_ostream"* dereferenceable(160) %34)
          to label %35 unwind label %174

; <label>:35                                      ; preds = %3
  store %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %29, %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %25, align 8
  %36 = load %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"** %25, align 8
  %37 = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 8
  %39 = trunc i8 %38 to i1
  br label %40

; <label>:40                                      ; preds = %35
  br i1 %39, label %41, label %200

; <label>:41                                      ; preds = %40
  %42 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %26, align 8
  store %"class.std::__1::ostreambuf_iterator"* %32, %"class.std::__1::ostreambuf_iterator"** %23, align 8
  store %"class.std::__1::basic_ostream"* %42, %"class.std::__1::basic_ostream"** %24, align 8
  %43 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %23, align 8
  %44 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %24, align 8
  store %"class.std::__1::ostreambuf_iterator"* %43, %"class.std::__1::ostreambuf_iterator"** %21, align 8
  store %"class.std::__1::basic_ostream"* %44, %"class.std::__1::basic_ostream"** %22, align 8
  %45 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %21, align 8
  %46 = bitcast %"class.std::__1::ostreambuf_iterator"* %45 to %"struct.std::__1::iterator"*
  %47 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %45, i32 0, i32 0
  %48 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %22, align 8
  %49 = bitcast %"class.std::__1::basic_ostream"* %48 to i8**
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr i8, i8* %50, i64 -24
  %52 = bitcast i8* %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = bitcast %"class.std::__1::basic_ostream"* %48 to i8*
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  %56 = bitcast i8* %55 to %"class.std::__1::basic_ios"*
  store %"class.std::__1::basic_ios"* %56, %"class.std::__1::basic_ios"** %20, align 8
  %57 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %20, align 8
  %58 = bitcast %"class.std::__1::basic_ios"* %57 to %"class.std::__1::ios_base"*
  store %"class.std::__1::ios_base"* %58, %"class.std::__1::ios_base"** %19, align 8
  %59 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %19, align 8
  %60 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %59, i32 0, i32 6
  %61 = load i8*, i8** %60, align 8
  %62 = bitcast i8* %61 to %"class.std::__1::basic_streambuf"*
  store %"class.std::__1::basic_streambuf"* %62, %"class.std::__1::basic_streambuf"** %47, align 8
  %63 = load i8*, i8** %27, align 8
  %64 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %26, align 8
  %65 = bitcast %"class.std::__1::basic_ostream"* %64 to i8**
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr i8, i8* %66, i64 -24
  %68 = bitcast i8* %67 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = bitcast %"class.std::__1::basic_ostream"* %64 to i8*
  %71 = getelementptr inbounds i8, i8* %70, i64 %69
  %72 = bitcast i8* %71 to %"class.std::__1::ios_base"*
  store %"class.std::__1::ios_base"* %72, %"class.std::__1::ios_base"** %14, align 8
  %73 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %14, align 8
  %74 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  br label %76

; <label>:76                                      ; preds = %41
  %77 = and i32 %75, 176
  %78 = icmp eq i32 %77, 32
  br i1 %78, label %79, label %83

; <label>:79                                      ; preds = %76
  %80 = load i8*, i8** %27, align 8
  %81 = load i64, i64* %28, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  br label %85

; <label>:83                                      ; preds = %76
  %84 = load i8*, i8** %27, align 8
  br label %85

; <label>:85                                      ; preds = %83, %79
  %86 = phi i8* [ %82, %79 ], [ %84, %83 ]
  %87 = load i8*, i8** %27, align 8
  %88 = load i64, i64* %28, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %26, align 8
  %91 = bitcast %"class.std::__1::basic_ostream"* %90 to i8**
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr i8, i8* %92, i64 -24
  %94 = bitcast i8* %93 to i64*
  %95 = load i64, i64* %94, align 8
  %96 = bitcast %"class.std::__1::basic_ostream"* %90 to i8*
  %97 = getelementptr inbounds i8, i8* %96, i64 %95
  %98 = bitcast i8* %97 to %"class.std::__1::ios_base"*
  %99 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %26, align 8
  %100 = bitcast %"class.std::__1::basic_ostream"* %99 to i8**
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr i8, i8* %101, i64 -24
  %103 = bitcast i8* %102 to i64*
  %104 = load i64, i64* %103, align 8
  %105 = bitcast %"class.std::__1::basic_ostream"* %99 to i8*
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  %107 = bitcast i8* %106 to %"class.std::__1::basic_ios"*
  store %"class.std::__1::basic_ios"* %107, %"class.std::__1::basic_ios"** %12, align 8
  %108 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %12, align 8
  %109 = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #8
  %110 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %108, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %109, i32 %111) #8
  br i1 %112, label %113, label %140

; <label>:113                                     ; preds = %85
  store %"class.std::__1::basic_ios"* %108, %"class.std::__1::basic_ios"** %7, align 8
  store i8 32, i8* %8, align 1
  %114 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %7, align 8
  %115 = bitcast %"class.std::__1::basic_ios"* %114 to %"class.std::__1::ios_base"*
  invoke void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret %9, %"class.std::__1::ios_base"* %115)
          to label %116 unwind label %178

; <label>:116                                     ; preds = %113
  store %"class.std::__1::locale"* %9, %"class.std::__1::locale"** %6, align 8
  %117 = load %"class.std::__1::locale"*, %"class.std::__1::locale"** %6, align 8
  %118 = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* %117, %"class.std::__1::locale::id"* dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
          to label %119 unwind label %129

; <label>:119                                     ; preds = %116
  %120 = bitcast %"class.std::__1::locale::facet"* %118 to %"class.std::__1::ctype"*
  %121 = load i8, i8* %8, align 1
  store %"class.std::__1::ctype"* %120, %"class.std::__1::ctype"** %4, align 8
  store i8 %121, i8* %5, align 1
  %122 = load %"class.std::__1::ctype"*, %"class.std::__1::ctype"** %4, align 8
  %123 = bitcast %"class.std::__1::ctype"* %122 to i8 (%"class.std::__1::ctype"*, i8)***
  %124 = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %123, align 8
  %125 = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %124, i64 7
  %126 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %125, align 8
  %127 = load i8, i8* %5, align 1
  %128 = invoke signext i8 %126(%"class.std::__1::ctype"* %122, i8 signext %127)
          to label %137 unwind label %129

; <label>:129                                     ; preds = %119, %116
  %130 = landingpad { i8*, i32 }
          cleanup
          catch i8* null
  %131 = extractvalue { i8*, i32 } %130, 0
  store i8* %131, i8** %10, align 8
  %132 = extractvalue { i8*, i32 } %130, 1
  store i32 %132, i32* %11, align 4
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %9) #8
  %133 = load i8*, i8** %10, align 8
  %134 = load i32, i32* %11, align 4
  %135 = insertvalue { i8*, i32 } undef, i8* %133, 0
  %136 = insertvalue { i8*, i32 } %135, i32 %134, 1
  br label %180

; <label>:137                                     ; preds = %119
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %9) #8
  %138 = sext i8 %128 to i32
  %139 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %108, i32 0, i32 2
  store i32 %138, i32* %139, align 8
  br label %140

; <label>:140                                     ; preds = %85, %137
  %141 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %108, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = trunc i32 %142 to i8
  br label %144

; <label>:144                                     ; preds = %140
  %145 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %32, i32 0, i32 0
  %146 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %145, align 8
  %147 = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %146, i8* %63, i8* %86, i8* %89, %"class.std::__1::ios_base"* dereferenceable(136) %98, i8 signext %143)
          to label %148 unwind label %178

; <label>:148                                     ; preds = %144
  %149 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %33, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* %147, %"class.std::__1::basic_streambuf"** %149, align 8
  store %"class.std::__1::ostreambuf_iterator"* %33, %"class.std::__1::ostreambuf_iterator"** %13, align 8
  %150 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %13, align 8
  %151 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %150, i32 0, i32 0
  %152 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %151, align 8
  %153 = icmp eq %"class.std::__1::basic_streambuf"* %152, null
  br i1 %153, label %154, label %199

; <label>:154                                     ; preds = %148
  %155 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %26, align 8
  %156 = bitcast %"class.std::__1::basic_ostream"* %155 to i8**
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr i8, i8* %157, i64 -24
  %159 = bitcast i8* %158 to i64*
  %160 = load i64, i64* %159, align 8
  %161 = bitcast %"class.std::__1::basic_ostream"* %155 to i8*
  %162 = getelementptr inbounds i8, i8* %161, i64 %160
  %163 = bitcast i8* %162 to %"class.std::__1::basic_ios"*
  store %"class.std::__1::basic_ios"* %163, %"class.std::__1::basic_ios"** %17, align 8
  store i32 5, i32* %18, align 4
  %164 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %17, align 8
  %165 = bitcast %"class.std::__1::basic_ios"* %164 to %"class.std::__1::ios_base"*
  %166 = load i32, i32* %18, align 4
  store %"class.std::__1::ios_base"* %165, %"class.std::__1::ios_base"** %15, align 8
  store i32 %166, i32* %16, align 4
  %167 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %15, align 8
  %168 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %16, align 4
  %171 = or i32 %169, %170
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %167, i32 %171)
          to label %172 unwind label %178

; <label>:172                                     ; preds = %154
  br label %173

; <label>:173                                     ; preds = %172
  br label %199

; <label>:174                                     ; preds = %3
  %175 = landingpad { i8*, i32 }
          catch i8* null
  %176 = extractvalue { i8*, i32 } %175, 0
  store i8* %176, i8** %30, align 8
  %177 = extractvalue { i8*, i32 } %175, 1
  store i32 %177, i32* %31, align 4
  br label %184

; <label>:178                                     ; preds = %113, %154, %144
  %179 = landingpad { i8*, i32 }
          catch i8* null
  br label %180

; <label>:180                                     ; preds = %129, %178
  %181 = phi { i8*, i32 } [ %179, %178 ], [ %136, %129 ]
  %182 = extractvalue { i8*, i32 } %181, 0
  store i8* %182, i8** %30, align 8
  %183 = extractvalue { i8*, i32 } %181, 1
  store i32 %183, i32* %31, align 4
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %29) #8
  br label %184

; <label>:184                                     ; preds = %180, %174
  %185 = load i8*, i8** %30, align 8
  %186 = call i8* @__cxa_begin_catch(i8* %185) #8
  %187 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %26, align 8
  %188 = bitcast %"class.std::__1::basic_ostream"* %187 to i8**
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr i8, i8* %189, i64 -24
  %191 = bitcast i8* %190 to i64*
  %192 = load i64, i64* %191, align 8
  %193 = bitcast %"class.std::__1::basic_ostream"* %187 to i8*
  %194 = getelementptr inbounds i8, i8* %193, i64 %192
  %195 = bitcast i8* %194 to %"class.std::__1::ios_base"*
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %195)
          to label %196 unwind label %201

; <label>:196                                     ; preds = %184
  call void @__cxa_end_catch()
  br label %197

; <label>:197                                     ; preds = %196, %200
  %198 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %26, align 8
  ret %"class.std::__1::basic_ostream"* %198

; <label>:199                                     ; preds = %173, %148
  br label %200

; <label>:200                                     ; preds = %199, %40
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %29) #8
  br label %197

; <label>:201                                     ; preds = %184
  %202 = landingpad { i8*, i32 }
          cleanup
  %203 = extractvalue { i8*, i32 } %202, 0
  store i8* %203, i8** %30, align 8
  %204 = extractvalue { i8*, i32 } %202, 1
  store i32 %204, i32* %31, align 4
  invoke void @__cxa_end_catch()
          to label %205 unwind label %211

; <label>:205                                     ; preds = %201
  br label %206

; <label>:206                                     ; preds = %205
  %207 = load i8*, i8** %30, align 8
  %208 = load i32, i32* %31, align 4
  %209 = insertvalue { i8*, i32 } undef, i8* %207, 0
  %210 = insertvalue { i8*, i32 } %209, i32 %208, 1
  resume { i8*, i32 } %210

; <label>:211                                     ; preds = %201
  %212 = landingpad { i8*, i32 }
          catch i8* null
  %213 = extractvalue { i8*, i32 } %212, 0
  call void @__clang_call_terminate(i8* %213) #9
  unreachable
}

; Function Attrs: inlinehint ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8*) #3 align 2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strlen(i8* %3)
  ret i64 %4
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"*, i8*, i8*, i8*, %"class.std::__1::ios_base"* dereferenceable(136), i8 signext) #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"class.std::__1::basic_streambuf"*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %12 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %13 = alloca %"class.std::__1::basic_string"*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %17 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %18 = alloca %"class.std::__1::basic_string"*, align 8
  %19 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %20 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %21 = alloca %"class.std::__1::basic_string"*, align 8
  %22 = alloca %"class.std::__1::basic_string"*, align 8
  %23 = alloca %"class.std::__1::basic_string"*, align 8
  %24 = alloca %"class.std::__1::allocator"*, align 8
  %25 = alloca %"class.std::__1::__libcpp_compressed_pair_imp"*, align 8
  %26 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %27 = alloca %"class.std::__1::__compressed_pair"*, align 8
  %28 = alloca %"class.std::__1::basic_string"*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8, align 1
  %31 = alloca %"class.std::__1::basic_string"*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8, align 1
  %34 = alloca %"class.std::__1::basic_streambuf"*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i64, align 8
  %37 = alloca %"class.std::__1::basic_streambuf"*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i64, align 8
  %40 = alloca %"class.std::__1::ios_base"*, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca %"class.std::__1::ios_base"*, align 8
  %44 = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %45 = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %46 = alloca i8*, align 8
  %47 = alloca i8*, align 8
  %48 = alloca i8*, align 8
  %49 = alloca %"class.std::__1::ios_base"*, align 8
  %50 = alloca i8, align 1
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca %"class.std::__1::basic_string", align 8
  %55 = alloca i8*
  %56 = alloca i32
  %57 = alloca i32
  %58 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %45, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* %0, %"class.std::__1::basic_streambuf"** %58, align 8
  store i8* %1, i8** %46, align 8
  store i8* %2, i8** %47, align 8
  store i8* %3, i8** %48, align 8
  store %"class.std::__1::ios_base"* %4, %"class.std::__1::ios_base"** %49, align 8
  store i8 %5, i8* %50, align 1
  %59 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %45, i32 0, i32 0
  %60 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %59, align 8
  %61 = icmp eq %"class.std::__1::basic_streambuf"* %60, null
  br i1 %61, label %62, label %65

; <label>:62                                      ; preds = %6
  %63 = bitcast %"class.std::__1::ostreambuf_iterator"* %44 to i8*
  %64 = bitcast %"class.std::__1::ostreambuf_iterator"* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 8, i32 8, i1 false)
  br label %241

; <label>:65                                      ; preds = %6
  %66 = load i8*, i8** %48, align 8
  %67 = load i8*, i8** %46, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  store i64 %70, i64* %51, align 8
  %71 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %49, align 8
  store %"class.std::__1::ios_base"* %71, %"class.std::__1::ios_base"** %43, align 8
  %72 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %43, align 8
  %73 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %52, align 8
  %75 = load i64, i64* %52, align 8
  %76 = load i64, i64* %51, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %82

; <label>:78                                      ; preds = %65
  %79 = load i64, i64* %51, align 8
  %80 = load i64, i64* %52, align 8
  %81 = sub nsw i64 %80, %79
  store i64 %81, i64* %52, align 8
  br label %83

; <label>:82                                      ; preds = %65
  store i64 0, i64* %52, align 8
  br label %83

; <label>:83                                      ; preds = %82, %78
  %84 = load i8*, i8** %47, align 8
  %85 = load i8*, i8** %46, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  store i64 %88, i64* %53, align 8
  %89 = load i64, i64* %53, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %111

; <label>:91                                      ; preds = %83
  %92 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %45, i32 0, i32 0
  %93 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %92, align 8
  %94 = load i8*, i8** %46, align 8
  %95 = load i64, i64* %53, align 8
  store %"class.std::__1::basic_streambuf"* %93, %"class.std::__1::basic_streambuf"** %34, align 8
  store i8* %94, i8** %35, align 8
  store i64 %95, i64* %36, align 8
  %96 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %34, align 8
  %97 = bitcast %"class.std::__1::basic_streambuf"* %96 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %98 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %97, align 8
  %99 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %98, i64 12
  %100 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %99, align 8
  %101 = load i8*, i8** %35, align 8
  %102 = load i64, i64* %36, align 8
  %103 = call i64 %100(%"class.std::__1::basic_streambuf"* %96, i8* %101, i64 %102)
  %104 = load i64, i64* %53, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %110

; <label>:106                                     ; preds = %91
  %107 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %45, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %107, align 8
  %108 = bitcast %"class.std::__1::ostreambuf_iterator"* %44 to i8*
  %109 = bitcast %"class.std::__1::ostreambuf_iterator"* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 8, i32 8, i1 false)
  br label %241

; <label>:110                                     ; preds = %91
  br label %111

; <label>:111                                     ; preds = %110, %83
  %112 = load i64, i64* %52, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %203

; <label>:114                                     ; preds = %111
  %115 = load i64, i64* %52, align 8
  %116 = load i8, i8* %50, align 1
  store %"class.std::__1::basic_string"* %54, %"class.std::__1::basic_string"** %31, align 8
  store i64 %115, i64* %32, align 8
  store i8 %116, i8* %33, align 1
  %117 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %31, align 8
  %118 = load i64, i64* %32, align 8
  %119 = load i8, i8* %33, align 1
  store %"class.std::__1::basic_string"* %117, %"class.std::__1::basic_string"** %28, align 8
  store i64 %118, i64* %29, align 8
  store i8 %119, i8* %30, align 1
  %120 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %28, align 8
  %121 = bitcast %"class.std::__1::basic_string"* %120 to %"class.std::__1::__basic_string_common"*
  %122 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %120, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %122, %"class.std::__1::__compressed_pair"** %27, align 8
  %123 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %27, align 8
  store %"class.std::__1::__compressed_pair"* %123, %"class.std::__1::__compressed_pair"** %26, align 8
  %124 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %26, align 8
  %125 = bitcast %"class.std::__1::__compressed_pair"* %124 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %125, %"class.std::__1::__libcpp_compressed_pair_imp"** %25, align 8
  %126 = load %"class.std::__1::__libcpp_compressed_pair_imp"*, %"class.std::__1::__libcpp_compressed_pair_imp"** %25, align 8
  %127 = bitcast %"class.std::__1::__libcpp_compressed_pair_imp"* %126 to %"class.std::__1::allocator"*
  store %"class.std::__1::allocator"* %127, %"class.std::__1::allocator"** %24, align 8
  %128 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %24, align 8
  %129 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp", %"class.std::__1::__libcpp_compressed_pair_imp"* %126, i32 0, i32 0
  %130 = bitcast %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %129 to i8*
  call void @llvm.memset.p0i8.i64(i8* %130, i8 0, i64 24, i32 8, i1 false) #8
  %131 = load i64, i64* %29, align 8
  %132 = load i8, i8* %30, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"* %120, i64 %131, i8 signext %132)
  %133 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %45, i32 0, i32 0
  %134 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %133, align 8
  store %"class.std::__1::basic_string"* %54, %"class.std::__1::basic_string"** %23, align 8
  %135 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %23, align 8
  store %"class.std::__1::basic_string"* %135, %"class.std::__1::basic_string"** %22, align 8
  %136 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %22, align 8
  store %"class.std::__1::basic_string"* %136, %"class.std::__1::basic_string"** %21, align 8
  %137 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %21, align 8
  %138 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %137, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %138, %"class.std::__1::__compressed_pair"** %20, align 8
  %139 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %20, align 8
  %140 = bitcast %"class.std::__1::__compressed_pair"* %139 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %140, %"class.std::__1::__libcpp_compressed_pair_imp"** %19, align 8
  %141 = load %"class.std::__1::__libcpp_compressed_pair_imp"*, %"class.std::__1::__libcpp_compressed_pair_imp"** %19, align 8
  %142 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp", %"class.std::__1::__libcpp_compressed_pair_imp"* %141, i32 0, i32 0
  %143 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %142, i32 0, i32 0
  %144 = bitcast %union.anon* %143 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %145 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %144, i32 0, i32 0
  %146 = bitcast %union.anon.0* %145 to i8*
  %147 = load i8, i8* %146, align 8
  %148 = zext i8 %147 to i32
  %149 = and i32 %148, 1
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %162

; <label>:151                                     ; preds = %114
  store %"class.std::__1::basic_string"* %136, %"class.std::__1::basic_string"** %13, align 8
  %152 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %13, align 8
  %153 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %152, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %153, %"class.std::__1::__compressed_pair"** %12, align 8
  %154 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %12, align 8
  %155 = bitcast %"class.std::__1::__compressed_pair"* %154 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %155, %"class.std::__1::__libcpp_compressed_pair_imp"** %11, align 8
  %156 = load %"class.std::__1::__libcpp_compressed_pair_imp"*, %"class.std::__1::__libcpp_compressed_pair_imp"** %11, align 8
  %157 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp", %"class.std::__1::__libcpp_compressed_pair_imp"* %156, i32 0, i32 0
  %158 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %157, i32 0, i32 0
  %159 = bitcast %union.anon* %158 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"*
  %160 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long"* %159, i32 0, i32 2
  %161 = load i8*, i8** %160, align 8
  br label %175

; <label>:162                                     ; preds = %114
  store %"class.std::__1::basic_string"* %136, %"class.std::__1::basic_string"** %18, align 8
  %163 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %18, align 8
  %164 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %163, i32 0, i32 0
  store %"class.std::__1::__compressed_pair"* %164, %"class.std::__1::__compressed_pair"** %17, align 8
  %165 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %17, align 8
  %166 = bitcast %"class.std::__1::__compressed_pair"* %165 to %"class.std::__1::__libcpp_compressed_pair_imp"*
  store %"class.std::__1::__libcpp_compressed_pair_imp"* %166, %"class.std::__1::__libcpp_compressed_pair_imp"** %16, align 8
  %167 = load %"class.std::__1::__libcpp_compressed_pair_imp"*, %"class.std::__1::__libcpp_compressed_pair_imp"** %16, align 8
  %168 = getelementptr inbounds %"class.std::__1::__libcpp_compressed_pair_imp", %"class.std::__1::__libcpp_compressed_pair_imp"* %167, i32 0, i32 0
  %169 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep"* %168, i32 0, i32 0
  %170 = bitcast %union.anon* %169 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %171 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %170, i32 0, i32 1
  %172 = getelementptr inbounds [23 x i8], [23 x i8]* %171, i64 0, i64 0
  store i8* %172, i8** %15, align 8
  %173 = load i8*, i8** %15, align 8
  store i8* %173, i8** %14, align 8
  %174 = load i8*, i8** %14, align 8
  br label %175

; <label>:175                                     ; preds = %151, %162
  %176 = phi i8* [ %161, %151 ], [ %174, %162 ]
  store i8* %176, i8** %10, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = load i64, i64* %52, align 8
  store %"class.std::__1::basic_streambuf"* %134, %"class.std::__1::basic_streambuf"** %7, align 8
  store i8* %177, i8** %8, align 8
  store i64 %178, i64* %9, align 8
  %179 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %7, align 8
  %180 = bitcast %"class.std::__1::basic_streambuf"* %179 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %181 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %180, align 8
  %182 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %181, i64 12
  %183 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %182, align 8
  %184 = load i8*, i8** %8, align 8
  %185 = load i64, i64* %9, align 8
  %186 = invoke i64 %183(%"class.std::__1::basic_streambuf"* %179, i8* %184, i64 %185)
          to label %187 unwind label %195

; <label>:187                                     ; preds = %175
  br label %188

; <label>:188                                     ; preds = %187
  %189 = load i64, i64* %52, align 8
  %190 = icmp ne i64 %186, %189
  br i1 %190, label %191, label %199

; <label>:191                                     ; preds = %188
  %192 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %45, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %192, align 8
  %193 = bitcast %"class.std::__1::ostreambuf_iterator"* %44 to i8*
  %194 = bitcast %"class.std::__1::ostreambuf_iterator"* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %193, i8* %194, i64 8, i32 8, i1 false)
  store i32 1, i32* %57, align 4
  br label %200

; <label>:195                                     ; preds = %175
  %196 = landingpad { i8*, i32 }
          cleanup
  %197 = extractvalue { i8*, i32 } %196, 0
  store i8* %197, i8** %55, align 8
  %198 = extractvalue { i8*, i32 } %196, 1
  store i32 %198, i32* %56, align 4
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %54) #8
  br label %244

; <label>:199                                     ; preds = %188
  store i32 0, i32* %57, align 4
  br label %200

; <label>:200                                     ; preds = %199, %191
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %54) #8
  %201 = load i32, i32* %57, align 4
  switch i32 %201, label %249 [
    i32 0, label %202
    i32 1, label %241
  ]

; <label>:202                                     ; preds = %200
  br label %203

; <label>:203                                     ; preds = %202, %111
  %204 = load i8*, i8** %48, align 8
  %205 = load i8*, i8** %47, align 8
  %206 = ptrtoint i8* %204 to i64
  %207 = ptrtoint i8* %205 to i64
  %208 = sub i64 %206, %207
  store i64 %208, i64* %53, align 8
  %209 = load i64, i64* %53, align 8
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %231

; <label>:211                                     ; preds = %203
  %212 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %45, i32 0, i32 0
  %213 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %212, align 8
  %214 = load i8*, i8** %47, align 8
  %215 = load i64, i64* %53, align 8
  store %"class.std::__1::basic_streambuf"* %213, %"class.std::__1::basic_streambuf"** %37, align 8
  store i8* %214, i8** %38, align 8
  store i64 %215, i64* %39, align 8
  %216 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %37, align 8
  %217 = bitcast %"class.std::__1::basic_streambuf"* %216 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %218 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %217, align 8
  %219 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %218, i64 12
  %220 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %219, align 8
  %221 = load i8*, i8** %38, align 8
  %222 = load i64, i64* %39, align 8
  %223 = call i64 %220(%"class.std::__1::basic_streambuf"* %216, i8* %221, i64 %222)
  %224 = load i64, i64* %53, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %230

; <label>:226                                     ; preds = %211
  %227 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %45, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %227, align 8
  %228 = bitcast %"class.std::__1::ostreambuf_iterator"* %44 to i8*
  %229 = bitcast %"class.std::__1::ostreambuf_iterator"* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %228, i8* %229, i64 8, i32 8, i1 false)
  br label %241

; <label>:230                                     ; preds = %211
  br label %231

; <label>:231                                     ; preds = %230, %203
  %232 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %49, align 8
  store %"class.std::__1::ios_base"* %232, %"class.std::__1::ios_base"** %40, align 8
  store i64 0, i64* %41, align 8
  %233 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %40, align 8
  %234 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %42, align 8
  %236 = load i64, i64* %41, align 8
  %237 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %233, i32 0, i32 3
  store i64 %236, i64* %237, align 8
  %238 = load i64, i64* %42, align 8
  %239 = bitcast %"class.std::__1::ostreambuf_iterator"* %44 to i8*
  %240 = bitcast %"class.std::__1::ostreambuf_iterator"* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %239, i8* %240, i64 8, i32 8, i1 false)
  br label %241

; <label>:241                                     ; preds = %231, %226, %200, %106, %62
  %242 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %44, i32 0, i32 0
  %243 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %242, align 8
  ret %"class.std::__1::basic_streambuf"* %243

; <label>:244                                     ; preds = %195
  %245 = load i8*, i8** %55, align 8
  %246 = load i32, i32* %56, align 4
  %247 = insertvalue { i8*, i32 } undef, i8* %245, 0
  %248 = insertvalue { i8*, i32 } %247, i32 %246, 1
  resume { i8*, i32 } %248

; <label>:249                                     ; preds = %200
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) #4

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) #2

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #5 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #8
  call void @_ZSt9terminatev() #9
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind
declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"*) #4

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32, i32) #7 align 2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %5, %6
  ret i1 %7
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE3eofEv() #7 align 2 {
  ret i32 -1
}

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) #2

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) #4

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) #2

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) #2

declare i64 @strlen(i8*) #2

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_Z5printIdERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEES5_RKT_(%"class.std::__1::basic_ostream"* dereferenceable(160), double* dereferenceable(8)) #1 {
  %3 = alloca %"class.std::__1::basic_ostream"*, align 8
  %4 = alloca double*, align 8
  store %"class.std::__1::basic_ostream"* %0, %"class.std::__1::basic_ostream"** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %3, align 8
  %6 = load double*, double** %4, align 8
  %7 = load double, double* %6, align 8
  %8 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(%"class.std::__1::basic_ostream"* %5, double %7)
  %9 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c(%"class.std::__1::basic_ostream"* dereferenceable(160) %8, i8 signext 10)
  ret %"class.std::__1::basic_ostream"* %9
}

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c(%"class.std::__1::basic_ostream"* dereferenceable(160), i8 signext) #1 {
  %3 = alloca %"class.std::__1::basic_ostream"*, align 8
  %4 = alloca i8, align 1
  store %"class.std::__1::basic_ostream"* %0, %"class.std::__1::basic_ostream"** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %3, align 8
  %6 = call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160) %5, i8* %4, i64 1)
  ret %"class.std::__1::basic_ostream"* %6
}

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(%"class.std::__1::basic_ostream"*, double) #2

attributes #0 = { norecurse ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline noreturn nounwind }
attributes #6 = { argmemonly nounwind }
attributes #7 = { inlinehint nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 8.0.0 (clang-800.0.38)"}
