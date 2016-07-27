; ModuleID = '/home/trungnguyen/SDSoC/samples/mmult_hw/_sds/vhls/mmult_accel/solution/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1 ; [#uses=1 type=[7 x i8]*]
@str = internal constant [12 x i8] c"mmult_accel\00" ; [#uses=1 type=[12 x i8]*]

; [#uses=0]
define void @mmult_accel(float* %in_A, float* %in_B, float* %out_C) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{float* %in_A}, i64 0, metadata !24), !dbg !25 ; [debug line = 6:25] [debug variable = in_A]
  call void @llvm.dbg.value(metadata !{float* %in_B}, i64 0, metadata !26), !dbg !27 ; [debug line = 7:25] [debug variable = in_B]
  call void @llvm.dbg.value(metadata !{float* %out_C}, i64 0, metadata !28), !dbg !29 ; [debug line = 8:25] [debug variable = out_C]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %out_C, i32 1024) nounwind, !dbg !30 ; [debug line = 9:2]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %in_A, i32 1024) nounwind, !dbg !32 ; [debug line = 9:38]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %in_B, i32 1024) nounwind, !dbg !33 ; [debug line = 9:73]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !34 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %in_A, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !35 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecResource(float* %in_A, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !36 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %in_B, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !37 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecResource(float* %in_B, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !38 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %out_C, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !39 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecResource(float* %out_C, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !40 ; [debug line = 17:1]
  br label %1, !dbg !41                           ; [debug line = 20:19]

; <label>:1                                       ; preds = %4, %0
  %row = phi i32 [ 0, %0 ], [ %row.1, %4 ]        ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %row, 32, !dbg !41     ; [#uses=1 type=i1] [debug line = 20:19]
  br i1 %exitcond2, label %5, label %.preheader3.preheader, !dbg !41 ; [debug line = 20:19]

.preheader3.preheader:                            ; preds = %1
  %tmp = shl i32 %row, 5, !dbg !43                ; [#uses=2 type=i32] [debug line = 24:9]
  br label %.preheader3, !dbg !49                 ; [debug line = 21:21]

.preheader3:                                      ; preds = %3, %.preheader3.preheader
  %col = phi i32 [ %col.1, %3 ], [ 0, %.preheader3.preheader ] ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %col, 32, !dbg !49     ; [#uses=1 type=i1] [debug line = 21:21]
  br i1 %exitcond1, label %4, label %.preheader.preheader, !dbg !49 ; [debug line = 21:21]

.preheader.preheader:                             ; preds = %.preheader3
  br label %.preheader, !dbg !50                  ; [debug line = 23:21]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %result = phi float [ %result.1, %2 ], [ 0.000000e+00, %.preheader.preheader ] ; [#uses=2 type=float]
  %k = phi i32 [ %k.1, %2 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %k, 32, !dbg !50        ; [#uses=1 type=i1] [debug line = 23:21]
  br i1 %exitcond, label %3, label %2, !dbg !50   ; [debug line = 23:21]

; <label>:2                                       ; preds = %.preheader
  %tmp.5 = add nsw i32 %k, %tmp, !dbg !43         ; [#uses=1 type=i32] [debug line = 24:9]
  %tmp.6 = sext i32 %tmp.5 to i64, !dbg !43       ; [#uses=1 type=i64] [debug line = 24:9]
  %in_A.addr = getelementptr inbounds float* %in_A, i64 %tmp.6, !dbg !43 ; [#uses=1 type=float*] [debug line = 24:9]
  %in_A.load = load float* %in_A.addr, align 4, !dbg !43 ; [#uses=2 type=float] [debug line = 24:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %in_A.load) nounwind
  %tmp.7 = mul i32 %k, 32, !dbg !43               ; [#uses=1 type=i32] [debug line = 24:9]
  %tmp.8 = add nsw i32 %tmp.7, %col, !dbg !43     ; [#uses=1 type=i32] [debug line = 24:9]
  %tmp.9 = sext i32 %tmp.8 to i64, !dbg !43       ; [#uses=1 type=i64] [debug line = 24:9]
  %in_B.addr = getelementptr inbounds float* %in_B, i64 %tmp.9, !dbg !43 ; [#uses=1 type=float*] [debug line = 24:9]
  %in_B.load = load float* %in_B.addr, align 4, !dbg !43 ; [#uses=2 type=float] [debug line = 24:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %in_B.load) nounwind
  %tmp.10 = fmul float %in_A.load, %in_B.load, !dbg !43 ; [#uses=1 type=float] [debug line = 24:9]
  %result.1 = fadd float %result, %tmp.10, !dbg !43 ; [#uses=1 type=float] [debug line = 24:9]
  call void @llvm.dbg.value(metadata !{float %result.1}, i64 0, metadata !51), !dbg !43 ; [debug line = 24:9] [debug variable = result]
  %k.1 = add nsw i32 %k, 1, !dbg !52              ; [#uses=1 type=i32] [debug line = 23:31]
  call void @llvm.dbg.value(metadata !{i32 %k.1}, i64 0, metadata !53), !dbg !52 ; [debug line = 23:31] [debug variable = k]
  br label %.preheader, !dbg !52                  ; [debug line = 23:31]

; <label>:3                                       ; preds = %.preheader
  %result.0.lcssa = phi float [ %result, %.preheader ] ; [#uses=1 type=float]
  %tmp.2 = add nsw i32 %col, %tmp, !dbg !54       ; [#uses=1 type=i32] [debug line = 26:7]
  %tmp.3 = sext i32 %tmp.2 to i64, !dbg !54       ; [#uses=1 type=i64] [debug line = 26:7]
  %out_C.addr = getelementptr inbounds float* %out_C, i64 %tmp.3, !dbg !54 ; [#uses=1 type=float*] [debug line = 26:7]
  store float %result.0.lcssa, float* %out_C.addr, align 4, !dbg !54 ; [debug line = 26:7]
  %col.1 = add nsw i32 %col, 1, !dbg !55          ; [#uses=1 type=i32] [debug line = 21:33]
  call void @llvm.dbg.value(metadata !{i32 %col.1}, i64 0, metadata !56), !dbg !55 ; [debug line = 21:33] [debug variable = col]
  br label %.preheader3, !dbg !55                 ; [debug line = 21:33]

; <label>:4                                       ; preds = %.preheader3
  %row.1 = add nsw i32 %row, 1, !dbg !57          ; [#uses=1 type=i32] [debug line = 20:31]
  call void @llvm.dbg.value(metadata !{i32 %row.1}, i64 0, metadata !58), !dbg !57 ; [debug line = 20:31] [debug variable = row]
  br label %1, !dbg !57                           ; [debug line = 20:31]

; <label>:5                                       ; preds = %1
  ret void, !dbg !59                              ; [debug line = 29:1]
}

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecResource(...) nounwind

; [#uses=7]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/trungnguyen/SDSoC/samples/mmult_hw/_sds/vhls/mmult_accel/solution/.autopilot/db/mmult_accel.pragma.2.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_hw/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mmult_accel", metadata !"mmult_accel", metadata !"_Z11mmult_accelPfS_S_", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @mmult_accel, null, null, metadata !11, i32 9} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"/home/trungnguyen/SDSoC/samples/mmult_hw/_sds/vhls/src/mmult_accel.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_hw/_sds/vhls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15, metadata !18, metadata !19, metadata !20, metadata !23}
!15 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !16, i32 346, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/trungnguyen/SDSoC/samples/mmult_hw/_sds/vhls", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !16, i32 344, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!18 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !16, i32 347, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !16, i32 348, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !21, i32 27, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/home/trungnguyen/SDSoC/samples/mmult_hw/_sds/vhls", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !21, i32 31, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786689, metadata !5, metadata !"in_A", metadata !6, i32 16777222, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!25 = metadata !{i32 6, i32 25, metadata !5, null}
!26 = metadata !{i32 786689, metadata !5, metadata !"in_B", metadata !6, i32 33554439, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 7, i32 25, metadata !5, null}
!28 = metadata !{i32 786689, metadata !5, metadata !"out_C", metadata !6, i32 50331656, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 8, i32 25, metadata !5, null}
!30 = metadata !{i32 9, i32 2, metadata !31, null}
!31 = metadata !{i32 786443, metadata !5, i32 9, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 9, i32 38, metadata !31, null}
!33 = metadata !{i32 9, i32 73, metadata !31, null}
!34 = metadata !{i32 11, i32 1, metadata !31, null}
!35 = metadata !{i32 12, i32 1, metadata !31, null}
!36 = metadata !{i32 13, i32 1, metadata !31, null}
!37 = metadata !{i32 14, i32 1, metadata !31, null}
!38 = metadata !{i32 15, i32 1, metadata !31, null}
!39 = metadata !{i32 16, i32 1, metadata !31, null}
!40 = metadata !{i32 17, i32 1, metadata !31, null}
!41 = metadata !{i32 20, i32 19, metadata !42, null}
!42 = metadata !{i32 786443, metadata !31, i32 20, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 24, i32 9, metadata !44, null}
!44 = metadata !{i32 786443, metadata !45, i32 23, i32 36, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 786443, metadata !46, i32 23, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 786443, metadata !47, i32 21, i32 40, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786443, metadata !48, i32 21, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 786443, metadata !42, i32 20, i32 38, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 21, i32 21, metadata !47, null}
!50 = metadata !{i32 23, i32 21, metadata !45, null}
!51 = metadata !{i32 786688, metadata !46, metadata !"result", metadata !6, i32 22, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 23, i32 31, metadata !45, null}
!53 = metadata !{i32 786688, metadata !45, metadata !"k", metadata !6, i32 23, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 26, i32 7, metadata !46, null}
!55 = metadata !{i32 21, i32 33, metadata !47, null}
!56 = metadata !{i32 786688, metadata !47, metadata !"col", metadata !6, i32 21, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 20, i32 31, metadata !42, null}
!58 = metadata !{i32 786688, metadata !42, metadata !"row", metadata !6, i32 20, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 29, i32 1, metadata !31, null}
