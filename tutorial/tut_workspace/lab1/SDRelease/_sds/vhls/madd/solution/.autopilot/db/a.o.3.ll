; ModuleID = '/home/trungnguyen/SDSoC/tutorial/tut_workspace/lab1/SDRelease/_sds/vhls/madd/solution/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=26 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1 ; [#uses=3 type=[7 x i8]*]
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=3 type=[12 x i8]*]
@str = internal constant [5 x i8] c"madd\00"      ; [#uses=1 type=[5 x i8]*]
@str1 = internal constant [14 x i8] c"L_hls_label_0\00" ; [#uses=1 type=[14 x i8]*]

; [#uses=1]
define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

; [#uses=0]
define void @madd([1024 x float]* %A, [1024 x float]* %B, [1024 x float]* %C) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %A) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %B) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %C) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{[1024 x float]* %A}, i64 0, metadata !14), !dbg !26 ; [debug line = 4:17] [debug variable = A]
  call void @llvm.dbg.value(metadata !{[1024 x float]* %B}, i64 0, metadata !27), !dbg !28 ; [debug line = 4:33] [debug variable = B]
  call void @llvm.dbg.value(metadata !{[1024 x float]* %C}, i64 0, metadata !29), !dbg !30 ; [debug line = 4:49] [debug variable = C]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind, !dbg !31 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %A, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %A, [1 x i8]* @p_str, [7 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %B, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %B, [1 x i8]* @p_str, [7 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %C, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %C, [1 x i8]* @p_str, [7 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  br label %.preheader, !dbg !33                  ; [debug line = 18:8]

.preheader:                                       ; preds = %.preheader.preheader, %0
  %indvar_flatten = phi i11 [ 0, %0 ], [ %indvar_flatten_next, %.preheader.preheader ] ; [#uses=2 type=i11]
  %i = phi i6 [ 0, %0 ], [ %i_mid2, %.preheader.preheader ] ; [#uses=2 type=i6]
  %j = phi i6 [ 0, %0 ], [ %j_1, %.preheader.preheader ] ; [#uses=2 type=i6]
  %exitcond_flatten = icmp eq i11 %indvar_flatten, -1024 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i11 %indvar_flatten, 1 ; [#uses=1 type=i11]
  br i1 %exitcond_flatten, label %1, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @str1)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024) nounwind ; [#uses=0 type=i32]
  %exitcond4 = icmp eq i6 %j, -32, !dbg !35       ; [#uses=2 type=i1] [debug line = 19:10]
  %j_mid2 = select i1 %exitcond4, i6 0, i6 %j     ; [#uses=2 type=i6]
  %i_s = add i6 %i, 1, !dbg !37                   ; [#uses=1 type=i6] [debug line = 18:23]
  %i_mid2 = select i1 %exitcond4, i6 %i_s, i6 %i  ; [#uses=2 type=i6]
  %tmp_5 = trunc i6 %i_mid2 to i5                 ; [#uses=1 type=i5]
  %tmp = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %tmp_5, i5 0), !dbg !38 ; [#uses=1 type=i10] [debug line = 21:2]
  %j_cast1 = zext i6 %j_mid2 to i10, !dbg !35     ; [#uses=1 type=i10] [debug line = 19:10]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str3) nounwind, !dbg !41 ; [debug line = 20:2]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind, !dbg !42 ; [#uses=1 type=i32] [debug line = 20:39]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !43 ; [debug line = 20:1]
  %tmp_2 = add i10 %j_cast1, %tmp, !dbg !38       ; [#uses=1 type=i10] [debug line = 21:2]
  %tmp_3 = zext i10 %tmp_2 to i64, !dbg !38       ; [#uses=3 type=i64] [debug line = 21:2]
  %A_addr = getelementptr [1024 x float]* %A, i64 0, i64 %tmp_3, !dbg !38 ; [#uses=1 type=float*] [debug line = 21:2]
  %A_load = load float* %A_addr, align 4, !dbg !38 ; [#uses=1 type=float] [debug line = 21:2]
  %B_addr = getelementptr [1024 x float]* %B, i64 0, i64 %tmp_3, !dbg !38 ; [#uses=1 type=float*] [debug line = 21:2]
  %B_load = load float* %B_addr, align 4, !dbg !38 ; [#uses=1 type=float] [debug line = 21:2]
  %tmp_4 = fadd float %A_load, %B_load, !dbg !38  ; [#uses=1 type=float] [debug line = 21:2]
  %C_addr = getelementptr [1024 x float]* %C, i64 0, i64 %tmp_3, !dbg !38 ; [#uses=1 type=float*] [debug line = 21:2]
  store float %tmp_4, float* %C_addr, align 4, !dbg !38 ; [debug line = 21:2]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_1) nounwind, !dbg !44 ; [#uses=0 type=i32] [debug line = 21:39]
  %j_1 = add i6 %j_mid2, 1, !dbg !45              ; [#uses=1 type=i6] [debug line = 19:25]
  call void @llvm.dbg.value(metadata !{i6 %j_1}, i64 0, metadata !46), !dbg !45 ; [debug line = 19:25] [debug variable = j]
  br label %.preheader, !dbg !45                  ; [debug line = 19:25]

; <label>:1                                       ; preds = %.preheader
  ret void, !dbg !48                              ; [debug line = 23:1]
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %0 to i10                      ; [#uses=1 type=i10]
  %empty_3 = zext i5 %1 to i10                    ; [#uses=1 type=i10]
  %empty_4 = shl i10 %empty, 5                    ; [#uses=1 type=i10]
  %empty_5 = or i10 %empty_4, %empty_3            ; [#uses=1 type=i10]
  ret i10 %empty_5
}

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"A", metadata !4, metadata !"float", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 1023, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"B", metadata !4, metadata !"float", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"C", metadata !4, metadata !"float", i32 0, i32 31}
!14 = metadata !{i32 786689, metadata !15, metadata !"A", null, i32 4, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"madd", metadata !"madd", metadata !"_Z4maddPfS_S_", metadata !16, i32 4, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 5} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786473, metadata !"/home/trungnguyen/SDSoC/tutorial/tut_workspace/lab1/SDRelease/_sds/vhls/src/madd.cpp", metadata !"/home/trungnguyen/SDSoC/tutorial/tut_workspace/lab1/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19, metadata !19, metadata !19}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !20, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!26 = metadata !{i32 4, i32 17, metadata !15, null}
!27 = metadata !{i32 786689, metadata !15, metadata !"B", null, i32 4, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 4, i32 33, metadata !15, null}
!29 = metadata !{i32 786689, metadata !15, metadata !"C", null, i32 4, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 4, i32 49, metadata !15, null}
!31 = metadata !{i32 7, i32 1, metadata !32, null}
!32 = metadata !{i32 786443, metadata !15, i32 5, i32 1, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 18, i32 8, metadata !34, null}
!34 = metadata !{i32 786443, metadata !32, i32 18, i32 3, metadata !16, i32 1} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 19, i32 10, metadata !36, null}
!36 = metadata !{i32 786443, metadata !34, i32 19, i32 5, metadata !16, i32 2} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 18, i32 23, metadata !34, null}
!38 = metadata !{i32 21, i32 2, metadata !39, null}
!39 = metadata !{i32 786443, metadata !40, i32 20, i32 1, metadata !16, i32 4} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 786443, metadata !36, i32 19, i32 29, metadata !16, i32 3} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 20, i32 2, metadata !39, null}
!42 = metadata !{i32 20, i32 39, metadata !39, null}
!43 = metadata !{i32 20, i32 1, metadata !39, null}
!44 = metadata !{i32 21, i32 39, metadata !39, null}
!45 = metadata !{i32 19, i32 25, metadata !36, null}
!46 = metadata !{i32 786688, metadata !32, metadata !"j", metadata !16, i32 16, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!48 = metadata !{i32 23, i32 1, metadata !32, null}
