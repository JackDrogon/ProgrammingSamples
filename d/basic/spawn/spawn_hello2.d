import std.stdio, std.concurrency;

void f1(string str)
{
    writeln(str);
}

void f2(char[] str)
{
    writeln(str);
}

void main()
{
    auto str = "Hello, world";

    // Works:  string is immutable.
    auto tid1 = spawn(&f1, str);

    // Fails:  char[] has mutable aliasing.
    /* auto tid2 = spawn(&f2, str.dup); */
}
