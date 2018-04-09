; ModuleID = 'range_for_llvmcode.cc'
source_filename = "range_for_llvmcode.cc"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%"class.std::initializer_list" = type { i32*, i64 }

@.ref.tmp = private constant [3 x i32] [i32 1, i32 2, i32 3], align 4

; Function Attrs: noinline norecurse nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca %"class.std::initializer_list"*, align 8
  %2 = alloca %"class.std::initializer_list"*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::initializer_list"*, align 8
  %6 = alloca %"class.std::initializer_list", align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %10 = getelementptr inbounds %"class.std::initializer_list", %"class.std::initializer_list"* %6, i32 0, i32 0
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.ref.tmp, i64 0, i64 0), i32** %10, align 8
  %11 = getelementptr inbounds %"class.std::initializer_list", %"class.std::initializer_list"* %6, i32 0, i32 1
  store i64 3, i64* %11, align 8
  store %"class.std::initializer_list"* %6, %"class.std::initializer_list"** %5, align 8
  %12 = load %"class.std::initializer_list"*, %"class.std::initializer_list"** %5, align 8
  store %"class.std::initializer_list"* %12, %"class.std::initializer_list"** %2, align 8
  %13 = load %"class.std::initializer_list"*, %"class.std::initializer_list"** %2, align 8
  %14 = getelementptr inbounds %"class.std::initializer_list", %"class.std::initializer_list"* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load %"class.std::initializer_list"*, %"class.std::initializer_list"** %5, align 8
  store %"class.std::initializer_list"* %16, %"class.std::initializer_list"** %1, align 8
  %17 = load %"class.std::initializer_list"*, %"class.std::initializer_list"** %1, align 8
  %18 = getelementptr inbounds %"class.std::initializer_list", %"class.std::initializer_list"* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds %"class.std::initializer_list", %"class.std::initializer_list"* %17, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32* %22, i32** %8, align 8
  br label %23

; <label>:23:                                     ; preds = %33, %0
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %24, %25
  br i1 %26, label %27, label %36

; <label>:27:                                     ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

; <label>:33:                                     ; preds = %27
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %7, align 8
  br label %23

; <label>:36:                                     ; preds = %23
  ret i32 0
}

attributes #0 = { noinline norecurse nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Apple LLVM version 9.1.0 (clang-902.0.39.1)"}
