"""class scope module: class scope demonstration module."""
module_variable = "module variable: module_variable"


def module_function():
    return "module function (can be used like a class method in " \
           "other languages): module_function()"


class SuperClass:
    superclass_class_variable = "superclass class variable: self.superclass_class_variable"
    __private_superclass_class_variable = "private superclass class variable: no access"

    def __init__(self):
        self.superclass_instance_variable = "superclass instance variable: self.superclass_instance_variable " \
                   "(but use SuperClass.superclass_instance_variable for assignment)"
        self.__private_superclass_instance_variable = "private superclass instance variable: " \
                       "no access"

    def superclass_method(self):
        return "superclass method: self.superclass_method()"

    def __superclass_private_method(self):
        return "superclass private method: no access"


class C(SuperClass):
    class_variable = "class variable: self.class_variable (but use C.class_variable for assignment)"
    __class_private_variable = "class private variable: self.__class_private_variable (but use C.__class_private_variable " \
            "for assignment)"

    def __init__(self):
        SuperClass.__init__(self)
        self.__private_instance_variable = "private instance variable: self.__private_instance_variable"

    def method2(self):
        return "method: self.method2()"

    def __private_method(self):
        return "private method: self.__private_method()"

    def method(self, p="parameter: p"):
        local_variable = "local variable: local_variable"
        self.instance_variable = "instance variable: self.instance_variable"
        print("Access local, global and built-in " \
              "namespaces directly")
        print("local namespace:", list(locals().keys()))
        print(p)  #A

        print(local_variable)  #B
        print("global namespace:", list(globals().keys()))

        print(module_variable)  #C

        print(module_function())  #D
        print("Access instance, class, and superclass namespaces " \


              "through 'self'")
        print("Instance namespace:", dir(self))

        print(self.instance_variable)  #E

        print(self.__private_instance_variable)  #F

        print(self.superclass_instance_variable)  #G
        print("Class namespace:", dir(C))
        print(self.class_variable)  #H

        print(self.method2())  #I

        print(self.__class_private_variable)  #J

        print(self.__private_method())  #K
        print("Superclass namespace:", dir(SuperClass))
        print(self.superclass_method())  #L

        print(self.superclass_class_variable)  #M
