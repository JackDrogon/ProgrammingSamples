int first(int[] arr)
{
    return arr[0];
}

int[] addone(int[] arr)
{
    int[] result;
    foreach (value; arr) {
        result ~= value + 1;
    }
    return result;
}

void main()
{
    auto a = [0, 1, 2, 3];

    // all the following are correct and equivalent
    int b = first(a);
    int c = a.first();

    // chaining
    int[] e = a.addone().addone();
}
