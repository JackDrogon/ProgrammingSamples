; ModuleID = 'vtable.cc'
source_filename = "vtable.cc"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%struct.Base = type <{ i32 (...)**, i32, [4 x i8] }>
%struct.Derived = type { %struct.Base.base, [4 x i8] }
%struct.Base.base = type <{ i32 (...)**, i32 }>

@_ZTV7Derived = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI7Derived to i8*), i8* bitcast (void (%struct.Derived*)* @_ZN7DerivedD1Ev to i8*), i8* bitcast (void (%struct.Derived*)* @_ZN7DerivedD0Ev to i8*), i8* bitcast (i32 (%struct.Derived*)* @_ZN7Derived3getEv to i8*)] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS7Derived = linkonce_odr constant [9 x i8] c"7Derived\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS4Base = linkonce_odr constant [6 x i8] c"4Base\00", align 1
@_ZTI4Base = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_ZTS4Base, i32 0, i32 0) }, align 8
@_ZTI7Derived = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7Derived, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI4Base to i8*) }, align 8
@_ZTV4Base = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI4Base to i8*), i8* bitcast (void (%struct.Base*)* @_ZN4BaseD1Ev to i8*), i8* bitcast (void (%struct.Base*)* @_ZN4BaseD0Ev to i8*), i8* bitcast (i32 (%struct.Base*)* @_ZN4Base3getEv to i8*)] }, align 8
; Function Attrs: ssp uwtable
define i32 @_Z3getP4Base(%struct.Base* %0) local_unnamed_addr #0 {
  %2 = bitcast %struct.Base* %0 to i32 (%struct.Base*)***
  %3 = load i32 (%struct.Base*)**, i32 (%struct.Base*)*** %2, align 8, !tbaa !4
  %4 = getelementptr inbounds i32 (%struct.Base*)*, i32 (%struct.Base*)** %3, i64 2
  %5 = load i32 (%struct.Base*)*, i32 (%struct.Base*)** %4, align 8
  %6 = call i32 %5(%struct.Base* %0)
  ret i32 %6
}
; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %struct.Derived, align 8
  %2 = bitcast %struct.Derived* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #6
  call void @_ZN7DerivedC1Ei(%struct.Derived* nonnull %1, i32 10)
  %3 = bitcast %struct.Derived* %1 to %struct.Base*
  %4 = invoke i32 @_Z3getP4Base(%struct.Base* nonnull %3)
          to label %5 unwind label %6

5:                                                ; preds = %0
  call void @_ZN7DerivedD1Ev(%struct.Derived* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #6
  ret i32 0

6:                                                ; preds = %0
  %7 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN7DerivedD1Ev(%struct.Derived* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #6
  resume { i8*, i32 } %7
}
; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2
; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN7DerivedC1Ei(%struct.Derived* %0, i32 %1) unnamed_addr #0 align 2 {
  call void @_ZN7DerivedC2Ei(%struct.Derived* %0, i32 %1)
  ret void
}
declare i32 @__gxx_personality_v0(...)
; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZN7DerivedD1Ev(%struct.Derived* %0) unnamed_addr #3 align 2 {
  call void @_ZN7DerivedD2Ev(%struct.Derived* %0) #6
  ret void
}
; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2
; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN7DerivedC2Ei(%struct.Derived* %0, i32 %1) unnamed_addr #0 align 2 {
  %3 = bitcast %struct.Derived* %0 to %struct.Base*
  call void @_ZN4BaseC2Ei(%struct.Base* %3, i32 %1)
  %4 = getelementptr %struct.Derived, %struct.Derived* %0, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV7Derived, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !4
  ret void
}
; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN4BaseC2Ei(%struct.Base* %0, i32 %1) unnamed_addr #4 align 2 {
  %3 = getelementptr %struct.Base, %struct.Base* %0, i64 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV4Base, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %3, align 8, !tbaa !4
  %4 = getelementptr inbounds %struct.Base, %struct.Base* %0, i64 0, i32 1
  store i32 %1, i32* %4, align 8, !tbaa !7
  ret void
}
; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZN7DerivedD0Ev(%struct.Derived* %0) unnamed_addr #3 align 2 {
  call void @_ZN7DerivedD1Ev(%struct.Derived* %0) #6
  %2 = bitcast %struct.Derived* %0 to i8*
  call void @_ZdlPv(i8* %2) #7
  ret void
}
; Function Attrs: nounwind ssp uwtable
define linkonce_odr i32 @_ZN7Derived3getEv(%struct.Derived* %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %struct.Derived, %struct.Derived* %0, i64 0, i32 0, i32 1
  %3 = load i32, i32* %2, align 8, !tbaa !7
  %4 = add nsw i32 %3, 10
  ret i32 %4
}
; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN4BaseD1Ev(%struct.Base* %0) unnamed_addr #4 align 2 {
  call void @_ZN4BaseD2Ev(%struct.Base* %0) #6
  ret void
}
; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN4BaseD0Ev(%struct.Base* %0) unnamed_addr #4 align 2 {
  call void @_ZN4BaseD1Ev(%struct.Base* %0) #6
  %2 = bitcast %struct.Base* %0 to i8*
  call void @_ZdlPv(i8* %2) #7
  ret void
}
; Function Attrs: nounwind ssp uwtable
define linkonce_odr i32 @_ZN4Base3getEv(%struct.Base* %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %struct.Base, %struct.Base* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 8, !tbaa !7
  ret i32 %3
}
; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN4BaseD2Ev(%struct.Base* %0) unnamed_addr #4 align 2 {
  ret void
}
; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #5
; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZN7DerivedD2Ev(%struct.Derived* %0) unnamed_addr #3 align 2 {
  %2 = bitcast %struct.Derived* %0 to %struct.Base*
  call void @_ZN4BaseD2Ev(%struct.Base* %2) #6
  ret void
}

attributes #0 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
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
!3 = !{!"Apple clang version 12.0.0 (clang-1200.0.32.29)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"vtable pointer", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTS4Base", !9, i64 8}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !6, i64 0}
