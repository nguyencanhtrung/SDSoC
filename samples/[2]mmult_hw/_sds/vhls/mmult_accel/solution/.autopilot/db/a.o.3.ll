; ModuleID = '/home/trungnguyen/SDSoC/samples/mmult_hw/_sds/vhls/mmult_accel/solution/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=25 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1 ; [#uses=3 type=[7 x i8]*]
@str = internal constant [12 x i8] c"mmult_accel\00" ; [#uses=1 type=[12 x i8]*]

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

; [#uses=7]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

; [#uses=0]
define void @mmult_accel([1024 x float]* %in_A, [1024 x float]* %in_B, [1024 x float]* %out_C) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %in_A) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %in_B) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %out_C) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{[1024 x float]* %in_A}, i64 0, metadata !14), !dbg !26 ; [debug line = 6:25] [debug variable = in_A]
  call void @llvm.dbg.value(metadata !{[1024 x float]* %in_B}, i64 0, metadata !27), !dbg !28 ; [debug line = 7:25] [debug variable = in_B]
  call void @llvm.dbg.value(metadata !{[1024 x float]* %out_C}, i64 0, metadata !29), !dbg !30 ; [debug line = 8:25] [debug variable = out_C]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind, !dbg !31 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %in_A, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %in_A, [1 x i8]* @p_str, [7 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %in_B, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %in_B, [1 x i8]* @p_str, [7 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %out_C, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %out_C, [1 x i8]* @p_str, [7 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  br label %.loopexit, !dbg !33                   ; [debug line = 20:19]

.loopexit:                                        ; preds = %.preheader3, %0
  %row = phi i6 [ 0, %0 ], [ %row_1, %.preheader3 ] ; [#uses=3 type=i6]
  %exitcond2 = icmp eq i6 %row, -32, !dbg !33     ; [#uses=1 type=i1] [debug line = 20:19]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  %row_1 = add i6 %row, 1, !dbg !35               ; [#uses=1 type=i6] [debug line = 20:31]
  call void @llvm.dbg.value(metadata !{i6 %row_1}, i64 0, metadata !36), !dbg !35 ; [debug line = 20:31] [debug variable = row]
  br i1 %exitcond2, label %3, label %.preheader3.preheader, !dbg !33 ; [debug line = 20:19]

.preheader3.preheader:                            ; preds = %.loopexit
  %tmp_1 = trunc i6 %row to i5                    ; [#uses=1 type=i5]
  %tmp = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %tmp_1, i5 0), !dbg !38 ; [#uses=2 type=i10] [debug line = 24:9]
  br label %.preheader3, !dbg !44                 ; [debug line = 21:21]

.preheader3:                                      ; preds = %2, %.preheader3.preheader
  %col = phi i6 [ %col_1, %2 ], [ 0, %.preheader3.preheader ] ; [#uses=3 type=i6]
  %col_cast2 = zext i6 %col to i10, !dbg !44      ; [#uses=2 type=i10] [debug line = 21:21]
  %exitcond1 = icmp eq i6 %col, -32, !dbg !44     ; [#uses=1 type=i1] [debug line = 21:21]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  %col_1 = add i6 %col, 1, !dbg !45               ; [#uses=1 type=i6] [debug line = 21:33]
  br i1 %exitcond1, label %.loopexit, label %.preheader, !dbg !44 ; [debug line = 21:21]

.preheader:                                       ; preds = %1, %.preheader3
  %result = phi float [ %result_1, %1 ], [ 0.000000e+00, %.preheader3 ] ; [#uses=2 type=float]
  %k = phi i6 [ %k_1, %1 ], [ 0, %.preheader3 ]   ; [#uses=4 type=i6]
  %k_cast1 = zext i6 %k to i10, !dbg !46          ; [#uses=1 type=i10] [debug line = 23:21]
  %exitcond = icmp eq i6 %k, -32, !dbg !46        ; [#uses=1 type=i1] [debug line = 23:21]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  %k_1 = add i6 %k, 1, !dbg !47                   ; [#uses=1 type=i6] [debug line = 23:31]
  br i1 %exitcond, label %2, label %1, !dbg !46   ; [debug line = 23:21]

; <label>:1                                       ; preds = %.preheader
  %tmp_5 = add i10 %k_cast1, %tmp, !dbg !38       ; [#uses=1 type=i10] [debug line = 24:9]
  %tmp_6 = zext i10 %tmp_5 to i64, !dbg !38       ; [#uses=1 type=i64] [debug line = 24:9]
  %in_A_addr = getelementptr [1024 x float]* %in_A, i64 0, i64 %tmp_6, !dbg !38 ; [#uses=1 type=float*] [debug line = 24:9]
  %in_A_load = load float* %in_A_addr, align 4, !dbg !38 ; [#uses=1 type=float] [debug line = 24:9]
  %tmp_4 = trunc i6 %k to i5                      ; [#uses=1 type=i5]
  %tmp_7 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %tmp_4, i5 0), !dbg !38 ; [#uses=1 type=i10] [debug line = 24:9]
  %tmp_8 = add i10 %tmp_7, %col_cast2, !dbg !38   ; [#uses=1 type=i10] [debug line = 24:9]
  %tmp_9 = zext i10 %tmp_8 to i64, !dbg !38       ; [#uses=1 type=i64] [debug line = 24:9]
  %in_B_addr = getelementptr [1024 x float]* %in_B, i64 0, i64 %tmp_9, !dbg !38 ; [#uses=1 type=float*] [debug line = 24:9]
  %in_B_load = load float* %in_B_addr, align 4, !dbg !38 ; [#uses=1 type=float] [debug line = 24:9]
  %tmp_s = fmul float %in_A_load, %in_B_load, !dbg !38 ; [#uses=1 type=float] [debug line = 24:9]
  %result_1 = fadd float %result, %tmp_s, !dbg !38 ; [#uses=1 type=float] [debug line = 24:9]
  call void @llvm.dbg.value(metadata !{float %result_1}, i64 0, metadata !48), !dbg !38 ; [debug line = 24:9] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i6 %k_1}, i64 0, metadata !49), !dbg !47 ; [debug line = 23:31] [debug variable = k]
  br label %.preheader, !dbg !47                  ; [debug line = 23:31]

; <label>:2                                       ; preds = %.preheader
  %tmp_2 = add i10 %col_cast2, %tmp, !dbg !50     ; [#uses=1 type=i10] [debug line = 26:7]
  %tmp_3 = zext i10 %tmp_2 to i64, !dbg !50       ; [#uses=1 type=i64] [debug line = 26:7]
  %out_C_addr = getelementptr [1024 x float]* %out_C, i64 0, i64 %tmp_3, !dbg !50 ; [#uses=1 type=float*] [debug line = 26:7]
  store float %result, float* %out_C_addr, align 4, !dbg !50 ; [debug line = 26:7]
  call void @llvm.dbg.value(metadata !{i6 %col_1}, i64 0, metadata !51), !dbg !45 ; [debug line = 21:33] [debug variable = col]
  br label %.preheader3, !dbg !45                 ; [debug line = 21:33]

; <label>:3                                       ; preds = %.loopexit
  ret void, !dbg !52                              ; [debug line = 29:1]
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %0 to i10                      ; [#uses=1 type=i10]
  %empty_4 = zext i5 %1 to i10                    ; [#uses=1 type=i10]
  %empty_5 = shl i10 %empty, 5                    ; [#uses=1 type=i10]
  %empty_6 = or i10 %empty_5, %empty_4            ; [#uses=1 type=i10]
  ret i10 %empty_6
}

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"in_A", metadata !4, metadata !"float", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 1023, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"in_B", metadata !4, metadata !"float", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"out_C", metadata !4, metadata !"float", i32 0, i32 31}
!14 = metadata !{i32 786689, metadata !15, metadata !"in_A", null, i32 6, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"mmult_accel", metadata !"mmult_accel", metadata !"_Z11mmult_accelPfS_S_", metadata !16, i32 6, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 9} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786473, metadata !"/home/trungnguyen/SDSoC/samples/mmult_hw/_sds/vhls/src/mmult_accel.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_hw/_sds/vhls", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19, metadata !19, metadata !19}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !20, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!26 = metadata !{i32 6, i32 25, metadata !15, null}
!27 = metadata !{i32 786689, metadata !15, metadata !"in_B", null, i32 7, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 7, i32 25, metadata !15, null}
!29 = metadata !{i32 786689, metadata !15, metadata !"out_C", null, i32 8, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 8, i32 25, metadata !15, null}
!31 = metadata !{i32 11, i32 1, metadata !32, null}
!32 = metadata !{i32 786443, metadata !15, i32 9, i32 1, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 20, i32 19, metadata !34, null}
!34 = metadata !{i32 786443, metadata !32, i32 20, i32 3, metadata !16, i32 1} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 20, i32 31, metadata !34, null}
!36 = metadata !{i32 786688, metadata !34, metadata !"row", metadata !16, i32 20, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!37 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!38 = metadata !{i32 24, i32 9, metadata !39, null}
!39 = metadata !{i32 786443, metadata !40, i32 23, i32 36, metadata !16, i32 6} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 786443, metadata !41, i32 23, i32 7, metadata !16, i32 5} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 786443, metadata !42, i32 21, i32 40, metadata !16, i32 4} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 786443, metadata !43, i32 21, i32 5, metadata !16, i32 3} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786443, metadata !34, i32 20, i32 38, metadata !16, i32 2} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 21, i32 21, metadata !42, null}
!45 = metadata !{i32 21, i32 33, metadata !42, null}
!46 = metadata !{i32 23, i32 21, metadata !40, null}
!47 = metadata !{i32 23, i32 31, metadata !40, null}
!48 = metadata !{i32 786688, metadata !41, metadata !"result", metadata !16, i32 22, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 786688, metadata !40, metadata !"k", metadata !16, i32 23, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 26, i32 7, metadata !41, null}
!51 = metadata !{i32 786688, metadata !42, metadata !"col", metadata !16, i32 21, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 29, i32 1, metadata !32, null}
