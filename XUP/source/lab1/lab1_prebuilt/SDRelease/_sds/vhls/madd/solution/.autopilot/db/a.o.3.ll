; ModuleID = 'C:/xup/SDSoC/labs/lab1_prebuilt/SDRelease/_sds/vhls/madd/solution/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@madd_str = internal unnamed_addr constant [5 x i8] c"madd\00" ; [#uses=1 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str1 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=3 type=[8 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=14 type=[1 x i8]*]

; [#uses=0]
define void @madd(float* %A, float* %B, float* %C) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %A) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(float* %B) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(float* %C) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @madd_str) nounwind
  call void @llvm.dbg.value(metadata !{float* %A}, i64 0, metadata !14), !dbg !26 ; [debug line = 4:17] [debug variable = A]
  call void @llvm.dbg.value(metadata !{float* %B}, i64 0, metadata !27), !dbg !28 ; [debug line = 4:33] [debug variable = B]
  call void @llvm.dbg.value(metadata !{float* %C}, i64 0, metadata !29), !dbg !30 ; [debug line = 4:49] [debug variable = C]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind, !dbg !31 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %C, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(float* %B, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(float* %A, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader, !dbg !33                  ; [debug line = 8:8]

.preheader:                                       ; preds = %.preheader.preheader, %0
  %indvar_flatten = phi i11 [ 0, %0 ], [ %indvar_flatten_next, %.preheader.preheader ] ; [#uses=2 type=i11]
  %exitcond_flatten = icmp eq i11 %indvar_flatten, -1024 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i11 %indvar_flatten, 1 ; [#uses=1 type=i11]
  br i1 %exitcond_flatten, label %1, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024) nounwind ; [#uses=0 type=i32]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2) nounwind, !dbg !35 ; [#uses=1 type=i32] [debug line = 11:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !38 ; [debug line = 10:1]
  %A_read = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %A) nounwind, !dbg !39 ; [#uses=1 type=float] [debug line = 11:2]
  %B_read = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %B) nounwind, !dbg !39 ; [#uses=1 type=float] [debug line = 11:2]
  %tmp_4 = fadd float %A_read, %B_read, !dbg !39  ; [#uses=1 type=float] [debug line = 11:2]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %C, float %tmp_4) nounwind, !dbg !39 ; [debug line = 11:2]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_1) nounwind, !dbg !40 ; [#uses=0 type=i32] [debug line = 11:37]
  br label %.preheader, !dbg !41                  ; [debug line = 9:25]

; <label>:1                                       ; preds = %.preheader
  ret void, !dbg !42                              ; [debug line = 13:1]
}

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.volatile.floatP(float*, float) {
entry:
  %empty = call float @_autotb_FifoWrite_float(float* %0, float %1) ; [#uses=0 type=float]
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

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

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak float @_ssdm_op_Read.ap_fifo.volatile.floatP(float*) {
entry:
  %empty = call float @_autotb_FifoRead_float(float* %0) ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

; [#uses=1]
declare float @_autotb_FifoWrite_float(float*, float)

; [#uses=1]
declare float @_autotb_FifoRead_float(float*)

!hls.encrypted.func = !{}
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
!16 = metadata !{i32 786473, metadata !"C:/xup/SDSoC/labs/lab1_prebuilt/src/madd.cpp", metadata !"c:/xup/SDSoC/labs/lab1_prebuilt/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
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
!31 = metadata !{i32 6, i32 1, metadata !32, null}
!32 = metadata !{i32 786443, metadata !15, i32 5, i32 1, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 8, i32 8, metadata !34, null}
!34 = metadata !{i32 786443, metadata !32, i32 8, i32 3, metadata !16, i32 1} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 11, i32 3, metadata !36, null}
!36 = metadata !{i32 786443, metadata !37, i32 11, i32 2, metadata !16, i32 3} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 786443, metadata !34, i32 9, i32 5, metadata !16, i32 2} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 10, i32 1, metadata !36, null}
!39 = metadata !{i32 11, i32 2, metadata !36, null}
!40 = metadata !{i32 11, i32 37, metadata !36, null}
!41 = metadata !{i32 9, i32 25, metadata !37, null}
!42 = metadata !{i32 13, i32 1, metadata !32, null}
