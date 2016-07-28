; ModuleID = '/home/trungnguyen/SDSoC/samples/mmult_hw/_sds/vhls/mmult_accel/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=25 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1 ; [#uses=3 type=[7 x i8]*]
@str = internal constant [12 x i8] c"mmult_accel\00" ; [#uses=1 type=[12 x i8]*]

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=7]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare void @_ssdm_op_SpecMemCore(...)

; [#uses=0]
define void @mmult_accel([1024 x float]* %in_A, [1024 x float]* %in_B, [1024 x float]* %out_C) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %in_A) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %in_B) nounwind, !map !30
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %out_C) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{[1024 x float]* %in_A}, i64 0, metadata !38), !dbg !42 ; [debug line = 6:25] [debug variable = in_A]
  call void @llvm.dbg.value(metadata !{[1024 x float]* %in_B}, i64 0, metadata !43), !dbg !44 ; [debug line = 7:25] [debug variable = in_B]
  call void @llvm.dbg.value(metadata !{[1024 x float]* %out_C}, i64 0, metadata !45), !dbg !46 ; [debug line = 8:25] [debug variable = out_C]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @.str) nounwind, !dbg !47 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %in_A, [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %in_A, [1 x i8]* @.str, [7 x i8]* @.str2, [1 x i8]* @.str, i32 -1, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %in_B, [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %in_B, [1 x i8]* @.str, [7 x i8]* @.str2, [1 x i8]* @.str, i32 -1, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %out_C, [5 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %out_C, [1 x i8]* @.str, [7 x i8]* @.str2, [1 x i8]* @.str, i32 -1, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  br label %1, !dbg !49                           ; [debug line = 20:19]

; <label>:1                                       ; preds = %7, %0
  %row = phi i6 [ 0, %0 ], [ %row.1, %7 ]         ; [#uses=3 type=i6]
  %row.cast3 = zext i6 %row to i10, !dbg !49      ; [#uses=1 type=i10] [debug line = 20:19]
  %exitcond2 = icmp eq i6 %row, -32, !dbg !49     ; [#uses=1 type=i1] [debug line = 20:19]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %8, label %.preheader3.preheader, !dbg !49 ; [debug line = 20:19]

.preheader3.preheader:                            ; preds = %1
  %tmp = shl i10 %row.cast3, 5, !dbg !51          ; [#uses=2 type=i10] [debug line = 24:9]
  br label %.preheader3, !dbg !57                 ; [debug line = 21:21]

.preheader3:                                      ; preds = %6, %.preheader3.preheader
  %col = phi i6 [ %col.1, %6 ], [ 0, %.preheader3.preheader ] ; [#uses=3 type=i6]
  %col.cast2 = zext i6 %col to i10, !dbg !57      ; [#uses=2 type=i10] [debug line = 21:21]
  %exitcond1 = icmp eq i6 %col, -32, !dbg !57     ; [#uses=1 type=i1] [debug line = 21:21]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %7, label %.preheader, !dbg !57 ; [debug line = 21:21]

.preheader:                                       ; preds = %5, %.preheader3
  %result = phi float [ %result.1, %5 ], [ 0.000000e+00, %.preheader3 ] ; [#uses=2 type=float]
  %k = phi i6 [ %k.1, %5 ], [ 0, %.preheader3 ]   ; [#uses=3 type=i6]
  %k.cast1 = zext i6 %k to i10, !dbg !58          ; [#uses=2 type=i10] [debug line = 23:21]
  %exitcond = icmp eq i6 %k, -32, !dbg !58        ; [#uses=1 type=i1] [debug line = 23:21]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %6, label %5, !dbg !58   ; [debug line = 23:21]

; <label>:5                                       ; preds = %.preheader
  %tmp.5 = add i10 %k.cast1, %tmp, !dbg !51       ; [#uses=1 type=i10] [debug line = 24:9]
  %tmp.6 = zext i10 %tmp.5 to i64, !dbg !51       ; [#uses=1 type=i64] [debug line = 24:9]
  %in_A.addr = getelementptr [1024 x float]* %in_A, i64 0, i64 %tmp.6, !dbg !51 ; [#uses=1 type=float*] [debug line = 24:9]
  %in_A.load = load float* %in_A.addr, align 4, !dbg !51 ; [#uses=1 type=float] [debug line = 24:9]
  %tmp.7 = shl i10 %k.cast1, 5, !dbg !51          ; [#uses=1 type=i10] [debug line = 24:9]
  %tmp.8 = add i10 %tmp.7, %col.cast2, !dbg !51   ; [#uses=1 type=i10] [debug line = 24:9]
  %tmp.9 = zext i10 %tmp.8 to i64, !dbg !51       ; [#uses=1 type=i64] [debug line = 24:9]
  %in_B.addr = getelementptr [1024 x float]* %in_B, i64 0, i64 %tmp.9, !dbg !51 ; [#uses=1 type=float*] [debug line = 24:9]
  %in_B.load = load float* %in_B.addr, align 4, !dbg !51 ; [#uses=1 type=float] [debug line = 24:9]
  %tmp. = fmul float %in_A.load, %in_B.load, !dbg !51 ; [#uses=1 type=float] [debug line = 24:9]
  %result.1 = fadd float %result, %tmp., !dbg !51 ; [#uses=1 type=float] [debug line = 24:9]
  call void @llvm.dbg.value(metadata !{float %result.1}, i64 0, metadata !59), !dbg !51 ; [debug line = 24:9] [debug variable = result]
  %k.1 = add i6 %k, 1, !dbg !60                   ; [#uses=1 type=i6] [debug line = 23:31]
  call void @llvm.dbg.value(metadata !{i6 %k.1}, i64 0, metadata !61), !dbg !60 ; [debug line = 23:31] [debug variable = k]
  br label %.preheader, !dbg !60                  ; [debug line = 23:31]

; <label>:6                                       ; preds = %.preheader
  %result.lcssa = phi float [ %result, %.preheader ] ; [#uses=1 type=float]
  %tmp.2 = add i10 %col.cast2, %tmp, !dbg !62     ; [#uses=1 type=i10] [debug line = 26:7]
  %tmp.3 = zext i10 %tmp.2 to i64, !dbg !62       ; [#uses=1 type=i64] [debug line = 26:7]
  %out_C.addr = getelementptr [1024 x float]* %out_C, i64 0, i64 %tmp.3, !dbg !62 ; [#uses=1 type=float*] [debug line = 26:7]
  store float %result.lcssa, float* %out_C.addr, align 4, !dbg !62 ; [debug line = 26:7]
  %col.1 = add i6 %col, 1, !dbg !63               ; [#uses=1 type=i6] [debug line = 21:33]
  call void @llvm.dbg.value(metadata !{i6 %col.1}, i64 0, metadata !64), !dbg !63 ; [debug line = 21:33] [debug variable = col]
  br label %.preheader3, !dbg !63                 ; [debug line = 21:33]

; <label>:7                                       ; preds = %.preheader3
  %row.1 = add i6 %row, 1, !dbg !65               ; [#uses=1 type=i6] [debug line = 20:31]
  call void @llvm.dbg.value(metadata !{i6 %row.1}, i64 0, metadata !66), !dbg !65 ; [debug line = 20:31] [debug variable = row]
  br label %1, !dbg !65                           ; [debug line = 20:31]

; <label>:8                                       ; preds = %1
  ret void, !dbg !67                              ; [debug line = 29:1]
}

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

!llvm.dbg.cu = !{!0}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/trungnguyen/SDSoC/samples/mmult_hw/_sds/vhls/mmult_accel/solution/.autopilot/db/mmult_accel.pragma.2.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_hw/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mmult_accel", metadata !"mmult_accel", metadata !"_Z11mmult_accelPfS_S_", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 9} ; [ DW_TAG_subprogram ]
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
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 31, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"in_A", metadata !28, metadata !"float", i32 0, i32 31}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 1023, i32 1}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"in_B", metadata !28, metadata !"float", i32 0, i32 31}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"out_C", metadata !28, metadata !"float", i32 0, i32 31}
!38 = metadata !{i32 786689, metadata !5, metadata !"in_A", null, i32 6, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !10, metadata !40, i32 0, i32 0} ; [ DW_TAG_array_type ]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!42 = metadata !{i32 6, i32 25, metadata !5, null}
!43 = metadata !{i32 786689, metadata !5, metadata !"in_B", null, i32 7, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 7, i32 25, metadata !5, null}
!45 = metadata !{i32 786689, metadata !5, metadata !"out_C", null, i32 8, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 8, i32 25, metadata !5, null}
!47 = metadata !{i32 11, i32 1, metadata !48, null}
!48 = metadata !{i32 786443, metadata !5, i32 9, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 20, i32 19, metadata !50, null}
!50 = metadata !{i32 786443, metadata !48, i32 20, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 24, i32 9, metadata !52, null}
!52 = metadata !{i32 786443, metadata !53, i32 23, i32 36, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 786443, metadata !54, i32 23, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 786443, metadata !55, i32 21, i32 40, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 786443, metadata !56, i32 21, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 786443, metadata !50, i32 20, i32 38, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 21, i32 21, metadata !55, null}
!58 = metadata !{i32 23, i32 21, metadata !53, null}
!59 = metadata !{i32 786688, metadata !54, metadata !"result", metadata !6, i32 22, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 23, i32 31, metadata !53, null}
!61 = metadata !{i32 786688, metadata !53, metadata !"k", metadata !6, i32 23, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 26, i32 7, metadata !54, null}
!63 = metadata !{i32 21, i32 33, metadata !55, null}
!64 = metadata !{i32 786688, metadata !55, metadata !"col", metadata !6, i32 21, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 20, i32 31, metadata !50, null}
!66 = metadata !{i32 786688, metadata !50, metadata !"row", metadata !6, i32 20, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 29, i32 1, metadata !48, null}
