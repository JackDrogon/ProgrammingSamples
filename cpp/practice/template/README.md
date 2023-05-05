type_list_index可以check一下编译性能
尝试使用stdcxx的优化手法，展开为H1,H2,H3,H4...tail

type_list = template<int, string, xxx>
type_list_index_t 拿到第n个类型 从0开始

实现上就是 [Head|Tail] 队规取Tail的n-1个，约束n=0

# TODO
思考能不能利用intergrant改写
