; ModuleID = '/home/trungnguyen/SDSoC/samples/mmult_optimized_apf/_sds/vhls/mmult_accel/solution/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=1 type=[12 x i8]*]
@str = internal constant [12 x i8] c"mmult_accel\00" ; [#uses=1 type=[12 x i8]*]

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=0]
define void @mmult_accel(float* %in_A, float* %in_B, float* %out_C) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @str) nounwind
  %a_buf = alloca [32 x [32 x float]], align 16   ; [#uses=3 type=[32 x [32 x float]]*]
  %b_buf = alloca [32 x [32 x float]], align 16   ; [#uses=3 type=[32 x [32 x float]]*]
  call void @llvm.dbg.value(metadata !{float* %in_A}, i64 0, metadata !31), !dbg !32 ; [debug line = 31:25] [debug variable = in_A]
  call void @llvm.dbg.value(metadata !{float* %in_B}, i64 0, metadata !33), !dbg !34 ; [debug line = 32:25] [debug variable = in_B]
  call void @llvm.dbg.value(metadata !{float* %out_C}, i64 0, metadata !35), !dbg !36 ; [debug line = 33:25] [debug variable = out_C]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %out_C, i32 1024) nounwind, !dbg !37 ; [debug line = 34:2]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %in_A, i32 1024) nounwind, !dbg !39 ; [debug line = 34:38]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %in_B, i32 1024) nounwind, !dbg !40 ; [debug line = 34:73]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !41 ; [debug line = 36:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %in_A, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !42 ; [debug line = 37:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %in_B, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !43 ; [debug line = 38:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %out_C, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !44 ; [debug line = 39:1]
  call void @llvm.dbg.declare(metadata !{[32 x [32 x float]]* %a_buf}, metadata !45), !dbg !48 ; [debug line = 47:9] [debug variable = a_buf]
  call void @llvm.dbg.declare(metadata !{[32 x [32 x float]]* %b_buf}, metadata !49), !dbg !50 ; [debug line = 48:9] [debug variable = b_buf]
  br label %1, !dbg !51                           ; [debug line = 51:7]

; <label>:1                                       ; preds = %3, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %3 ]            ; [#uses=4 type=i32]
  %exitcond3 = icmp eq i32 %i, 32, !dbg !51       ; [#uses=1 type=i1] [debug line = 51:7]
  br i1 %exitcond3, label %.preheader4.preheader, label %.preheader5.preheader, !dbg !51 ; [debug line = 51:7]

.preheader4.preheader:                            ; preds = %1
  br label %.preheader4, !dbg !53                 ; [debug line = 59:7]

.preheader5.preheader:                            ; preds = %1
  %tmp = mul i32 %i, 32, !dbg !55                 ; [#uses=1 type=i32] [debug line = 54:2]
  %tmp.1 = sext i32 %i to i64, !dbg !55           ; [#uses=1 type=i64] [debug line = 54:2]
  br label %.preheader5, !dbg !59                 ; [debug line = 52:9]

.preheader5:                                      ; preds = %2, %.preheader5.preheader
  %j = phi i32 [ %j.2, %2 ], [ 0, %.preheader5.preheader ] ; [#uses=4 type=i32]
  %exitcond2 = icmp eq i32 %j, 32, !dbg !59       ; [#uses=1 type=i1] [debug line = 52:9]
  br i1 %exitcond2, label %3, label %2, !dbg !59  ; [debug line = 52:9]

; <label>:2                                       ; preds = %.preheader5
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !60 ; [#uses=1 type=i32] [debug line = 52:26]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !61 ; [debug line = 53:1]
  %tmp.5 = add nsw i32 %j, %tmp, !dbg !55         ; [#uses=1 type=i32] [debug line = 54:2]
  %tmp.6 = sext i32 %tmp.5 to i64, !dbg !55       ; [#uses=1 type=i64] [debug line = 54:2]
  %in_A.addr = getelementptr inbounds float* %in_A, i64 %tmp.6, !dbg !55 ; [#uses=1 type=float*] [debug line = 54:2]
  %in_A.load = load float* %in_A.addr, align 4, !dbg !55 ; [#uses=2 type=float] [debug line = 54:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %in_A.load) nounwind
  %tmp.7 = sext i32 %j to i64, !dbg !55           ; [#uses=1 type=i64] [debug line = 54:2]
  %a_buf.addr = getelementptr inbounds [32 x [32 x float]]* %a_buf, i64 0, i64 %tmp.1, i64 %tmp.7, !dbg !55 ; [#uses=1 type=float*] [debug line = 54:2]
  store float %in_A.load, float* %a_buf.addr, align 4, !dbg !55 ; [debug line = 54:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !62 ; [#uses=0 type=i32] [debug line = 55:5]
  %j.2 = add nsw i32 %j, 1, !dbg !63              ; [#uses=1 type=i32] [debug line = 52:20]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !64), !dbg !63 ; [debug line = 52:20] [debug variable = j]
  br label %.preheader5, !dbg !63                 ; [debug line = 52:20]

; <label>:3                                       ; preds = %.preheader5
  %i.2 = add nsw i32 %i, 1, !dbg !65              ; [#uses=1 type=i32] [debug line = 51:18]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !66), !dbg !65 ; [debug line = 51:18] [debug variable = i]
  br label %1, !dbg !65                           ; [debug line = 51:18]

.preheader4:                                      ; preds = %5, %.preheader4.preheader
  %i.1 = phi i32 [ %i.3, %5 ], [ 0, %.preheader4.preheader ] ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %i.1, 32, !dbg !53     ; [#uses=1 type=i1] [debug line = 59:7]
  br i1 %exitcond1, label %6, label %.preheader.preheader, !dbg !53 ; [debug line = 59:7]

.preheader.preheader:                             ; preds = %.preheader4
  %tmp.2 = mul i32 %i.1, 32, !dbg !67             ; [#uses=1 type=i32] [debug line = 62:2]
  %tmp.3 = sext i32 %i.1 to i64, !dbg !67         ; [#uses=1 type=i64] [debug line = 62:2]
  br label %.preheader, !dbg !71                  ; [debug line = 60:9]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %j.1 = phi i32 [ %j.3, %4 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %j.1, 32, !dbg !71      ; [#uses=1 type=i1] [debug line = 60:9]
  br i1 %exitcond, label %5, label %4, !dbg !71   ; [debug line = 60:9]

; <label>:4                                       ; preds = %.preheader
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !72 ; [#uses=1 type=i32] [debug line = 60:26]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !73 ; [debug line = 61:1]
  %tmp.12 = add nsw i32 %j.1, %tmp.2, !dbg !67    ; [#uses=1 type=i32] [debug line = 62:2]
  %tmp.13 = sext i32 %tmp.12 to i64, !dbg !67     ; [#uses=1 type=i64] [debug line = 62:2]
  %in_B.addr = getelementptr inbounds float* %in_B, i64 %tmp.13, !dbg !67 ; [#uses=1 type=float*] [debug line = 62:2]
  %in_B.load = load float* %in_B.addr, align 4, !dbg !67 ; [#uses=2 type=float] [debug line = 62:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %in_B.load) nounwind
  %tmp.14 = sext i32 %j.1 to i64, !dbg !67        ; [#uses=1 type=i64] [debug line = 62:2]
  %b_buf.addr = getelementptr inbounds [32 x [32 x float]]* %b_buf, i64 0, i64 %tmp.3, i64 %tmp.14, !dbg !67 ; [#uses=1 type=float*] [debug line = 62:2]
  store float %in_B.load, float* %b_buf.addr, align 4, !dbg !67 ; [debug line = 62:2]
  %rend7 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i32 %rbegin6) nounwind, !dbg !74 ; [#uses=0 type=i32] [debug line = 63:5]
  %j.3 = add nsw i32 %j.1, 1, !dbg !75            ; [#uses=1 type=i32] [debug line = 60:20]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !64), !dbg !75 ; [debug line = 60:20] [debug variable = j]
  br label %.preheader, !dbg !75                  ; [debug line = 60:20]

; <label>:5                                       ; preds = %.preheader
  %i.3 = add nsw i32 %i.1, 1, !dbg !76            ; [#uses=1 type=i32] [debug line = 59:18]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !66), !dbg !76 ; [debug line = 59:18] [debug variable = i]
  br label %.preheader4, !dbg !76                 ; [debug line = 59:18]

; <label>:6                                       ; preds = %.preheader4
  %in_A.assign = getelementptr inbounds [32 x [32 x float]]* %a_buf, i64 0, i64 0, !dbg !77 ; [#uses=1 type=[32 x float]*] [debug line = 67:3]
  %in_B.assign = getelementptr inbounds [32 x [32 x float]]* %b_buf, i64 0, i64 0, !dbg !77 ; [#uses=1 type=[32 x float]*] [debug line = 67:3]
  call void @llvm.dbg.value(metadata !{[32 x float]* %in_A.assign}, i64 0, metadata !78) nounwind, !dbg !79 ; [debug line = 6:25@67:3] [debug variable = in_A]
  call void @llvm.dbg.value(metadata !{[32 x float]* %in_B.assign}, i64 0, metadata !80) nounwind, !dbg !81 ; [debug line = 7:25@67:3] [debug variable = in_B]
  call void @llvm.dbg.value(metadata !{float* %out_C}, i64 0, metadata !82) nounwind, !dbg !83 ; [debug line = 8:25@67:3] [debug variable = out_C]
  call void (...)* @_ssdm_SpecArrayPartition([32 x float]* %in_A.assign, i32 2, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !84 ; [debug line = 11:1@67:3]
  call void (...)* @_ssdm_SpecArrayPartition([32 x float]* %in_B.assign, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !86 ; [debug line = 12:1@67:3]
  br label %7, !dbg !87                           ; [debug line = 16:8@67:3]

; <label>:7                                       ; preds = %12, %6
  %index_a.0.i = phi i32 [ 0, %6 ], [ %index_a, %12 ] ; [#uses=4 type=i32]
  %exitcond2.i = icmp eq i32 %index_a.0.i, 32, !dbg !87 ; [#uses=1 type=i1] [debug line = 16:8@67:3]
  br i1 %exitcond2.i, label %mmult_kernel.exit, label %.preheader.preheader.i, !dbg !87 ; [debug line = 16:8@67:3]

.preheader.preheader.i:                           ; preds = %7
  %tmp.9 = sext i32 %index_a.0.i to i64, !dbg !89 ; [#uses=1 type=i64] [debug line = 23:77@67:3]
  %tmp.10 = mul i32 %index_a.0.i, 32, !dbg !95    ; [#uses=1 type=i32] [debug line = 26:7@67:3]
  br label %.preheader.i, !dbg !96                ; [debug line = 17:10@67:3]

.preheader.i:                                     ; preds = %11, %.preheader.preheader.i
  %index_b.0.i = phi i32 [ %index_b, %11 ], [ 0, %.preheader.preheader.i ] ; [#uses=4 type=i32]
  %exitcond1.i = icmp eq i32 %index_b.0.i, 32, !dbg !96 ; [#uses=1 type=i1] [debug line = 17:10@67:3]
  br i1 %exitcond1.i, label %12, label %8, !dbg !96 ; [debug line = 17:10@67:3]

; <label>:8                                       ; preds = %.preheader.i
  %rbegin.i = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !97 ; [#uses=1 type=i32] [debug line = 17:49@67:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !98 ; [debug line = 18:1@67:3]
  %tmp.17 = sext i32 %index_b.0.i to i64, !dbg !89 ; [#uses=1 type=i64] [debug line = 23:77@67:3]
  br label %9, !dbg !99                           ; [debug line = 20:12@67:3]

; <label>:9                                       ; preds = %10, %8
  %index_d.0.i = phi i32 [ 0, %8 ], [ %index_d, %10 ] ; [#uses=3 type=i32]
  %result.0.i = phi float [ 0.000000e+00, %8 ], [ %result, %10 ] ; [#uses=2 type=float]
  %exitcond.i = icmp eq i32 %index_d.0.i, 32, !dbg !99 ; [#uses=1 type=i1] [debug line = 20:12@67:3]
  br i1 %exitcond.i, label %11, label %10, !dbg !99 ; [debug line = 20:12@67:3]

; <label>:10                                      ; preds = %9
  %tmp.21 = sext i32 %index_d.0.i to i64, !dbg !89 ; [#uses=2 type=i64] [debug line = 23:77@67:3]
  %a_buf.addr.1 = getelementptr inbounds [32 x [32 x float]]* %a_buf, i64 0, i64 %tmp.9, i64 %tmp.21, !dbg !89 ; [#uses=1 type=float*] [debug line = 23:77@67:3]
  %a_buf.load = load float* %a_buf.addr.1, align 4, !dbg !89 ; [#uses=2 type=float] [debug line = 23:77@67:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a_buf.load) nounwind
  %b_buf.addr.1 = getelementptr inbounds [32 x [32 x float]]* %b_buf, i64 0, i64 %tmp.21, i64 %tmp.17, !dbg !89 ; [#uses=1 type=float*] [debug line = 23:77@67:3]
  %b_buf.load = load float* %b_buf.addr.1, align 4, !dbg !89 ; [#uses=2 type=float] [debug line = 23:77@67:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %b_buf.load) nounwind
  %product_term = fmul float %a_buf.load, %b_buf.load, !dbg !89 ; [#uses=1 type=float] [debug line = 23:77@67:3]
  call void @llvm.dbg.value(metadata !{float %product_term}, i64 0, metadata !100) nounwind, !dbg !89 ; [debug line = 23:77@67:3] [debug variable = product_term]
  %result = fadd float %result.0.i, %product_term, !dbg !101 ; [#uses=1 type=float] [debug line = 24:9@67:3]
  call void @llvm.dbg.value(metadata !{float %result}, i64 0, metadata !102) nounwind, !dbg !101 ; [debug line = 24:9@67:3] [debug variable = result]
  %index_d = add nsw i32 %index_d.0.i, 1, !dbg !103 ; [#uses=1 type=i32] [debug line = 20:39@67:3]
  call void @llvm.dbg.value(metadata !{i32 %index_d}, i64 0, metadata !104) nounwind, !dbg !103 ; [debug line = 20:39@67:3] [debug variable = index_d]
  br label %9, !dbg !103                          ; [debug line = 20:39@67:3]

; <label>:11                                      ; preds = %9
  %result.0.i.lcssa = phi float [ %result.0.i, %9 ] ; [#uses=1 type=float]
  %tmp.18 = add nsw i32 %index_b.0.i, %tmp.10, !dbg !95 ; [#uses=1 type=i32] [debug line = 26:7@67:3]
  %tmp.19 = sext i32 %tmp.18 to i64, !dbg !95     ; [#uses=1 type=i64] [debug line = 26:7@67:3]
  %out_C.addr = getelementptr inbounds float* %out_C, i64 %tmp.19, !dbg !95 ; [#uses=1 type=float*] [debug line = 26:7@67:3]
  store float %result.0.i.lcssa, float* %out_C.addr, align 4, !dbg !95 ; [debug line = 26:7@67:3]
  %rend.i = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %rbegin.i) nounwind, !dbg !105 ; [#uses=0 type=i32] [debug line = 27:5@67:3]
  %index_b = add nsw i32 %index_b.0.i, 1, !dbg !106 ; [#uses=1 type=i32] [debug line = 17:37@67:3]
  call void @llvm.dbg.value(metadata !{i32 %index_b}, i64 0, metadata !107) nounwind, !dbg !106 ; [debug line = 17:37@67:3] [debug variable = index_b]
  br label %.preheader.i, !dbg !106               ; [debug line = 17:37@67:3]

; <label>:12                                      ; preds = %.preheader.i
  %index_a = add nsw i32 %index_a.0.i, 1, !dbg !108 ; [#uses=1 type=i32] [debug line = 16:35@67:3]
  call void @llvm.dbg.value(metadata !{i32 %index_a}, i64 0, metadata !109) nounwind, !dbg !108 ; [debug line = 16:35@67:3] [debug variable = index_a]
  br label %7, !dbg !108                          ; [debug line = 16:35@67:3]

mmult_kernel.exit:                                ; preds = %7
  ret void, !dbg !110                             ; [debug line = 68:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=15]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionEnd(...)

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/trungnguyen/SDSoC/samples/mmult_optimized_apf/_sds/vhls/mmult_accel/solution/.autopilot/db/mmult_accel.pragma.2.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_optimized_apf/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !20} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !17}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mmult_kernel", metadata !"mmult_kernel", metadata !"_Z12mmult_kernelPA32_fS0_Pf", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 9} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"/home/trungnguyen/SDSoC/samples/mmult_optimized_apf/_sds/vhls/src/mmult_accel.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_optimized_apf/_sds/vhls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !14}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !11, metadata !12, i32 0, i32 0} ; [ DW_TAG_array_type ]
!11 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!14 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mmult_accel", metadata !"mmult_accel", metadata !"_Z11mmult_accelPfS_S_", metadata !6, i32 31, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @mmult_accel, null, null, metadata !15, i32 34} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !14, metadata !14, metadata !14}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !22, metadata !25, metadata !26, metadata !27, metadata !30}
!22 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !23, i32 346, metadata !24, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/trungnguyen/SDSoC/samples/mmult_optimized_apf/_sds/vhls", null} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !23, i32 344, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !23, i32 347, metadata !24, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !23, i32 348, metadata !24, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !28, i32 27, metadata !29, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!28 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/home/trungnguyen/SDSoC/samples/mmult_optimized_apf/_sds/vhls", null} ; [ DW_TAG_file_type ]
!29 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !28, i32 31, metadata !29, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786689, metadata !17, metadata !"in_A", metadata !6, i32 16777247, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 31, i32 25, metadata !17, null}
!33 = metadata !{i32 786689, metadata !17, metadata !"in_B", metadata !6, i32 33554464, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 32, i32 25, metadata !17, null}
!35 = metadata !{i32 786689, metadata !17, metadata !"out_C", metadata !6, i32 50331681, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 33, i32 25, metadata !17, null}
!37 = metadata !{i32 34, i32 2, metadata !38, null}
!38 = metadata !{i32 786443, metadata !17, i32 34, i32 1, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 34, i32 38, metadata !38, null}
!40 = metadata !{i32 34, i32 73, metadata !38, null}
!41 = metadata !{i32 36, i32 1, metadata !38, null}
!42 = metadata !{i32 37, i32 1, metadata !38, null}
!43 = metadata !{i32 38, i32 1, metadata !38, null}
!44 = metadata !{i32 39, i32 1, metadata !38, null}
!45 = metadata !{i32 786688, metadata !38, metadata !"a_buf", metadata !6, i32 47, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !11, metadata !47, i32 0, i32 0} ; [ DW_TAG_array_type ]
!47 = metadata !{metadata !13, metadata !13}
!48 = metadata !{i32 47, i32 9, metadata !38, null}
!49 = metadata !{i32 786688, metadata !38, metadata !"b_buf", metadata !6, i32 48, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 48, i32 9, metadata !38, null}
!51 = metadata !{i32 51, i32 7, metadata !52, null}
!52 = metadata !{i32 786443, metadata !38, i32 51, i32 3, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 59, i32 7, metadata !54, null}
!54 = metadata !{i32 786443, metadata !38, i32 59, i32 3, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 54, i32 2, metadata !56, null}
!56 = metadata !{i32 786443, metadata !57, i32 52, i32 25, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 786443, metadata !58, i32 52, i32 5, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 786443, metadata !52, i32 51, i32 23, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 52, i32 9, metadata !57, null}
!60 = metadata !{i32 52, i32 26, metadata !56, null}
!61 = metadata !{i32 53, i32 1, metadata !56, null}
!62 = metadata !{i32 55, i32 5, metadata !56, null}
!63 = metadata !{i32 52, i32 20, metadata !57, null}
!64 = metadata !{i32 786688, metadata !38, metadata !"j", metadata !6, i32 46, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 51, i32 18, metadata !52, null}
!66 = metadata !{i32 786688, metadata !38, metadata !"i", metadata !6, i32 46, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 62, i32 2, metadata !68, null}
!68 = metadata !{i32 786443, metadata !69, i32 60, i32 25, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786443, metadata !70, i32 60, i32 5, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 786443, metadata !54, i32 59, i32 23, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 60, i32 9, metadata !69, null}
!72 = metadata !{i32 60, i32 26, metadata !68, null}
!73 = metadata !{i32 61, i32 1, metadata !68, null}
!74 = metadata !{i32 63, i32 5, metadata !68, null}
!75 = metadata !{i32 60, i32 20, metadata !69, null}
!76 = metadata !{i32 59, i32 18, metadata !54, null}
!77 = metadata !{i32 67, i32 3, metadata !38, null}
!78 = metadata !{i32 786689, metadata !5, metadata !"in_A", metadata !6, i32 16777222, metadata !9, i32 0, metadata !77} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 6, i32 25, metadata !5, metadata !77}
!80 = metadata !{i32 786689, metadata !5, metadata !"in_B", metadata !6, i32 33554439, metadata !9, i32 0, metadata !77} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 7, i32 25, metadata !5, metadata !77}
!82 = metadata !{i32 786689, metadata !5, metadata !"out_C", metadata !6, i32 50331656, metadata !14, i32 0, metadata !77} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 8, i32 25, metadata !5, metadata !77}
!84 = metadata !{i32 11, i32 1, metadata !85, metadata !77}
!85 = metadata !{i32 786443, metadata !5, i32 9, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 12, i32 1, metadata !85, metadata !77}
!87 = metadata !{i32 16, i32 8, metadata !88, metadata !77}
!88 = metadata !{i32 786443, metadata !85, i32 16, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 23, i32 77, metadata !90, metadata !77}
!90 = metadata !{i32 786443, metadata !91, i32 20, i32 50, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !92, i32 20, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786443, metadata !93, i32 17, i32 48, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 786443, metadata !94, i32 17, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786443, metadata !88, i32 16, i32 46, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 26, i32 7, metadata !92, metadata !77}
!96 = metadata !{i32 17, i32 10, metadata !93, metadata !77}
!97 = metadata !{i32 17, i32 49, metadata !92, metadata !77}
!98 = metadata !{i32 18, i32 1, metadata !92, metadata !77}
!99 = metadata !{i32 20, i32 12, metadata !91, metadata !77}
!100 = metadata !{i32 786688, metadata !90, metadata !"product_term", metadata !6, i32 23, metadata !11, i32 0, metadata !77} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 24, i32 9, metadata !90, metadata !77}
!102 = metadata !{i32 786688, metadata !92, metadata !"result", metadata !6, i32 19, metadata !11, i32 0, metadata !77} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 20, i32 39, metadata !91, metadata !77}
!104 = metadata !{i32 786688, metadata !85, metadata !"index_d", metadata !6, i32 14, metadata !29, i32 0, metadata !77} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 27, i32 5, metadata !92, metadata !77}
!106 = metadata !{i32 17, i32 37, metadata !93, metadata !77}
!107 = metadata !{i32 786688, metadata !85, metadata !"index_b", metadata !6, i32 14, metadata !29, i32 0, metadata !77} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 16, i32 35, metadata !88, metadata !77}
!109 = metadata !{i32 786688, metadata !85, metadata !"index_a", metadata !6, i32 14, metadata !29, i32 0, metadata !77} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 68, i32 1, metadata !38, null}
