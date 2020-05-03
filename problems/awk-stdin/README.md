
## 问题
awk在从stdin获得script输入的时候, 使用`awk -f -`, 但是看到`BEGIN` and `END`被运行了，但是中间的代码没有被运行。使用`awk -f FILE`就会被运行

## 复现
运行`test.sh` `test.awk test.sh`看输出

## 解决后
修改top10-history脚本 `/Users/Nepenthe/Program/GitHub/Tools/Common/top10-history`
