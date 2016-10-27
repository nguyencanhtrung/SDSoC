; ModuleID = '/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab1/SDRelease/_sds/vhls/madd/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=26 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1 ; [#uses=3 type=[7 x i8]*]
@.str3 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=3 type=[12 x i8]*]
@str = internal constant [5 x i8] c"madd\00"      ; [#uses=1 type=[5 x i8]*]

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=3]
declare void @_ssdm_op_SpecMemCore(...)

; [#uses=0]
define void @madd([1024 x float]* %A, [1024 x float]* %B, [1024 x float]* %C) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %A) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %B) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %C) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{[1024 x float]* %A}, i64 0, metadata !27), !dbg !31 ; [debug line = 4:17] [debug variable = A]
  call void @llvm.dbg.value(metadata !{[1024 x float]* %B}, i64 0, metadata !32), !dbg !33 ; [debug line = 4:33] [debug variable = B]
  call void @llvm.dbg.value(metadata !{[1024 x float]* %C}, i64 0, metadata !34), !dbg !35 ; [debug line = 4:49] [debug variable = C]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @.str) nounwind, !dbg !36 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %A, [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %A, [1 x i8]* @.str, [7 x i8]* @.str2, [1 x i8]* @.str, i32 -1, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %B, [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %B, [1 x i8]* @.str, [7 x i8]* @.str2, [1 x i8]* @.str, i32 -1, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %C, [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %C, [1 x i8]* @.str, [7 x i8]* @.str2, [1 x i8]* @.str, i32 -1, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  br label %1, !dbg !38                           ; [debug line = 18:8]

; <label>:1                                       ; preds = %6, %0
  %i = phi i6 [ 0, %0 ], [ %i.1, %6 ]             ; [#uses=3 type=i6]
  %i.cast2 = zext i6 %i to i10, !dbg !38          ; [#uses=1 type=i10] [debug line = 18:8]
  %exitcond1 = icmp eq i6 %i, -32, !dbg !38       ; [#uses=1 type=i1] [debug line = 18:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %7, label %.preheader.preheader, !dbg !38 ; [debug line = 18:8]

.preheader.preheader:                             ; preds = %1
  %tmp = shl i10 %i.cast2, 5, !dbg !40            ; [#uses=1 type=i10] [debug line = 21:2]
  br label %.preheader, !dbg !44                  ; [debug line = 19:10]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %j = phi i6 [ %j.1, %4 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i6]
  %j.cast1 = zext i6 %j to i10, !dbg !44          ; [#uses=1 type=i10] [debug line = 19:10]
  %exitcond = icmp eq i6 %j, -32, !dbg !44        ; [#uses=1 type=i1] [debug line = 19:10]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %6, label %4, !dbg !44   ; [debug line = 19:10]

; <label>:4                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @.str3) nounwind, !dbg !45 ; [debug line = 20:2]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str3) nounwind, !dbg !46 ; [#uses=1 type=i32] [debug line = 20:39]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !47 ; [debug line = 20:1]
  %tmp.2 = add i10 %j.cast1, %tmp, !dbg !40       ; [#uses=1 type=i10] [debug line = 21:2]
  %tmp.3 = zext i10 %tmp.2 to i64, !dbg !40       ; [#uses=3 type=i64] [debug line = 21:2]
  %A.addr = getelementptr [1024 x float]* %A, i64 0, i64 %tmp.3, !dbg !40 ; [#uses=1 type=float*] [debug line = 21:2]
  %A.load = load float* %A.addr, align 4, !dbg !40 ; [#uses=1 type=float] [debug line = 21:2]
  %B.addr = getelementptr [1024 x float]* %B, i64 0, i64 %tmp.3, !dbg !40 ; [#uses=1 type=float*] [debug line = 21:2]
  %B.load = load float* %B.addr, align 4, !dbg !40 ; [#uses=1 type=float] [debug line = 21:2]
  %tmp.4 = fadd float %A.load, %B.load, !dbg !40  ; [#uses=1 type=float] [debug line = 21:2]
  %C.addr = getelementptr [1024 x float]* %C, i64 0, i64 %tmp.3, !dbg !40 ; [#uses=1 type=float*] [debug line = 21:2]
  store float %tmp.4, float* %C.addr, align 4, !dbg !40 ; [debug line = 21:2]
  %5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str3, i32 %tmp.1) nounwind, !dbg !48 ; [#uses=0 type=i32] [debug line = 21:39]
  %j.1 = add i6 %j, 1, !dbg !49                   ; [#uses=1 type=i6] [debug line = 19:25]
  call void @llvm.dbg.value(metadata !{i6 %j.1}, i64 0, metadata !50), !dbg !49 ; [debug line = 19:25] [debug variable = j]
  br label %.preheader, !dbg !49                  ; [debug line = 19:25]

; <label>:6                                       ; preds = %.preheader
  %i.1 = add i6 %i, 1, !dbg !52                   ; [#uses=1 type=i6] [debug line = 18:23]
  call void @llvm.dbg.value(metadata !{i6 %i.1}, i64 0, metadata !53), !dbg !52 ; [debug line = 18:23] [debug variable = i]
  br label %1, !dbg !52                           ; [debug line = 18:23]

; <label>:7                                       ; preds = %1
  ret void, !dbg !54                              ; [debug line = 23:1]
}

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

!llvm.dbg.cu = !{!0}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab1/SDRelease/_sds/vhls/madd/solution/.autopilot/db/madd.pragma.2.cpp", metadata !"/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab1/SDRelease/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"madd", metadata !"madd", metadata !"_Z4maddPfS_S_", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab1/SDRelease/_sds/vhls/src/madd.cpp", metadata !"/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab1/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"A", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 1023, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"B", metadata !17, metadata !"float", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"C", metadata !17, metadata !"float", i32 0, i32 31}
!27 = metadata !{i32 786689, metadata !5, metadata !"A", null, i32 4, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !10, metadata !29, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!31 = metadata !{i32 4, i32 17, metadata !5, null}
!32 = metadata !{i32 786689, metadata !5, metadata !"B", null, i32 4, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!33 = metadata !{i32 4, i32 33, metadata !5, null}
!34 = metadata !{i32 786689, metadata !5, metadata !"C", null, i32 4, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!35 = metadata !{i32 4, i32 49, metadata !5, null}
!36 = metadata !{i32 7, i32 1, metadata !37, null}
!37 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 18, i32 8, metadata !39, null}
!39 = metadata !{i32 786443, metadata !37, i32 18, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 21, i32 2, metadata !41, null}
!41 = metadata !{i32 786443, metadata !42, i32 20, i32 1, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 786443, metadata !43, i32 19, i32 29, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786443, metadata !39, i32 19, i32 5, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 19, i32 10, metadata !43, null}
!45 = metadata !{i32 20, i32 2, metadata !41, null}
!46 = metadata !{i32 20, i32 39, metadata !41, null}
!47 = metadata !{i32 20, i32 1, metadata !41, null}
!48 = metadata !{i32 21, i32 39, metadata !41, null}
!49 = metadata !{i32 19, i32 25, metadata !43, null}
!50 = metadata !{i32 786688, metadata !37, metadata !"j", metadata !6, i32 16, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 18, i32 23, metadata !39, null}
!53 = metadata !{i32 786688, metadata !37, metadata !"i", metadata !6, i32 16, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 23, i32 1, metadata !37, null}
