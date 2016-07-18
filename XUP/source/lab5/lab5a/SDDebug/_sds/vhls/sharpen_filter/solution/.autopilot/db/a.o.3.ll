; ModuleID = 'C:/xup/SDSoC/labs/lab5a/SDDebug/_sds/vhls/sharpen_filter/solution/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sharpen_filter_str = internal unnamed_addr constant [15 x i8] c"sharpen_filter\00" ; [#uses=1 type=[15 x i8]*]
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str1 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=2 type=[8 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=10 type=[1 x i8]*]

; [#uses=0]
define i32 @sharpen_filter(i8* %input, i8* %output) nounwind uwtable {
  %buff_C_2_1 = alloca i8                         ; [#uses=2 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %buff_C_2_1}, metadata !0) ; [debug variable = M[2][1]]
  %buff_C_0_1 = alloca i8                         ; [#uses=2 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %buff_C_0_1}, metadata !33) ; [debug variable = M[0][1]]
  %buff_C_1_0 = alloca i8                         ; [#uses=2 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %buff_C_1_0}, metadata !34) ; [debug variable = M[1][0]]
  %buff_C_1_1 = alloca i8                         ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %buff_C_1_1}, metadata !35) ; [debug variable = M[1][1]]
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %input) nounwind, !map !36
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output) nounwind, !map !42
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !46
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @sharpen_filter_str) nounwind
  %buff_A_0 = alloca [1920 x i8], align 16        ; [#uses=2 type=[1920 x i8]*]
  %buff_A_1 = alloca [1920 x i8], align 16        ; [#uses=1 type=[1920 x i8]*]
  %buff_A_2 = alloca [1920 x i8], align 16        ; [#uses=2 type=[1920 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %input}, i64 0, metadata !52), !dbg !53 ; [debug line = 63:29] [debug variable = input]
  call void @llvm.dbg.value(metadata !{i8* %output}, i64 0, metadata !54), !dbg !55 ; [debug line = 63:45] [debug variable = output]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind, !dbg !56 ; [debug line = 64:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %input, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 2073600, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !57 ; [debug line = 65:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %output, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 2073600, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !58 ; [debug line = 66:1]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %buff_A_0}, metadata !59), !dbg !63 ; [debug line = 72:15] [debug variable = buff_A[0]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %buff_A_1}, metadata !64), !dbg !63 ; [debug line = 72:15] [debug variable = buff_A[1]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %buff_A_2}, metadata !65), !dbg !63 ; [debug line = 72:15] [debug variable = buff_A[2]]
  br label %.preheader, !dbg !66                  ; [debug line = 75:7]

.preheader:                                       ; preds = %._crit_edge4, %0
  %indvar_flatten = phi i21 [ 0, %0 ], [ %indvar_flatten_next, %._crit_edge4 ] ; [#uses=2 type=i21]
  %row = phi i11 [ 0, %0 ], [ %row_mid2, %._crit_edge4 ] ; [#uses=2 type=i11]
  %col_assign = phi i11 [ 0, %0 ], [ %col, %._crit_edge4 ] ; [#uses=2 type=i11]
  %buff_C_1_0_load = load i8* %buff_C_1_0, !dbg !14 ; [#uses=1 type=i8] [debug line = 50:27@117:11]
  %buff_C_1_1_load_1 = load i8* %buff_C_1_1       ; [#uses=1 type=i8]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -20551 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i21 %indvar_flatten, 1 ; [#uses=1 type=i21]
  store i8 %buff_C_1_1_load_1, i8* %buff_C_1_0
  br i1 %exitcond_flatten, label %3, label %.preheader.preheader

linebuffer_shift_up.exit:                         ; preds = %.preheader.preheader
  call void @llvm.dbg.value(metadata !{i11 %col_assign}, i64 0, metadata !67) nounwind, !dbg !76 ; [debug line = 134:53@87:5] [debug variable = col]
  %tmp_3 = zext i11 %col_assign_mid2 to i64, !dbg !77 ; [#uses=3 type=i64] [debug line = 139:2@87:5]
  %buff_A_1_addr = getelementptr [1920 x i8]* %buff_A_1, i64 0, i64 %tmp_3, !dbg !77 ; [#uses=2 type=i8*] [debug line = 139:2@87:5]
  %buff_A_1_load = load i8* %buff_A_1_addr, align 1, !dbg !77 ; [#uses=1 type=i8] [debug line = 139:2@87:5]
  %buff_A_2_addr = getelementptr [1920 x i8]* %buff_A_2, i64 0, i64 %tmp_3, !dbg !77 ; [#uses=1 type=i8*] [debug line = 139:2@87:5]
  store i8 %buff_A_1_load, i8* %buff_A_2_addr, align 1, !dbg !77 ; [debug line = 139:2@87:5]
  %buff_A_0_addr = getelementptr [1920 x i8]* %buff_A_0, i64 0, i64 %tmp_3, !dbg !77 ; [#uses=1 type=i8*] [debug line = 139:2@87:5]
  %return_value = load i8* %buff_A_0_addr, align 1, !dbg !77 ; [#uses=2 type=i8] [debug line = 139:2@87:5]
  store i8 %return_value, i8* %buff_A_1_addr, align 1, !dbg !77 ; [debug line = 139:2@87:5]
  call void @llvm.dbg.value(metadata !{i11 %col_assign}, i64 0, metadata !81) nounwind, !dbg !86 ; [debug line = 146:68@88:12] [debug variable = ColIndex]
  call void @llvm.dbg.value(metadata !{i8 %return_value}, i64 0, metadata !87) nounwind, !dbg !89 ; [debug line = 150:2@88:12] [debug variable = return_value]
  call void @llvm.dbg.value(metadata !{i8 %return_value}, i64 0, metadata !90), !dbg !85 ; [debug line = 88:12] [debug variable = temp]
  br label %._crit_edge, !dbg !91                 ; [debug line = 89:4]

._crit_edge:                                      ; preds = %.preheader.preheader, %linebuffer_shift_up.exit
  %buff_C_1_2_1 = phi i8 [ %return_value, %linebuffer_shift_up.exit ], [ 0, %.preheader.preheader ] ; [#uses=1 type=i8]
  %tmp_7 = and i1 %tmp_2, %tmp, !dbg !92          ; [#uses=1 type=i1] [debug line = 93:4]
  br i1 %tmp_7, label %1, label %._crit_edge2_ifconv, !dbg !92 ; [debug line = 93:4]

; <label>:1                                       ; preds = %._crit_edge
  %y = call i8 @_ssdm_op_Read.ap_fifo.i8P(i8* %input) nounwind, !dbg !93 ; [#uses=2 type=i8] [debug line = 96:5]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !95), !dbg !96 ; [debug line = 97:5] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !97), !dbg !98 ; [debug line = 98:5] [debug variable = tempx]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !99), !dbg !104 ; [debug line = 158:62@99:5] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i11 %col_assign}, i64 0, metadata !105), !dbg !106 ; [debug line = 158:73@99:5] [debug variable = col]
  %tmp_9 = zext i11 %col_assign_mid2 to i64, !dbg !107 ; [#uses=1 type=i64] [debug line = 161:2@99:5]
  %buff_A_0_addr_1 = getelementptr [1920 x i8]* %buff_A_0, i64 0, i64 %tmp_9, !dbg !107 ; [#uses=1 type=i8*] [debug line = 161:2@99:5]
  store i8 %y, i8* %buff_A_0_addr_1, align 1, !dbg !107 ; [debug line = 161:2@99:5]
  br label %._crit_edge2_ifconv, !dbg !109        ; [debug line = 100:4]

._crit_edge2_ifconv:                              ; preds = %1, %._crit_edge
  %buff_C_2_2 = phi i8 [ %y, %1 ], [ 0, %._crit_edge ] ; [#uses=1 type=i8]
  %buff_C_2_1_load = load i8* %buff_C_2_1, !dbg !14 ; [#uses=2 type=i8] [debug line = 50:27@117:11]
  %buff_C_0_1_load = load i8* %buff_C_0_1, !dbg !14 ; [#uses=2 type=i8] [debug line = 50:27@117:11]
  %buff_C_1_1_load = load i8* %buff_C_1_1, !dbg !14 ; [#uses=3 type=i8] [debug line = 50:27@117:11]
  call void @llvm.dbg.value(metadata !{i11 %col_assign}, i64 0, metadata !110) nounwind, !dbg !113 ; [debug line = 146:68@108:27] [debug variable = ColIndex]
  %tmp_6 = zext i11 %col_assign_mid2 to i64, !dbg !114 ; [#uses=1 type=i64] [debug line = 150:2@108:27]
  %buff_A_2_addr_1 = getelementptr [1920 x i8]* %buff_A_2, i64 0, i64 %tmp_6, !dbg !114 ; [#uses=1 type=i8*] [debug line = 150:2@108:27]
  %return_value_1 = load i8* %buff_A_2_addr_1, align 1, !dbg !114 ; [#uses=1 type=i8] [debug line = 150:2@108:27]
  call void @llvm.dbg.value(metadata !{i8 %return_value_1}, i64 0, metadata !115) nounwind, !dbg !114 ; [debug line = 150:2@108:27] [debug variable = return_value]
  call void @llvm.dbg.value(metadata !{i8 %return_value_1}, i64 0, metadata !116), !dbg !120 ; [debug line = 183:47@108:27] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i8 %return_value_1}, i64 0, metadata !121), !dbg !124 ; [debug line = 185:2@108:27] [debug variable = buff_C[0][2]]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_1_2_1}, i64 0, metadata !126), !dbg !128 ; [debug line = 183:47@109:5] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_1_2_1}, i64 0, metadata !129), !dbg !130 ; [debug line = 185:2@109:5] [debug variable = buff_C[1][2]]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_2_2}, i64 0, metadata !131), !dbg !133 ; [debug line = 183:47@110:5] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_2_2}, i64 0, metadata !134), !dbg !135 ; [debug line = 185:2@110:5] [debug variable = buff_C[2][2]]
  %buff_C_1_2 = select i1 %tmp_2, i8 %buff_C_1_2_1, i8 %buff_C_1_1_load, !dbg !136 ; [#uses=2 type=i8] [debug line = 191:39@50:27@117:11]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_1_2}, i64 0, metadata !129), !dbg !130 ; [debug line = 185:2@109:5] [debug variable = buff_C[1][2]]
  %buff_C_0_2_1 = select i1 %tmp_2, i8 %return_value_1, i8 %buff_C_0_1_load ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_0_2_1}, i64 0, metadata !121), !dbg !124 ; [debug line = 185:2@108:27] [debug variable = buff_C[0][2]]
  %buff_C_2_2_1 = select i1 %tmp_2, i8 %buff_C_2_2, i8 %buff_C_2_1_load ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_2_2_1}, i64 0, metadata !134), !dbg !135 ; [debug line = 185:2@110:5] [debug variable = buff_C[2][2]]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_1_2}, i64 0, metadata !137), !dbg !136 ; [debug line = 191:39@50:27@117:11] [debug variable = M[1][2]]
  %tmp_6_0_1_i_cast = zext i8 %buff_C_0_1_load to i9, !dbg !14 ; [#uses=1 type=i9] [debug line = 50:27@117:11]
  %tmp_6_1_i_cast = zext i8 %buff_C_1_0_load to i9, !dbg !14 ; [#uses=1 type=i9] [debug line = 50:27@117:11]
  %sum_i = add i9 %tmp_6_1_i_cast, %tmp_6_0_1_i_cast, !dbg !14 ; [#uses=1 type=i9] [debug line = 50:27@117:11]
  %sum_i_cast = zext i9 %sum_i to i12, !dbg !14   ; [#uses=1 type=i12] [debug line = 50:27@117:11]
  %tmp_6_1_1_i_cast2 = zext i8 %buff_C_1_1_load to i11, !dbg !14 ; [#uses=1 type=i11] [debug line = 50:27@117:11]
  %p_shl_i = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %buff_C_1_1_load, i2 0), !dbg !14 ; [#uses=1 type=i10] [debug line = 50:27@117:11]
  %p_shl_i_cast = zext i10 %p_shl_i to i11, !dbg !14 ; [#uses=1 type=i11] [debug line = 50:27@117:11]
  %tmp_7_1_1_i = add i11 %p_shl_i_cast, %tmp_6_1_1_i_cast2, !dbg !14 ; [#uses=1 type=i11] [debug line = 50:27@117:11]
  %tmp_7_1_1_i_cast = zext i11 %tmp_7_1_1_i to i12, !dbg !14 ; [#uses=1 type=i12] [debug line = 50:27@117:11]
  %x_weight_2_1_1_i = sub i12 %tmp_7_1_1_i_cast, %sum_i_cast, !dbg !14 ; [#uses=1 type=i12] [debug line = 50:27@117:11]
  %tmp_6_1_2_i_cast = zext i8 %buff_C_1_2 to i12, !dbg !14 ; [#uses=1 type=i12] [debug line = 50:27@117:11]
  %x_weight_2_1_2_i = sub i12 %x_weight_2_1_1_i, %tmp_6_1_2_i_cast, !dbg !14 ; [#uses=1 type=i12] [debug line = 50:27@117:11]
  %tmp_6_2_1_i_cast = zext i8 %buff_C_2_1_load to i12, !dbg !14 ; [#uses=1 type=i12] [debug line = 50:27@117:11]
  %x_weight_2_2_1_i = sub i12 %x_weight_2_1_2_i, %tmp_6_2_1_i_cast, !dbg !14 ; [#uses=2 type=i12] [debug line = 50:27@117:11]
  %tmp_i = icmp sgt i12 %x_weight_2_2_1_i, 0, !dbg !138 ; [#uses=1 type=i1] [debug line = 54:2@117:11]
  %tmp_8 = trunc i12 %x_weight_2_2_1_i to i8, !dbg !138 ; [#uses=2 type=i8] [debug line = 54:2@117:11]
  %tmp_2_i = sub i8 0, %tmp_8, !dbg !138          ; [#uses=1 type=i8] [debug line = 54:2@117:11]
  %edge_val = select i1 %tmp_i, i8 %tmp_8, i8 %tmp_2_i, !dbg !138 ; [#uses=1 type=i8] [debug line = 54:2@117:11]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !139), !dbg !140 ; [debug line = 56:2@117:11] [debug variable = edge_val]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !141), !dbg !23 ; [debug line = 117:11] [debug variable = edge]
  %tmp_5 = icmp ne i11 %col_assign_mid2, 0, !dbg !142 ; [#uses=1 type=i1] [debug line = 121:4]
  %or_cond = and i1 %tmp_1, %tmp_5, !dbg !142     ; [#uses=1 type=i1] [debug line = 121:4]
  store i8 %buff_C_1_2, i8* %buff_C_1_1
  store i8 %buff_C_0_2_1, i8* %buff_C_0_1
  store i8 %buff_C_2_2_1, i8* %buff_C_2_1
  br i1 %or_cond, label %2, label %._crit_edge4, !dbg !142 ; [debug line = 121:4]

; <label>:2                                       ; preds = %._crit_edge2_ifconv
  call void @_ssdm_op_Write.ap_fifo.i8P(i8* %output, i8 %edge_val) nounwind, !dbg !143 ; [debug line = 123:5]
  br label %._crit_edge4, !dbg !145               ; [debug line = 124:4]

._crit_edge4:                                     ; preds = %2, %._crit_edge2_ifconv
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_4) nounwind, !dbg !146 ; [#uses=0 type=i32] [debug line = 125:3]
  %col = add i11 %col_assign_mid2, 1, !dbg !147   ; [#uses=1 type=i11] [debug line = 76:33]
  call void @llvm.dbg.value(metadata !{i11 %col}, i64 0, metadata !148), !dbg !147 ; [debug line = 76:33] [debug variable = col]
  br label %.preheader, !dbg !147                 ; [debug line = 76:33]

.preheader.preheader:                             ; preds = %.preheader
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2076601, i64 2076601, i64 2076601) nounwind ; [#uses=0 type=i32]
  %exitcond4 = icmp eq i11 %col_assign, -127, !dbg !149 ; [#uses=2 type=i1] [debug line = 76:8]
  %col_assign_mid2 = select i1 %exitcond4, i11 0, i11 %col_assign ; [#uses=6 type=i11]
  %row_s = add i11 %row, 1, !dbg !150             ; [#uses=1 type=i11] [debug line = 75:32]
  %row_mid2 = select i1 %exitcond4, i11 %row_s, i11 %row ; [#uses=3 type=i11]
  %tmp = icmp ult i11 %row_mid2, -968, !dbg !92   ; [#uses=1 type=i1] [debug line = 93:4]
  %tmp_1 = icmp ne i11 %row_mid2, 0, !dbg !142    ; [#uses=1 type=i1] [debug line = 121:4]
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2) nounwind, !dbg !151 ; [#uses=1 type=i32] [debug line = 76:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !152 ; [debug line = 78:1]
  %tmp_2 = icmp ult i11 %col_assign_mid2, -128, !dbg !153 ; [#uses=5 type=i1] [debug line = 86:4]
  br i1 %tmp_2, label %linebuffer_shift_up.exit, label %._crit_edge, !dbg !153 ; [debug line = 86:4]

; <label>:3                                       ; preds = %.preheader
  ret i32 0, !dbg !154                            ; [debug line = 127:2]
}

; [#uses=25]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=7]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1) ; [#uses=0 type=i8]
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

; [#uses=2]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i8 @_ssdm_op_Read.ap_fifo.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)   ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i12.i32.i32(i12, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

; [#uses=1]
define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10                      ; [#uses=1 type=i10]
  %empty_5 = zext i2 %1 to i10                    ; [#uses=1 type=i10]
  %empty_6 = shl i10 %empty, 2                    ; [#uses=1 type=i10]
  %empty_7 = or i10 %empty_6, %empty_5            ; [#uses=1 type=i10]
  ret i10 %empty_7
}

; [#uses=1]
declare i8 @_autotb_FifoWrite_i8(i8*, i8)

; [#uses=1]
declare i8 @_autotb_FifoRead_i8(i8*)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 790532, metadata !1, metadata !"M[2][1]", null, i32 191, metadata !5, i32 0, metadata !14} ; [ DW_TAG_arg_variable_ro ]
!1 = metadata !{i32 786478, i32 0, metadata !2, metadata !"window_getval", metadata !"window_getval", metadata !"", metadata !2, i32 191, metadata !3, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 191} ; [ DW_TAG_subprogram ]
!2 = metadata !{i32 786473, metadata !"C:/xup/SDSoC/labs/lab5a/src/sharpen.c", metadata !"c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/vhls", null} ; [ DW_TAG_file_type ]
!3 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !7, metadata !11, metadata !11}
!5 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !2, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !6} ; [ DW_TAG_typedef ]
!6 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!8 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !5, metadata !9, i32 0, i32 0} ; [ DW_TAG_array_type ]
!9 = metadata !{metadata !10}
!10 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{i32 50, i32 27, metadata !15, metadata !23}
!15 = metadata !{i32 786443, metadata !16, i32 48, i32 27, metadata !2, i32 24} ; [ DW_TAG_lexical_block ]
!16 = metadata !{i32 786443, metadata !17, i32 48, i32 3, metadata !2, i32 23} ; [ DW_TAG_lexical_block ]
!17 = metadata !{i32 786443, metadata !18, i32 47, i32 26, metadata !2, i32 22} ; [ DW_TAG_lexical_block ]
!18 = metadata !{i32 786443, metadata !19, i32 47, i32 2, metadata !2, i32 21} ; [ DW_TAG_lexical_block ]
!19 = metadata !{i32 786443, metadata !20, i32 34, i32 56, metadata !2, i32 20} ; [ DW_TAG_lexical_block ]
!20 = metadata !{i32 786478, i32 0, metadata !2, metadata !"sharpen_operator", metadata !"sharpen_operator", metadata !"", metadata !2, i32 34, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 34} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{metadata !6, metadata !7}
!23 = metadata !{i32 117, i32 11, metadata !24, null}
!24 = metadata !{i32 786443, metadata !25, i32 76, i32 40, metadata !2, i32 4} ; [ DW_TAG_lexical_block ]
!25 = metadata !{i32 786443, metadata !26, i32 76, i32 3, metadata !2, i32 3} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 786443, metadata !27, i32 75, i32 39, metadata !2, i32 2} ; [ DW_TAG_lexical_block ]
!27 = metadata !{i32 786443, metadata !28, i32 75, i32 2, metadata !2, i32 1} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 786443, metadata !29, i32 63, i32 53, metadata !2, i32 0} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 786478, i32 0, metadata !2, metadata !"sharpen_filter", metadata !"sharpen_filter", metadata !"", metadata !2, i32 63, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*)* @sharpen_filter, null, null, metadata !12, i32 63} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{metadata !11, metadata !32, metadata !32}
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !5} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 790532, metadata !1, metadata !"M[0][1]", null, i32 191, metadata !5, i32 0, metadata !14} ; [ DW_TAG_arg_variable_ro ]
!34 = metadata !{i32 790532, metadata !1, metadata !"M[1][0]", null, i32 191, metadata !5, i32 0, metadata !14} ; [ DW_TAG_arg_variable_ro ]
!35 = metadata !{i32 790532, metadata !1, metadata !"M[1][1]", null, i32 191, metadata !5, i32 0, metadata !14} ; [ DW_TAG_arg_variable_ro ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 7, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"input", metadata !40, metadata !"unsigned char", i32 0, i32 7}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 2073599, i32 1}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 7, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"output", metadata !40, metadata !"unsigned char", i32 0, i32 7}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 31, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"return", metadata !50, metadata !"int", i32 0, i32 31}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 1, i32 0}
!52 = metadata !{i32 786689, metadata !29, metadata !"input", metadata !2, i32 16777279, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 63, i32 29, metadata !29, null}
!54 = metadata !{i32 786689, metadata !29, metadata !"output", metadata !2, i32 33554495, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 63, i32 45, metadata !29, null}
!56 = metadata !{i32 64, i32 1, metadata !28, null}
!57 = metadata !{i32 65, i32 1, metadata !28, null}
!58 = metadata !{i32 66, i32 1, metadata !28, null}
!59 = metadata !{i32 786688, metadata !28, metadata !"buff_A[0]", null, i32 72, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !5, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ]
!61 = metadata !{metadata !10, metadata !62}
!62 = metadata !{i32 786465, i64 0, i64 1919}     ; [ DW_TAG_subrange_type ]
!63 = metadata !{i32 72, i32 15, metadata !28, null}
!64 = metadata !{i32 786688, metadata !28, metadata !"buff_A[1]", null, i32 72, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 786688, metadata !28, metadata !"buff_A[2]", null, i32 72, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 75, i32 7, metadata !27, null}
!67 = metadata !{i32 786689, metadata !68, metadata !"col", metadata !2, i32 33554566, metadata !11, i32 0, metadata !74} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 786478, i32 0, metadata !2, metadata !"linebuffer_shift_up", metadata !"linebuffer_shift_up", metadata !"", metadata !2, i32 134, metadata !69, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 134} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{null, metadata !71, metadata !11}
!71 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ]
!72 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !5, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ]
!73 = metadata !{metadata !62}
!74 = metadata !{i32 87, i32 5, metadata !75, null}
!75 = metadata !{i32 786443, metadata !24, i32 86, i32 20, metadata !2, i32 5} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 134, i32 53, metadata !68, metadata !74}
!77 = metadata !{i32 139, i32 2, metadata !78, metadata !74}
!78 = metadata !{i32 786443, metadata !79, i32 137, i32 30, metadata !2, i32 19} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786443, metadata !80, i32 137, i32 2, metadata !2, i32 18} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786443, metadata !68, i32 134, i32 58, metadata !2, i32 17} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786689, metadata !82, metadata !"ColIndex", metadata !2, i32 50331794, metadata !11, i32 0, metadata !85} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 786478, i32 0, metadata !2, metadata !"linebuffer_getval", metadata !"linebuffer_getval", metadata !"", metadata !2, i32 146, metadata !83, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 146} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{metadata !5, metadata !71, metadata !11, metadata !11}
!85 = metadata !{i32 88, i32 12, metadata !75, null}
!86 = metadata !{i32 146, i32 68, metadata !82, metadata !85}
!87 = metadata !{i32 786688, metadata !88, metadata !"return_value", metadata !2, i32 149, metadata !5, i32 0, metadata !85} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 786443, metadata !82, i32 146, i32 78, metadata !2, i32 16} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 150, i32 2, metadata !88, metadata !85}
!90 = metadata !{i32 786688, metadata !24, metadata !"temp", metadata !2, i32 82, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 89, i32 4, metadata !75, null}
!92 = metadata !{i32 93, i32 4, metadata !24, null}
!93 = metadata !{i32 96, i32 5, metadata !94, null}
!94 = metadata !{i32 786443, metadata !24, i32 93, i32 37, metadata !2, i32 6} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 786688, metadata !94, metadata !"y", metadata !2, i32 94, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 97, i32 5, metadata !94, null}
!97 = metadata !{i32 786688, metadata !24, metadata !"tempx", metadata !2, i32 83, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 98, i32 5, metadata !94, null}
!99 = metadata !{i32 786689, metadata !100, metadata !"value", metadata !2, i32 33554590, metadata !5, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 786478, i32 0, metadata !2, metadata !"linebuffer_insert_bottom", metadata !"linebuffer_insert_bottom", metadata !"", metadata !2, i32 158, metadata !101, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 158} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{null, metadata !71, metadata !5, metadata !11}
!103 = metadata !{i32 99, i32 5, metadata !94, null}
!104 = metadata !{i32 158, i32 62, metadata !100, metadata !103}
!105 = metadata !{i32 786689, metadata !100, metadata !"col", metadata !2, i32 50331806, metadata !11, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 158, i32 73, metadata !100, metadata !103}
!107 = metadata !{i32 161, i32 2, metadata !108, metadata !103}
!108 = metadata !{i32 786443, metadata !100, i32 158, i32 78, metadata !2, i32 15} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 100, i32 4, metadata !94, null}
!110 = metadata !{i32 786689, metadata !82, metadata !"ColIndex", metadata !2, i32 50331794, metadata !11, i32 0, metadata !111} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 108, i32 27, metadata !112, null}
!112 = metadata !{i32 786443, metadata !24, i32 107, i32 20, metadata !2, i32 7} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 146, i32 68, metadata !82, metadata !111}
!114 = metadata !{i32 150, i32 2, metadata !88, metadata !111}
!115 = metadata !{i32 786688, metadata !88, metadata !"return_value", metadata !2, i32 149, metadata !5, i32 0, metadata !111} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 786689, metadata !117, metadata !"value", metadata !2, i32 33554615, metadata !5, i32 0, metadata !111} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 786478, i32 0, metadata !2, metadata !"window_insert", metadata !"window_insert", metadata !"", metadata !2, i32 183, metadata !118, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 183} ; [ DW_TAG_subprogram ]
!118 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!119 = metadata !{null, metadata !7, metadata !5, metadata !11, metadata !11}
!120 = metadata !{i32 183, i32 47, metadata !117, metadata !111}
!121 = metadata !{i32 786688, metadata !28, metadata !"buff_C[0][2]", null, i32 73, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !5, metadata !123, i32 0, i32 0} ; [ DW_TAG_array_type ]
!123 = metadata !{metadata !10, metadata !10}
!124 = metadata !{i32 185, i32 2, metadata !125, metadata !111}
!125 = metadata !{i32 786443, metadata !117, i32 183, i32 72, metadata !2, i32 9} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 786689, metadata !117, metadata !"value", metadata !2, i32 33554615, metadata !5, i32 0, metadata !127} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 109, i32 5, metadata !112, null}
!128 = metadata !{i32 183, i32 47, metadata !117, metadata !127}
!129 = metadata !{i32 786688, metadata !28, metadata !"buff_C[1][2]", null, i32 73, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 185, i32 2, metadata !125, metadata !127}
!131 = metadata !{i32 786689, metadata !117, metadata !"value", metadata !2, i32 33554615, metadata !5, i32 0, metadata !132} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 110, i32 5, metadata !112, null}
!133 = metadata !{i32 183, i32 47, metadata !117, metadata !132}
!134 = metadata !{i32 786688, metadata !28, metadata !"buff_C[2][2]", null, i32 73, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 185, i32 2, metadata !125, metadata !132}
!136 = metadata !{i32 191, i32 39, metadata !1, metadata !14}
!137 = metadata !{i32 790532, metadata !1, metadata !"M[1][2]", null, i32 191, metadata !5, i32 0, metadata !14} ; [ DW_TAG_arg_variable_ro ]
!138 = metadata !{i32 54, i32 2, metadata !19, metadata !23}
!139 = metadata !{i32 786688, metadata !19, metadata !"edge_val", metadata !2, i32 38, metadata !6, i32 0, metadata !23} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 56, i32 2, metadata !19, metadata !23}
!141 = metadata !{i32 786688, metadata !24, metadata !"edge", metadata !2, i32 113, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 121, i32 4, metadata !24, null}
!143 = metadata !{i32 123, i32 5, metadata !144, null}
!144 = metadata !{i32 786443, metadata !24, i32 121, i32 28, metadata !2, i32 8} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 124, i32 4, metadata !144, null}
!146 = metadata !{i32 125, i32 3, metadata !24, null}
!147 = metadata !{i32 76, i32 33, metadata !25, null}
!148 = metadata !{i32 786688, metadata !28, metadata !"col", metadata !2, i32 69, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 76, i32 8, metadata !25, null}
!150 = metadata !{i32 75, i32 32, metadata !27, null}
!151 = metadata !{i32 76, i32 41, metadata !24, null}
!152 = metadata !{i32 78, i32 1, metadata !24, null}
!153 = metadata !{i32 86, i32 4, metadata !24, null}
!154 = metadata !{i32 127, i32 2, metadata !28, null}
