### close.cc
```
g++ close.cc -std=c++17 -Weverything -Wno-c++98-compat -lboost_system -g -O0 -o close
```

```bash
./close 1234
nc localhost 1234
```

lldb
```
b 39
```
