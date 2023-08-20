; ModuleID = 'pure.cc'
source_filename = "pure.cc"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%struct.Base = type <{ i32 (...)**, i32, [4 x i8] }>
%struct.Derived = type { %struct.Base.base, [4 x i8] }
%struct.Base.base = type <{ i32 (...)**, i32 }>

@vtable for Derived = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @typeinfo for Derived to i8*), i8* bitcast (void (%struct.Derived*)* @Derived::~Derived() to i8*), i8* bitcast (void (%struct.Derived*)* @Derived::~Derived() to i8*), i8* bitcast (i32 (%struct.Derived*)* @Derived::get() to i8*)] }, align 8
@vtable for __cxxabiv1::__si_class_type_info = external global i8*
@typeinfo name for Derived = linkonce_odr constant [9 x i8] c"7Derived\00", align 1
@vtable for __cxxabiv1::__class_type_info = external global i8*
@typeinfo name for Base = linkonce_odr constant [6 x i8] c"4Base\00", align 1
@typeinfo for Base = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @vtable for __cxxabiv1::__class_type_info, i64 2) to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @typeinfo name for Base, i32 0, i32 0) }, align 8
@typeinfo for Derived = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @vtable for __cxxabiv1::__si_class_type_info, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @typeinfo name for Derived, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @typeinfo for Base to i8*) }, align 8
@vtable for Base = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @typeinfo for Base to i8*), i8* bitcast (void (%struct.Base*)* @Base::~Base() to i8*), i8* bitcast (void (%struct.Base*)* @Base::~Base() to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, align 8

; Function Attrs: ssp uwtable mustprogress
define dso_local i32 @get(Base*)(%struct.Base* %0) local_unnamed_addr #0 {
  %2 = bitcast %struct.Base* %0 to i32 (%struct.Base*)***
  %3 = load i32 (%struct.Base*)**, i32 (%struct.Base*)*** %2, align 8, !tbaa !3
  %4 = getelementptr inbounds i32 (%struct.Base*)*, i32 (%struct.Base*)** %3, i64 2
  %5 = load i32 (%struct.Base*)*, i32 (%struct.Base*)** %4, align 8
  %6 = call i32 %5(%struct.Base* nonnull dereferenceable(12) %0)
  ret i32 %6
}

; Function Attrs: norecurse ssp uwtable mustprogress
define dso_local i32 @main() local_unnamed_addr #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %struct.Derived, align 8
  %2 = bitcast %struct.Derived* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #11
  call void @Derived::Derived(int)(%struct.Derived* nonnull dereferenceable(12) %1, i32 10)
  %3 = bitcast %struct.Derived* %1 to %struct.Base*
  %4 = invoke i32 @get(Base*)(%struct.Base* nonnull %3)
          to label %5 unwind label %6

5:                                                ; preds = %0
  call void @Derived::~Derived()(%struct.Derived* nonnull dereferenceable(12) %1) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #11
  ret i32 0

6:                                                ; preds = %0
  %7 = landingpad { i8*, i32 }
          cleanup
  call void @Derived::~Derived()(%struct.Derived* nonnull dereferenceable(12) %1) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #11
  resume { i8*, i32 } %7
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: ssp uwtable willreturn
define linkonce_odr void @Derived::Derived(int)(%struct.Derived* nonnull dereferenceable(12) %0, i32 %1) unnamed_addr #3 align 2 {
  call void @Derived::Derived(int)(%struct.Derived* nonnull dereferenceable(12) %0, i32 %1)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint nounwind ssp uwtable willreturn
define linkonce_odr void @Derived::~Derived()(%struct.Derived* nonnull dereferenceable(12) %0) unnamed_addr #4 align 2 {
  call void @Derived::~Derived()(%struct.Derived* nonnull dereferenceable(12) %0) #11
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: ssp uwtable willreturn
define linkonce_odr void @Derived::Derived(int)(%struct.Derived* nonnull dereferenceable(12) %0, i32 %1) unnamed_addr #3 align 2 {
  %3 = bitcast %struct.Derived* %0 to %struct.Base*
  call void @Base::Base(int)(%struct.Base* nonnull dereferenceable(12) %3, i32 %1)
  %4 = getelementptr inbounds %struct.Derived, %struct.Derived* %0, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @vtable for Derived, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind ssp uwtable willreturn
define linkonce_odr void @Base::Base(int)(%struct.Base* nonnull dereferenceable(12) %0, i32 %1) unnamed_addr #5 align 2 {
  %3 = getelementptr inbounds %struct.Base, %struct.Base* %0, i64 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @vtable for Base, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %3, align 8, !tbaa !3
  %4 = getelementptr inbounds %struct.Base, %struct.Base* %0, i64 0, i32 1
  store i32 %1, i32* %4, align 8, !tbaa !6
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @Derived::~Derived()(%struct.Derived* nonnull dereferenceable(12) %0) unnamed_addr #6 align 2 {
  call void @Derived::~Derived()(%struct.Derived* nonnull dereferenceable(12) %0) #11
  %2 = bitcast %struct.Derived* %0 to i8*
  call void @operator delete(void*)(i8* %2) #12
  ret void
}

; Function Attrs: nounwind ssp uwtable willreturn mustprogress
define linkonce_odr i32 @Derived::get()(%struct.Derived* nonnull dereferenceable(12) %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %struct.Derived, %struct.Derived* %0, i64 0, i32 0, i32 1
  %3 = load i32, i32* %2, align 8, !tbaa !6
  %4 = add nsw i32 %3, 10
  ret i32 %4
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @Base::~Base()(%struct.Base* nonnull dereferenceable(12) %0) unnamed_addr #8 align 2 {
  call void @llvm.trap() #13
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @Base::~Base()(%struct.Base* nonnull dereferenceable(12) %0) unnamed_addr #8 align 2 {
  call void @llvm.trap() #13
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #9

; Function Attrs: nobuiltin nounwind
declare void @operator delete(void*)(i8*) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind ssp uwtable willreturn
define linkonce_odr void @Derived::~Derived()(%struct.Derived* nonnull dereferenceable(12) %0) unnamed_addr #4 align 2 {
  %2 = bitcast %struct.Derived* %0 to %struct.Base*
  call void @Base::~Base()(%struct.Base* nonnull dereferenceable(12) %2) #11
  ret void
}

; Function Attrs: nounwind ssp uwtable willreturn
define linkonce_odr void @Base::~Base()(%struct.Base* nonnull dereferenceable(12) %0) unnamed_addr #5 align 2 {
  ret void
}

attributes #0 = { ssp uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse ssp uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { ssp uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind ssp uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind ssp uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind ssp uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind ssp uwtable willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind ssp uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { nobuiltin nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Homebrew clang version 12.0.1"}
!3 = !{!4, !4, i64 0}
!4 = !{!"vtable pointer", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !8, i64 8}
!7 = !{!"_ZTS4Base", !8, i64 8}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !5, i64 0}
