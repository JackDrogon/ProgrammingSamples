#!/usr/bin/env ruby
# -*- coding:utf-8 -*-


#初始化
city = Array.new
city[0] = "北京"
city[1] = "上海"
city[2] = "广州"
p city                                  #=> ["北京", "上海", "广州"]

city = %w(北京 上海 广州)
p city                                  #=> ["北京", "上海", "广州"]

#使用split函数进行分隔
city = '北京,上海,广州'.split(',')
p city                                            #=> ["北京", "上海", "广州"]

#使用%W{...}将字符串转换成数组
str = "深圳"
city_1 = %W{北京  上海  广州 #{str}}

p city_1                                          #=>["北京", "上海", "广州", "深圳"]

#使用%w{...}进行转换
str = "深圳"
city_2 = %w{北京  上海  广州 #{str}}
p city_2                                          #=>["北京", "上海", "广州", "\#{str}"]

# Range
r = 1..5
#使用to_a、entries将范围类型数据转换成数组
p r.to_a                                          # Array， to_a等同于entries #=> [1, 2, 3, 4, 5]
p r.entries                                       #=> [1, 2, 3, 4, 5]

r = 'a'..'e'
p r.to_a                                          #=> ["a", "b", "c", "d", "e"]

#基本操作

#数组的长度会按需要自动增加

city = Array.new
puts "数组的长度为：" + city.size.to_s             #0

city[2] = "香港"
puts "数组的长度为：" + city.size.to_s             #3

p city                                            #=> [nil, nil, "香港"]

city = ["北京", "上海", "广州", "深圳"]
#对一个元素赋值
city[4] = "香港"

#得到数组长度
puts "数组的长度为：" + city.size.to_s             #=> 数组的长度为：5
puts "数组的长度为：" + city.length.to_s           #5
puts "数组的长度为：" + city.count.to_s            #5
p city                                            #=> ["北京", "上海", "广州", "深圳", "香港"]

#获取某一元素
puts "第二个元素为：" + city[1]                    #上海
puts "倒数第二个元素为：" + city[-2]               #深圳
college = ["北京大学", "清华大学"]
college.unshift("浙江大学", "复旦大学")        #向数组头部添加元素列表
college.push("南京大学", "武汉大学")           #向数组尾部添加元素列表
college << "南开大学"                          #向数组尾部添加一个元素

puts college.size.to_s                        #=> 7
p college                                     #=> ["浙江大学", "复旦大学", "北京大学", "清华大学", "南京大学", "武汉大学", "南开大学"]

#获取数组第一个元素，first(n),取前n个元素
p college.first                               #=> "浙江大学"
p college.first(3)                            #=> ["浙江大学", "复旦大学", "北京大学"]

#获取数组最后一个元素，last(n),取后n个元素
p college.last                                #=> "南开大学"
p college.last(3)                             #=> ["南京大学", "武汉大学", "南开大学"]
puts college.shift                            #删除并获取数组第一个元素
puts college.pop                              #删除并获取数组最后一个元素，pop和push组合起来可以把一个Array直接当成Stack
puts college.size.to_s                        #=> 5

p college                                     #=> ["复旦大学", "北京大学", "清华大学", "南京大学", "武汉大学"]
p college[2,3]                                #截取从索引2开始，长度为3的元素列表
p college[2..3]                               #截取从索引2开始，到索引3的元素列表
p college[2...3]                              #截取从索引2开始，到索引3(不包括)的元素列表

city_1 = ["北京", "上海", "广州"]
city_2 = ["香港", "澳门"]
city_3 = city_1 + city_2
puts city_3.size.to_s                         #=> 5

#两数组相连 +/concat
city_1.concat(city_2)
puts city_1.size.to_s                         #=> 5

#a.concat(b)，连结，得到a中所有数据和b中所有数据组成的数组，并保存在a中，a变b不变
p ["北京", "上海", "广州"].concat(["广州", "香港", "澳门"])                    #=> ["北京", "上海", "广州", "广州", "香港", "澳门"]

#a + b，和集，得到a中所有数据和b中所有数据组成的数组，a、b均不变
p ["北京", "上海", "广州"] + ["广州", "香港", "澳门"]                          #=> ["北京", "上海", "广州", "广州", "香港", "澳门"]

#a - b，差集，得到由a中元素去除同时存在于a数组和b数组中的元素后剩余元素组成的数组
p ["北京", "上海", "广州"] - ["北京", "香港", "澳门"]                          #=> ["上海", "广州"]

#p&b，交集，取两个数组中都存在的元素，等于 a - (a - b)和b - (b - a)
p (["北京", "上海", "广州"] & ["北京", "香港", "澳门"])                        #=> ["北京"]

#a|b，并集，合并两个数组，并保证元素的唯一性，等于(a - b) + (b - a) + a&b
p (["北京", "上海", "上海", "广州"] | ["北京", "香港", "澳门"])                #=> ["北京", "上海", "广州", "香港", "澳门"]

#include?(obj)，判断数组元素中是否包含指定对象
citys = ["北京", "上海", "广州", "香港", "澳门"]
puts citys.include? "上海"                                      #=> true

#delete(X)，删除数组中所有与X相同的元素， 返回X
citys = ["北京", "上海", "广州", "北京", "香港", "澳门"]
p citys.delete("北京")                                          #=> "北京"

p citys                                                         #=> ["上海", "广州", "香港", "澳门"]

#delete_at(n)，删除第n个元素，返回被删除的元素对象
citys = ["北京", "上海", "广州", "北京", "香港", "澳门"]
p citys.delete_at(3)                                            #=> "北京"

p citys                                                         #=> ["北京", "上海", "广州", "香港", "澳门"]

#delete_if，删除满足条件的元素，返回处理后的原数组
abc = [ "a", "b", "b", "b", "c" ]
p abc.delete_if {|x| x >= "b" }                                 #=> ["a"]


#slice/each_slice/each_cons

#slice(m, n)返回原数组中下标为m到下标为n之间的元素组成的数组
#slice!(m, n)，同时改变原数组，从原数组中删除返回的元素

citys = ["北京", "上海", "广州", "香港", "澳门"]
p citys.slice(1, 3)                                             #=> ["上海", "广州", "香港"]
p citys                                                         #=> ["北京", "上海", "广州", "香港", "澳门"]
p citys.slice!(1, 3)                                            #=> ["上海", "广州", "香港"]
p citys                                                         #=> ["北京", "澳门"]

#each_slice，迭代取出间隔分割的数组，返回nil
citys = ["北京", "上海", "广州", "香港", "澳门"]
citys.each_slice(2){|city|
  p city
}
#=> ["北京", "上海"]
#=> ["广州", "香港"]
#=> ["澳门"]

#each_cons，迭代取出滑动分组的数组，返回nil
citys = ["北京", "上海", "广州", "香港", "澳门"]
citys.each_cons(2){|city|
  p city
}
#=> ["北京", "上海"]
#=> ["上海", "广州"]
#=> ["广州", "香港"]
#=> ["香港", "澳门"]


#insert(n, obj)，在某序列前插入元素对象，改变原数组
citys = ["北京", "上海", "广州", "香港", "澳门"]
p citys.insert(2, "2")                                          #=> ["北京", "上海", "2", "广州", "香港", "澳门"]
p citys                                                         #=> ["北京", "上海", "2", "广州", "香港", "澳门"]

#a[n..m]，选择改变数组
citys = ["北京", "上海", "广州", "香港", "澳门"]
citys[1..3] = [1, 2, 3]
p citys                                                         #=> ["北京", 1, 2, 3, "澳门"]


#Array.flatten，将数组中类型为数组的元素中的所有元素取出插入原数组中
#重复这个操作，直到原数组中所有的元素的数据类型均不为数组
#Array.flatten(n)，重复n次转变操作，结束后数组中元素仍可能为数组
nums = [[1, 2], [[2, 3], [3, 4]], 6]
p nums.flatten               #=> [1, 2, 2, 3, 3, 4, 6]

s = [ 1, 2, 3 ]           # [1, 2, 3]
t = [ 4, 5, 6, [7, 8] ]   # [4, 5, 6, [7, 8]]
a = [ s, t, 9, 10 ]       # [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
p a.flatten               #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a = [ 1, 2, [3, [4, 5] ] ]
p a.flatten(1)              #=> [1, 2, 3, [4, 5]]
p a.flatten                 #=> [1, 2, 3, 4, 5]

#去重
nums = [1, 1, 2, 2, 3, 3]
p a.uniq                      #去除重复的元素，保证元素唯一   #=>[1, 2, 3]

#排序
arr = [9, 8, 7, 1, 2, 5, 3]
p arr.sort                    #=> [1, 2, 3, 5, 7, 8, 9]
p arr                         #=> [9, 8, 7, 1, 2, 5, 3]
p arr.sort!                   #=> [1, 2, 3, 5, 7, 8, 9]
p arr                         #=> [1, 2, 3, 5, 7, 8, 9]
p arr.sort{|a, b| b<=>a}      #=> [9, 8, 7, 5, 3, 2, 1]


wuwei = ['酸', '甘', '苦', '辛', '咸']
#min/min_by/max/max_by取最小/大值，均不改变原数组
#minmax/minmax_by，返回最小值、最大值组成的数组，均不改变原数组

puts wuwei.min                       #=> 咸

#取最大值
puts wuwei.max                       #=> 酸
puts wuwei.min_by{|v|                #=> 咸
  v = '0'
}

puts wuwei.max_by{|w|                #=> 酸
  w = '1'
}

p wuwei                              #=> ["酸", "甘", "苦", "辛", "咸"]
p wuwei.minmax                       #=> ["咸", "酸"]
p wuwei.minmax_by{|w|                #=> ["咸", "酸"]
  w
}

#shuffle，打乱元素顺序， 随机变化（ 洗牌）

nums = [ 1, 2, 3 ]
p nums.shuffle                     #=> [2, 3, 1]
p nums.shuffle                     #=> [3, 2, 1]
p nums.shuffle                     #=> [1, 3, 2]
p nums.shuffle                     #=> [1, 3, 2]

#遍历
#each/each_with_index/cycle/cycle(n)
#each/each()依次取出每一个元素，每次取出的一个元素可以被
#跟随的块函数接收，返回原数组；each_with_index/each_with_index()得到
#元素的同时还得到当前元素在数组中的序列值，返回原数组
#cycle，除非遇到break、return、exit等语句，否则无限循环数组，返回nil
#cycle(n)，除非遇到break、return、exit等语句，否则循环数组n次，返回nil
nums = [1, 2, 3]
b = nums.each{|value| p value}   #=>1
                                 #=>2
                                 #=>3
puts b                           #=> [1, 2, 3]

nums.each_with_index do |value, index|
  puts "#{index}  :  #{value}"
  puts ( value + index ).to_s
end
                               #=>0  :  1
                               #=>1
                               #=>1  :  2
                               #=>3
                               #=>2  :  3
                               #=>5

abc = ('a'..'c').to_a
#abc.cycle {|x| puts x }          # a, b, c, a, b, c,.. forever.

abc.cycle(2) {|x| puts x }       # a, b, c, a, b, c.

#reduce,别名inject，迭代累加/减，不改变原数组
#inject理解的难点在于block中的两个参数
#sum是上一次block的返回值，默认初始化为0或nil
#可以传入初始值c
#value是当前的元素对象

arry = (1..3).to_a
n = arry.reduce(:+)
puts n                         #=>6

n = arry.reduce(:-)
puts n                         #=>-4

#带有初始值的累加
c = 10
n = arry.reduce(c) do |sum, value|
  p sum
  sum + value
end
puts n
                                #=>10
                                #=>11
                                #=>13
                                #=>16

puts n = arry.inject(:+)        #=> 6

abc = ('a'..'c').to_a
puts abc.inject(:+)        #=> abc
puts abc.inject('A') {|sum, value| sum + value }      #=> Aabc


#join 返回由数组中各元素连结成的一个字符串，原数组不变
abc = ['a', 'b', 'c']
p abc.join                     #=> "abc"
p abc.join('-')                #=> "a-b-c"
p abc                          #=> ["a", "b", "c"]

#map, 别名collect，处理数组中的每一个元素并放入新数组中，返回新数组
#map!、collect!将同时改变原数组
arry = %w(a b cD)
p arry                          #=> ["a", "b", "cD"]
s1 = arry.reduce(:+)
s2 = arry.map(&:upcase)
s3 = arry.map do |item|
  item.upcase
end
p arry
p s1
p s2
p s3
                                #=>["a", "b", "cD"]
                                #=>"abcD"
                                #=>["A", "B", "CD"]
                                #=>["A", "B", "CD"]


#find/find_all/select
# find到一个即返回，别名detect
rs = (1..8).to_a.find {|i|
  i % 2 == 0 and i % 4 == 0
}
p rs                            #=> 4

# find_all找到全部符合条件的对象，别名select
rs = (1..8).to_a.find_all {|i|
  i % 2 == 0 and i % 4 == 0
}
p rs                            #=> [4, 8]

# select，找到全部符合条件的对象，别名find_all
arry = (1..8).to_a
arrySelect = arry.select { |x|
  x % 2 == 0
}
puts arrySelect.to_s            #=> [2, 4, 6, 8]

#take(n)/take_while/drop(n)/drop_while
#取前n个元素/取满足条件的元素/取除去前n个元素剩余的元素/取除去满足条件的元素剩余的元素
#返回这些元素组成的数组，不改变原数组

a = ["北京", "上海", "广州", "香港", "澳门"]

p b = a.take(2)                             #=> ["北京", "上海"]
p a                                         #=> ["北京", "上海", "广州", "香港", "澳门"]

p b = a.drop(2)                             #=> ["广州", "香港", "澳门"]
b = a.take_while{|value|
  value == '北京'
}

p b                                         #=> ["北京"]
b = a.drop_while{|value|
  value == '北京'
}

p b                                         #=> ["上海", "广州", "香港", "澳门"]


# reject，迭代数组元素，从原数组中删除符合条件的元素对象，改变原数组，返回处理后的数组
arry = (1..8).to_a
arryReject = arry.reject { |x| x % 2 == 0 }
puts arryReject.to_s            #=> [1, 3, 5, 7]


#根据条件分组，分组后得到哈希表

arry = (1..8).to_a
arryGroupBy = arry.group_by{ |x| x % 2 == 0 }
puts arryGroupBy                #=> {false=>[1, 3, 5, 7], true=>[2, 4, 6, 8]}

puts arryGroupBy.class          #=> Hash
value = arryGroupBy[false]
p value                         #=> [1, 3, 5, 7]

puts value.class                #=> Array

arryGroupBy = arry.group_by{ |x| 2 }
puts arryGroupBy                #=> {2=>[1, 2, 3, 4, 5, 6, 7, 8]}

value = arryGroupBy[2]
p value                         #=> [1, 2, 3, 4, 5, 6, 7, 8]

puts value.class                #=>Array

#zip(Array,...)，遍历数组，对每个元素，从各个数组参数中取出与其序列相同的元素，组成新的
#数组作为代码块的传入参数，返回nil

a = [1, 4, 7]
b = [2, 5, 8]
c = [3, 6, 9]
d = a.zip(b, c){|e|
  p e
  e
}
p d
#=> [1, 2, 3]
#=> [4, 5, 6]
#=> [7, 8, 9]
#=> nil


#to_enum，转变成枚举类型，这样可以使用next
#不改变原数组，返回生成的枚举对象
p f = a.to_enum                             #=> #<Enumerator: [1, 4, 7]:each>

p a                                         #=> [1, 4, 7]
p f.next                                    #=> 1
p f.next                                    #=> 4

#all?/any?/none?/one?
#迭代取出元素并代入代码块，代码块均返回真？/
#迭代取出元素并代入代码块，代码块至少有一次返回真？/
#迭代取出元素并代入代码块，代码块均不返回真？/
#迭代取出元素并代入代码块，代码块有且仅有一次返回真？
#返回真或假，原数组内容不变

wuxing = ['金', '木', '水', '火', '土']
puts wuxing.all?{|value|                         #=> false
  value == '木'
}

puts wuxing.any?{|value|                         #=> true
  value == '木'
}

puts wuxing.all?{|value|                         #=> true
  value = '木'
}

p wuxing                                         #=> ["金", "木", "水", "火", "土"]


require 'test/unit'

class ArrayTest < Test::Unit::TestCase

  def test_init
    assert_equal(Array.new, [])
    assert_equal(Array.new(5), [nil, nil, nil, nil, nil])
    assert_equal(Array.new(5,0), [0, 0, 0, 0, 0])
    assert_equal(["北京", "上海", "广州"], %w(北京 上海 广州)
)
  end

  def test_op1 # <<
    arr = [1, 2]

    assert_equal(arr.dup << 3, [1, 2, 3])
    assert_equal(arr.dup << [3, 4], [1, 2, [3, 4]])
  end

end
