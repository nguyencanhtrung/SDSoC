; ModuleID = 'C:/xup/SDSoC/labs/lab1_prebuilt/SDRelease/_sds/vhls/madd/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@madd.str = internal unnamed_addr constant [5 x i8] c"madd\00" ; [#uses=1 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=3 type=[8 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=14 type=[1 x i8]*]

; [#uses=0]
define void @madd(float* %A, float* %B, float* %C) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %A) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(float* %B) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(float* %C) nounwind, !map !28
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @madd.str) nounwind
  call void @llvm.dbg.value(metadata !{float* %A}, i64 0, metadata !32), !dbg !36 ; [debug line = 4:17] [debug variable = A]
  call void @llvm.dbg.value(metadata !{float* %B}, i64 0, metadata !37), !dbg !38 ; [debug line = 4:33] [debug variable = B]
  call void @llvm.dbg.value(metadata !{float* %C}, i64 0, metadata !39), !dbg !40 ; [debug line = 4:49] [debug variable = C]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @.str) nounwind, !dbg !41 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %C, [8 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(float* %B, [8 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(float* %A, [8 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  br label %1, !dbg !43                           ; [debug line = 8:8]

; <label>:1                                       ; preds = %6, %0
  %i = phi i6 [ 0, %0 ], [ %i.1, %6 ]             ; [#uses=2 type=i6]
  %exitcond1 = icmp eq i6 %i, -32, !dbg !43       ; [#uses=1 type=i1] [debug line = 8:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %7, label %.preheader, !dbg !43 ; [debug line = 8:8]

.preheader:                                       ; preds = %4, %1
  %j = phi i6 [ %j.1, %4 ], [ 0, %1 ]             ; [#uses=2 type=i6]
  %exitcond = icmp eq i6 %j, -32, !dbg !45        ; [#uses=1 type=i1] [debug line = 9:10]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %6, label %4, !dbg !45   ; [debug line = 9:10]

; <label>:4                                       ; preds = %.preheader
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str2) nounwind, !dbg !47 ; [#uses=1 type=i32] [debug line = 11:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !49 ; [debug line = 10:1]
  %A.load = load volatile float* %A, align 4, !dbg !50 ; [#uses=1 type=float] [debug line = 11:2]
  %B.load = load volatile float* %B, align 4, !dbg !50 ; [#uses=1 type=float] [debug line = 11:2]
  %tmp.4 = fadd float %A.load, %B.load, !dbg !50  ; [#uses=1 type=float] [debug line = 11:2]
  store volatile float %tmp.4, float* %C, align 4, !dbg !50 ; [debug line = 11:2]
  %5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str2, i32 %tmp.1) nounwind, !dbg !51 ; [#uses=0 type=i32] [debug line = 11:37]
  %j.1 = add i6 %j, 1, !dbg !52                   ; [#uses=1 type=i6] [debug line = 9:25]
  call void @llvm.dbg.value(metadata !{i6 %j.1}, i64 0, metadata !53), !dbg !52 ; [debug line = 9:25] [debug variable = j]
  br label %.preheader, !dbg !52                  ; [debug line = 9:25]

; <label>:6                                       ; preds = %.preheader
  %i.1 = add i6 %i, 1, !dbg !54                   ; [#uses=1 type=i6] [debug line = 8:23]
  call void @llvm.dbg.value(metadata !{i6 %i.1}, i64 0, metadata !55), !dbg !54 ; [debug line = 8:23] [debug variable = i]
  br label %1, !dbg !54                           ; [debug line = 8:23]

; <label>:7                                       ; preds = %1
  ret void, !dbg !56                              ; [debug line = 13:1]
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=2]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/xup/SDSoC/labs/lab1_prebuilt/SDRelease/_sds/vhls/madd/solution/.autopilot/db/madd.pragma.2.cpp", metadata !"c:/xup/SDSoC/labs/lab1_prebuilt/SDRelease/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"madd", metadata !"madd", metadata !"_Z4maddPfS_S_", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"C:/xup/SDSoC/labs/lab1_prebuilt/src/madd.cpp", metadata !"c:/xup/SDSoC/labs/lab1_prebuilt/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !16, i32 157, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786473, metadata !"C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cstdlib.h", metadata !"c:/xup/SDSoC/labs/lab1_prebuilt/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 31, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"A", metadata !22, metadata !"float", i32 0, i32 31}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 1023, i32 1}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 31, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"B", metadata !22, metadata !"float", i32 0, i32 31}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 31, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"C", metadata !22, metadata !"float", i32 0, i32 31}
!32 = metadata !{i32 786689, metadata !5, metadata !"A", null, i32 4, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !10, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!36 = metadata !{i32 4, i32 17, metadata !5, null}
!37 = metadata !{i32 786689, metadata !5, metadata !"B", null, i32 4, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 4, i32 33, metadata !5, null}
!39 = metadata !{i32 786689, metadata !5, metadata !"C", null, i32 4, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 4, i32 49, metadata !5, null}
!41 = metadata !{i32 6, i32 1, metadata !42, null}
!42 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 8, i32 8, metadata !44, null}
!44 = metadata !{i32 786443, metadata !42, i32 8, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 9, i32 10, metadata !46, null}
!46 = metadata !{i32 786443, metadata !44, i32 9, i32 5, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 11, i32 3, metadata !48, null}
!48 = metadata !{i32 786443, metadata !46, i32 11, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 10, i32 1, metadata !48, null}
!50 = metadata !{i32 11, i32 2, metadata !48, null}
!51 = metadata !{i32 11, i32 37, metadata !48, null}
!52 = metadata !{i32 9, i32 25, metadata !46, null}
!53 = metadata !{i32 786688, metadata !42, metadata !"j", metadata !6, i32 6, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 8, i32 23, metadata !44, null}
!55 = metadata !{i32 786688, metadata !42, metadata !"i", metadata !6, i32 6, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 13, i32 1, metadata !42, null}
