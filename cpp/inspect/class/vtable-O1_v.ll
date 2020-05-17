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
; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %struct.Derived, align 8
  %2 = bitcast %struct.Derived* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #6
  call void @Derived::Derived(int)(%struct.Derived* nonnull %1, i32 10)
  %3 = bitcast %struct.Derived* %1 to %struct.Base*
  %4 = bitcast %struct.Derived* %1 to i32 (%struct.Base*)***
  %5 = load i32 (%struct.Base*)**, i32 (%struct.Base*)*** %4, align 8, !tbaa !4
  %6 = getelementptr inbounds i32 (%struct.Base*)*, i32 (%struct.Base*)** %5, i64 2
  %7 = load i32 (%struct.Base*)*, i32 (%struct.Base*)** %6, align 8
  %8 = invoke i32 %7(%struct.Base* nonnull %3)
          to label %9 unwind label %10

9:                                                ; preds = %0
  call void @Derived::~Derived()(%struct.Derived* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #6
  ret i32 0

10:                                               ; preds = %0
  %11 = landingpad { i8*, i32 }
          cleanup
  call void @Derived::~Derived()(%struct.Derived* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #6
  resume { i8*, i32 } %11
}
; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1
; Function Attrs: ssp uwtable
define linkonce_odr void @Derived::Derived(int)(%struct.Derived* %0, i32 %1) unnamed_addr #2 align 2 {
  call void @Derived::Derived(int)(%struct.Derived* %0, i32 %1)
  ret void
}
declare i32 @__gxx_personality_v0(...)
; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @Derived::~Derived()(%struct.Derived* %0) unnamed_addr #3 align 2 {
  call void @Derived::~Derived()(%struct.Derived* %0) #6
  ret void
}
; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1
; Function Attrs: ssp uwtable
define linkonce_odr void @Derived::Derived(int)(%struct.Derived* %0, i32 %1) unnamed_addr #2 align 2 {
  %3 = bitcast %struct.Derived* %0 to %struct.Base*
  call void @Base::Base(int)(%struct.Base* %3, i32 %1)
  %4 = getelementptr %struct.Derived, %struct.Derived* %0, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @vtable for Derived, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !4
  ret void
}
; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @Base::Base(int)(%struct.Base* %0, i32 %1) unnamed_addr #4 align 2 {
  %3 = getelementptr %struct.Base, %struct.Base* %0, i64 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @vtable for Base, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %3, align 8, !tbaa !4
  %4 = getelementptr inbounds %struct.Base, %struct.Base* %0, i64 0, i32 1
  store i32 %1, i32* %4, align 8, !tbaa !7
  ret void
}
; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @Derived::~Derived()(%struct.Derived* %0) unnamed_addr #3 align 2 {
  call void @Derived::~Derived()(%struct.Derived* %0) #6
  %2 = bitcast %struct.Derived* %0 to i8*
  call void @operator delete(void*)(i8* %2) #7
  ret void
}
; Function Attrs: nounwind ssp uwtable
define linkonce_odr i32 @Derived::get()(%struct.Derived* %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %struct.Derived, %struct.Derived* %0, i64 0, i32 0, i32 1
  %3 = load i32, i32* %2, align 8, !tbaa !7
  %4 = add nsw i32 %3, 10
  ret i32 %4
}
; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @Base::~Base()(%struct.Base* %0) unnamed_addr #4 align 2 {
  call void @Base::~Base()(%struct.Base* %0) #6
  ret void
}
; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @Base::~Base()(%struct.Base* %0) unnamed_addr #4 align 2 {
  call void @Base::~Base()(%struct.Base* %0) #6
  %2 = bitcast %struct.Base* %0 to i8*
  call void @operator delete(void*)(i8* %2) #7
  ret void
}
; Function Attrs: nounwind ssp uwtable
define linkonce_odr i32 @Base::get()(%struct.Base* %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %struct.Base, %struct.Base* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 8, !tbaa !7
  ret i32 %3
}
; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @Base::~Base()(%struct.Base* %0) unnamed_addr #4 align 2 {
  ret void
}
; Function Attrs: nobuiltin nounwind
declare void @operator delete(void*)(i8*) local_unnamed_addr #5
; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @Derived::~Derived()(%struct.Derived* %0) unnamed_addr #3 align 2 {
  %2 = bitcast %struct.Derived* %0 to %struct.Base*
  call void @Base::~Base()(%struct.Base* %2) #6
  ret void
}

attributes #0 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple clang version 12.0.0 (clang-1200.0.32.28)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"vtable pointer", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTS4Base", !9, i64 8}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !6, i64 0}
