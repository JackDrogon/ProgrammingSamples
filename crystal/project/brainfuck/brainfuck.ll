; ModuleID = 'brainfuck'
source_filename = "brainfuck"

declare i8* @calloc(i32, i32)

declare void @free(i8*)

declare i32 @putchar(i32)

declare i32 @getchar()

define i32 @main() {
entry:
  %cells = call i8* @calloc(i32 30000, i32 1)
  %cell_index_ptr = alloca i32
  store i32 0, i32* %cell_index_ptr
  %cell_index = load i32, i32* %cell_index_ptr
  %current_cell_ptr = getelementptr i8, i8* %cells, i32 %cell_index
  %cell_value = load i8, i8* %current_cell_ptr
  %cell_value1 = add i8 %cell_value, 1
  store i8 %cell_value1, i8* %current_cell_ptr
  %cell_index2 = load i32, i32* %cell_index_ptr
  %current_cell_ptr3 = getelementptr i8, i8* %cells, i32 %cell_index2
  %cell_value4 = load i8, i8* %current_cell_ptr3
  %cell_value5 = add i8 %cell_value4, 1
  store i8 %cell_value5, i8* %current_cell_ptr3
  %cell_index6 = load i32, i32* %cell_index_ptr
  %current_cell_ptr7 = getelementptr i8, i8* %cells, i32 %cell_index6
  %cell_value8 = load i8, i8* %current_cell_ptr7
  %cell_value9 = add i8 %cell_value8, 1
  store i8 %cell_value9, i8* %current_cell_ptr7
  %cell_index10 = load i32, i32* %cell_index_ptr
  %current_cell_ptr11 = getelementptr i8, i8* %cells, i32 %cell_index10
  %cell_value12 = load i8, i8* %current_cell_ptr11
  %cell_value13 = add i8 %cell_value12, 1
  store i8 %cell_value13, i8* %current_cell_ptr11
  %cell_index14 = load i32, i32* %cell_index_ptr
  %current_cell_ptr15 = getelementptr i8, i8* %cells, i32 %cell_index14
  %cell_value16 = load i8, i8* %current_cell_ptr15
  %cell_value17 = add i8 %cell_value16, 1
  store i8 %cell_value17, i8* %current_cell_ptr15
  %cell_index18 = load i32, i32* %cell_index_ptr
  %current_cell_ptr19 = getelementptr i8, i8* %cells, i32 %cell_index18
  %cell_value20 = load i8, i8* %current_cell_ptr19
  %cell_value21 = add i8 %cell_value20, 1
  store i8 %cell_value21, i8* %current_cell_ptr19
  %cell_index22 = load i32, i32* %cell_index_ptr
  %current_cell_ptr23 = getelementptr i8, i8* %cells, i32 %cell_index22
  %cell_value24 = load i8, i8* %current_cell_ptr23
  %cell_value25 = add i8 %cell_value24, 1
  store i8 %cell_value25, i8* %current_cell_ptr23
  %cell_index26 = load i32, i32* %cell_index_ptr
  %current_cell_ptr27 = getelementptr i8, i8* %cells, i32 %cell_index26
  %cell_value28 = load i8, i8* %current_cell_ptr27
  %cell_value29 = add i8 %cell_value28, 1
  store i8 %cell_value29, i8* %current_cell_ptr27
  %cell_index30 = load i32, i32* %cell_index_ptr
  %current_cell_ptr31 = getelementptr i8, i8* %cells, i32 %cell_index30
  %cell_value32 = load i8, i8* %current_cell_ptr31
  %cell_value33 = add i8 %cell_value32, 1
  store i8 %cell_value33, i8* %current_cell_ptr31
  %cell_index34 = load i32, i32* %cell_index_ptr
  %current_cell_ptr35 = getelementptr i8, i8* %cells, i32 %cell_index34
  %cell_value36 = load i8, i8* %current_cell_ptr35
  %cell_value37 = add i8 %cell_value36, 1
  store i8 %cell_value37, i8* %current_cell_ptr35
  br label %loop_header

loop_header:                                      ; preds = %loop_body, %entry
  %cell_index38 = load i32, i32* %cell_index_ptr
  %current_cell_ptr39 = getelementptr i8, i8* %cells, i32 %cell_index38
  %cell_value40 = load i8, i8* %current_cell_ptr39
  %0 = icmp eq i8 %cell_value40, 0
  br i1 %0, label %loop_after, label %loop_body

loop_body:                                        ; preds = %loop_header
  %cell_index41 = load i32, i32* %cell_index_ptr
  %new_cell_index = add i32 %cell_index41, 1
  store i32 %new_cell_index, i32* %cell_index_ptr
  %cell_index42 = load i32, i32* %cell_index_ptr
  %current_cell_ptr43 = getelementptr i8, i8* %cells, i32 %cell_index42
  %cell_value44 = load i8, i8* %current_cell_ptr43
  %cell_value45 = add i8 %cell_value44, 1
  store i8 %cell_value45, i8* %current_cell_ptr43
  %cell_index46 = load i32, i32* %cell_index_ptr
  %current_cell_ptr47 = getelementptr i8, i8* %cells, i32 %cell_index46
  %cell_value48 = load i8, i8* %current_cell_ptr47
  %cell_value49 = add i8 %cell_value48, 1
  store i8 %cell_value49, i8* %current_cell_ptr47
  %cell_index50 = load i32, i32* %cell_index_ptr
  %current_cell_ptr51 = getelementptr i8, i8* %cells, i32 %cell_index50
  %cell_value52 = load i8, i8* %current_cell_ptr51
  %cell_value53 = add i8 %cell_value52, 1
  store i8 %cell_value53, i8* %current_cell_ptr51
  %cell_index54 = load i32, i32* %cell_index_ptr
  %current_cell_ptr55 = getelementptr i8, i8* %cells, i32 %cell_index54
  %cell_value56 = load i8, i8* %current_cell_ptr55
  %cell_value57 = add i8 %cell_value56, 1
  store i8 %cell_value57, i8* %current_cell_ptr55
  %cell_index58 = load i32, i32* %cell_index_ptr
  %current_cell_ptr59 = getelementptr i8, i8* %cells, i32 %cell_index58
  %cell_value60 = load i8, i8* %current_cell_ptr59
  %cell_value61 = add i8 %cell_value60, 1
  store i8 %cell_value61, i8* %current_cell_ptr59
  %cell_index62 = load i32, i32* %cell_index_ptr
  %current_cell_ptr63 = getelementptr i8, i8* %cells, i32 %cell_index62
  %cell_value64 = load i8, i8* %current_cell_ptr63
  %cell_value65 = add i8 %cell_value64, 1
  store i8 %cell_value65, i8* %current_cell_ptr63
  %cell_index66 = load i32, i32* %cell_index_ptr
  %current_cell_ptr67 = getelementptr i8, i8* %cells, i32 %cell_index66
  %cell_value68 = load i8, i8* %current_cell_ptr67
  %cell_value69 = add i8 %cell_value68, 1
  store i8 %cell_value69, i8* %current_cell_ptr67
  %cell_index70 = load i32, i32* %cell_index_ptr
  %new_cell_index71 = add i32 %cell_index70, 1
  store i32 %new_cell_index71, i32* %cell_index_ptr
  %cell_index72 = load i32, i32* %cell_index_ptr
  %current_cell_ptr73 = getelementptr i8, i8* %cells, i32 %cell_index72
  %cell_value74 = load i8, i8* %current_cell_ptr73
  %cell_value75 = add i8 %cell_value74, 1
  store i8 %cell_value75, i8* %current_cell_ptr73
  %cell_index76 = load i32, i32* %cell_index_ptr
  %current_cell_ptr77 = getelementptr i8, i8* %cells, i32 %cell_index76
  %cell_value78 = load i8, i8* %current_cell_ptr77
  %cell_value79 = add i8 %cell_value78, 1
  store i8 %cell_value79, i8* %current_cell_ptr77
  %cell_index80 = load i32, i32* %cell_index_ptr
  %current_cell_ptr81 = getelementptr i8, i8* %cells, i32 %cell_index80
  %cell_value82 = load i8, i8* %current_cell_ptr81
  %cell_value83 = add i8 %cell_value82, 1
  store i8 %cell_value83, i8* %current_cell_ptr81
  %cell_index84 = load i32, i32* %cell_index_ptr
  %current_cell_ptr85 = getelementptr i8, i8* %cells, i32 %cell_index84
  %cell_value86 = load i8, i8* %current_cell_ptr85
  %cell_value87 = add i8 %cell_value86, 1
  store i8 %cell_value87, i8* %current_cell_ptr85
  %cell_index88 = load i32, i32* %cell_index_ptr
  %current_cell_ptr89 = getelementptr i8, i8* %cells, i32 %cell_index88
  %cell_value90 = load i8, i8* %current_cell_ptr89
  %cell_value91 = add i8 %cell_value90, 1
  store i8 %cell_value91, i8* %current_cell_ptr89
  %cell_index92 = load i32, i32* %cell_index_ptr
  %current_cell_ptr93 = getelementptr i8, i8* %cells, i32 %cell_index92
  %cell_value94 = load i8, i8* %current_cell_ptr93
  %cell_value95 = add i8 %cell_value94, 1
  store i8 %cell_value95, i8* %current_cell_ptr93
  %cell_index96 = load i32, i32* %cell_index_ptr
  %current_cell_ptr97 = getelementptr i8, i8* %cells, i32 %cell_index96
  %cell_value98 = load i8, i8* %current_cell_ptr97
  %cell_value99 = add i8 %cell_value98, 1
  store i8 %cell_value99, i8* %current_cell_ptr97
  %cell_index100 = load i32, i32* %cell_index_ptr
  %current_cell_ptr101 = getelementptr i8, i8* %cells, i32 %cell_index100
  %cell_value102 = load i8, i8* %current_cell_ptr101
  %cell_value103 = add i8 %cell_value102, 1
  store i8 %cell_value103, i8* %current_cell_ptr101
  %cell_index104 = load i32, i32* %cell_index_ptr
  %current_cell_ptr105 = getelementptr i8, i8* %cells, i32 %cell_index104
  %cell_value106 = load i8, i8* %current_cell_ptr105
  %cell_value107 = add i8 %cell_value106, 1
  store i8 %cell_value107, i8* %current_cell_ptr105
  %cell_index108 = load i32, i32* %cell_index_ptr
  %current_cell_ptr109 = getelementptr i8, i8* %cells, i32 %cell_index108
  %cell_value110 = load i8, i8* %current_cell_ptr109
  %cell_value111 = add i8 %cell_value110, 1
  store i8 %cell_value111, i8* %current_cell_ptr109
  %cell_index112 = load i32, i32* %cell_index_ptr
  %new_cell_index113 = add i32 %cell_index112, 1
  store i32 %new_cell_index113, i32* %cell_index_ptr
  %cell_index114 = load i32, i32* %cell_index_ptr
  %current_cell_ptr115 = getelementptr i8, i8* %cells, i32 %cell_index114
  %cell_value116 = load i8, i8* %current_cell_ptr115
  %cell_value117 = add i8 %cell_value116, 1
  store i8 %cell_value117, i8* %current_cell_ptr115
  %cell_index118 = load i32, i32* %cell_index_ptr
  %current_cell_ptr119 = getelementptr i8, i8* %cells, i32 %cell_index118
  %cell_value120 = load i8, i8* %current_cell_ptr119
  %cell_value121 = add i8 %cell_value120, 1
  store i8 %cell_value121, i8* %current_cell_ptr119
  %cell_index122 = load i32, i32* %cell_index_ptr
  %current_cell_ptr123 = getelementptr i8, i8* %cells, i32 %cell_index122
  %cell_value124 = load i8, i8* %current_cell_ptr123
  %cell_value125 = add i8 %cell_value124, 1
  store i8 %cell_value125, i8* %current_cell_ptr123
  %cell_index126 = load i32, i32* %cell_index_ptr
  %new_cell_index127 = add i32 %cell_index126, 1
  store i32 %new_cell_index127, i32* %cell_index_ptr
  %cell_index128 = load i32, i32* %cell_index_ptr
  %current_cell_ptr129 = getelementptr i8, i8* %cells, i32 %cell_index128
  %cell_value130 = load i8, i8* %current_cell_ptr129
  %cell_value131 = add i8 %cell_value130, 1
  store i8 %cell_value131, i8* %current_cell_ptr129
  %cell_index132 = load i32, i32* %cell_index_ptr
  %new_cell_index133 = add i32 %cell_index132, -1
  store i32 %new_cell_index133, i32* %cell_index_ptr
  %cell_index134 = load i32, i32* %cell_index_ptr
  %new_cell_index135 = add i32 %cell_index134, -1
  store i32 %new_cell_index135, i32* %cell_index_ptr
  %cell_index136 = load i32, i32* %cell_index_ptr
  %new_cell_index137 = add i32 %cell_index136, -1
  store i32 %new_cell_index137, i32* %cell_index_ptr
  %cell_index138 = load i32, i32* %cell_index_ptr
  %new_cell_index139 = add i32 %cell_index138, -1
  store i32 %new_cell_index139, i32* %cell_index_ptr
  %cell_index140 = load i32, i32* %cell_index_ptr
  %current_cell_ptr141 = getelementptr i8, i8* %cells, i32 %cell_index140
  %cell_value142 = load i8, i8* %current_cell_ptr141
  %cell_value143 = add i8 %cell_value142, -1
  store i8 %cell_value143, i8* %current_cell_ptr141
  br label %loop_header

loop_after:                                       ; preds = %loop_header
  %cell_index144 = load i32, i32* %cell_index_ptr
  %new_cell_index145 = add i32 %cell_index144, 1
  store i32 %new_cell_index145, i32* %cell_index_ptr
  %cell_index146 = load i32, i32* %cell_index_ptr
  %current_cell_ptr147 = getelementptr i8, i8* %cells, i32 %cell_index146
  %cell_value148 = load i8, i8* %current_cell_ptr147
  %cell_value149 = add i8 %cell_value148, 1
  store i8 %cell_value149, i8* %current_cell_ptr147
  %cell_index150 = load i32, i32* %cell_index_ptr
  %current_cell_ptr151 = getelementptr i8, i8* %cells, i32 %cell_index150
  %cell_value152 = load i8, i8* %current_cell_ptr151
  %cell_value153 = add i8 %cell_value152, 1
  store i8 %cell_value153, i8* %current_cell_ptr151
  %cell_index154 = load i32, i32* %cell_index_ptr
  %current_cell_ptr155 = getelementptr i8, i8* %cells, i32 %cell_index154
  %cell_value156 = load i8, i8* %current_cell_ptr155
  %cell_val_as_char = sext i8 %cell_value156 to i32
  %1 = call i32 @putchar(i32 %cell_val_as_char)
  %cell_index157 = load i32, i32* %cell_index_ptr
  %new_cell_index158 = add i32 %cell_index157, 1
  store i32 %new_cell_index158, i32* %cell_index_ptr
  %cell_index159 = load i32, i32* %cell_index_ptr
  %current_cell_ptr160 = getelementptr i8, i8* %cells, i32 %cell_index159
  %cell_value161 = load i8, i8* %current_cell_ptr160
  %cell_value162 = add i8 %cell_value161, 1
  store i8 %cell_value162, i8* %current_cell_ptr160
  %cell_index163 = load i32, i32* %cell_index_ptr
  %current_cell_ptr164 = getelementptr i8, i8* %cells, i32 %cell_index163
  %cell_value165 = load i8, i8* %current_cell_ptr164
  %cell_val_as_char166 = sext i8 %cell_value165 to i32
  %2 = call i32 @putchar(i32 %cell_val_as_char166)
  %cell_index167 = load i32, i32* %cell_index_ptr
  %current_cell_ptr168 = getelementptr i8, i8* %cells, i32 %cell_index167
  %cell_value169 = load i8, i8* %current_cell_ptr168
  %cell_value170 = add i8 %cell_value169, 1
  store i8 %cell_value170, i8* %current_cell_ptr168
  %cell_index171 = load i32, i32* %cell_index_ptr
  %current_cell_ptr172 = getelementptr i8, i8* %cells, i32 %cell_index171
  %cell_value173 = load i8, i8* %current_cell_ptr172
  %cell_value174 = add i8 %cell_value173, 1
  store i8 %cell_value174, i8* %current_cell_ptr172
  %cell_index175 = load i32, i32* %cell_index_ptr
  %current_cell_ptr176 = getelementptr i8, i8* %cells, i32 %cell_index175
  %cell_value177 = load i8, i8* %current_cell_ptr176
  %cell_value178 = add i8 %cell_value177, 1
  store i8 %cell_value178, i8* %current_cell_ptr176
  %cell_index179 = load i32, i32* %cell_index_ptr
  %current_cell_ptr180 = getelementptr i8, i8* %cells, i32 %cell_index179
  %cell_value181 = load i8, i8* %current_cell_ptr180
  %cell_value182 = add i8 %cell_value181, 1
  store i8 %cell_value182, i8* %current_cell_ptr180
  %cell_index183 = load i32, i32* %cell_index_ptr
  %current_cell_ptr184 = getelementptr i8, i8* %cells, i32 %cell_index183
  %cell_value185 = load i8, i8* %current_cell_ptr184
  %cell_value186 = add i8 %cell_value185, 1
  store i8 %cell_value186, i8* %current_cell_ptr184
  %cell_index187 = load i32, i32* %cell_index_ptr
  %current_cell_ptr188 = getelementptr i8, i8* %cells, i32 %cell_index187
  %cell_value189 = load i8, i8* %current_cell_ptr188
  %cell_value190 = add i8 %cell_value189, 1
  store i8 %cell_value190, i8* %current_cell_ptr188
  %cell_index191 = load i32, i32* %cell_index_ptr
  %current_cell_ptr192 = getelementptr i8, i8* %cells, i32 %cell_index191
  %cell_value193 = load i8, i8* %current_cell_ptr192
  %cell_value194 = add i8 %cell_value193, 1
  store i8 %cell_value194, i8* %current_cell_ptr192
  %cell_index195 = load i32, i32* %cell_index_ptr
  %current_cell_ptr196 = getelementptr i8, i8* %cells, i32 %cell_index195
  %cell_value197 = load i8, i8* %current_cell_ptr196
  %cell_val_as_char198 = sext i8 %cell_value197 to i32
  %3 = call i32 @putchar(i32 %cell_val_as_char198)
  %cell_index199 = load i32, i32* %cell_index_ptr
  %current_cell_ptr200 = getelementptr i8, i8* %cells, i32 %cell_index199
  %cell_value201 = load i8, i8* %current_cell_ptr200
  %cell_val_as_char202 = sext i8 %cell_value201 to i32
  %4 = call i32 @putchar(i32 %cell_val_as_char202)
  %cell_index203 = load i32, i32* %cell_index_ptr
  %current_cell_ptr204 = getelementptr i8, i8* %cells, i32 %cell_index203
  %cell_value205 = load i8, i8* %current_cell_ptr204
  %cell_value206 = add i8 %cell_value205, 1
  store i8 %cell_value206, i8* %current_cell_ptr204
  %cell_index207 = load i32, i32* %cell_index_ptr
  %current_cell_ptr208 = getelementptr i8, i8* %cells, i32 %cell_index207
  %cell_value209 = load i8, i8* %current_cell_ptr208
  %cell_value210 = add i8 %cell_value209, 1
  store i8 %cell_value210, i8* %current_cell_ptr208
  %cell_index211 = load i32, i32* %cell_index_ptr
  %current_cell_ptr212 = getelementptr i8, i8* %cells, i32 %cell_index211
  %cell_value213 = load i8, i8* %current_cell_ptr212
  %cell_value214 = add i8 %cell_value213, 1
  store i8 %cell_value214, i8* %current_cell_ptr212
  %cell_index215 = load i32, i32* %cell_index_ptr
  %current_cell_ptr216 = getelementptr i8, i8* %cells, i32 %cell_index215
  %cell_value217 = load i8, i8* %current_cell_ptr216
  %cell_val_as_char218 = sext i8 %cell_value217 to i32
  %5 = call i32 @putchar(i32 %cell_val_as_char218)
  %cell_index219 = load i32, i32* %cell_index_ptr
  %new_cell_index220 = add i32 %cell_index219, 1
  store i32 %new_cell_index220, i32* %cell_index_ptr
  %cell_index221 = load i32, i32* %cell_index_ptr
  %current_cell_ptr222 = getelementptr i8, i8* %cells, i32 %cell_index221
  %cell_value223 = load i8, i8* %current_cell_ptr222
  %cell_value224 = add i8 %cell_value223, 1
  store i8 %cell_value224, i8* %current_cell_ptr222
  %cell_index225 = load i32, i32* %cell_index_ptr
  %current_cell_ptr226 = getelementptr i8, i8* %cells, i32 %cell_index225
  %cell_value227 = load i8, i8* %current_cell_ptr226
  %cell_value228 = add i8 %cell_value227, 1
  store i8 %cell_value228, i8* %current_cell_ptr226
  %cell_index229 = load i32, i32* %cell_index_ptr
  %current_cell_ptr230 = getelementptr i8, i8* %cells, i32 %cell_index229
  %cell_value231 = load i8, i8* %current_cell_ptr230
  %cell_val_as_char232 = sext i8 %cell_value231 to i32
  %6 = call i32 @putchar(i32 %cell_val_as_char232)
  %cell_index233 = load i32, i32* %cell_index_ptr
  %new_cell_index234 = add i32 %cell_index233, -1
  store i32 %new_cell_index234, i32* %cell_index_ptr
  %cell_index235 = load i32, i32* %cell_index_ptr
  %new_cell_index236 = add i32 %cell_index235, -1
  store i32 %new_cell_index236, i32* %cell_index_ptr
  %cell_index237 = load i32, i32* %cell_index_ptr
  %current_cell_ptr238 = getelementptr i8, i8* %cells, i32 %cell_index237
  %cell_value239 = load i8, i8* %current_cell_ptr238
  %cell_value240 = add i8 %cell_value239, 1
  store i8 %cell_value240, i8* %current_cell_ptr238
  %cell_index241 = load i32, i32* %cell_index_ptr
  %current_cell_ptr242 = getelementptr i8, i8* %cells, i32 %cell_index241
  %cell_value243 = load i8, i8* %current_cell_ptr242
  %cell_value244 = add i8 %cell_value243, 1
  store i8 %cell_value244, i8* %current_cell_ptr242
  %cell_index245 = load i32, i32* %cell_index_ptr
  %current_cell_ptr246 = getelementptr i8, i8* %cells, i32 %cell_index245
  %cell_value247 = load i8, i8* %current_cell_ptr246
  %cell_value248 = add i8 %cell_value247, 1
  store i8 %cell_value248, i8* %current_cell_ptr246
  %cell_index249 = load i32, i32* %cell_index_ptr
  %current_cell_ptr250 = getelementptr i8, i8* %cells, i32 %cell_index249
  %cell_value251 = load i8, i8* %current_cell_ptr250
  %cell_value252 = add i8 %cell_value251, 1
  store i8 %cell_value252, i8* %current_cell_ptr250
  %cell_index253 = load i32, i32* %cell_index_ptr
  %current_cell_ptr254 = getelementptr i8, i8* %cells, i32 %cell_index253
  %cell_value255 = load i8, i8* %current_cell_ptr254
  %cell_value256 = add i8 %cell_value255, 1
  store i8 %cell_value256, i8* %current_cell_ptr254
  %cell_index257 = load i32, i32* %cell_index_ptr
  %current_cell_ptr258 = getelementptr i8, i8* %cells, i32 %cell_index257
  %cell_value259 = load i8, i8* %current_cell_ptr258
  %cell_value260 = add i8 %cell_value259, 1
  store i8 %cell_value260, i8* %current_cell_ptr258
  %cell_index261 = load i32, i32* %cell_index_ptr
  %current_cell_ptr262 = getelementptr i8, i8* %cells, i32 %cell_index261
  %cell_value263 = load i8, i8* %current_cell_ptr262
  %cell_value264 = add i8 %cell_value263, 1
  store i8 %cell_value264, i8* %current_cell_ptr262
  %cell_index265 = load i32, i32* %cell_index_ptr
  %current_cell_ptr266 = getelementptr i8, i8* %cells, i32 %cell_index265
  %cell_value267 = load i8, i8* %current_cell_ptr266
  %cell_value268 = add i8 %cell_value267, 1
  store i8 %cell_value268, i8* %current_cell_ptr266
  %cell_index269 = load i32, i32* %cell_index_ptr
  %current_cell_ptr270 = getelementptr i8, i8* %cells, i32 %cell_index269
  %cell_value271 = load i8, i8* %current_cell_ptr270
  %cell_value272 = add i8 %cell_value271, 1
  store i8 %cell_value272, i8* %current_cell_ptr270
  %cell_index273 = load i32, i32* %cell_index_ptr
  %current_cell_ptr274 = getelementptr i8, i8* %cells, i32 %cell_index273
  %cell_value275 = load i8, i8* %current_cell_ptr274
  %cell_value276 = add i8 %cell_value275, 1
  store i8 %cell_value276, i8* %current_cell_ptr274
  %cell_index277 = load i32, i32* %cell_index_ptr
  %current_cell_ptr278 = getelementptr i8, i8* %cells, i32 %cell_index277
  %cell_value279 = load i8, i8* %current_cell_ptr278
  %cell_value280 = add i8 %cell_value279, 1
  store i8 %cell_value280, i8* %current_cell_ptr278
  %cell_index281 = load i32, i32* %cell_index_ptr
  %current_cell_ptr282 = getelementptr i8, i8* %cells, i32 %cell_index281
  %cell_value283 = load i8, i8* %current_cell_ptr282
  %cell_value284 = add i8 %cell_value283, 1
  store i8 %cell_value284, i8* %current_cell_ptr282
  %cell_index285 = load i32, i32* %cell_index_ptr
  %current_cell_ptr286 = getelementptr i8, i8* %cells, i32 %cell_index285
  %cell_value287 = load i8, i8* %current_cell_ptr286
  %cell_value288 = add i8 %cell_value287, 1
  store i8 %cell_value288, i8* %current_cell_ptr286
  %cell_index289 = load i32, i32* %cell_index_ptr
  %current_cell_ptr290 = getelementptr i8, i8* %cells, i32 %cell_index289
  %cell_value291 = load i8, i8* %current_cell_ptr290
  %cell_value292 = add i8 %cell_value291, 1
  store i8 %cell_value292, i8* %current_cell_ptr290
  %cell_index293 = load i32, i32* %cell_index_ptr
  %current_cell_ptr294 = getelementptr i8, i8* %cells, i32 %cell_index293
  %cell_value295 = load i8, i8* %current_cell_ptr294
  %cell_value296 = add i8 %cell_value295, 1
  store i8 %cell_value296, i8* %current_cell_ptr294
  %cell_index297 = load i32, i32* %cell_index_ptr
  %current_cell_ptr298 = getelementptr i8, i8* %cells, i32 %cell_index297
  %cell_value299 = load i8, i8* %current_cell_ptr298
  %cell_val_as_char300 = sext i8 %cell_value299 to i32
  %7 = call i32 @putchar(i32 %cell_val_as_char300)
  %cell_index301 = load i32, i32* %cell_index_ptr
  %new_cell_index302 = add i32 %cell_index301, 1
  store i32 %new_cell_index302, i32* %cell_index_ptr
  %cell_index303 = load i32, i32* %cell_index_ptr
  %current_cell_ptr304 = getelementptr i8, i8* %cells, i32 %cell_index303
  %cell_value305 = load i8, i8* %current_cell_ptr304
  %cell_val_as_char306 = sext i8 %cell_value305 to i32
  %8 = call i32 @putchar(i32 %cell_val_as_char306)
  %cell_index307 = load i32, i32* %cell_index_ptr
  %current_cell_ptr308 = getelementptr i8, i8* %cells, i32 %cell_index307
  %cell_value309 = load i8, i8* %current_cell_ptr308
  %cell_value310 = add i8 %cell_value309, 1
  store i8 %cell_value310, i8* %current_cell_ptr308
  %cell_index311 = load i32, i32* %cell_index_ptr
  %current_cell_ptr312 = getelementptr i8, i8* %cells, i32 %cell_index311
  %cell_value313 = load i8, i8* %current_cell_ptr312
  %cell_value314 = add i8 %cell_value313, 1
  store i8 %cell_value314, i8* %current_cell_ptr312
  %cell_index315 = load i32, i32* %cell_index_ptr
  %current_cell_ptr316 = getelementptr i8, i8* %cells, i32 %cell_index315
  %cell_value317 = load i8, i8* %current_cell_ptr316
  %cell_value318 = add i8 %cell_value317, 1
  store i8 %cell_value318, i8* %current_cell_ptr316
  %cell_index319 = load i32, i32* %cell_index_ptr
  %current_cell_ptr320 = getelementptr i8, i8* %cells, i32 %cell_index319
  %cell_value321 = load i8, i8* %current_cell_ptr320
  %cell_val_as_char322 = sext i8 %cell_value321 to i32
  %9 = call i32 @putchar(i32 %cell_val_as_char322)
  %cell_index323 = load i32, i32* %cell_index_ptr
  %current_cell_ptr324 = getelementptr i8, i8* %cells, i32 %cell_index323
  %cell_value325 = load i8, i8* %current_cell_ptr324
  %cell_value326 = add i8 %cell_value325, -1
  store i8 %cell_value326, i8* %current_cell_ptr324
  %cell_index327 = load i32, i32* %cell_index_ptr
  %current_cell_ptr328 = getelementptr i8, i8* %cells, i32 %cell_index327
  %cell_value329 = load i8, i8* %current_cell_ptr328
  %cell_value330 = add i8 %cell_value329, -1
  store i8 %cell_value330, i8* %current_cell_ptr328
  %cell_index331 = load i32, i32* %cell_index_ptr
  %current_cell_ptr332 = getelementptr i8, i8* %cells, i32 %cell_index331
  %cell_value333 = load i8, i8* %current_cell_ptr332
  %cell_value334 = add i8 %cell_value333, -1
  store i8 %cell_value334, i8* %current_cell_ptr332
  %cell_index335 = load i32, i32* %cell_index_ptr
  %current_cell_ptr336 = getelementptr i8, i8* %cells, i32 %cell_index335
  %cell_value337 = load i8, i8* %current_cell_ptr336
  %cell_value338 = add i8 %cell_value337, -1
  store i8 %cell_value338, i8* %current_cell_ptr336
  %cell_index339 = load i32, i32* %cell_index_ptr
  %current_cell_ptr340 = getelementptr i8, i8* %cells, i32 %cell_index339
  %cell_value341 = load i8, i8* %current_cell_ptr340
  %cell_value342 = add i8 %cell_value341, -1
  store i8 %cell_value342, i8* %current_cell_ptr340
  %cell_index343 = load i32, i32* %cell_index_ptr
  %current_cell_ptr344 = getelementptr i8, i8* %cells, i32 %cell_index343
  %cell_value345 = load i8, i8* %current_cell_ptr344
  %cell_value346 = add i8 %cell_value345, -1
  store i8 %cell_value346, i8* %current_cell_ptr344
  %cell_index347 = load i32, i32* %cell_index_ptr
  %current_cell_ptr348 = getelementptr i8, i8* %cells, i32 %cell_index347
  %cell_value349 = load i8, i8* %current_cell_ptr348
  %cell_val_as_char350 = sext i8 %cell_value349 to i32
  %10 = call i32 @putchar(i32 %cell_val_as_char350)
  %cell_index351 = load i32, i32* %cell_index_ptr
  %current_cell_ptr352 = getelementptr i8, i8* %cells, i32 %cell_index351
  %cell_value353 = load i8, i8* %current_cell_ptr352
  %cell_value354 = add i8 %cell_value353, -1
  store i8 %cell_value354, i8* %current_cell_ptr352
  %cell_index355 = load i32, i32* %cell_index_ptr
  %current_cell_ptr356 = getelementptr i8, i8* %cells, i32 %cell_index355
  %cell_value357 = load i8, i8* %current_cell_ptr356
  %cell_value358 = add i8 %cell_value357, -1
  store i8 %cell_value358, i8* %current_cell_ptr356
  %cell_index359 = load i32, i32* %cell_index_ptr
  %current_cell_ptr360 = getelementptr i8, i8* %cells, i32 %cell_index359
  %cell_value361 = load i8, i8* %current_cell_ptr360
  %cell_value362 = add i8 %cell_value361, -1
  store i8 %cell_value362, i8* %current_cell_ptr360
  %cell_index363 = load i32, i32* %cell_index_ptr
  %current_cell_ptr364 = getelementptr i8, i8* %cells, i32 %cell_index363
  %cell_value365 = load i8, i8* %current_cell_ptr364
  %cell_value366 = add i8 %cell_value365, -1
  store i8 %cell_value366, i8* %current_cell_ptr364
  %cell_index367 = load i32, i32* %cell_index_ptr
  %current_cell_ptr368 = getelementptr i8, i8* %cells, i32 %cell_index367
  %cell_value369 = load i8, i8* %current_cell_ptr368
  %cell_value370 = add i8 %cell_value369, -1
  store i8 %cell_value370, i8* %current_cell_ptr368
  %cell_index371 = load i32, i32* %cell_index_ptr
  %current_cell_ptr372 = getelementptr i8, i8* %cells, i32 %cell_index371
  %cell_value373 = load i8, i8* %current_cell_ptr372
  %cell_value374 = add i8 %cell_value373, -1
  store i8 %cell_value374, i8* %current_cell_ptr372
  %cell_index375 = load i32, i32* %cell_index_ptr
  %current_cell_ptr376 = getelementptr i8, i8* %cells, i32 %cell_index375
  %cell_value377 = load i8, i8* %current_cell_ptr376
  %cell_value378 = add i8 %cell_value377, -1
  store i8 %cell_value378, i8* %current_cell_ptr376
  %cell_index379 = load i32, i32* %cell_index_ptr
  %current_cell_ptr380 = getelementptr i8, i8* %cells, i32 %cell_index379
  %cell_value381 = load i8, i8* %current_cell_ptr380
  %cell_value382 = add i8 %cell_value381, -1
  store i8 %cell_value382, i8* %current_cell_ptr380
  %cell_index383 = load i32, i32* %cell_index_ptr
  %current_cell_ptr384 = getelementptr i8, i8* %cells, i32 %cell_index383
  %cell_value385 = load i8, i8* %current_cell_ptr384
  %cell_val_as_char386 = sext i8 %cell_value385 to i32
  %11 = call i32 @putchar(i32 %cell_val_as_char386)
  %cell_index387 = load i32, i32* %cell_index_ptr
  %new_cell_index388 = add i32 %cell_index387, 1
  store i32 %new_cell_index388, i32* %cell_index_ptr
  %cell_index389 = load i32, i32* %cell_index_ptr
  %current_cell_ptr390 = getelementptr i8, i8* %cells, i32 %cell_index389
  %cell_value391 = load i8, i8* %current_cell_ptr390
  %cell_value392 = add i8 %cell_value391, 1
  store i8 %cell_value392, i8* %current_cell_ptr390
  %cell_index393 = load i32, i32* %cell_index_ptr
  %current_cell_ptr394 = getelementptr i8, i8* %cells, i32 %cell_index393
  %cell_value395 = load i8, i8* %current_cell_ptr394
  %cell_val_as_char396 = sext i8 %cell_value395 to i32
  %12 = call i32 @putchar(i32 %cell_val_as_char396)
  %cell_index397 = load i32, i32* %cell_index_ptr
  %new_cell_index398 = add i32 %cell_index397, 1
  store i32 %new_cell_index398, i32* %cell_index_ptr
  %cell_index399 = load i32, i32* %cell_index_ptr
  %current_cell_ptr400 = getelementptr i8, i8* %cells, i32 %cell_index399
  %cell_value401 = load i8, i8* %current_cell_ptr400
  %cell_val_as_char402 = sext i8 %cell_value401 to i32
  %13 = call i32 @putchar(i32 %cell_val_as_char402)
  call void @free(i8* %cells)
  ret i32 0
}
