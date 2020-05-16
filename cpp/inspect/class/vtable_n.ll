; ModuleID = 'vtable.cc'
source_filename = "vtable.cc"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%struct.Derived = type { %struct.Base.base, [4 x i8] }
%struct.Base.base = type <{ i32 (...)**, i32 }>
%struct.Base = type <{ i32 (...)**, i32, [4 x i8] }>

@vtable for Derived = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @typeinfo for Derived to i8*), i8* bitcast (void (%struct.Derived*)* @Derived::~Derived() to i8*), i8* bitcast (void (%struct.Derived*)* @Derived::~Derived() to i8*), i8* bitcast (i32 (%struct.Derived*)* @Derived::get() to i8*)] }, align 8
@vtable for __cxxabiv1::__si_class_type_info = external global i8*
@typeinfo name for Derived = linkonce_odr constant [9 x i8] c"7Derived\00", align 1
@vtable for __cxxabiv1::__class_type_info = external global i8*
@typeinfo name for Base = linkonce_odr constant [6 x i8] c"4Base\00", align 1
@typeinfo for Base = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @vtable for __cxxabiv1::__class_type_info, i64 2) to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @typeinfo name for Base, i32 0, i32 0) }, align 8
@typeinfo for Derived = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @vtable for __cxxabiv1::__si_class_type_info, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @typeinfo name for Derived, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @typeinfo for Base to i8*) }, align 8
@vtable for Base = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @typeinfo for Base to i8*), i8* bitcast (void (%struct.Base*)* @Base::~Base() to i8*), i8* bitcast (void (%struct.Base*)* @Base::~Base() to i8*), i8* bitcast (i32 (%struct.Base*)* @Base::get() to i8*)] }, align 8
; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Derived, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store i32 0, i32* %1, align 4
  call void @Derived::Derived(int)(%struct.Derived* %2, i32 10)
  %5 = bitcast %struct.Derived* %2 to %struct.Base*
  %6 = bitcast %struct.Base* %5 to i32 (%struct.Base*)***
  %7 = load i32 (%struct.Base*)**, i32 (%struct.Base*)*** %6, align 8
  %8 = getelementptr inbounds i32 (%struct.Base*)*, i32 (%struct.Base*)** %7, i64 2
  %9 = load i32 (%struct.Base*)*, i32 (%struct.Base*)** %8, align 8
  %10 = invoke i32 %9(%struct.Base* %5)
          to label %11 unwind label %13

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  call void @Derived::~Derived()(%struct.Derived* %2) #4
  %12 = load i32, i32* %1, align 4
  ret i32 %12

13:                                               ; preds = %0
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %3, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %4, align 4
  call void @Derived::~Derived()(%struct.Derived* %2) #4
  br label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = insertvalue { i8*, i32 } undef, i8* %18, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}
; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @Derived::Derived(int)(%struct.Derived* %0, i32 %1) unnamed_addr #1 align 2 {
  %3 = alloca %struct.Derived*, align 8
  %4 = alloca i32, align 4
  store %struct.Derived* %0, %struct.Derived** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.Derived*, %struct.Derived** %3, align 8
  %6 = load i32, i32* %4, align 4
  call void @Derived::Derived(int)(%struct.Derived* %5, i32 %6)
  ret void
}
declare i32 @__gxx_personality_v0(...)
; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @Derived::~Derived()(%struct.Derived* %0) unnamed_addr #2 align 2 {
  %2 = alloca %struct.Derived*, align 8
  store %struct.Derived* %0, %struct.Derived** %2, align 8
  %3 = load %struct.Derived*, %struct.Derived** %2, align 8
  call void @Derived::~Derived()(%struct.Derived* %3) #4
  ret void
}
; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @Derived::Derived(int)(%struct.Derived* %0, i32 %1) unnamed_addr #1 align 2 {
  %3 = alloca %struct.Derived*, align 8
  %4 = alloca i32, align 4
  store %struct.Derived* %0, %struct.Derived** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.Derived*, %struct.Derived** %3, align 8
  %6 = bitcast %struct.Derived* %5 to %struct.Base*
  %7 = load i32, i32* %4, align 4
  call void @Base::Base(int)(%struct.Base* %6, i32 %7)
  %8 = bitcast %struct.Derived* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @vtable for Derived, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %8, align 8
  ret void
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @Base::Base(int)(%struct.Base* %0, i32 %1) unnamed_addr #2 align 2 {
  %3 = alloca %struct.Base*, align 8
  %4 = alloca i32, align 4
  store %struct.Base* %0, %struct.Base** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.Base*, %struct.Base** %3, align 8
  %6 = bitcast %struct.Base* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @vtable for Base, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %6, align 8
  %7 = getelementptr inbounds %struct.Base, %struct.Base* %5, i32 0, i32 1
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %7, align 8
  ret void
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @Derived::~Derived()(%struct.Derived* %0) unnamed_addr #2 align 2 {
  %2 = alloca %struct.Derived*, align 8
  store %struct.Derived* %0, %struct.Derived** %2, align 8
  %3 = load %struct.Derived*, %struct.Derived** %2, align 8
  call void @Derived::~Derived()(%struct.Derived* %3) #4
  %4 = bitcast %struct.Derived* %3 to i8*
  call void @operator delete(void*)(i8* %4) #5
  ret void
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @Derived::get()(%struct.Derived* %0) unnamed_addr #2 align 2 {
  %2 = alloca %struct.Derived*, align 8
  store %struct.Derived* %0, %struct.Derived** %2, align 8
  %3 = load %struct.Derived*, %struct.Derived** %2, align 8
  %4 = bitcast %struct.Derived* %3 to %struct.Base*
  %5 = getelementptr inbounds %struct.Base, %struct.Base* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 10
  ret i32 %7
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @Base::~Base()(%struct.Base* %0) unnamed_addr #2 align 2 {
  %2 = alloca %struct.Base*, align 8
  store %struct.Base* %0, %struct.Base** %2, align 8
  %3 = load %struct.Base*, %struct.Base** %2, align 8
  call void @Base::~Base()(%struct.Base* %3) #4
  ret void
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @Base::~Base()(%struct.Base* %0) unnamed_addr #2 align 2 {
  %2 = alloca %struct.Base*, align 8
  store %struct.Base* %0, %struct.Base** %2, align 8
  %3 = load %struct.Base*, %struct.Base** %2, align 8
  call void @Base::~Base()(%struct.Base* %3) #4
  %4 = bitcast %struct.Base* %3 to i8*
  call void @operator delete(void*)(i8* %4) #5
  ret void
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @Base::get()(%struct.Base* %0) unnamed_addr #2 align 2 {
  %2 = alloca %struct.Base*, align 8
  store %struct.Base* %0, %struct.Base** %2, align 8
  %3 = load %struct.Base*, %struct.Base** %2, align 8
  %4 = getelementptr inbounds %struct.Base, %struct.Base* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}
; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @Base::~Base()(%struct.Base* %0) unnamed_addr #2 align 2 {
  %2 = alloca %struct.Base*, align 8
  store %struct.Base* %0, %struct.Base** %2, align 8
  %3 = load %struct.Base*, %struct.Base** %2, align 8
  ret void
}
; Function Attrs: nobuiltin nounwind
declare void @operator delete(void*)(i8*) #3
; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @Derived::~Derived()(%struct.Derived* %0) unnamed_addr #2 align 2 {
  %2 = alloca %struct.Derived*, align 8
  store %struct.Derived* %0, %struct.Derived** %2, align 8
  %3 = load %struct.Derived*, %struct.Derived** %2, align 8
  %4 = bitcast %struct.Derived* %3 to %struct.Base*
  call void @Base::~Base()(%struct.Base* %4) #4
  ret void
}

attributes #0 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple clang version 12.0.0 (clang-1200.0.32.28)"}
