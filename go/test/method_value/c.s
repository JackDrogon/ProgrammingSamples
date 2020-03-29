# command-line-arguments
"".(*Int).Print STEXT size=187 args=0x10 locals=0x68
	0x0000 00000 (/tmp/a.go:10)	TEXT	"".(*Int).Print(SB), $104-16
	0x0000 00000 (/tmp/a.go:10)	MOVQ	(TLS), CX
	0x0009 00009 (/tmp/a.go:10)	CMPQ	SP, 16(CX)
	0x000d 00013 (/tmp/a.go:10)	JLS	177
	0x0013 00019 (/tmp/a.go:10)	SUBQ	$104, SP
	0x0017 00023 (/tmp/a.go:10)	MOVQ	BP, 96(SP)
	0x001c 00028 (/tmp/a.go:10)	LEAQ	96(SP), BP
	0x0021 00033 (/tmp/a.go:10)	FUNCDATA	$0, gclocals·c5b2f6560804ff174daf09d95facbd35(SB)
	0x0021 00033 (/tmp/a.go:10)	FUNCDATA	$1, gclocals·586340653b60487fbabcdcae672dfed1(SB)
	0x0021 00033 (/tmp/a.go:10)	FUNCDATA	$3, gclocals·1cf923758aae2e428391d1783fe59973(SB)
	0x0021 00033 (/tmp/a.go:11)	PCDATA	$2, $0
	0x0021 00033 (/tmp/a.go:11)	PCDATA	$0, $1
	0x0021 00033 (/tmp/a.go:11)	XORPS	X0, X0
	0x0024 00036 (/tmp/a.go:11)	MOVUPS	X0, ""..autotmp_2+64(SP)
	0x0029 00041 (/tmp/a.go:11)	MOVUPS	X0, ""..autotmp_2+80(SP)
	0x002e 00046 (/tmp/a.go:11)	PCDATA	$2, $1
	0x002e 00046 (/tmp/a.go:11)	LEAQ	type.*"".Int(SB), AX
	0x0035 00053 (/tmp/a.go:11)	PCDATA	$2, $0
	0x0035 00053 (/tmp/a.go:11)	MOVQ	AX, ""..autotmp_2+64(SP)
	0x003a 00058 (/tmp/a.go:11)	PCDATA	$2, $1
	0x003a 00058 (/tmp/a.go:11)	PCDATA	$0, $2
	0x003a 00058 (/tmp/a.go:11)	MOVQ	"".v+112(SP), AX
	0x003f 00063 (/tmp/a.go:11)	PCDATA	$2, $0
	0x003f 00063 (/tmp/a.go:11)	MOVQ	AX, ""..autotmp_2+72(SP)
	0x0044 00068 (/tmp/a.go:11)	PCDATA	$2, $1
	0x0044 00068 (/tmp/a.go:11)	LEAQ	type.int(SB), AX
	0x004b 00075 (/tmp/a.go:11)	PCDATA	$2, $0
	0x004b 00075 (/tmp/a.go:11)	MOVQ	AX, (SP)
	0x004f 00079 (/tmp/a.go:11)	MOVQ	"".i+120(SP), AX
	0x0054 00084 (/tmp/a.go:11)	MOVQ	AX, 8(SP)
	0x0059 00089 (/tmp/a.go:11)	CALL	runtime.convT2E64(SB)
	0x005e 00094 (/tmp/a.go:11)	MOVQ	16(SP), AX
	0x0063 00099 (/tmp/a.go:11)	PCDATA	$2, $2
	0x0063 00099 (/tmp/a.go:11)	MOVQ	24(SP), CX
	0x0068 00104 (/tmp/a.go:11)	MOVQ	AX, ""..autotmp_2+80(SP)
	0x006d 00109 (/tmp/a.go:11)	PCDATA	$2, $0
	0x006d 00109 (/tmp/a.go:11)	MOVQ	CX, ""..autotmp_2+88(SP)
	0x0072 00114 (/tmp/a.go:11)	PCDATA	$2, $1
	0x0072 00114 (/tmp/a.go:11)	LEAQ	go.string."Raw %v -> %v\n"(SB), AX
	0x0079 00121 (/tmp/a.go:11)	PCDATA	$2, $0
	0x0079 00121 (/tmp/a.go:11)	MOVQ	AX, (SP)
	0x007d 00125 (/tmp/a.go:11)	MOVQ	$13, 8(SP)
	0x0086 00134 (/tmp/a.go:11)	PCDATA	$2, $1
	0x0086 00134 (/tmp/a.go:11)	LEAQ	""..autotmp_2+64(SP), AX
	0x008b 00139 (/tmp/a.go:11)	PCDATA	$2, $0
	0x008b 00139 (/tmp/a.go:11)	MOVQ	AX, 16(SP)
	0x0090 00144 (/tmp/a.go:11)	MOVQ	$2, 24(SP)
	0x0099 00153 (/tmp/a.go:11)	MOVQ	$2, 32(SP)
	0x00a2 00162 (/tmp/a.go:11)	CALL	fmt.Printf(SB)
	0x00a7 00167 (/tmp/a.go:12)	PCDATA	$0, $3
	0x00a7 00167 (/tmp/a.go:12)	MOVQ	96(SP), BP
	0x00ac 00172 (/tmp/a.go:12)	ADDQ	$104, SP
	0x00b0 00176 (/tmp/a.go:12)	RET
	0x00b1 00177 (/tmp/a.go:12)	NOP
	0x00b1 00177 (/tmp/a.go:10)	PCDATA	$0, $-1
	0x00b1 00177 (/tmp/a.go:10)	PCDATA	$2, $-1
	0x00b1 00177 (/tmp/a.go:10)	CALL	runtime.morestack_noctxt(SB)
	0x00b6 00182 (/tmp/a.go:10)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 9e  eH..%....H;a....
	0x0010 00 00 00 48 83 ec 68 48 89 6c 24 60 48 8d 6c 24  ...H..hH.l$`H.l$
	0x0020 60 0f 57 c0 0f 11 44 24 40 0f 11 44 24 50 48 8d  `.W...D$@..D$PH.
	0x0030 05 00 00 00 00 48 89 44 24 40 48 8b 44 24 70 48  .....H.D$@H.D$pH
	0x0040 89 44 24 48 48 8d 05 00 00 00 00 48 89 04 24 48  .D$HH......H..$H
	0x0050 8b 44 24 78 48 89 44 24 08 e8 00 00 00 00 48 8b  .D$xH.D$......H.
	0x0060 44 24 10 48 8b 4c 24 18 48 89 44 24 50 48 89 4c  D$.H.L$.H.D$PH.L
	0x0070 24 58 48 8d 05 00 00 00 00 48 89 04 24 48 c7 44  $XH......H..$H.D
	0x0080 24 08 0d 00 00 00 48 8d 44 24 40 48 89 44 24 10  $.....H.D$@H.D$.
	0x0090 48 c7 44 24 18 02 00 00 00 48 c7 44 24 20 02 00  H.D$.....H.D$ ..
	0x00a0 00 00 e8 00 00 00 00 48 8b 6c 24 60 48 83 c4 68  .......H.l$`H..h
	0x00b0 c3 e8 00 00 00 00 e9 45 ff ff ff                 .......E...
	rel 5+4 t=16 TLS+0
	rel 49+4 t=15 type.*"".Int+0
	rel 71+4 t=15 type.int+0
	rel 90+4 t=8 runtime.convT2E64+0
	rel 117+4 t=15 go.string."Raw %v -> %v\n"+0
	rel 163+4 t=8 fmt.Printf+0
	rel 178+4 t=8 runtime.morestack_noctxt+0
"".rawMemoryAccess STEXT nosplit size=31 args=0x20 locals=0x0
	0x0000 00000 (/tmp/a.go:14)	TEXT	"".rawMemoryAccess(SB), NOSPLIT, $0-32
	0x0000 00000 (/tmp/a.go:14)	FUNCDATA	$0, gclocals·568470801006e5c0dc3947ea998fe279(SB)
	0x0000 00000 (/tmp/a.go:14)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0000 00000 (/tmp/a.go:14)	FUNCDATA	$3, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x0000 00000 (/tmp/a.go:15)	MOVQ	"".b+8(SP), AX
	0x0005 00005 (/tmp/a.go:15)	PCDATA	$2, $1
	0x0005 00005 (/tmp/a.go:15)	PCDATA	$0, $0
	0x0005 00005 (/tmp/a.go:15)	TESTB	AL, (AX)
	0x0007 00007 (/tmp/a.go:15)	PCDATA	$2, $0
	0x0007 00007 (/tmp/a.go:15)	PCDATA	$0, $1
	0x0007 00007 (/tmp/a.go:15)	MOVQ	AX, "".~r1+16(SP)
	0x000c 00012 (/tmp/a.go:15)	MOVQ	$255, "".~r1+24(SP)
	0x0015 00021 (/tmp/a.go:15)	MOVQ	$255, "".~r1+32(SP)
	0x001e 00030 (/tmp/a.go:15)	RET
	0x0000 48 8b 44 24 08 84 00 48 89 44 24 10 48 c7 44 24  H.D$...H.D$.H.D$
	0x0010 18 ff 00 00 00 48 c7 44 24 20 ff 00 00 00 c3     .....H.D$ .....
"".main STEXT size=469 args=0x0 locals=0xa0
	0x0000 00000 (/tmp/a.go:18)	TEXT	"".main(SB), $160-0
	0x0000 00000 (/tmp/a.go:18)	MOVQ	(TLS), CX
	0x0009 00009 (/tmp/a.go:18)	LEAQ	-32(SP), AX
	0x000e 00014 (/tmp/a.go:18)	CMPQ	AX, 16(CX)
	0x0012 00018 (/tmp/a.go:18)	JLS	459
	0x0018 00024 (/tmp/a.go:18)	SUBQ	$160, SP
	0x001f 00031 (/tmp/a.go:18)	MOVQ	BP, 152(SP)
	0x0027 00039 (/tmp/a.go:18)	LEAQ	152(SP), BP
	0x002f 00047 (/tmp/a.go:18)	FUNCDATA	$0, gclocals·f5be5308b59e045b7c5b33ee8908cfb7(SB)
	0x002f 00047 (/tmp/a.go:18)	FUNCDATA	$1, gclocals·8ac9e5bc4e330be1c16fb58d8560370e(SB)
	0x002f 00047 (/tmp/a.go:18)	FUNCDATA	$3, gclocals·f9e9e71b3d85c7d9ecf49fc49dd56c0d(SB)
	0x002f 00047 (/tmp/a.go:19)	PCDATA	$2, $1
	0x002f 00047 (/tmp/a.go:19)	PCDATA	$0, $0
	0x002f 00047 (/tmp/a.go:19)	LEAQ	type."".Int(SB), AX
	0x0036 00054 (/tmp/a.go:19)	PCDATA	$2, $0
	0x0036 00054 (/tmp/a.go:19)	MOVQ	AX, (SP)
	0x003a 00058 (/tmp/a.go:19)	CALL	runtime.newobject(SB)
	0x003f 00063 (/tmp/a.go:19)	PCDATA	$2, $1
	0x003f 00063 (/tmp/a.go:19)	MOVQ	8(SP), AX
	0x0044 00068 (/tmp/a.go:19)	PCDATA	$0, $1
	0x0044 00068 (/tmp/a.go:19)	MOVQ	AX, "".&a+72(SP)
	0x0049 00073 (/tmp/a.go:19)	PCDATA	$2, $0
	0x0049 00073 (/tmp/a.go:19)	MOVQ	$15325235, (AX)
	0x0050 00080 (/tmp/a.go:20)	PCDATA	$2, $2
	0x0050 00080 (/tmp/a.go:20)	LEAQ	type.noalg.struct { F uintptr; R *"".Int }(SB), CX
	0x0057 00087 (/tmp/a.go:20)	PCDATA	$2, $0
	0x0057 00087 (/tmp/a.go:20)	MOVQ	CX, (SP)
	0x005b 00091 (/tmp/a.go:20)	CALL	runtime.newobject(SB)
	0x0060 00096 (/tmp/a.go:20)	PCDATA	$2, $1
	0x0060 00096 (/tmp/a.go:20)	MOVQ	8(SP), AX
	0x0065 00101 (/tmp/a.go:20)	LEAQ	"".(*Int).Print-fm(SB), CX
	0x006c 00108 (/tmp/a.go:20)	MOVQ	CX, (AX)
	0x006f 00111 (/tmp/a.go:20)	PCDATA	$2, $-2
	0x006f 00111 (/tmp/a.go:20)	PCDATA	$0, $-2
	0x006f 00111 (/tmp/a.go:20)	CMPL	runtime.writeBarrier(SB), $0
	0x0076 00118 (/tmp/a.go:20)	JNE	428
	0x007c 00124 (/tmp/a.go:20)	MOVQ	"".&a+72(SP), CX
	0x0081 00129 (/tmp/a.go:20)	MOVQ	CX, 8(AX)
	0x0085 00133 (/tmp/a.go:20)	PCDATA	$2, $2
	0x0085 00133 (/tmp/a.go:20)	PCDATA	$0, $2
	0x0085 00133 (/tmp/a.go:20)	MOVQ	AX, "".f+64(SP)
	0x008a 00138 (/tmp/a.go:21)	PCDATA	$2, $0
	0x008a 00138 (/tmp/a.go:21)	MOVQ	CX, (SP)
	0x008e 00142 (/tmp/a.go:21)	MOVQ	$111111111, 8(SP)
	0x0097 00151 (/tmp/a.go:21)	CALL	"".(*Int).Print(SB)
	0x009c 00156 (/tmp/a.go:22)	PCDATA	$2, $1
	0x009c 00156 (/tmp/a.go:22)	MOVQ	"".f+64(SP), AX
	0x00a1 00161 (/tmp/a.go:22)	PCDATA	$0, $3
	0x00a1 00161 (/tmp/a.go:22)	XORPS	X0, X0
	0x00a4 00164 (/tmp/a.go:22)	MOVUPS	X0, ""..autotmp_6+120(SP)
	0x00a9 00169 (/tmp/a.go:22)	MOVUPS	X0, ""..autotmp_6+136(SP)
	0x00b1 00177 (/tmp/a.go:22)	PCDATA	$2, $3
	0x00b1 00177 (/tmp/a.go:22)	LEAQ	type.func(*"".Int, int)(SB), CX
	0x00b8 00184 (/tmp/a.go:22)	PCDATA	$2, $1
	0x00b8 00184 (/tmp/a.go:22)	MOVQ	CX, ""..autotmp_6+120(SP)
	0x00bd 00189 (/tmp/a.go:22)	PCDATA	$2, $3
	0x00bd 00189 (/tmp/a.go:22)	LEAQ	"".(*Int).Print·f(SB), CX
	0x00c4 00196 (/tmp/a.go:22)	PCDATA	$2, $1
	0x00c4 00196 (/tmp/a.go:22)	MOVQ	CX, ""..autotmp_6+128(SP)
	0x00cc 00204 (/tmp/a.go:22)	PCDATA	$2, $3
	0x00cc 00204 (/tmp/a.go:22)	LEAQ	type.func(int)(SB), CX
	0x00d3 00211 (/tmp/a.go:22)	PCDATA	$2, $1
	0x00d3 00211 (/tmp/a.go:22)	MOVQ	CX, ""..autotmp_6+136(SP)
	0x00db 00219 (/tmp/a.go:22)	PCDATA	$2, $0
	0x00db 00219 (/tmp/a.go:22)	MOVQ	AX, ""..autotmp_6+144(SP)
	0x00e3 00227 (/tmp/a.go:22)	PCDATA	$2, $1
	0x00e3 00227 (/tmp/a.go:22)	LEAQ	go.string."Print:%v, Int.Print: %v\n"(SB), AX
	0x00ea 00234 (/tmp/a.go:22)	PCDATA	$2, $0
	0x00ea 00234 (/tmp/a.go:22)	MOVQ	AX, (SP)
	0x00ee 00238 (/tmp/a.go:22)	MOVQ	$24, 8(SP)
	0x00f7 00247 (/tmp/a.go:22)	PCDATA	$2, $1
	0x00f7 00247 (/tmp/a.go:22)	LEAQ	""..autotmp_6+120(SP), AX
	0x00fc 00252 (/tmp/a.go:22)	PCDATA	$2, $0
	0x00fc 00252 (/tmp/a.go:22)	MOVQ	AX, 16(SP)
	0x0101 00257 (/tmp/a.go:22)	MOVQ	$2, 24(SP)
	0x010a 00266 (/tmp/a.go:22)	MOVQ	$2, 32(SP)
	0x0113 00275 (/tmp/a.go:22)	CALL	fmt.Printf(SB)
	0x0118 00280 (/tmp/a.go:23)	PCDATA	$2, $4
	0x0118 00280 (/tmp/a.go:23)	PCDATA	$0, $2
	0x0118 00280 (/tmp/a.go:23)	MOVQ	"".f+64(SP), DX
	0x011d 00285 (/tmp/a.go:23)	MOVQ	$10, (SP)
	0x0125 00293 (/tmp/a.go:23)	MOVQ	(DX), AX
	0x0128 00296 (/tmp/a.go:23)	PCDATA	$2, $0
	0x0128 00296 (/tmp/a.go:23)	CALL	AX
	0x012a 00298 (/tmp/a.go:25)	PCDATA	$2, $1
	0x012a 00298 (/tmp/a.go:25)	PCDATA	$0, $4
	0x012a 00298 (/tmp/a.go:25)	LEAQ	"".f+64(SP), AX
	0x012f 00303 (/tmp/a.go:25)	PCDATA	$2, $0
	0x012f 00303 (/tmp/a.go:25)	MOVQ	AX, ""..autotmp_11+96(SP)
	0x0134 00308 (/tmp/a.go:25)	MOVQ	$255, ""..autotmp_11+104(SP)
	0x013d 00317 (/tmp/a.go:25)	MOVQ	$255, ""..autotmp_11+112(SP)
	0x0146 00326 (/tmp/a.go:25)	PCDATA	$0, $5
	0x0146 00326 (/tmp/a.go:25)	XORPS	X0, X0
	0x0149 00329 (/tmp/a.go:25)	MOVUPS	X0, ""..autotmp_10+80(SP)
	0x014e 00334 (/tmp/a.go:25)	PCDATA	$2, $1
	0x014e 00334 (/tmp/a.go:25)	LEAQ	type.[]uint8(SB), AX
	0x0155 00341 (/tmp/a.go:25)	PCDATA	$2, $0
	0x0155 00341 (/tmp/a.go:25)	MOVQ	AX, (SP)
	0x0159 00345 (/tmp/a.go:25)	PCDATA	$2, $1
	0x0159 00345 (/tmp/a.go:25)	LEAQ	""..autotmp_11+96(SP), AX
	0x015e 00350 (/tmp/a.go:25)	PCDATA	$2, $0
	0x015e 00350 (/tmp/a.go:25)	MOVQ	AX, 8(SP)
	0x0163 00355 (/tmp/a.go:25)	CALL	runtime.convT2Eslice(SB)
	0x0168 00360 (/tmp/a.go:25)	PCDATA	$2, $1
	0x0168 00360 (/tmp/a.go:25)	MOVQ	24(SP), AX
	0x016d 00365 (/tmp/a.go:25)	MOVQ	16(SP), CX
	0x0172 00370 (/tmp/a.go:25)	MOVQ	CX, ""..autotmp_10+80(SP)
	0x0177 00375 (/tmp/a.go:25)	PCDATA	$2, $0
	0x0177 00375 (/tmp/a.go:25)	MOVQ	AX, ""..autotmp_10+88(SP)
	0x017c 00380 (/tmp/a.go:25)	PCDATA	$2, $1
	0x017c 00380 (/tmp/a.go:25)	LEAQ	""..autotmp_10+80(SP), AX
	0x0181 00385 (/tmp/a.go:25)	PCDATA	$2, $0
	0x0181 00385 (/tmp/a.go:25)	MOVQ	AX, (SP)
	0x0185 00389 (/tmp/a.go:25)	MOVQ	$1, 8(SP)
	0x018e 00398 (/tmp/a.go:25)	MOVQ	$1, 16(SP)
	0x0197 00407 (/tmp/a.go:25)	CALL	fmt.Println(SB)
	0x019c 00412 (/tmp/a.go:36)	PCDATA	$0, $2
	0x019c 00412 (/tmp/a.go:36)	MOVQ	152(SP), BP
	0x01a4 00420 (/tmp/a.go:36)	ADDQ	$160, SP
	0x01ab 00427 (/tmp/a.go:36)	RET
	0x01ac 00428 (/tmp/a.go:20)	PCDATA	$2, $-2
	0x01ac 00428 (/tmp/a.go:20)	PCDATA	$0, $-2
	0x01ac 00428 (/tmp/a.go:20)	LEAQ	8(AX), DI
	0x01b0 00432 (/tmp/a.go:20)	MOVQ	AX, CX
	0x01b3 00435 (/tmp/a.go:20)	MOVQ	"".&a+72(SP), AX
	0x01b8 00440 (/tmp/a.go:20)	CALL	runtime.gcWriteBarrier(SB)
	0x01bd 00445 (/tmp/a.go:20)	MOVQ	AX, DX
	0x01c0 00448 (/tmp/a.go:20)	MOVQ	CX, AX
	0x01c3 00451 (/tmp/a.go:21)	MOVQ	DX, CX
	0x01c6 00454 (/tmp/a.go:20)	JMP	133
	0x01cb 00459 (/tmp/a.go:20)	NOP
	0x01cb 00459 (/tmp/a.go:18)	PCDATA	$0, $-1
	0x01cb 00459 (/tmp/a.go:18)	PCDATA	$2, $-1
	0x01cb 00459 (/tmp/a.go:18)	CALL	runtime.morestack_noctxt(SB)
	0x01d0 00464 (/tmp/a.go:18)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 8d 44 24 e0 48 3b  eH..%....H.D$.H;
	0x0010 41 10 0f 86 b3 01 00 00 48 81 ec a0 00 00 00 48  A.......H......H
	0x0020 89 ac 24 98 00 00 00 48 8d ac 24 98 00 00 00 48  ..$....H..$....H
	0x0030 8d 05 00 00 00 00 48 89 04 24 e8 00 00 00 00 48  ......H..$.....H
	0x0040 8b 44 24 08 48 89 44 24 48 48 c7 00 33 d8 e9 00  .D$.H.D$HH..3...
	0x0050 48 8d 0d 00 00 00 00 48 89 0c 24 e8 00 00 00 00  H......H..$.....
	0x0060 48 8b 44 24 08 48 8d 0d 00 00 00 00 48 89 08 83  H.D$.H......H...
	0x0070 3d 00 00 00 00 00 0f 85 30 01 00 00 48 8b 4c 24  =.......0...H.L$
	0x0080 48 48 89 48 08 48 89 44 24 40 48 89 0c 24 48 c7  HH.H.H.D$@H..$H.
	0x0090 44 24 08 c7 6b 9f 06 e8 00 00 00 00 48 8b 44 24  D$..k.......H.D$
	0x00a0 40 0f 57 c0 0f 11 44 24 78 0f 11 84 24 88 00 00  @.W...D$x...$...
	0x00b0 00 48 8d 0d 00 00 00 00 48 89 4c 24 78 48 8d 0d  .H......H.L$xH..
	0x00c0 00 00 00 00 48 89 8c 24 80 00 00 00 48 8d 0d 00  ....H..$....H...
	0x00d0 00 00 00 48 89 8c 24 88 00 00 00 48 89 84 24 90  ...H..$....H..$.
	0x00e0 00 00 00 48 8d 05 00 00 00 00 48 89 04 24 48 c7  ...H......H..$H.
	0x00f0 44 24 08 18 00 00 00 48 8d 44 24 78 48 89 44 24  D$.....H.D$xH.D$
	0x0100 10 48 c7 44 24 18 02 00 00 00 48 c7 44 24 20 02  .H.D$.....H.D$ .
	0x0110 00 00 00 e8 00 00 00 00 48 8b 54 24 40 48 c7 04  ........H.T$@H..
	0x0120 24 0a 00 00 00 48 8b 02 ff d0 48 8d 44 24 40 48  $....H....H.D$@H
	0x0130 89 44 24 60 48 c7 44 24 68 ff 00 00 00 48 c7 44  .D$`H.D$h....H.D
	0x0140 24 70 ff 00 00 00 0f 57 c0 0f 11 44 24 50 48 8d  $p.....W...D$PH.
	0x0150 05 00 00 00 00 48 89 04 24 48 8d 44 24 60 48 89  .....H..$H.D$`H.
	0x0160 44 24 08 e8 00 00 00 00 48 8b 44 24 18 48 8b 4c  D$......H.D$.H.L
	0x0170 24 10 48 89 4c 24 50 48 89 44 24 58 48 8d 44 24  $.H.L$PH.D$XH.D$
	0x0180 50 48 89 04 24 48 c7 44 24 08 01 00 00 00 48 c7  PH..$H.D$.....H.
	0x0190 44 24 10 01 00 00 00 e8 00 00 00 00 48 8b ac 24  D$..........H..$
	0x01a0 98 00 00 00 48 81 c4 a0 00 00 00 c3 48 8d 78 08  ....H.......H.x.
	0x01b0 48 89 c1 48 8b 44 24 48 e8 00 00 00 00 48 89 c2  H..H.D$H.....H..
	0x01c0 48 89 c8 48 89 d1 e9 ba fe ff ff e8 00 00 00 00  H..H............
	0x01d0 e9 2b fe ff ff                                   .+...
	rel 5+4 t=16 TLS+0
	rel 50+4 t=15 type."".Int+0
	rel 59+4 t=8 runtime.newobject+0
	rel 83+4 t=15 type.noalg.struct { F uintptr; R *"".Int }+0
	rel 92+4 t=8 runtime.newobject+0
	rel 104+4 t=15 "".(*Int).Print-fm+0
	rel 113+4 t=15 runtime.writeBarrier+-1
	rel 152+4 t=8 "".(*Int).Print+0
	rel 180+4 t=15 type.func(*"".Int, int)+0
	rel 192+4 t=15 "".(*Int).Print·f+0
	rel 207+4 t=15 type.func(int)+0
	rel 230+4 t=15 go.string."Print:%v, Int.Print: %v\n"+0
	rel 276+4 t=8 fmt.Printf+0
	rel 296+0 t=11 +0
	rel 337+4 t=15 type.[]uint8+0
	rel 356+4 t=8 runtime.convT2Eslice+0
	rel 408+4 t=8 fmt.Println+0
	rel 441+4 t=8 runtime.gcWriteBarrier+0
	rel 460+4 t=8 runtime.morestack_noctxt+0
"".(*Int).Print-fm STEXT dupok size=69 args=0x8 locals=0x18
	0x0000 00000 (/tmp/a.go:20)	TEXT	"".(*Int).Print-fm(SB), DUPOK|NEEDCTXT, $24-8
	0x0000 00000 (/tmp/a.go:20)	MOVQ	(TLS), CX
	0x0009 00009 (/tmp/a.go:20)	CMPQ	SP, 16(CX)
	0x000d 00013 (/tmp/a.go:20)	JLS	62
	0x000f 00015 (/tmp/a.go:20)	SUBQ	$24, SP
	0x0013 00019 (/tmp/a.go:20)	MOVQ	BP, 16(SP)
	0x0018 00024 (/tmp/a.go:20)	LEAQ	16(SP), BP
	0x001d 00029 (/tmp/a.go:20)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (/tmp/a.go:20)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (/tmp/a.go:20)	FUNCDATA	$3, gclocals·db688afbc90e26183a53c9ad23b80c29(SB)
	0x001d 00029 (/tmp/a.go:20)	PCDATA	$2, $2
	0x001d 00029 (/tmp/a.go:20)	PCDATA	$0, $0
	0x001d 00029 (/tmp/a.go:20)	MOVQ	8(DX), AX
	0x0021 00033 (/tmp/a.go:20)	PCDATA	$2, $0
	0x0021 00033 (/tmp/a.go:20)	MOVQ	AX, (SP)
	0x0025 00037 (/tmp/a.go:20)	MOVQ	"".i+32(SP), AX
	0x002a 00042 (/tmp/a.go:20)	MOVQ	AX, 8(SP)
	0x002f 00047 (/tmp/a.go:20)	CALL	"".(*Int).Print(SB)
	0x0034 00052 (/tmp/a.go:20)	MOVQ	16(SP), BP
	0x0039 00057 (/tmp/a.go:20)	ADDQ	$24, SP
	0x003d 00061 (/tmp/a.go:20)	RET
	0x003e 00062 (/tmp/a.go:20)	NOP
	0x003e 00062 (/tmp/a.go:20)	PCDATA	$0, $-1
	0x003e 00062 (/tmp/a.go:20)	PCDATA	$2, $-1
	0x003e 00062 (/tmp/a.go:20)	CALL	runtime.morestack(SB)
	0x0043 00067 (/tmp/a.go:20)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 2f 48  eH..%....H;a.v/H
	0x0010 83 ec 18 48 89 6c 24 10 48 8d 6c 24 10 48 8b 42  ...H.l$.H.l$.H.B
	0x0020 08 48 89 04 24 48 8b 44 24 20 48 89 44 24 08 e8  .H..$H.D$ H.D$..
	0x0030 00 00 00 00 48 8b 6c 24 10 48 83 c4 18 c3 e8 00  ....H.l$.H......
	0x0040 00 00 00 eb bb                                   .....
	rel 5+4 t=16 TLS+0
	rel 48+4 t=8 "".(*Int).Print+0
	rel 63+4 t=8 runtime.morestack+0
"".init STEXT size=92 args=0x0 locals=0x8
	0x0000 00000 (<autogenerated>:1)	TEXT	"".init(SB), $8-0
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	85
	0x000f 00015 (<autogenerated>:1)	SUBQ	$8, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, (SP)
	0x0017 00023 (<autogenerated>:1)	LEAQ	(SP), BP
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$3, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	PCDATA	$2, $0
	0x001b 00027 (<autogenerated>:1)	PCDATA	$0, $0
	0x001b 00027 (<autogenerated>:1)	MOVBLZX	"".initdone·(SB), AX
	0x0022 00034 (<autogenerated>:1)	CMPB	AL, $1
	0x0025 00037 (<autogenerated>:1)	JLS	48
	0x0027 00039 (<autogenerated>:1)	PCDATA	$2, $-2
	0x0027 00039 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0027 00039 (<autogenerated>:1)	MOVQ	(SP), BP
	0x002b 00043 (<autogenerated>:1)	ADDQ	$8, SP
	0x002f 00047 (<autogenerated>:1)	RET
	0x0030 00048 (<autogenerated>:1)	JNE	57
	0x0032 00050 (<autogenerated>:1)	PCDATA	$2, $0
	0x0032 00050 (<autogenerated>:1)	PCDATA	$0, $0
	0x0032 00050 (<autogenerated>:1)	CALL	runtime.throwinit(SB)
	0x0037 00055 (<autogenerated>:1)	UNDEF
	0x0039 00057 (<autogenerated>:1)	MOVB	$1, "".initdone·(SB)
	0x0040 00064 (<autogenerated>:1)	CALL	fmt.init(SB)
	0x0045 00069 (<autogenerated>:1)	MOVB	$2, "".initdone·(SB)
	0x004c 00076 (<autogenerated>:1)	MOVQ	(SP), BP
	0x0050 00080 (<autogenerated>:1)	ADDQ	$8, SP
	0x0054 00084 (<autogenerated>:1)	RET
	0x0055 00085 (<autogenerated>:1)	NOP
	0x0055 00085 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0055 00085 (<autogenerated>:1)	PCDATA	$2, $-1
	0x0055 00085 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x005a 00090 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 46 48  eH..%....H;a.vFH
	0x0010 83 ec 08 48 89 2c 24 48 8d 2c 24 0f b6 05 00 00  ...H.,$H.,$.....
	0x0020 00 00 80 f8 01 76 09 48 8b 2c 24 48 83 c4 08 c3  .....v.H.,$H....
	0x0030 75 07 e8 00 00 00 00 0f 0b c6 05 00 00 00 00 01  u...............
	0x0040 e8 00 00 00 00 c6 05 00 00 00 00 02 48 8b 2c 24  ............H.,$
	0x0050 48 83 c4 08 c3 e8 00 00 00 00 eb a4              H...........
	rel 5+4 t=16 TLS+0
	rel 30+4 t=15 "".initdone·+0
	rel 51+4 t=8 runtime.throwinit+0
	rel 59+4 t=15 "".initdone·+-1
	rel 65+4 t=8 fmt.init+0
	rel 71+4 t=15 "".initdone·+-1
	rel 86+4 t=8 runtime.morestack_noctxt+0
type..hash.[2]interface {} STEXT dupok size=110 args=0x18 locals=0x28
	0x0000 00000 (<autogenerated>:1)	TEXT	type..hash.[2]interface {}(SB), DUPOK, $40-24
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	103
	0x000f 00015 (<autogenerated>:1)	SUBQ	$40, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, 32(SP)
	0x0018 00024 (<autogenerated>:1)	LEAQ	32(SP), BP
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$0, gclocals·1a65e721a2ccc325b382662e7ffee780(SB)
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$3, gclocals·ee104e299ed2e4539b82c61c5a4b843d(SB)
	0x001d 00029 (<autogenerated>:1)	PCDATA	$2, $0
	0x001d 00029 (<autogenerated>:1)	PCDATA	$0, $0
	0x001d 00029 (<autogenerated>:1)	XORL	AX, AX
	0x001f 00031 (<autogenerated>:1)	MOVQ	"".h+56(SP), CX
	0x0024 00036 (<autogenerated>:1)	JMP	82
	0x0026 00038 (<autogenerated>:1)	MOVQ	AX, "".i+24(SP)
	0x002b 00043 (<autogenerated>:1)	SHLQ	$4, AX
	0x002f 00047 (<autogenerated>:1)	PCDATA	$2, $1
	0x002f 00047 (<autogenerated>:1)	MOVQ	"".p+48(SP), BX
	0x0034 00052 (<autogenerated>:1)	PCDATA	$2, $2
	0x0034 00052 (<autogenerated>:1)	ADDQ	BX, AX
	0x0037 00055 (<autogenerated>:1)	PCDATA	$2, $0
	0x0037 00055 (<autogenerated>:1)	MOVQ	AX, (SP)
	0x003b 00059 (<autogenerated>:1)	MOVQ	CX, 8(SP)
	0x0040 00064 (<autogenerated>:1)	CALL	runtime.nilinterhash(SB)
	0x0045 00069 (<autogenerated>:1)	MOVQ	16(SP), CX
	0x004a 00074 (<autogenerated>:1)	MOVQ	"".i+24(SP), AX
	0x004f 00079 (<autogenerated>:1)	INCQ	AX
	0x0052 00082 (<autogenerated>:1)	CMPQ	AX, $2
	0x0056 00086 (<autogenerated>:1)	JLT	38
	0x0058 00088 (<autogenerated>:1)	PCDATA	$0, $1
	0x0058 00088 (<autogenerated>:1)	MOVQ	CX, "".~r2+64(SP)
	0x005d 00093 (<autogenerated>:1)	MOVQ	32(SP), BP
	0x0062 00098 (<autogenerated>:1)	ADDQ	$40, SP
	0x0066 00102 (<autogenerated>:1)	RET
	0x0067 00103 (<autogenerated>:1)	NOP
	0x0067 00103 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0067 00103 (<autogenerated>:1)	PCDATA	$2, $-1
	0x0067 00103 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x006c 00108 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 58 48  eH..%....H;a.vXH
	0x0010 83 ec 28 48 89 6c 24 20 48 8d 6c 24 20 31 c0 48  ..(H.l$ H.l$ 1.H
	0x0020 8b 4c 24 38 eb 2c 48 89 44 24 18 48 c1 e0 04 48  .L$8.,H.D$.H...H
	0x0030 8b 5c 24 30 48 01 d8 48 89 04 24 48 89 4c 24 08  .\$0H..H..$H.L$.
	0x0040 e8 00 00 00 00 48 8b 4c 24 10 48 8b 44 24 18 48  .....H.L$.H.D$.H
	0x0050 ff c0 48 83 f8 02 7c ce 48 89 4c 24 40 48 8b 6c  ..H...|.H.L$@H.l
	0x0060 24 20 48 83 c4 28 c3 e8 00 00 00 00 eb 92        $ H..(........
	rel 5+4 t=16 TLS+0
	rel 65+4 t=8 runtime.nilinterhash+0
	rel 104+4 t=8 runtime.morestack_noctxt+0
type..eq.[2]interface {} STEXT dupok size=182 args=0x18 locals=0x30
	0x0000 00000 (<autogenerated>:1)	TEXT	type..eq.[2]interface {}(SB), DUPOK, $48-24
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	172
	0x0013 00019 (<autogenerated>:1)	SUBQ	$48, SP
	0x0017 00023 (<autogenerated>:1)	MOVQ	BP, 40(SP)
	0x001c 00028 (<autogenerated>:1)	LEAQ	40(SP), BP
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$0, gclocals·dc9b0298814590ca3ffc3a889546fc8b(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$3, gclocals·a1bdf42ea3370bf425f59e11a41daee2(SB)
	0x0021 00033 (<autogenerated>:1)	PCDATA	$2, $1
	0x0021 00033 (<autogenerated>:1)	PCDATA	$0, $0
	0x0021 00033 (<autogenerated>:1)	MOVQ	"".p+56(SP), AX
	0x0026 00038 (<autogenerated>:1)	PCDATA	$2, $2
	0x0026 00038 (<autogenerated>:1)	MOVQ	"".q+64(SP), CX
	0x002b 00043 (<autogenerated>:1)	XORL	DX, DX
	0x002d 00045 (<autogenerated>:1)	JMP	72
	0x002f 00047 (<autogenerated>:1)	PCDATA	$2, $0
	0x002f 00047 (<autogenerated>:1)	MOVQ	""..autotmp_8+32(SP), BX
	0x0034 00052 (<autogenerated>:1)	LEAQ	1(BX), DX
	0x0038 00056 (<autogenerated>:1)	PCDATA	$2, $3
	0x0038 00056 (<autogenerated>:1)	MOVQ	"".p+56(SP), BX
	0x003d 00061 (<autogenerated>:1)	PCDATA	$2, $4
	0x003d 00061 (<autogenerated>:1)	MOVQ	"".q+64(SP), SI
	0x0042 00066 (<autogenerated>:1)	PCDATA	$2, $5
	0x0042 00066 (<autogenerated>:1)	MOVQ	BX, AX
	0x0045 00069 (<autogenerated>:1)	PCDATA	$2, $2
	0x0045 00069 (<autogenerated>:1)	MOVQ	SI, CX
	0x0048 00072 (<autogenerated>:1)	CMPQ	DX, $2
	0x004c 00076 (<autogenerated>:1)	JGE	157
	0x004e 00078 (<autogenerated>:1)	MOVQ	DX, BX
	0x0051 00081 (<autogenerated>:1)	SHLQ	$4, DX
	0x0055 00085 (<autogenerated>:1)	PCDATA	$2, $6
	0x0055 00085 (<autogenerated>:1)	MOVQ	8(DX)(AX*1), SI
	0x005a 00090 (<autogenerated>:1)	PCDATA	$2, $7
	0x005a 00090 (<autogenerated>:1)	MOVQ	(DX)(AX*1), DI
	0x005e 00094 (<autogenerated>:1)	PCDATA	$2, $8
	0x005e 00094 (<autogenerated>:1)	MOVQ	8(DX)(CX*1), R8
	0x0063 00099 (<autogenerated>:1)	PCDATA	$2, $9
	0x0063 00099 (<autogenerated>:1)	MOVQ	(DX)(CX*1), DX
	0x0067 00103 (<autogenerated>:1)	CMPQ	DI, DX
	0x006a 00106 (<autogenerated>:1)	JNE	142
	0x006c 00108 (<autogenerated>:1)	MOVQ	BX, ""..autotmp_8+32(SP)
	0x0071 00113 (<autogenerated>:1)	MOVQ	DI, (SP)
	0x0075 00117 (<autogenerated>:1)	PCDATA	$2, $10
	0x0075 00117 (<autogenerated>:1)	MOVQ	SI, 8(SP)
	0x007a 00122 (<autogenerated>:1)	PCDATA	$2, $0
	0x007a 00122 (<autogenerated>:1)	MOVQ	R8, 16(SP)
	0x007f 00127 (<autogenerated>:1)	CALL	runtime.efaceeq(SB)
	0x0084 00132 (<autogenerated>:1)	PCDATA	$2, $1
	0x0084 00132 (<autogenerated>:1)	LEAQ	24(SP), AX
	0x0089 00137 (<autogenerated>:1)	PCDATA	$2, $0
	0x0089 00137 (<autogenerated>:1)	CMPB	(AX), $0
	0x008c 00140 (<autogenerated>:1)	JNE	47
	0x008e 00142 (<autogenerated>:1)	PCDATA	$0, $1
	0x008e 00142 (<autogenerated>:1)	MOVB	$0, "".~r2+72(SP)
	0x0093 00147 (<autogenerated>:1)	MOVQ	40(SP), BP
	0x0098 00152 (<autogenerated>:1)	ADDQ	$48, SP
	0x009c 00156 (<autogenerated>:1)	RET
	0x009d 00157 (<autogenerated>:1)	MOVB	$1, "".~r2+72(SP)
	0x00a2 00162 (<autogenerated>:1)	MOVQ	40(SP), BP
	0x00a7 00167 (<autogenerated>:1)	ADDQ	$48, SP
	0x00ab 00171 (<autogenerated>:1)	RET
	0x00ac 00172 (<autogenerated>:1)	NOP
	0x00ac 00172 (<autogenerated>:1)	PCDATA	$0, $-1
	0x00ac 00172 (<autogenerated>:1)	PCDATA	$2, $-1
	0x00ac 00172 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x00b1 00177 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 99  eH..%....H;a....
	0x0010 00 00 00 48 83 ec 30 48 89 6c 24 28 48 8d 6c 24  ...H..0H.l$(H.l$
	0x0020 28 48 8b 44 24 38 48 8b 4c 24 40 31 d2 eb 19 48  (H.D$8H.L$@1...H
	0x0030 8b 5c 24 20 48 8d 53 01 48 8b 5c 24 38 48 8b 74  .\$ H.S.H.\$8H.t
	0x0040 24 40 48 89 d8 48 89 f1 48 83 fa 02 7d 4f 48 89  $@H..H..H...}OH.
	0x0050 d3 48 c1 e2 04 48 8b 74 02 08 48 8b 3c 02 4c 8b  .H...H.t..H.<.L.
	0x0060 44 0a 08 48 8b 14 0a 48 39 d7 75 22 48 89 5c 24  D..H...H9.u"H.\$
	0x0070 20 48 89 3c 24 48 89 74 24 08 4c 89 44 24 10 e8   H.<$H.t$.L.D$..
	0x0080 00 00 00 00 48 8d 44 24 18 80 38 00 75 a1 c6 44  ....H.D$..8.u..D
	0x0090 24 48 00 48 8b 6c 24 28 48 83 c4 30 c3 c6 44 24  $H.H.l$(H..0..D$
	0x00a0 48 01 48 8b 6c 24 28 48 83 c4 30 c3 e8 00 00 00  H.H.l$(H..0.....
	0x00b0 00 e9 4a ff ff ff                                ..J...
	rel 5+4 t=16 TLS+0
	rel 128+4 t=8 runtime.efaceeq+0
	rel 173+4 t=8 runtime.morestack_noctxt+0
go.info."".rawMemoryAccess$abstract SDWARFINFO dupok size=33
	0x0000 03 6d 61 69 6e 2e 72 61 77 4d 65 6d 6f 72 79 41  .main.rawMemoryA
	0x0010 63 63 65 73 73 00 01 01 10 62 00 00 00 00 00 00  ccess....b......
	0x0020 00                                               .
	rel 28+4 t=28 go.info.uintptr+0
go.string."Raw %v -> %v\n" SRODATA dupok size=13
	0x0000 52 61 77 20 25 76 20 2d 3e 20 25 76 0a           Raw %v -> %v.
go.loc."".(*Int).Print SDWARFLOC size=0
go.info."".(*Int).Print SDWARFINFO size=61
	0x0000 02 22 22 2e 28 2a 49 6e 74 29 2e 50 72 69 6e 74  ."".(*Int).Print
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 01 9c 00 00 00 00 01 0e 69 00 00 0a 00 00 00  .........i......
	0x0030 00 00 0e 76 00 00 0a 00 00 00 00 00 00           ...v.........
	rel 17+8 t=1 "".(*Int).Print+0
	rel 25+8 t=1 "".(*Int).Print+187
	rel 35+4 t=29 gofile../tmp/a.go+0
	rel 45+4 t=28 go.info.int+0
	rel 55+4 t=28 go.info.*"".Int+0
go.range."".(*Int).Print SDWARFRANGE size=0
go.isstmt."".(*Int).Print SDWARFMISC size=0
	0x0000 04 13 04 0e 03 03 01 83 01 02 14 00              ............
go.loc."".rawMemoryAccess SDWARFLOC size=0
go.info."".rawMemoryAccess SDWARFINFO size=42
	0x0000 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 01 9c 11 00 00 00 00 00 0e 7e 72  ..............~r
	0x0020 31 00 01 0e 00 00 00 00 00 00                    1.........
	rel 1+4 t=28 go.info."".rawMemoryAccess$abstract+0
	rel 5+8 t=1 "".rawMemoryAccess+0
	rel 13+8 t=1 "".rawMemoryAccess+31
	rel 24+4 t=28 go.info."".rawMemoryAccess$abstract+24
	rel 36+4 t=28 go.info.[]uint8+0
go.range."".rawMemoryAccess SDWARFRANGE size=0
go.isstmt."".rawMemoryAccess SDWARFMISC size=0
	0x0000 04 05 01 1a 00                                   .....
go.string."Print:%v, Int.Print: %v\n" SRODATA dupok size=24
	0x0000 50 72 69 6e 74 3a 25 76 2c 20 49 6e 74 2e 50 72  Print:%v, Int.Pr
	0x0010 69 6e 74 3a 20 25 76 0a                          int: %v.
go.loc."".main SDWARFLOC size=125
	0x0000 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0010 44 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00  D.......`.......
	0x0020 01 00 50 60 00 00 00 00 00 00 00 d5 01 00 00 00  ..P`............
	0x0030 00 00 00 03 00 91 a0 7f 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 ff ff ff ff ff ff ff ff  ................
	0x0050 00 00 00 00 00 00 00 00 8a 00 00 00 00 00 00 00  ................
	0x0060 d5 01 00 00 00 00 00 00 03 00 91 98 7f 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00           .............
	rel 8+8 t=1 "".main+0
	rel 80+8 t=1 "".main+0
go.info."".main SDWARFINFO size=58
	0x0000 02 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 0a 26 61 00 13 00 00 00 00 00 00 00 00 0a 66 00  .&a...........f.
	0x0030 14 00 00 00 00 00 00 00 00 00                    ..........
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+469
	rel 27+4 t=29 gofile../tmp/a.go+0
	rel 37+4 t=28 go.info.*"".Int+0
	rel 41+4 t=28 go.loc."".main+0
	rel 49+4 t=28 go.info.func(int)+0
	rel 53+4 t=28 go.loc."".main+72
go.range."".main SDWARFRANGE size=0
go.isstmt."".main SDWARFMISC size=0
	0x0000 04 18 04 17 03 07 01 1a 02 07 01 33 02 04 01 0e  ...........3....
	0x0010 02 05 01 77 02 05 01 0d 02 05 01 6d 02 10 01 1f  ...w.......m....
	0x0020 02 0a 00                                         ...
go.loc."".(*Int).Print-fm SDWARFLOC dupok size=0
go.info."".(*Int).Print-fm SDWARFINFO dupok size=54
	0x0000 02 22 22 2e 28 2a 49 6e 74 29 2e 50 72 69 6e 74  ."".(*Int).Print
	0x0010 2d 66 6d 00 00 00 00 00 00 00 00 00 00 00 00 00  -fm.............
	0x0020 00 00 00 00 01 9c 00 00 00 00 01 0e 69 00 00 0a  ............i...
	0x0030 00 00 00 00 00 00                                ......
	rel 20+8 t=1 "".(*Int).Print-fm+0
	rel 28+8 t=1 "".(*Int).Print-fm+69
	rel 38+4 t=29 gofile../tmp/a.go+0
	rel 48+4 t=28 go.info.int+0
go.range."".(*Int).Print-fm SDWARFRANGE dupok size=0
go.isstmt."".(*Int).Print-fm SDWARFMISC dupok size=0
	0x0000 04 0f 04 0e 05 17 02 11 00                       .........
go.loc."".init SDWARFLOC size=0
go.info."".init SDWARFINFO size=33
	0x0000 02 22 22 2e 69 6e 69 74 00 00 00 00 00 00 00 00  ."".init........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 9+8 t=1 "".init+0
	rel 17+8 t=1 "".init+92
	rel 27+4 t=29 gofile..<autogenerated>+0
go.range."".init SDWARFRANGE size=0
go.isstmt."".init SDWARFMISC size=0
	0x0000 04 0f 04 0c 03 07 01 05 02 09 01 07 02 09 01 15  ................
	0x0010 02 07 00                                         ...
"".initdone· SNOPTRBSS size=1
"".(*Int).Print·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".(*Int).Print+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*main.Int. SRODATA dupok size=12
	0x0000 01 00 09 2a 6d 61 69 6e 2e 49 6e 74              ...*main.Int
type..namedata.*func(*main.Int, int)- SRODATA dupok size=24
	0x0000 00 00 15 2a 66 75 6e 63 28 2a 6d 61 69 6e 2e 49  ...*func(*main.I
	0x0010 6e 74 2c 20 69 6e 74 29                          nt, int)
type.*func(*"".Int, int) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 e3 86 02 16 00 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.Int, int)-+0
	rel 48+8 t=1 type.func(*"".Int, int)+0
type.func(*"".Int, int) SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 58 46 44 2f 02 08 08 33 00 00 00 00 00 00 00 00  XFD/...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.Int, int)-+0
	rel 44+4 t=6 type.*func(*"".Int, int)+0
	rel 56+8 t=1 type.*"".Int+0
	rel 64+8 t=1 type.int+0
type..importpath."". SRODATA dupok size=7
	0x0000 00 00 04 6d 61 69 6e                             ...main
type..namedata.Print. SRODATA dupok size=8
	0x0000 01 00 05 50 72 69 6e 74                          ...Print
type..namedata.*func(int)- SRODATA dupok size=13
	0x0000 00 00 0a 2a 66 75 6e 63 28 69 6e 74 29           ...*func(int)
type.*func(int) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 2b 1f 12 8c 00 08 08 36 00 00 00 00 00 00 00 00  +......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(int)-+0
	rel 48+8 t=1 type.func(int)+0
type.func(int) SRODATA dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 84 e6 f1 18 02 08 08 33 00 00 00 00 00 00 00 00  .......3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(int)-+0
	rel 44+4 t=6 type.*func(int)+0
	rel 56+8 t=1 type.int+0
type.*"".Int SRODATA size=88
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 ae f1 cb 24 01 08 08 36 00 00 00 00 00 00 00 00  ...$...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 01 00 01 00  ................
	0x0040 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.Int.+0
	rel 48+8 t=1 type."".Int+0
	rel 56+4 t=5 type..importpath."".+0
	rel 72+4 t=5 type..namedata.Print.+0
	rel 76+4 t=24 type.func(int)+0
	rel 80+4 t=24 "".(*Int).Print+0
	rel 84+4 t=24 "".(*Int).Print+0
runtime.gcbits. SRODATA dupok size=0
type."".Int SRODATA size=64
	0x0000 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 4a 80 71 79 07 08 08 82 00 00 00 00 00 00 00 00  J.qy............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*main.Int.+0
	rel 44+4 t=5 type.*"".Int+0
	rel 48+4 t=5 type..importpath."".+0
type..namedata.*interface {}- SRODATA dupok size=16
	0x0000 00 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d  ...*interface {}
type.*interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4f 0f 96 9d 00 08 08 36 00 00 00 00 00 00 00 00  O......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 48+8 t=1 type.interface {}+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type.interface {} SRODATA dupok size=80
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 e7 57 a0 18 02 08 08 14 00 00 00 00 00 00 00 00  .W..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.algarray+144
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 44+4 t=6 type.*interface {}+0
	rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}- SRODATA dupok size=18
	0x0000 00 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20  ...*[]interface
	0x0010 7b 7d                                            {}
type.*[]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f3 04 9a e7 00 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 48+8 t=1 type.[]interface {}+0
type.[]interface {} SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 70 93 ea 2f 02 08 08 17 00 00 00 00 00 00 00 00  p../............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 44+4 t=6 type.*[]interface {}+0
	rel 48+8 t=1 type.interface {}+0
type..namedata.*[1]interface {}- SRODATA dupok size=19
	0x0000 00 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65  ...*[1]interface
	0x0010 20 7b 7d                                          {}
type.*[1]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 bf 03 a8 35 00 08 08 36 00 00 00 00 00 00 00 00  ...5...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 48+8 t=1 type.[1]interface {}+0
type.[1]interface {} SRODATA dupok size=72
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 50 91 5b fa 02 08 08 11 00 00 00 00 00 00 00 00  P.[.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+144
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 44+4 t=6 type.*[1]interface {}+0
	rel 48+8 t=1 type.interface {}+0
	rel 56+8 t=1 type.[]interface {}+0
go.loc.type..hash.[2]interface {} SDWARFLOC dupok size=173
	0x0000 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0010 2b 00 00 00 00 00 00 00 56 00 00 00 00 00 00 00  +.......V.......
	0x0020 02 00 91 68 56 00 00 00 00 00 00 00 6e 00 00 00  ...hV.......n...
	0x0030 00 00 00 00 01 00 50 00 00 00 00 00 00 00 00 00  ......P.........
	0x0040 00 00 00 00 00 00 00 ff ff ff ff ff ff ff ff 00  ................
	0x0050 00 00 00 00 00 00 00 1f 00 00 00 00 00 00 00 6e  ...............n
	0x0060 00 00 00 00 00 00 00 01 00 9c 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 ff ff ff ff ff ff  ................
	0x0080 ff ff 00 00 00 00 00 00 00 00 4a 00 00 00 00 00  ..........J.....
	0x0090 00 00 6e 00 00 00 00 00 00 00 01 00 52 00 00 00  ..n.........R...
	0x00a0 00 00 00 00 00 00 00 00 00 00 00 00 00           .............
	rel 8+8 t=1 type..hash.[2]interface {}+0
	rel 79+8 t=1 type..hash.[2]interface {}+0
	rel 130+8 t=1 type..hash.[2]interface {}+0
go.info.type..hash.[2]interface {} SDWARFINFO dupok size=102
	0x0000 02 74 79 70 65 2e 2e 68 61 73 68 2e 5b 32 5d 69  .type..hash.[2]i
	0x0010 6e 74 65 72 66 61 63 65 20 7b 7d 00 00 00 00 00  nterface {}.....
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 01 9c 00 00  ................
	0x0030 00 00 01 0a 69 00 01 00 00 00 00 00 00 00 00 0f  ....i...........
	0x0040 70 00 00 01 00 00 00 00 00 00 00 00 0f 68 00 00  p............h..
	0x0050 01 00 00 00 00 00 00 00 00 0e 7e 72 32 00 01 01  ..........~r2...
	0x0060 00 00 00 00 00 00                                ......
	rel 28+8 t=1 type..hash.[2]interface {}+0
	rel 36+8 t=1 type..hash.[2]interface {}+110
	rel 46+4 t=29 gofile..<autogenerated>+0
	rel 55+4 t=28 go.info.int+0
	rel 59+4 t=28 go.loc.type..hash.[2]interface {}+0
	rel 68+4 t=28 go.info.*[2]interface {}+0
	rel 72+4 t=28 go.loc.type..hash.[2]interface {}+71
	rel 81+4 t=28 go.info.uintptr+0
	rel 85+4 t=28 go.loc.type..hash.[2]interface {}+122
	rel 96+4 t=28 go.info.uintptr+0
go.range.type..hash.[2]interface {} SDWARFRANGE dupok size=0
go.isstmt.type..hash.[2]interface {} SDWARFMISC dupok size=0
	0x0000 04 0f 04 0e 03 02 01 33 02 04 01 02 02 05 01 0a  .......3........
	0x0010 02 07 00                                         ...
go.loc.type..eq.[2]interface {} SDWARFLOC dupok size=154
	0x0000 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0010 4c 00 00 00 00 00 00 00 55 00 00 00 00 00 00 00  L.......U.......
	0x0020 01 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00  ..Q.............
	0x0030 00 00 00 ff ff ff ff ff ff ff ff 00 00 00 00 00  ................
	0x0040 00 00 00 26 00 00 00 00 00 00 00 b6 00 00 00 00  ...&............
	0x0050 00 00 00 01 00 9c 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 ff ff ff ff ff ff ff ff 00 00  ................
	0x0070 00 00 00 00 00 00 26 00 00 00 00 00 00 00 b6 00  ......&.........
	0x0080 00 00 00 00 00 00 02 00 91 08 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00 00 00                    ..........
	rel 8+8 t=1 type..eq.[2]interface {}+0
	rel 59+8 t=1 type..eq.[2]interface {}+0
	rel 110+8 t=1 type..eq.[2]interface {}+0
go.info.type..eq.[2]interface {} SDWARFINFO dupok size=100
	0x0000 02 74 79 70 65 2e 2e 65 71 2e 5b 32 5d 69 6e 74  .type..eq.[2]int
	0x0010 65 72 66 61 63 65 20 7b 7d 00 00 00 00 00 00 00  erface {}.......
	0x0020 00 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00  ................
	0x0030 01 0a 69 00 01 00 00 00 00 00 00 00 00 0f 70 00  ..i...........p.
	0x0040 00 01 00 00 00 00 00 00 00 00 0f 71 00 00 01 00  ...........q....
	0x0050 00 00 00 00 00 00 00 0e 7e 72 32 00 01 01 00 00  ........~r2.....
	0x0060 00 00 00 00                                      ....
	rel 26+8 t=1 type..eq.[2]interface {}+0
	rel 34+8 t=1 type..eq.[2]interface {}+182
	rel 44+4 t=29 gofile..<autogenerated>+0
	rel 53+4 t=28 go.info.int+0
	rel 57+4 t=28 go.loc.type..eq.[2]interface {}+0
	rel 66+4 t=28 go.info.*[2]interface {}+0
	rel 70+4 t=28 go.loc.type..eq.[2]interface {}+51
	rel 79+4 t=28 go.info.*[2]interface {}+0
	rel 83+4 t=28 go.loc.type..eq.[2]interface {}+102
	rel 94+4 t=28 go.info.bool+0
go.range.type..eq.[2]interface {} SDWARFRANGE dupok size=0
go.isstmt.type..eq.[2]interface {} SDWARFMISC dupok size=0
	0x0000 04 13 04 0e 03 05 01 22 02 04 01 42 02 05 01 0a  ......."...B....
	0x0010 02 05 01 0a 02 0a 00                             .......
type..hashfunc.[2]interface {} SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..hash.[2]interface {}+0
type..eqfunc.[2]interface {} SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq.[2]interface {}+0
type..alg.[2]interface {} SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc.[2]interface {}+0
	rel 8+8 t=1 type..eqfunc.[2]interface {}+0
type..namedata.*[2]interface {}- SRODATA dupok size=19
	0x0000 00 00 10 2a 5b 32 5d 69 6e 74 65 72 66 61 63 65  ...*[2]interface
	0x0010 20 7b 7d                                          {}
type.*[2]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 be 73 2d 71 00 08 08 36 00 00 00 00 00 00 00 00  .s-q...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[2]interface {}-+0
	rel 48+8 t=1 type.[2]interface {}+0
runtime.gcbits.0a SRODATA dupok size=1
	0x0000 0a                                               .
type.[2]interface {} SRODATA dupok size=72
	0x0000 20 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00   ....... .......
	0x0010 2c 59 a4 f1 02 08 08 11 00 00 00 00 00 00 00 00  ,Y..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type..alg.[2]interface {}+0
	rel 32+8 t=1 runtime.gcbits.0a+0
	rel 40+4 t=5 type..namedata.*[2]interface {}-+0
	rel 44+4 t=6 type.*[2]interface {}+0
	rel 48+8 t=1 type.interface {}+0
	rel 56+8 t=1 type.[]interface {}+0
type..namedata.*[]uint8- SRODATA dupok size=11
	0x0000 00 00 08 2a 5b 5d 75 69 6e 74 38                 ...*[]uint8
type.*[]uint8 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 a5 8e d0 69 00 08 08 36 00 00 00 00 00 00 00 00  ...i...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]uint8-+0
	rel 48+8 t=1 type.[]uint8+0
type.[]uint8 SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 df 7e 2e 38 02 08 08 17 00 00 00 00 00 00 00 00  .~.8............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]uint8-+0
	rel 44+4 t=6 type.*[]uint8+0
	rel 48+8 t=1 type.uint8+0
type..namedata.*struct { F uintptr; R *main.Int }- SRODATA dupok size=37
	0x0000 00 00 22 2a 73 74 72 75 63 74 20 7b 20 46 20 75  .."*struct { F u
	0x0010 69 6e 74 70 74 72 3b 20 52 20 2a 6d 61 69 6e 2e  intptr; R *main.
	0x0020 49 6e 74 20 7d                                   Int }
type.*struct { F uintptr; R *"".Int } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 fb 9c ca 6a 00 08 08 36 00 00 00 00 00 00 00 00  ...j...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; R *main.Int }-+0
	rel 48+8 t=1 type.noalg.struct { F uintptr; R *"".Int }+0
type..namedata.F. SRODATA dupok size=4
	0x0000 01 00 01 46                                      ...F
type..namedata.R. SRODATA dupok size=4
	0x0000 01 00 01 52                                      ...R
type.noalg.struct { F uintptr; R *"".Int } SRODATA dupok size=128
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 d6 a5 7b b9 02 08 08 19 00 00 00 00 00 00 00 00  ..{.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; R *main.Int }-+0
	rel 44+4 t=6 type.*struct { F uintptr; R *"".Int }+0
	rel 56+8 t=1 type.noalg.struct { F uintptr; R *"".Int }+80
	rel 80+8 t=1 type..namedata.F.+0
	rel 88+8 t=1 type.uintptr+0
	rel 104+8 t=1 type..namedata.R.+0
	rel 112+8 t=1 type.*"".Int+0
type..importpath.fmt. SRODATA dupok size=6
	0x0000 00 00 03 66 6d 74                                ...fmt
type..importpath.unsafe. SRODATA dupok size=9
	0x0000 00 00 06 75 6e 73 61 66 65                       ...unsafe
gclocals·c5b2f6560804ff174daf09d95facbd35 SRODATA dupok size=12
	0x0000 04 00 00 00 01 00 00 00 01 01 00 00              ............
gclocals·586340653b60487fbabcdcae672dfed1 SRODATA dupok size=12
	0x0000 04 00 00 00 04 00 00 00 00 0a 0a 00              ............
gclocals·1cf923758aae2e428391d1783fe59973 SRODATA dupok size=11
	0x0000 03 00 00 00 02 00 00 00 00 01 02                 ...........
gclocals·568470801006e5c0dc3947ea998fe279 SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 00 02                    ..........
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·9fb7f0986f647f17cb53dda1484e0f7a SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
gclocals·f5be5308b59e045b7c5b33ee8908cfb7 SRODATA dupok size=8
	0x0000 07 00 00 00 00 00 00 00                          ........
gclocals·8ac9e5bc4e330be1c16fb58d8560370e SRODATA dupok size=22
	0x0000 07 00 00 00 0b 00 00 00 00 00 02 00 01 00 01 05  ................
	0x0010 11 00 19 00 09 00                                ......
gclocals·f9e9e71b3d85c7d9ecf49fc49dd56c0d SRODATA dupok size=13
	0x0000 05 00 00 00 03 00 00 00 00 01 02 03 04           .............
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·db688afbc90e26183a53c9ad23b80c29 SRODATA dupok size=11
	0x0000 03 00 00 00 03 00 00 00 00 04 01                 ...........
gclocals·1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals·ee104e299ed2e4539b82c61c5a4b843d SRODATA dupok size=11
	0x0000 03 00 00 00 04 00 00 00 00 08 01                 ...........
gclocals·dc9b0298814590ca3ffc3a889546fc8b SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 03 00                    ..........
gclocals·a1bdf42ea3370bf425f59e11a41daee2 SRODATA dupok size=19
	0x0000 0b 00 00 00 08 00 00 00 00 01 03 08 28 21 23 22  ............(!#"
	0x0010 a2 a0 80                                         ...
