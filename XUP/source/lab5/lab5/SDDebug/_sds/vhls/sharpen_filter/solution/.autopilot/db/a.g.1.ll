; ModuleID = 'C:/xup/SDSoC/labs/lab5/SDDebug/_sds/vhls/sharpen_filter/solution/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@x_op = internal unnamed_addr constant [3 x [3 x i16]] [[3 x i16] [i16 0, i16 -1, i16 0], [3 x i16] [i16 -1, i16 5, i16 -1], [3 x i16] [i16 0, i16 -1, i16 0]], align 16 ; [#uses=1 type=[3 x [3 x i16]]*]
@sharpen_filter.str = internal unnamed_addr constant [15 x i8] c"sharpen_filter\00" ; [#uses=1 type=[15 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=1]
define internal fastcc zeroext i8 @sharpen_operator([3 x i8]* %window) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{[3 x i8]* %window}, i64 0, metadata !51), !dbg !52 ; [debug line = 34:48] [debug variable = window]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i8]* %window, i32 3), !dbg !53 ; [debug line = 34:57]
  br label %1, !dbg !55                           ; [debug line = 47:7]

; <label>:1                                       ; preds = %3, %0
  %RowIndex.assign = phi i32 [ 0, %0 ], [ %i.1, %3 ] ; [#uses=3 type=i32]
  %x_weight = phi i16 [ 0, %0 ], [ %x_weight.1.lcssa, %3 ] ; [#uses=2 type=i16]
  %exitcond1 = icmp eq i32 %RowIndex.assign, 3, !dbg !55 ; [#uses=1 type=i1] [debug line = 47:7]
  br i1 %exitcond1, label %4, label %.preheader.preheader, !dbg !55 ; [debug line = 47:7]

.preheader.preheader:                             ; preds = %1
  %tmp.3 = sext i32 %RowIndex.assign to i64, !dbg !57 ; [#uses=2 type=i64] [debug line = 50:27]
  br label %.preheader, !dbg !61                  ; [debug line = 48:8]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %x_weight.1 = phi i16 [ %x_weight.2, %2 ], [ %x_weight, %.preheader.preheader ] ; [#uses=2 type=i16]
  %ColIndex.assign = phi i32 [ %j, %2 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %ColIndex.assign, 3, !dbg !61 ; [#uses=1 type=i1] [debug line = 48:8]
  br i1 %exitcond, label %3, label %2, !dbg !61   ; [debug line = 48:8]

; <label>:2                                       ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{[3 x i8]* %window}, i64 0, metadata !62) nounwind, !dbg !63 ; [debug line = 191:39@50:27] [debug variable = M]
  call void @llvm.dbg.value(metadata !{i32 %RowIndex.assign}, i64 0, metadata !64) nounwind, !dbg !65 ; [debug line = 191:46@50:27] [debug variable = RowIndex]
  call void @llvm.dbg.value(metadata !{i32 %ColIndex.assign}, i64 0, metadata !66) nounwind, !dbg !67 ; [debug line = 191:60@50:27] [debug variable = ColIndex]
  %tmp.5 = sext i32 %ColIndex.assign to i64, !dbg !68 ; [#uses=2 type=i64] [debug line = 194:2@50:27]
  %window.addr = getelementptr inbounds [3 x i8]* %window, i64 %tmp.3, i64 %tmp.5, !dbg !68 ; [#uses=1 type=i8*] [debug line = 194:2@50:27]
  %return_value = load i8* %window.addr, align 1, !dbg !68 ; [#uses=2 type=i8] [debug line = 194:2@50:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %return_value) nounwind
  call void @llvm.dbg.value(metadata !{i8 %return_value}, i64 0, metadata !70) nounwind, !dbg !68 ; [debug line = 194:2@50:27] [debug variable = return_value]
  %tmp.6 = zext i8 %return_value to i16, !dbg !57 ; [#uses=1 type=i16] [debug line = 50:27]
  %x_op.addr = getelementptr inbounds [3 x [3 x i16]]* @x_op, i64 0, i64 %tmp.3, i64 %tmp.5, !dbg !57 ; [#uses=1 type=i16*] [debug line = 50:27]
  %x_op.load = load i16* %x_op.addr, align 2, !dbg !57 ; [#uses=2 type=i16] [debug line = 50:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %x_op.load) nounwind
  %tmp.7 = mul i16 %x_op.load, %tmp.6, !dbg !57   ; [#uses=1 type=i16] [debug line = 50:27]
  %x_weight.2 = add i16 %tmp.7, %x_weight.1, !dbg !57 ; [#uses=1 type=i16] [debug line = 50:27]
  call void @llvm.dbg.value(metadata !{i16 %x_weight.2}, i64 0, metadata !71), !dbg !57 ; [debug line = 50:27] [debug variable = x_weight]
  %j = add nsw i32 %ColIndex.assign, 1, !dbg !72  ; [#uses=1 type=i32] [debug line = 48:22]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !73), !dbg !72 ; [debug line = 48:22] [debug variable = j]
  br label %.preheader, !dbg !72                  ; [debug line = 48:22]

; <label>:3                                       ; preds = %.preheader
  %x_weight.1.lcssa = phi i16 [ %x_weight.1, %.preheader ] ; [#uses=1 type=i16]
  %i.1 = add nsw i32 %RowIndex.assign, 1, !dbg !74 ; [#uses=1 type=i32] [debug line = 47:21]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !75), !dbg !74 ; [debug line = 47:21] [debug variable = i]
  br label %1, !dbg !74                           ; [debug line = 47:21]

; <label>:4                                       ; preds = %1
  %x_weight.0.lcssa = phi i16 [ %x_weight, %1 ]   ; [#uses=3 type=i16]
  %tmp = icmp sgt i16 %x_weight.0.lcssa, 0, !dbg !76 ; [#uses=1 type=i1] [debug line = 54:2]
  %tmp.1 = sub i16 0, %x_weight.0.lcssa, !dbg !76 ; [#uses=1 type=i16] [debug line = 54:2]
  %edge_weight = select i1 %tmp, i16 %x_weight.0.lcssa, i16 %tmp.1, !dbg !76 ; [#uses=1 type=i16] [debug line = 54:2]
  call void @llvm.dbg.value(metadata !{i16 %edge_weight}, i64 0, metadata !77), !dbg !76 ; [debug line = 54:2] [debug variable = edge_weight]
  %edge_val = trunc i16 %edge_weight to i8, !dbg !78 ; [#uses=1 type=i8] [debug line = 56:2]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !79), !dbg !78 ; [debug line = 56:2] [debug variable = edge_val]
  ret i8 %edge_val, !dbg !80                      ; [debug line = 58:2]
}

; [#uses=0]
define i32 @sharpen_filter(i8* %input, i8* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !81
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @sharpen_filter.str) nounwind
  %buff_A = alloca [3 x [1920 x i8]], align 16    ; [#uses=5 type=[3 x [1920 x i8]]*]
  %buff_C = alloca [3 x [3 x i8]], align 1        ; [#uses=6 type=[3 x [3 x i8]]*]
  call void @llvm.dbg.value(metadata !{i8* %input}, i64 0, metadata !87), !dbg !88 ; [debug line = 63:29] [debug variable = input]
  call void @llvm.dbg.value(metadata !{i8* %output}, i64 0, metadata !89), !dbg !90 ; [debug line = 63:45] [debug variable = output]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !91 ; [debug line = 64:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %input, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 2073600, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !93 ; [debug line = 65:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %output, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 2073600, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !94 ; [debug line = 66:1]
  call void @llvm.dbg.declare(metadata !{[3 x [1920 x i8]]* %buff_A}, metadata !95), !dbg !99 ; [debug line = 72:15] [debug variable = buff_A]
  call void @llvm.dbg.declare(metadata !{[3 x [3 x i8]]* %buff_C}, metadata !100), !dbg !103 ; [debug line = 73:11] [debug variable = buff_C]
  %M.assign = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i64 0, i64 0, !dbg !104 ; [#uses=1 type=[3 x i8]*] [debug line = 103:4]
  br label %1, !dbg !109                          ; [debug line = 75:7]

; <label>:1                                       ; preds = %14, %0
  %row = phi i32 [ 0, %0 ], [ %row.1, %14 ]       ; [#uses=5 type=i32]
  %exitcond1 = icmp eq i32 %row, 1081, !dbg !109  ; [#uses=1 type=i1] [debug line = 75:7]
  br i1 %exitcond1, label %15, label %.preheader.preheader, !dbg !109 ; [debug line = 75:7]

.preheader.preheader:                             ; preds = %1
  %tmp = icmp slt i32 %row, 1080, !dbg !110       ; [#uses=1 type=i1] [debug line = 93:4]
  %tmp.10 = mul nsw i32 %row, 1920, !dbg !111     ; [#uses=2 type=i32] [debug line = 95:5]
  %tmp.11 = icmp sgt i32 %row, 0, !dbg !113       ; [#uses=1 type=i1] [debug line = 121:4]
  br label %.preheader, !dbg !114                 ; [debug line = 76:8]

.preheader:                                       ; preds = %._crit_edge4, %.preheader.preheader
  %col.assign = phi i32 [ %col, %._crit_edge4 ], [ 0, %.preheader.preheader ] ; [#uses=9 type=i32]
  %exitcond = icmp eq i32 %col.assign, 1921, !dbg !114 ; [#uses=1 type=i1] [debug line = 76:8]
  br i1 %exitcond, label %14, label %2, !dbg !114 ; [debug line = 76:8]

; <label>:2                                       ; preds = %.preheader
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !115 ; [#uses=1 type=i32] [debug line = 76:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !116 ; [debug line = 78:1]
  %tmp.13 = icmp slt i32 %col.assign, 1920, !dbg !117 ; [#uses=3 type=i1] [debug line = 86:4]
  br i1 %tmp.13, label %3, label %._crit_edge, !dbg !117 ; [debug line = 86:4]

; <label>:3                                       ; preds = %2
  call void @llvm.dbg.value(metadata !{i32 %col.assign}, i64 0, metadata !118) nounwind, !dbg !121 ; [debug line = 134:53@87:5] [debug variable = col]
  %tmp.14 = sext i32 %col.assign to i64, !dbg !122 ; [#uses=3 type=i64] [debug line = 139:2@87:5]
  br label %4, !dbg !126                          ; [debug line = 137:7@87:5]

; <label>:4                                       ; preds = %5, %3
  %i.0.i = phi i32 [ 2, %3 ], [ %i, %5 ]          ; [#uses=3 type=i32]
  %tmp.15 = icmp sgt i32 %i.0.i, 0, !dbg !126     ; [#uses=1 type=i1] [debug line = 137:7@87:5]
  br i1 %tmp.15, label %5, label %linebuffer_shift_up.exit, !dbg !126 ; [debug line = 137:7@87:5]

; <label>:5                                       ; preds = %4
  %rbegin.i = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !127 ; [#uses=1 type=i32] [debug line = 137:31@87:5]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !128 ; [debug line = 138:1@87:5]
  %i = add nsw i32 %i.0.i, -1, !dbg !122          ; [#uses=2 type=i32] [debug line = 139:2@87:5]
  %tmp.17 = sext i32 %i to i64, !dbg !122         ; [#uses=1 type=i64] [debug line = 139:2@87:5]
  %buff_A.addr = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i64 0, i64 %tmp.17, i64 %tmp.14, !dbg !122 ; [#uses=1 type=i8*] [debug line = 139:2@87:5]
  %buff_A.load = load i8* %buff_A.addr, align 1, !dbg !122 ; [#uses=2 type=i8] [debug line = 139:2@87:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buff_A.load) nounwind
  %tmp.18 = sext i32 %i.0.i to i64, !dbg !122     ; [#uses=1 type=i64] [debug line = 139:2@87:5]
  %buff_A.addr.1 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i64 0, i64 %tmp.18, i64 %tmp.14, !dbg !122 ; [#uses=1 type=i8*] [debug line = 139:2@87:5]
  store i8 %buff_A.load, i8* %buff_A.addr.1, align 1, !dbg !122 ; [debug line = 139:2@87:5]
  %rend.i = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i32 %rbegin.i) nounwind, !dbg !129 ; [#uses=0 type=i32] [debug line = 140:2@87:5]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !130) nounwind, !dbg !131 ; [debug line = 137:25@87:5] [debug variable = i]
  br label %4, !dbg !131                          ; [debug line = 137:25@87:5]

linebuffer_shift_up.exit:                         ; preds = %4
  call void @llvm.dbg.value(metadata !{i32 %col.assign}, i64 0, metadata !132) nounwind, !dbg !134 ; [debug line = 146:68@88:12] [debug variable = ColIndex]
  %buff_A.addr.2 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i64 0, i64 0, i64 %tmp.14, !dbg !135 ; [#uses=1 type=i8*] [debug line = 150:2@88:12]
  %return_value = load i8* %buff_A.addr.2, align 1, !dbg !135 ; [#uses=2 type=i8] [debug line = 150:2@88:12]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %return_value) nounwind
  call void @llvm.dbg.value(metadata !{i8 %return_value}, i64 0, metadata !137) nounwind, !dbg !135 ; [debug line = 150:2@88:12] [debug variable = return_value]
  call void @llvm.dbg.value(metadata !{i8 %return_value}, i64 0, metadata !138), !dbg !133 ; [debug line = 88:12] [debug variable = temp]
  br label %._crit_edge, !dbg !139                ; [debug line = 89:4]

._crit_edge:                                      ; preds = %linebuffer_shift_up.exit, %2
  %value.assign.2 = phi i8 [ %return_value, %linebuffer_shift_up.exit ], [ 0, %2 ] ; [#uses=1 type=i8]
  %tmp.19 = and i1 %tmp.13, %tmp, !dbg !110       ; [#uses=1 type=i1] [debug line = 93:4]
  br i1 %tmp.19, label %6, label %._crit_edge2, !dbg !110 ; [debug line = 93:4]

; <label>:6                                       ; preds = %._crit_edge
  %index = add nsw i32 %col.assign, %tmp.10, !dbg !111 ; [#uses=1 type=i32] [debug line = 95:5]
  call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !140), !dbg !111 ; [debug line = 95:5] [debug variable = index]
  %tmp.21 = sext i32 %index to i64, !dbg !141     ; [#uses=1 type=i64] [debug line = 96:5]
  %input.addr = getelementptr inbounds i8* %input, i64 %tmp.21, !dbg !141 ; [#uses=1 type=i8*] [debug line = 96:5]
  %y = load i8* %input.addr, align 1, !dbg !141   ; [#uses=3 type=i8] [debug line = 96:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %y) nounwind
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !142), !dbg !143 ; [debug line = 97:5] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !144), !dbg !145 ; [debug line = 98:5] [debug variable = tempx]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !146), !dbg !148 ; [debug line = 158:62@99:5] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i32 %col.assign}, i64 0, metadata !149), !dbg !150 ; [debug line = 158:73@99:5] [debug variable = col]
  %tmp.22 = sext i32 %col.assign to i64, !dbg !151 ; [#uses=1 type=i64] [debug line = 161:2@99:5]
  %buff_A.addr.3 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i64 0, i64 0, i64 %tmp.22, !dbg !151 ; [#uses=1 type=i8*] [debug line = 161:2@99:5]
  store i8 %y, i8* %buff_A.addr.3, align 1, !dbg !151 ; [debug line = 161:2@99:5]
  br label %._crit_edge2, !dbg !153               ; [debug line = 100:4]

._crit_edge2:                                     ; preds = %6, %._crit_edge
  %value.assign.3 = phi i8 [ %y, %6 ], [ 0, %._crit_edge ] ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %M.assign}, i64 0, metadata !154) nounwind, !dbg !155 ; [debug line = 168:41@103:4] [debug variable = M]
  br label %7, !dbg !156                          ; [debug line = 171:7@103:4]

; <label>:7                                       ; preds = %11, %._crit_edge2
  %i.0.i6 = phi i32 [ 0, %._crit_edge2 ], [ %i.2, %11 ] ; [#uses=3 type=i32]
  %exitcond1.i = icmp eq i32 %i.0.i6, 3, !dbg !156 ; [#uses=1 type=i1] [debug line = 171:7@103:4]
  br i1 %exitcond1.i, label %window_shift_right.exit, label %8, !dbg !156 ; [debug line = 171:7@103:4]

; <label>:8                                       ; preds = %7
  %rbegin.i7 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !159 ; [#uses=1 type=i32] [debug line = 171:27@103:4]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !161 ; [debug line = 172:1@103:4]
  %tmp.23 = sext i32 %i.0.i6 to i64, !dbg !162    ; [#uses=2 type=i64] [debug line = 175:2@103:4]
  br label %9, !dbg !165                          ; [debug line = 173:7@103:4]

; <label>:9                                       ; preds = %10, %8
  %j.0.i = phi i32 [ 0, %8 ], [ %j, %10 ]         ; [#uses=3 type=i32]
  %exitcond.i = icmp eq i32 %j.0.i, 2, !dbg !165  ; [#uses=1 type=i1] [debug line = 173:7@103:4]
  br i1 %exitcond.i, label %11, label %10, !dbg !165 ; [debug line = 173:7@103:4]

; <label>:10                                      ; preds = %9
  %rbegin2.i = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !166 ; [#uses=1 type=i32] [debug line = 173:31@103:4]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !167 ; [debug line = 174:1@103:4]
  %j = add nsw i32 %j.0.i, 1, !dbg !162           ; [#uses=2 type=i32] [debug line = 175:2@103:4]
  %tmp.32 = sext i32 %j to i64, !dbg !162         ; [#uses=1 type=i64] [debug line = 175:2@103:4]
  %buff_C.addr.3 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i64 0, i64 %tmp.23, i64 %tmp.32, !dbg !162 ; [#uses=1 type=i8*] [debug line = 175:2@103:4]
  %buff_C.load = load i8* %buff_C.addr.3, align 1, !dbg !162 ; [#uses=2 type=i8] [debug line = 175:2@103:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buff_C.load) nounwind
  %tmp.33 = sext i32 %j.0.i to i64, !dbg !162     ; [#uses=1 type=i64] [debug line = 175:2@103:4]
  %buff_C.addr.4 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i64 0, i64 %tmp.23, i64 %tmp.33, !dbg !162 ; [#uses=1 type=i8*] [debug line = 175:2@103:4]
  store i8 %buff_C.load, i8* %buff_C.addr.4, align 1, !dbg !162 ; [debug line = 175:2@103:4]
  %rend3.i = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i32 %rbegin2.i) nounwind, !dbg !168 ; [#uses=0 type=i32] [debug line = 176:3@103:4]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !169) nounwind, !dbg !170 ; [debug line = 173:25@103:4] [debug variable = j]
  br label %9, !dbg !170                          ; [debug line = 173:25@103:4]

; <label>:11                                      ; preds = %9
  %rend.i8 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i32 %rbegin.i7) nounwind, !dbg !171 ; [#uses=0 type=i32] [debug line = 177:2@103:4]
  %i.2 = add nsw i32 %i.0.i6, 1, !dbg !172        ; [#uses=1 type=i32] [debug line = 171:21@103:4]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !173) nounwind, !dbg !172 ; [debug line = 171:21@103:4] [debug variable = i]
  br label %7, !dbg !172                          ; [debug line = 171:21@103:4]

window_shift_right.exit:                          ; preds = %7
  br i1 %tmp.13, label %12, label %._crit_edge3, !dbg !174 ; [debug line = 107:4]

; <label>:12                                      ; preds = %window_shift_right.exit
  call void @llvm.dbg.value(metadata !{i32 %col.assign}, i64 0, metadata !175) nounwind, !dbg !178 ; [debug line = 146:68@108:27] [debug variable = ColIndex]
  %tmp.24 = sext i32 %col.assign to i64, !dbg !179 ; [#uses=1 type=i64] [debug line = 150:2@108:27]
  %buff_A.addr.4 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i64 0, i64 2, i64 %tmp.24, !dbg !179 ; [#uses=1 type=i8*] [debug line = 150:2@108:27]
  %return_value.1 = load i8* %buff_A.addr.4, align 1, !dbg !179 ; [#uses=2 type=i8] [debug line = 150:2@108:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %return_value.1) nounwind
  call void @llvm.dbg.value(metadata !{i8 %return_value.1}, i64 0, metadata !180) nounwind, !dbg !179 ; [debug line = 150:2@108:27] [debug variable = return_value]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %M.assign}, i64 0, metadata !181), !dbg !182 ; [debug line = 183:36@108:27] [debug variable = M]
  call void @llvm.dbg.value(metadata !{i8 %return_value.1}, i64 0, metadata !183), !dbg !184 ; [debug line = 183:47@108:27] [debug variable = value]
  %buff_C.addr = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i64 0, i64 0, i64 2, !dbg !185 ; [#uses=1 type=i8*] [debug line = 185:2@108:27]
  store i8 %return_value.1, i8* %buff_C.addr, align 1, !dbg !185 ; [debug line = 185:2@108:27]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %M.assign}, i64 0, metadata !187), !dbg !189 ; [debug line = 183:36@109:5] [debug variable = M]
  call void @llvm.dbg.value(metadata !{i8 %value.assign.2}, i64 0, metadata !190), !dbg !191 ; [debug line = 183:47@109:5] [debug variable = value]
  %buff_C.addr.1 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i64 0, i64 1, i64 2, !dbg !192 ; [#uses=1 type=i8*] [debug line = 185:2@109:5]
  store i8 %value.assign.2, i8* %buff_C.addr.1, align 1, !dbg !192 ; [debug line = 185:2@109:5]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %M.assign}, i64 0, metadata !193), !dbg !195 ; [debug line = 183:36@110:5] [debug variable = M]
  call void @llvm.dbg.value(metadata !{i8 %value.assign.3}, i64 0, metadata !196), !dbg !197 ; [debug line = 183:47@110:5] [debug variable = value]
  %buff_C.addr.2 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i64 0, i64 2, i64 2, !dbg !198 ; [#uses=1 type=i8*] [debug line = 185:2@110:5]
  store i8 %value.assign.3, i8* %buff_C.addr.2, align 1, !dbg !198 ; [debug line = 185:2@110:5]
  br label %._crit_edge3, !dbg !199               ; [debug line = 111:4]

._crit_edge3:                                     ; preds = %12, %window_shift_right.exit
  %edge = call fastcc zeroext i8 @sharpen_operator([3 x i8]* %M.assign), !dbg !200 ; [#uses=1 type=i8] [debug line = 117:11]
  call void @llvm.dbg.value(metadata !{i8 %edge}, i64 0, metadata !201), !dbg !200 ; [debug line = 117:11] [debug variable = edge]
  %tmp.25 = icmp sgt i32 %col.assign, 0, !dbg !113 ; [#uses=1 type=i1] [debug line = 121:4]
  %or.cond = and i1 %tmp.11, %tmp.25, !dbg !113   ; [#uses=1 type=i1] [debug line = 121:4]
  br i1 %or.cond, label %13, label %._crit_edge4, !dbg !113 ; [debug line = 121:4]

; <label>:13                                      ; preds = %._crit_edge3
  %tmp.26 = add i32 %tmp.10, -1921, !dbg !202     ; [#uses=1 type=i32] [debug line = 122:5]
  %index.1 = add i32 %tmp.26, %col.assign, !dbg !202 ; [#uses=1 type=i32] [debug line = 122:5]
  call void @llvm.dbg.value(metadata !{i32 %index.1}, i64 0, metadata !140), !dbg !202 ; [debug line = 122:5] [debug variable = index]
  %tmp.28 = sext i32 %index.1 to i64, !dbg !204   ; [#uses=1 type=i64] [debug line = 123:5]
  %output.addr = getelementptr inbounds i8* %output, i64 %tmp.28, !dbg !204 ; [#uses=1 type=i8*] [debug line = 123:5]
  store i8 %edge, i8* %output.addr, align 1, !dbg !204 ; [debug line = 123:5]
  br label %._crit_edge4, !dbg !205               ; [debug line = 124:4]

._crit_edge4:                                     ; preds = %13, %._crit_edge3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !206 ; [#uses=0 type=i32] [debug line = 125:3]
  %col = add nsw i32 %col.assign, 1, !dbg !207    ; [#uses=1 type=i32] [debug line = 76:33]
  call void @llvm.dbg.value(metadata !{i32 %col}, i64 0, metadata !208), !dbg !207 ; [debug line = 76:33] [debug variable = col]
  br label %.preheader, !dbg !207                 ; [debug line = 76:33]

; <label>:14                                      ; preds = %.preheader
  %row.1 = add nsw i32 %row, 1, !dbg !209         ; [#uses=1 type=i32] [debug line = 75:32]
  call void @llvm.dbg.value(metadata !{i32 %row.1}, i64 0, metadata !210), !dbg !209 ; [debug line = 75:32] [debug variable = row]
  br label %1, !dbg !209                          ; [debug line = 75:32]

; <label>:15                                      ; preds = %1
  ret i32 0, !dbg !211                            ; [debug line = 127:2]
}

; [#uses=37]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=3]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=7]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/xup/SDSoC/labs/lab5/SDDebug/_sds/vhls/sharpen_filter/solution/.autopilot/db/sharpen.pragma.2.c", metadata !"c:/xup/SDSoC/labs/lab5/SDDebug/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !44} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15, metadata !22, metadata !25, metadata !32, metadata !35, metadata !38, metadata !41}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sharpen_filter", metadata !"sharpen_filter", metadata !"", metadata !6, i32 63, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*)* @sharpen_filter, null, null, metadata !13, i32 63} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"C:/xup/SDSoC/labs/lab5/src/sharpen.c", metadata !"c:/xup/SDSoC/labs/lab5/SDDebug/_sds/vhls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !6, metadata !"window_insert", metadata !"window_insert", metadata !"", metadata !6, i32 183, metadata !16, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 183} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !18, metadata !11, metadata !9, metadata !9}
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !11, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!22 = metadata !{i32 786478, i32 0, metadata !6, metadata !"window_shift_right", metadata !"window_shift_right", metadata !"", metadata !6, i32 168, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 168} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !18}
!25 = metadata !{i32 786478, i32 0, metadata !6, metadata !"linebuffer_insert_bottom", metadata !"linebuffer_insert_bottom", metadata !"", metadata !6, i32 158, metadata !26, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 158} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !28, metadata !11, metadata !9}
!28 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !11, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 1919}     ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 786478, i32 0, metadata !6, metadata !"linebuffer_getval", metadata !"linebuffer_getval", metadata !"", metadata !6, i32 146, metadata !33, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 146} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{metadata !11, metadata !28, metadata !9, metadata !9}
!35 = metadata !{i32 786478, i32 0, metadata !6, metadata !"linebuffer_shift_up", metadata !"linebuffer_shift_up", metadata !"", metadata !6, i32 134, metadata !36, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 134} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !28, metadata !9}
!38 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sharpen_operator", metadata !"sharpen_operator", metadata !"", metadata !6, i32 34, metadata !39, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 ([3 x i8]*)* @sharpen_operator, null, null, metadata !13, i32 34} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{metadata !12, metadata !18}
!41 = metadata !{i32 786478, i32 0, metadata !6, metadata !"window_getval", metadata !"window_getval", metadata !"", metadata !6, i32 191, metadata !42, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 191} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{metadata !11, metadata !18, metadata !9, metadata !9}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786484, i32 0, metadata !38, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 43, metadata !47, i32 1, i32 1, [3 x [3 x i16]]* @x_op} ; [ DW_TAG_variable ]
!47 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !48, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!48 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_const_type ]
!49 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!50 = metadata !{metadata !21, metadata !21}
!51 = metadata !{i32 786689, metadata !38, metadata !"window", metadata !6, i32 16777250, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 34, i32 48, metadata !38, null}
!53 = metadata !{i32 34, i32 57, metadata !54, null}
!54 = metadata !{i32 786443, metadata !38, i32 34, i32 56, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 47, i32 7, metadata !56, null}
!56 = metadata !{i32 786443, metadata !54, i32 47, i32 2, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 50, i32 27, metadata !58, null}
!58 = metadata !{i32 786443, metadata !59, i32 48, i32 27, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 786443, metadata !60, i32 48, i32 3, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786443, metadata !56, i32 47, i32 26, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 48, i32 8, metadata !59, null}
!62 = metadata !{i32 786689, metadata !41, metadata !"M", metadata !6, i32 16777407, metadata !18, i32 0, metadata !57} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 191, i32 39, metadata !41, metadata !57}
!64 = metadata !{i32 786689, metadata !41, metadata !"RowIndex", metadata !6, i32 33554623, metadata !9, i32 0, metadata !57} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 191, i32 46, metadata !41, metadata !57}
!66 = metadata !{i32 786689, metadata !41, metadata !"ColIndex", metadata !6, i32 50331839, metadata !9, i32 0, metadata !57} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 191, i32 60, metadata !41, metadata !57}
!68 = metadata !{i32 194, i32 2, metadata !69, metadata !57}
!69 = metadata !{i32 786443, metadata !41, i32 191, i32 70, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 786688, metadata !69, metadata !"return_value", metadata !6, i32 193, metadata !11, i32 0, metadata !57} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 786688, metadata !54, metadata !"x_weight", metadata !6, i32 35, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 48, i32 22, metadata !59, null}
!73 = metadata !{i32 786688, metadata !54, metadata !"j", metadata !6, i32 41, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 47, i32 21, metadata !56, null}
!75 = metadata !{i32 786688, metadata !54, metadata !"i", metadata !6, i32 40, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 54, i32 2, metadata !54, null}
!77 = metadata !{i32 786688, metadata !54, metadata !"edge_weight", metadata !6, i32 37, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 56, i32 2, metadata !54, null}
!79 = metadata !{i32 786688, metadata !54, metadata !"edge_val", metadata !6, i32 38, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 58, i32 2, metadata !54, null}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 31, metadata !83}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !"return", metadata !85, metadata !"int", i32 0, i32 31}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 1, i32 0}
!87 = metadata !{i32 786689, metadata !5, metadata !"input", metadata !6, i32 16777279, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 63, i32 29, metadata !5, null}
!89 = metadata !{i32 786689, metadata !5, metadata !"output", metadata !6, i32 33554495, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 63, i32 45, metadata !5, null}
!91 = metadata !{i32 64, i32 1, metadata !92, null}
!92 = metadata !{i32 786443, metadata !5, i32 63, i32 53, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 65, i32 1, metadata !92, null}
!94 = metadata !{i32 66, i32 1, metadata !92, null}
!95 = metadata !{i32 786688, metadata !92, metadata !"buff_A", metadata !6, i32 72, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 786454, null, metadata !"linebuffer_t", metadata !6, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ]
!97 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 46080, i64 8, i32 0, i32 0, metadata !11, metadata !98, i32 0, i32 0} ; [ DW_TAG_array_type ]
!98 = metadata !{metadata !21, metadata !31}
!99 = metadata !{i32 72, i32 15, metadata !92, null}
!100 = metadata !{i32 786688, metadata !92, metadata !"buff_C", metadata !6, i32 73, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 786454, null, metadata !"window_t", metadata !6, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_typedef ]
!102 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !11, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!103 = metadata !{i32 73, i32 11, metadata !92, null}
!104 = metadata !{i32 103, i32 4, metadata !105, null}
!105 = metadata !{i32 786443, metadata !106, i32 76, i32 40, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 786443, metadata !107, i32 76, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 786443, metadata !108, i32 75, i32 39, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 786443, metadata !92, i32 75, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 75, i32 7, metadata !108, null}
!110 = metadata !{i32 93, i32 4, metadata !105, null}
!111 = metadata !{i32 95, i32 5, metadata !112, null}
!112 = metadata !{i32 786443, metadata !105, i32 93, i32 37, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 121, i32 4, metadata !105, null}
!114 = metadata !{i32 76, i32 8, metadata !106, null}
!115 = metadata !{i32 76, i32 41, metadata !105, null}
!116 = metadata !{i32 78, i32 1, metadata !105, null}
!117 = metadata !{i32 86, i32 4, metadata !105, null}
!118 = metadata !{i32 786689, metadata !35, metadata !"col", metadata !6, i32 33554566, metadata !9, i32 0, metadata !119} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 87, i32 5, metadata !120, null}
!120 = metadata !{i32 786443, metadata !105, i32 86, i32 20, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 134, i32 53, metadata !35, metadata !119}
!122 = metadata !{i32 139, i32 2, metadata !123, metadata !119}
!123 = metadata !{i32 786443, metadata !124, i32 137, i32 30, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 786443, metadata !125, i32 137, i32 2, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 786443, metadata !35, i32 134, i32 58, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 137, i32 7, metadata !124, metadata !119}
!127 = metadata !{i32 137, i32 31, metadata !123, metadata !119}
!128 = metadata !{i32 138, i32 1, metadata !123, metadata !119}
!129 = metadata !{i32 140, i32 2, metadata !123, metadata !119}
!130 = metadata !{i32 786688, metadata !125, metadata !"i", metadata !6, i32 136, metadata !9, i32 0, metadata !119} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 137, i32 25, metadata !124, metadata !119}
!132 = metadata !{i32 786689, metadata !32, metadata !"ColIndex", metadata !6, i32 50331794, metadata !9, i32 0, metadata !133} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 88, i32 12, metadata !120, null}
!134 = metadata !{i32 146, i32 68, metadata !32, metadata !133}
!135 = metadata !{i32 150, i32 2, metadata !136, metadata !133}
!136 = metadata !{i32 786443, metadata !32, i32 146, i32 78, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 786688, metadata !136, metadata !"return_value", metadata !6, i32 149, metadata !11, i32 0, metadata !133} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 786688, metadata !105, metadata !"temp", metadata !6, i32 82, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!139 = metadata !{i32 89, i32 4, metadata !120, null}
!140 = metadata !{i32 786688, metadata !92, metadata !"index", metadata !6, i32 70, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 96, i32 5, metadata !112, null}
!142 = metadata !{i32 786688, metadata !112, metadata !"y", metadata !6, i32 94, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 97, i32 5, metadata !112, null}
!144 = metadata !{i32 786688, metadata !105, metadata !"tempx", metadata !6, i32 83, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 98, i32 5, metadata !112, null}
!146 = metadata !{i32 786689, metadata !25, metadata !"value", metadata !6, i32 33554590, metadata !11, i32 0, metadata !147} ; [ DW_TAG_arg_variable ]
!147 = metadata !{i32 99, i32 5, metadata !112, null}
!148 = metadata !{i32 158, i32 62, metadata !25, metadata !147}
!149 = metadata !{i32 786689, metadata !25, metadata !"col", metadata !6, i32 50331806, metadata !9, i32 0, metadata !147} ; [ DW_TAG_arg_variable ]
!150 = metadata !{i32 158, i32 73, metadata !25, metadata !147}
!151 = metadata !{i32 161, i32 2, metadata !152, metadata !147}
!152 = metadata !{i32 786443, metadata !25, i32 158, i32 78, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 100, i32 4, metadata !112, null}
!154 = metadata !{i32 786689, metadata !22, metadata !"M", metadata !6, i32 16777384, metadata !18, i32 0, metadata !104} ; [ DW_TAG_arg_variable ]
!155 = metadata !{i32 168, i32 41, metadata !22, metadata !104}
!156 = metadata !{i32 171, i32 7, metadata !157, metadata !104}
!157 = metadata !{i32 786443, metadata !158, i32 171, i32 2, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786443, metadata !22, i32 168, i32 44, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 171, i32 27, metadata !160, metadata !104}
!160 = metadata !{i32 786443, metadata !157, i32 171, i32 26, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 172, i32 1, metadata !160, metadata !104}
!162 = metadata !{i32 175, i32 2, metadata !163, metadata !104}
!163 = metadata !{i32 786443, metadata !164, i32 173, i32 30, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 786443, metadata !160, i32 173, i32 2, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 173, i32 7, metadata !164, metadata !104}
!166 = metadata !{i32 173, i32 31, metadata !163, metadata !104}
!167 = metadata !{i32 174, i32 1, metadata !163, metadata !104}
!168 = metadata !{i32 176, i32 3, metadata !163, metadata !104}
!169 = metadata !{i32 786688, metadata !158, metadata !"j", metadata !6, i32 170, metadata !9, i32 0, metadata !104} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 173, i32 25, metadata !164, metadata !104}
!171 = metadata !{i32 177, i32 2, metadata !160, metadata !104}
!172 = metadata !{i32 171, i32 21, metadata !157, metadata !104}
!173 = metadata !{i32 786688, metadata !158, metadata !"i", metadata !6, i32 170, metadata !9, i32 0, metadata !104} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 107, i32 4, metadata !105, null}
!175 = metadata !{i32 786689, metadata !32, metadata !"ColIndex", metadata !6, i32 50331794, metadata !9, i32 0, metadata !176} ; [ DW_TAG_arg_variable ]
!176 = metadata !{i32 108, i32 27, metadata !177, null}
!177 = metadata !{i32 786443, metadata !105, i32 107, i32 20, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 146, i32 68, metadata !32, metadata !176}
!179 = metadata !{i32 150, i32 2, metadata !136, metadata !176}
!180 = metadata !{i32 786688, metadata !136, metadata !"return_value", metadata !6, i32 149, metadata !11, i32 0, metadata !176} ; [ DW_TAG_auto_variable ]
!181 = metadata !{i32 786689, metadata !15, metadata !"M", metadata !6, i32 16777399, metadata !18, i32 0, metadata !176} ; [ DW_TAG_arg_variable ]
!182 = metadata !{i32 183, i32 36, metadata !15, metadata !176}
!183 = metadata !{i32 786689, metadata !15, metadata !"value", metadata !6, i32 33554615, metadata !11, i32 0, metadata !176} ; [ DW_TAG_arg_variable ]
!184 = metadata !{i32 183, i32 47, metadata !15, metadata !176}
!185 = metadata !{i32 185, i32 2, metadata !186, metadata !176}
!186 = metadata !{i32 786443, metadata !15, i32 183, i32 72, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 786689, metadata !15, metadata !"M", metadata !6, i32 16777399, metadata !18, i32 0, metadata !188} ; [ DW_TAG_arg_variable ]
!188 = metadata !{i32 109, i32 5, metadata !177, null}
!189 = metadata !{i32 183, i32 36, metadata !15, metadata !188}
!190 = metadata !{i32 786689, metadata !15, metadata !"value", metadata !6, i32 33554615, metadata !11, i32 0, metadata !188} ; [ DW_TAG_arg_variable ]
!191 = metadata !{i32 183, i32 47, metadata !15, metadata !188}
!192 = metadata !{i32 185, i32 2, metadata !186, metadata !188}
!193 = metadata !{i32 786689, metadata !15, metadata !"M", metadata !6, i32 16777399, metadata !18, i32 0, metadata !194} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 110, i32 5, metadata !177, null}
!195 = metadata !{i32 183, i32 36, metadata !15, metadata !194}
!196 = metadata !{i32 786689, metadata !15, metadata !"value", metadata !6, i32 33554615, metadata !11, i32 0, metadata !194} ; [ DW_TAG_arg_variable ]
!197 = metadata !{i32 183, i32 47, metadata !15, metadata !194}
!198 = metadata !{i32 185, i32 2, metadata !186, metadata !194}
!199 = metadata !{i32 111, i32 4, metadata !177, null}
!200 = metadata !{i32 117, i32 11, metadata !105, null}
!201 = metadata !{i32 786688, metadata !105, metadata !"edge", metadata !6, i32 113, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 122, i32 5, metadata !203, null}
!203 = metadata !{i32 786443, metadata !105, i32 121, i32 28, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!204 = metadata !{i32 123, i32 5, metadata !203, null}
!205 = metadata !{i32 124, i32 4, metadata !203, null}
!206 = metadata !{i32 125, i32 3, metadata !105, null}
!207 = metadata !{i32 76, i32 33, metadata !106, null}
!208 = metadata !{i32 786688, metadata !92, metadata !"col", metadata !6, i32 69, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!209 = metadata !{i32 75, i32 32, metadata !108, null}
!210 = metadata !{i32 786688, metadata !92, metadata !"row", metadata !6, i32 68, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!211 = metadata !{i32 127, i32 2, metadata !92, null}
