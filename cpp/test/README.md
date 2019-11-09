## Wrong Cases
- bind.cc


## Function memory size
llvm libcxx: 48bytes

```cpp
(lldb) p f1
(std::__1::function<int (int)>) $0 = {
  __buf_ = (__lx = "")
  __f_ = 0x0000000000000000
}
```

gcc libstdc++: 32bytes

```cpp
(function<int (int)>) $0 = {
  _Function_base = {
    _M_functor = {
      _M_unused = {
        _M_object = 0x0000000100000000
        _M_const_object = 0x0000000100000000
        _M_function_pointer = 0x0000000100000000 (a.out`_mh_execute_header)
        _M_member_pointer = 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00
      }
      _M_pod_data = ""
    }
    _M_manager = 0x0000000000000000
  }
  _M_invoker = 0x0000000000000000
}
```
