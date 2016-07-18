; ModuleID = 'C:/xup/SDSoC/labs/lab3a/SDDebug/_sds/vhls/sobel_filter/solution/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sobel_filter_str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str1 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=2 type=[8 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=10 type=[1 x i8]*]

; [#uses=0]
define i32 @sobel_filter(i8* %input, i8* %output) nounwind uwtable {
  %buff_C_2_1 = alloca i8                         ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %buff_C_2_1}, metadata !0) ; [debug variable = M[2][1]]
  %buff_C_0_0 = alloca i8                         ; [#uses=2 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %buff_C_0_0}, metadata !33) ; [debug variable = M[0][0]]
  %buff_C_0_1 = alloca i8                         ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %buff_C_0_1}, metadata !34) ; [debug variable = M[0][1]]
  %buff_C_2_0 = alloca i8                         ; [#uses=2 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %buff_C_2_0}, metadata !35) ; [debug variable = M[2][0]]
  %buff_C_1_0 = alloca i8                         ; [#uses=2 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %buff_C_1_0}, metadata !36) ; [debug variable = M[1][0]]
  %buff_C_1_1 = alloca i8                         ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %buff_C_1_1}, metadata !37) ; [debug variable = buff_C[1][1]]
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %input) nounwind, !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output) nounwind, !map !46
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !50
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter_str) nounwind
  %buff_A_0 = alloca [1920 x i8], align 16        ; [#uses=2 type=[1920 x i8]*]
  %buff_A_1 = alloca [1920 x i8], align 16        ; [#uses=1 type=[1920 x i8]*]
  %buff_A_2 = alloca [1920 x i8], align 16        ; [#uses=2 type=[1920 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %input}, i64 0, metadata !56), !dbg !57 ; [debug line = 76:27] [debug variable = input]
  call void @llvm.dbg.value(metadata !{i8* %output}, i64 0, metadata !58), !dbg !59 ; [debug line = 76:43] [debug variable = output]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind, !dbg !60 ; [debug line = 77:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %input, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 2073600, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !61 ; [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %output, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 2073600, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !62 ; [debug line = 79:1]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %buff_A_0}, metadata !63), !dbg !67 ; [debug line = 85:15] [debug variable = buff_A[0]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %buff_A_1}, metadata !68), !dbg !67 ; [debug line = 85:15] [debug variable = buff_A[1]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %buff_A_2}, metadata !69), !dbg !67 ; [debug line = 85:15] [debug variable = buff_A[2]]
  br label %.preheader, !dbg !70                  ; [debug line = 88:7]

.preheader:                                       ; preds = %._crit_edge4, %0
  %indvar_flatten = phi i21 [ 0, %0 ], [ %indvar_flatten_next, %._crit_edge4 ] ; [#uses=2 type=i21]
  %row = phi i11 [ 0, %0 ], [ %row_mid2, %._crit_edge4 ] ; [#uses=2 type=i11]
  %col_assign = phi i11 [ 0, %0 ], [ %col, %._crit_edge4 ] ; [#uses=2 type=i11]
  %buff_C_2_1_load = load i8* %buff_C_2_1         ; [#uses=1 type=i8]
  %buff_C_0_0_load = load i8* %buff_C_0_0, !dbg !14 ; [#uses=1 type=i8] [debug line = 55:27@130:11]
  %buff_C_0_1_load_1 = load i8* %buff_C_0_1       ; [#uses=1 type=i8]
  %buff_C_2_0_load = load i8* %buff_C_2_0, !dbg !14 ; [#uses=1 type=i8] [debug line = 55:27@130:11]
  %buff_C_1_0_load = load i8* %buff_C_1_0, !dbg !14 ; [#uses=1 type=i8] [debug line = 55:27@130:11]
  %buff_C_1_1_load_1 = load i8* %buff_C_1_1       ; [#uses=1 type=i8]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -20551 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i21 %indvar_flatten, 1 ; [#uses=1 type=i21]
  store i8 %buff_C_1_1_load_1, i8* %buff_C_1_0
  store i8 %buff_C_2_1_load, i8* %buff_C_2_0
  store i8 %buff_C_0_1_load_1, i8* %buff_C_0_0
  br i1 %exitcond_flatten, label %3, label %.preheader.preheader

linebuffer_shift_up.exit:                         ; preds = %.preheader.preheader
  call void @llvm.dbg.value(metadata !{i11 %col_assign}, i64 0, metadata !71) nounwind, !dbg !80 ; [debug line = 147:53@100:5] [debug variable = col]
  %tmp_4 = zext i11 %col_assign_mid2 to i64, !dbg !81 ; [#uses=3 type=i64] [debug line = 152:2@100:5]
  %buff_A_1_addr = getelementptr [1920 x i8]* %buff_A_1, i64 0, i64 %tmp_4, !dbg !81 ; [#uses=2 type=i8*] [debug line = 152:2@100:5]
  %buff_A_1_load = load i8* %buff_A_1_addr, align 1, !dbg !81 ; [#uses=1 type=i8] [debug line = 152:2@100:5]
  %buff_A_2_addr = getelementptr [1920 x i8]* %buff_A_2, i64 0, i64 %tmp_4, !dbg !81 ; [#uses=1 type=i8*] [debug line = 152:2@100:5]
  store i8 %buff_A_1_load, i8* %buff_A_2_addr, align 1, !dbg !81 ; [debug line = 152:2@100:5]
  %buff_A_0_addr = getelementptr [1920 x i8]* %buff_A_0, i64 0, i64 %tmp_4, !dbg !81 ; [#uses=1 type=i8*] [debug line = 152:2@100:5]
  %return_value = load i8* %buff_A_0_addr, align 1, !dbg !81 ; [#uses=2 type=i8] [debug line = 152:2@100:5]
  store i8 %return_value, i8* %buff_A_1_addr, align 1, !dbg !81 ; [debug line = 152:2@100:5]
  call void @llvm.dbg.value(metadata !{i11 %col_assign}, i64 0, metadata !85) nounwind, !dbg !90 ; [debug line = 159:68@101:12] [debug variable = ColIndex]
  call void @llvm.dbg.value(metadata !{i8 %return_value}, i64 0, metadata !91) nounwind, !dbg !93 ; [debug line = 163:2@101:12] [debug variable = return_value]
  call void @llvm.dbg.value(metadata !{i8 %return_value}, i64 0, metadata !94), !dbg !89 ; [debug line = 101:12] [debug variable = temp]
  br label %._crit_edge, !dbg !95                 ; [debug line = 102:4]

._crit_edge:                                      ; preds = %.preheader.preheader, %linebuffer_shift_up.exit
  %buff_C_1_2_1 = phi i8 [ %return_value, %linebuffer_shift_up.exit ], [ 0, %.preheader.preheader ] ; [#uses=1 type=i8]
  %tmp_7 = and i1 %tmp_3, %tmp, !dbg !96          ; [#uses=1 type=i1] [debug line = 106:4]
  br i1 %tmp_7, label %1, label %._crit_edge2_ifconv, !dbg !96 ; [debug line = 106:4]

; <label>:1                                       ; preds = %._crit_edge
  %y = call i8 @_ssdm_op_Read.ap_fifo.i8P(i8* %input) nounwind, !dbg !97 ; [#uses=2 type=i8] [debug line = 109:5]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !99), !dbg !100 ; [debug line = 110:5] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !101), !dbg !102 ; [debug line = 111:5] [debug variable = tempx]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !103), !dbg !108 ; [debug line = 171:62@112:5] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i11 %col_assign}, i64 0, metadata !109), !dbg !110 ; [debug line = 171:73@112:5] [debug variable = col]
  %tmp_9 = zext i11 %col_assign_mid2 to i64, !dbg !111 ; [#uses=1 type=i64] [debug line = 174:2@112:5]
  %buff_A_0_addr_1 = getelementptr [1920 x i8]* %buff_A_0, i64 0, i64 %tmp_9, !dbg !111 ; [#uses=1 type=i8*] [debug line = 174:2@112:5]
  store i8 %y, i8* %buff_A_0_addr_1, align 1, !dbg !111 ; [debug line = 174:2@112:5]
  br label %._crit_edge2_ifconv, !dbg !113        ; [debug line = 113:4]

._crit_edge2_ifconv:                              ; preds = %1, %._crit_edge
  %buff_C_2_2_1 = phi i8 [ %y, %1 ], [ 0, %._crit_edge ] ; [#uses=1 type=i8]
  %buff_C_2_1_load_1 = load i8* %buff_C_2_1, !dbg !114 ; [#uses=2 type=i8] [debug line = 58:27@130:11]
  %buff_C_0_1_load = load i8* %buff_C_0_1, !dbg !114 ; [#uses=2 type=i8] [debug line = 58:27@130:11]
  %buff_C_1_1_load = load i8* %buff_C_1_1, !dbg !115 ; [#uses=1 type=i8] [debug line = 204:39@55:27@130:11]
  call void @llvm.dbg.value(metadata !{i11 %col_assign}, i64 0, metadata !116) nounwind, !dbg !119 ; [debug line = 159:68@121:27] [debug variable = ColIndex]
  %tmp_6 = zext i11 %col_assign_mid2 to i64, !dbg !120 ; [#uses=1 type=i64] [debug line = 163:2@121:27]
  %buff_A_2_addr_1 = getelementptr [1920 x i8]* %buff_A_2, i64 0, i64 %tmp_6, !dbg !120 ; [#uses=1 type=i8*] [debug line = 163:2@121:27]
  %return_value_1 = load i8* %buff_A_2_addr_1, align 1, !dbg !120 ; [#uses=1 type=i8] [debug line = 163:2@121:27]
  call void @llvm.dbg.value(metadata !{i8 %return_value_1}, i64 0, metadata !121) nounwind, !dbg !120 ; [debug line = 163:2@121:27] [debug variable = return_value]
  call void @llvm.dbg.value(metadata !{i8 %return_value_1}, i64 0, metadata !122), !dbg !126 ; [debug line = 196:47@121:27] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i8 %return_value_1}, i64 0, metadata !127), !dbg !128 ; [debug line = 198:2@121:27] [debug variable = buff_C[0][2]]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_1_2_1}, i64 0, metadata !130), !dbg !132 ; [debug line = 196:47@122:5] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_1_2_1}, i64 0, metadata !133), !dbg !134 ; [debug line = 198:2@122:5] [debug variable = buff_C[1][2]]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_2_2_1}, i64 0, metadata !135), !dbg !137 ; [debug line = 196:47@123:5] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_2_2_1}, i64 0, metadata !138), !dbg !139 ; [debug line = 198:2@123:5] [debug variable = buff_C[2][2]]
  %buff_C_1_2 = select i1 %tmp_3, i8 %buff_C_1_2_1, i8 %buff_C_1_1_load, !dbg !115 ; [#uses=2 type=i8] [debug line = 204:39@55:27@130:11]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_1_2}, i64 0, metadata !133), !dbg !134 ; [debug line = 198:2@122:5] [debug variable = buff_C[1][2]]
  %buff_C_0_2 = select i1 %tmp_3, i8 %return_value_1, i8 %buff_C_0_1_load, !dbg !115 ; [#uses=2 type=i8] [debug line = 204:39@55:27@130:11]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_0_2}, i64 0, metadata !127), !dbg !128 ; [debug line = 198:2@121:27] [debug variable = buff_C[0][2]]
  %buff_C_2_2 = select i1 %tmp_3, i8 %buff_C_2_2_1, i8 %buff_C_2_1_load_1, !dbg !115 ; [#uses=2 type=i8] [debug line = 204:39@55:27@130:11]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_2_2}, i64 0, metadata !138), !dbg !139 ; [debug line = 198:2@123:5] [debug variable = buff_C[2][2]]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_0_2}, i64 0, metadata !140), !dbg !115 ; [debug line = 204:39@55:27@130:11] [debug variable = M[0][2]]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_1_2}, i64 0, metadata !141), !dbg !115 ; [debug line = 204:39@55:27@130:11] [debug variable = M[1][2]]
  call void @llvm.dbg.value(metadata !{i8 %buff_C_2_2}, i64 0, metadata !142), !dbg !115 ; [debug line = 204:39@55:27@130:11] [debug variable = M[2][2]]
  %tmp_10_0_i_cast = zext i8 %buff_C_0_0_load to i9, !dbg !14 ; [#uses=2 type=i9] [debug line = 55:27@130:11]
  %tmp_12_0_1_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %buff_C_0_1_load, i1 false), !dbg !114 ; [#uses=1 type=i9] [debug line = 58:27@130:11]
  %tmp_12_0_1_i_cast = zext i9 %tmp_12_0_1_i to i10, !dbg !114 ; [#uses=1 type=i10] [debug line = 58:27@130:11]
  %tmp_10_0_2_i_cast = zext i8 %buff_C_0_2 to i9, !dbg !14 ; [#uses=2 type=i9] [debug line = 55:27@130:11]
  %x_weight_2_0_2_i = sub i9 %tmp_10_0_2_i_cast, %tmp_10_0_i_cast, !dbg !14 ; [#uses=1 type=i9] [debug line = 55:27@130:11]
  %x_weight_2_0_2_i_cast = sext i9 %x_weight_2_0_2_i to i11, !dbg !14 ; [#uses=1 type=i11] [debug line = 55:27@130:11]
  %p_shl6_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %buff_C_1_0_load, i1 false), !dbg !14 ; [#uses=1 type=i9] [debug line = 55:27@130:11]
  %p_shl6_i_cast = zext i9 %p_shl6_i to i11, !dbg !14 ; [#uses=1 type=i11] [debug line = 55:27@130:11]
  %x_weight_2_1_1_i = sub i11 %x_weight_2_0_2_i_cast, %p_shl6_i_cast, !dbg !14 ; [#uses=1 type=i11] [debug line = 55:27@130:11]
  %tmp_11_1_2_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %buff_C_1_2, i1 false), !dbg !14 ; [#uses=1 type=i9] [debug line = 55:27@130:11]
  %tmp_11_1_2_i_cast = zext i9 %tmp_11_1_2_i to i11, !dbg !14 ; [#uses=1 type=i11] [debug line = 55:27@130:11]
  %x_weight_2_1_2_i = add i11 %x_weight_2_1_1_i, %tmp_11_1_2_i_cast, !dbg !14 ; [#uses=1 type=i11] [debug line = 55:27@130:11]
  %tmp1 = add i9 %tmp_10_0_2_i_cast, %tmp_10_0_i_cast, !dbg !114 ; [#uses=1 type=i9] [debug line = 58:27@130:11]
  %tmp1_cast = zext i9 %tmp1 to i10, !dbg !114    ; [#uses=1 type=i10] [debug line = 58:27@130:11]
  %y_weight_2_1_2_i = add i10 %tmp_12_0_1_i_cast, %tmp1_cast, !dbg !114 ; [#uses=1 type=i10] [debug line = 58:27@130:11]
  %y_weight_2_1_2_i_cast = zext i10 %y_weight_2_1_2_i to i11, !dbg !114 ; [#uses=1 type=i11] [debug line = 58:27@130:11]
  %tmp_10_2_i_cast = zext i8 %buff_C_2_0_load to i11, !dbg !14 ; [#uses=2 type=i11] [debug line = 55:27@130:11]
  %x_weight_2_2_i = sub i11 %x_weight_2_1_2_i, %tmp_10_2_i_cast, !dbg !14 ; [#uses=1 type=i11] [debug line = 55:27@130:11]
  %y_weight_2_2_i = sub i11 %y_weight_2_1_2_i_cast, %tmp_10_2_i_cast, !dbg !114 ; [#uses=1 type=i11] [debug line = 58:27@130:11]
  %p_shl_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %buff_C_2_1_load_1, i1 false), !dbg !114 ; [#uses=1 type=i9] [debug line = 58:27@130:11]
  %p_shl_i_cast = zext i9 %p_shl_i to i11, !dbg !114 ; [#uses=1 type=i11] [debug line = 58:27@130:11]
  %y_weight_2_2_1_i = sub i11 %y_weight_2_2_i, %p_shl_i_cast, !dbg !114 ; [#uses=1 type=i11] [debug line = 58:27@130:11]
  %tmp_10_2_2_i_cast = zext i8 %buff_C_2_2 to i11, !dbg !14 ; [#uses=2 type=i11] [debug line = 55:27@130:11]
  %x_weight_2_2_2_i = add i11 %tmp_10_2_2_i_cast, %x_weight_2_2_i, !dbg !14 ; [#uses=3 type=i11] [debug line = 55:27@130:11]
  %y_weight_2_2_2_i = sub i11 %y_weight_2_2_1_i, %tmp_10_2_2_i_cast, !dbg !114 ; [#uses=3 type=i11] [debug line = 58:27@130:11]
  %tmp_i = icmp sgt i11 %x_weight_2_2_2_i, 0, !dbg !143 ; [#uses=1 type=i1] [debug line = 62:2@130:11]
  %tmp_1_i = sub i11 0, %x_weight_2_2_2_i, !dbg !143 ; [#uses=1 type=i11] [debug line = 62:2@130:11]
  %tmp_2_i = select i1 %tmp_i, i11 %x_weight_2_2_2_i, i11 %tmp_1_i, !dbg !143 ; [#uses=1 type=i11] [debug line = 62:2@130:11]
  %tmp_2_i_cast = sext i11 %tmp_2_i to i12, !dbg !143 ; [#uses=1 type=i12] [debug line = 62:2@130:11]
  %tmp_3_i = icmp sgt i11 %y_weight_2_2_2_i, 0, !dbg !143 ; [#uses=1 type=i1] [debug line = 62:2@130:11]
  %tmp_4_i = sub i11 0, %y_weight_2_2_2_i, !dbg !143 ; [#uses=1 type=i11] [debug line = 62:2@130:11]
  %tmp_5_i = select i1 %tmp_3_i, i11 %y_weight_2_2_2_i, i11 %tmp_4_i, !dbg !143 ; [#uses=1 type=i11] [debug line = 62:2@130:11]
  %tmp_5_i_cast = sext i11 %tmp_5_i to i12, !dbg !143 ; [#uses=1 type=i12] [debug line = 62:2@130:11]
  %edge_weight = add i12 %tmp_5_i_cast, %tmp_2_i_cast, !dbg !143 ; [#uses=3 type=i12] [debug line = 62:2@130:11]
  call void @llvm.dbg.value(metadata !{i12 %edge_weight}, i64 0, metadata !144), !dbg !143 ; [debug line = 62:2@130:11] [debug variable = edge_weight]
  %tmp_7_i = icmp sgt i12 %edge_weight, 200, !dbg !146 ; [#uses=2 type=i1] [debug line = 65:2@130:11]
  %tmp_9_i = icmp slt i12 %edge_weight, 100, !dbg !147 ; [#uses=1 type=i1] [debug line = 67:7@130:11]
  %tmp_8 = trunc i12 %edge_weight to i8           ; [#uses=1 type=i8]
  %phitmp_i = select i1 %tmp_7_i, i8 -1, i8 0, !dbg !148 ; [#uses=1 type=i8] [debug line = 69:2@130:11]
  %tmp_5 = or i1 %tmp_7_i, %tmp_9_i, !dbg !148    ; [#uses=1 type=i1] [debug line = 69:2@130:11]
  %edge_val = select i1 %tmp_5, i8 %phitmp_i, i8 %tmp_8, !dbg !148 ; [#uses=1 type=i8] [debug line = 69:2@130:11]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !149), !dbg !148 ; [debug line = 69:2@130:11] [debug variable = edge_val]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !150), !dbg !23 ; [debug line = 130:11] [debug variable = edge]
  %tmp_s = icmp ne i11 %col_assign_mid2, 0, !dbg !151 ; [#uses=1 type=i1] [debug line = 134:4]
  %or_cond = and i1 %tmp_1, %tmp_s, !dbg !151     ; [#uses=1 type=i1] [debug line = 134:4]
  store i8 %buff_C_1_2, i8* %buff_C_1_1
  store i8 %buff_C_0_2, i8* %buff_C_0_1
  store i8 %buff_C_2_2, i8* %buff_C_2_1
  br i1 %or_cond, label %2, label %._crit_edge4, !dbg !151 ; [debug line = 134:4]

; <label>:2                                       ; preds = %._crit_edge2_ifconv
  call void @_ssdm_op_Write.ap_fifo.i8P(i8* %output, i8 %edge_val) nounwind, !dbg !152 ; [debug line = 136:5]
  br label %._crit_edge4, !dbg !154               ; [debug line = 137:4]

._crit_edge4:                                     ; preds = %2, %._crit_edge2_ifconv
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_2) nounwind, !dbg !155 ; [#uses=0 type=i32] [debug line = 138:3]
  %col = add i11 %col_assign_mid2, 1, !dbg !156   ; [#uses=1 type=i11] [debug line = 89:33]
  call void @llvm.dbg.value(metadata !{i11 %col}, i64 0, metadata !157), !dbg !156 ; [debug line = 89:33] [debug variable = col]
  br label %.preheader, !dbg !156                 ; [debug line = 89:33]

.preheader.preheader:                             ; preds = %.preheader
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2076601, i64 2076601, i64 2076601) nounwind ; [#uses=0 type=i32]
  %exitcond4 = icmp eq i11 %col_assign, -127, !dbg !158 ; [#uses=2 type=i1] [debug line = 89:8]
  %col_assign_mid2 = select i1 %exitcond4, i11 0, i11 %col_assign ; [#uses=6 type=i11]
  %row_s = add i11 %row, 1, !dbg !159             ; [#uses=1 type=i11] [debug line = 88:32]
  %row_mid2 = select i1 %exitcond4, i11 %row_s, i11 %row ; [#uses=3 type=i11]
  %tmp = icmp ult i11 %row_mid2, -968, !dbg !96   ; [#uses=1 type=i1] [debug line = 106:4]
  %tmp_1 = icmp ne i11 %row_mid2, 0, !dbg !151    ; [#uses=1 type=i1] [debug line = 134:4]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2) nounwind, !dbg !160 ; [#uses=1 type=i32] [debug line = 89:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !161 ; [debug line = 91:1]
  %tmp_3 = icmp ult i11 %col_assign_mid2, -128, !dbg !162 ; [#uses=5 type=i1] [debug line = 99:4]
  br i1 %tmp_3, label %linebuffer_shift_up.exit, label %._crit_edge, !dbg !162 ; [debug line = 99:4]

; <label>:3                                       ; preds = %.preheader
  ret i32 0, !dbg !163                            ; [debug line = 140:2]
}

; [#uses=28]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=9]
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

; [#uses=4]
define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9                       ; [#uses=1 type=i9]
  %empty_5 = zext i1 %1 to i9                     ; [#uses=1 type=i9]
  %empty_6 = shl i9 %empty, 1                     ; [#uses=1 type=i9]
  %empty_7 = or i9 %empty_6, %empty_5             ; [#uses=1 type=i9]
  ret i9 %empty_7
}

; [#uses=1]
declare i8 @_autotb_FifoWrite_i8(i8*, i8)

; [#uses=1]
declare i8 @_autotb_FifoRead_i8(i8*)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 790532, metadata !1, metadata !"M[2][1]", null, i32 204, metadata !5, i32 0, metadata !14} ; [ DW_TAG_arg_variable_ro ]
!1 = metadata !{i32 786478, i32 0, metadata !2, metadata !"window_getval", metadata !"window_getval", metadata !"", metadata !2, i32 204, metadata !3, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 204} ; [ DW_TAG_subprogram ]
!2 = metadata !{i32 786473, metadata !"C:/xup/SDSoC/labs/lab3a/src/edge_detect.c", metadata !"c:/xup/SDSoC/labs/lab3a/SDDebug/_sds/vhls", null} ; [ DW_TAG_file_type ]
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
!14 = metadata !{i32 55, i32 27, metadata !15, metadata !23}
!15 = metadata !{i32 786443, metadata !16, i32 52, i32 27, metadata !2, i32 24} ; [ DW_TAG_lexical_block ]
!16 = metadata !{i32 786443, metadata !17, i32 52, i32 3, metadata !2, i32 23} ; [ DW_TAG_lexical_block ]
!17 = metadata !{i32 786443, metadata !18, i32 51, i32 26, metadata !2, i32 22} ; [ DW_TAG_lexical_block ]
!18 = metadata !{i32 786443, metadata !19, i32 51, i32 2, metadata !2, i32 21} ; [ DW_TAG_lexical_block ]
!19 = metadata !{i32 786443, metadata !20, i32 34, i32 54, metadata !2, i32 20} ; [ DW_TAG_lexical_block ]
!20 = metadata !{i32 786478, i32 0, metadata !2, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"", metadata !2, i32 34, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 34} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{metadata !6, metadata !7}
!23 = metadata !{i32 130, i32 11, metadata !24, null}
!24 = metadata !{i32 786443, metadata !25, i32 89, i32 40, metadata !2, i32 4} ; [ DW_TAG_lexical_block ]
!25 = metadata !{i32 786443, metadata !26, i32 89, i32 3, metadata !2, i32 3} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 786443, metadata !27, i32 88, i32 39, metadata !2, i32 2} ; [ DW_TAG_lexical_block ]
!27 = metadata !{i32 786443, metadata !28, i32 88, i32 2, metadata !2, i32 1} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 786443, metadata !29, i32 76, i32 51, metadata !2, i32 0} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 786478, i32 0, metadata !2, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"", metadata !2, i32 76, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*)* @sobel_filter, null, null, metadata !12, i32 76} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{metadata !11, metadata !32, metadata !32}
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !5} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 790532, metadata !1, metadata !"M[0][0]", null, i32 204, metadata !5, i32 0, metadata !14} ; [ DW_TAG_arg_variable_ro ]
!34 = metadata !{i32 790532, metadata !1, metadata !"M[0][1]", null, i32 204, metadata !5, i32 0, metadata !14} ; [ DW_TAG_arg_variable_ro ]
!35 = metadata !{i32 790532, metadata !1, metadata !"M[2][0]", null, i32 204, metadata !5, i32 0, metadata !14} ; [ DW_TAG_arg_variable_ro ]
!36 = metadata !{i32 790532, metadata !1, metadata !"M[1][0]", null, i32 204, metadata !5, i32 0, metadata !14} ; [ DW_TAG_arg_variable_ro ]
!37 = metadata !{i32 786688, metadata !28, metadata !"buff_C[1][1]", null, i32 86, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!38 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !5, metadata !39, i32 0, i32 0} ; [ DW_TAG_array_type ]
!39 = metadata !{metadata !10, metadata !10}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 7, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"input", metadata !44, metadata !"unsigned char", i32 0, i32 7}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 2073599, i32 1}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 7, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"output", metadata !44, metadata !"unsigned char", i32 0, i32 7}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 31, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"return", metadata !54, metadata !"int", i32 0, i32 31}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 1, i32 0}
!56 = metadata !{i32 786689, metadata !29, metadata !"input", metadata !2, i32 16777292, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 76, i32 27, metadata !29, null}
!58 = metadata !{i32 786689, metadata !29, metadata !"output", metadata !2, i32 33554508, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 76, i32 43, metadata !29, null}
!60 = metadata !{i32 77, i32 1, metadata !28, null}
!61 = metadata !{i32 78, i32 1, metadata !28, null}
!62 = metadata !{i32 79, i32 1, metadata !28, null}
!63 = metadata !{i32 786688, metadata !28, metadata !"buff_A[0]", null, i32 85, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !5, metadata !65, i32 0, i32 0} ; [ DW_TAG_array_type ]
!65 = metadata !{metadata !10, metadata !66}
!66 = metadata !{i32 786465, i64 0, i64 1919}     ; [ DW_TAG_subrange_type ]
!67 = metadata !{i32 85, i32 15, metadata !28, null}
!68 = metadata !{i32 786688, metadata !28, metadata !"buff_A[1]", null, i32 85, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 786688, metadata !28, metadata !"buff_A[2]", null, i32 85, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 88, i32 7, metadata !27, null}
!71 = metadata !{i32 786689, metadata !72, metadata !"col", metadata !2, i32 33554579, metadata !11, i32 0, metadata !78} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 786478, i32 0, metadata !2, metadata !"linebuffer_shift_up", metadata !"linebuffer_shift_up", metadata !"", metadata !2, i32 147, metadata !73, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 147} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{null, metadata !75, metadata !11}
!75 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ]
!76 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !5, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ]
!77 = metadata !{metadata !66}
!78 = metadata !{i32 100, i32 5, metadata !79, null}
!79 = metadata !{i32 786443, metadata !24, i32 99, i32 20, metadata !2, i32 5} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 147, i32 53, metadata !72, metadata !78}
!81 = metadata !{i32 152, i32 2, metadata !82, metadata !78}
!82 = metadata !{i32 786443, metadata !83, i32 150, i32 30, metadata !2, i32 19} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 786443, metadata !84, i32 150, i32 2, metadata !2, i32 18} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !72, i32 147, i32 58, metadata !2, i32 17} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786689, metadata !86, metadata !"ColIndex", metadata !2, i32 50331807, metadata !11, i32 0, metadata !89} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 786478, i32 0, metadata !2, metadata !"linebuffer_getval", metadata !"linebuffer_getval", metadata !"", metadata !2, i32 159, metadata !87, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 159} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!88 = metadata !{metadata !5, metadata !75, metadata !11, metadata !11}
!89 = metadata !{i32 101, i32 12, metadata !79, null}
!90 = metadata !{i32 159, i32 68, metadata !86, metadata !89}
!91 = metadata !{i32 786688, metadata !92, metadata !"return_value", metadata !2, i32 162, metadata !5, i32 0, metadata !89} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 786443, metadata !86, i32 159, i32 78, metadata !2, i32 16} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 163, i32 2, metadata !92, metadata !89}
!94 = metadata !{i32 786688, metadata !24, metadata !"temp", metadata !2, i32 95, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 102, i32 4, metadata !79, null}
!96 = metadata !{i32 106, i32 4, metadata !24, null}
!97 = metadata !{i32 109, i32 5, metadata !98, null}
!98 = metadata !{i32 786443, metadata !24, i32 106, i32 37, metadata !2, i32 6} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 786688, metadata !98, metadata !"y", metadata !2, i32 107, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 110, i32 5, metadata !98, null}
!101 = metadata !{i32 786688, metadata !24, metadata !"tempx", metadata !2, i32 96, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 111, i32 5, metadata !98, null}
!103 = metadata !{i32 786689, metadata !104, metadata !"value", metadata !2, i32 33554603, metadata !5, i32 0, metadata !107} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 786478, i32 0, metadata !2, metadata !"linebuffer_insert_bottom", metadata !"linebuffer_insert_bottom", metadata !"", metadata !2, i32 171, metadata !105, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 171} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{null, metadata !75, metadata !5, metadata !11}
!107 = metadata !{i32 112, i32 5, metadata !98, null}
!108 = metadata !{i32 171, i32 62, metadata !104, metadata !107}
!109 = metadata !{i32 786689, metadata !104, metadata !"col", metadata !2, i32 50331819, metadata !11, i32 0, metadata !107} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 171, i32 73, metadata !104, metadata !107}
!111 = metadata !{i32 174, i32 2, metadata !112, metadata !107}
!112 = metadata !{i32 786443, metadata !104, i32 171, i32 78, metadata !2, i32 15} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 113, i32 4, metadata !98, null}
!114 = metadata !{i32 58, i32 27, metadata !15, metadata !23}
!115 = metadata !{i32 204, i32 39, metadata !1, metadata !14}
!116 = metadata !{i32 786689, metadata !86, metadata !"ColIndex", metadata !2, i32 50331807, metadata !11, i32 0, metadata !117} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 121, i32 27, metadata !118, null}
!118 = metadata !{i32 786443, metadata !24, i32 120, i32 20, metadata !2, i32 7} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 159, i32 68, metadata !86, metadata !117}
!120 = metadata !{i32 163, i32 2, metadata !92, metadata !117}
!121 = metadata !{i32 786688, metadata !92, metadata !"return_value", metadata !2, i32 162, metadata !5, i32 0, metadata !117} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 786689, metadata !123, metadata !"value", metadata !2, i32 33554628, metadata !5, i32 0, metadata !117} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 786478, i32 0, metadata !2, metadata !"window_insert", metadata !"window_insert", metadata !"", metadata !2, i32 196, metadata !124, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !12, i32 196} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{null, metadata !7, metadata !5, metadata !11, metadata !11}
!126 = metadata !{i32 196, i32 47, metadata !123, metadata !117}
!127 = metadata !{i32 786688, metadata !28, metadata !"buff_C[0][2]", null, i32 86, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 198, i32 2, metadata !129, metadata !117}
!129 = metadata !{i32 786443, metadata !123, i32 196, i32 72, metadata !2, i32 9} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 786689, metadata !123, metadata !"value", metadata !2, i32 33554628, metadata !5, i32 0, metadata !131} ; [ DW_TAG_arg_variable ]
!131 = metadata !{i32 122, i32 5, metadata !118, null}
!132 = metadata !{i32 196, i32 47, metadata !123, metadata !131}
!133 = metadata !{i32 786688, metadata !28, metadata !"buff_C[1][2]", null, i32 86, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 198, i32 2, metadata !129, metadata !131}
!135 = metadata !{i32 786689, metadata !123, metadata !"value", metadata !2, i32 33554628, metadata !5, i32 0, metadata !136} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 123, i32 5, metadata !118, null}
!137 = metadata !{i32 196, i32 47, metadata !123, metadata !136}
!138 = metadata !{i32 786688, metadata !28, metadata !"buff_C[2][2]", null, i32 86, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!139 = metadata !{i32 198, i32 2, metadata !129, metadata !136}
!140 = metadata !{i32 790532, metadata !1, metadata !"M[0][2]", null, i32 204, metadata !5, i32 0, metadata !14} ; [ DW_TAG_arg_variable_ro ]
!141 = metadata !{i32 790532, metadata !1, metadata !"M[1][2]", null, i32 204, metadata !5, i32 0, metadata !14} ; [ DW_TAG_arg_variable_ro ]
!142 = metadata !{i32 790532, metadata !1, metadata !"M[2][2]", null, i32 204, metadata !5, i32 0, metadata !14} ; [ DW_TAG_arg_variable_ro ]
!143 = metadata !{i32 62, i32 2, metadata !19, metadata !23}
!144 = metadata !{i32 786688, metadata !19, metadata !"edge_weight", metadata !2, i32 38, metadata !145, i32 0, metadata !23} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!146 = metadata !{i32 65, i32 2, metadata !19, metadata !23}
!147 = metadata !{i32 67, i32 7, metadata !19, metadata !23}
!148 = metadata !{i32 69, i32 2, metadata !19, metadata !23}
!149 = metadata !{i32 786688, metadata !19, metadata !"edge_val", metadata !2, i32 39, metadata !6, i32 0, metadata !23} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 786688, metadata !24, metadata !"edge", metadata !2, i32 126, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 134, i32 4, metadata !24, null}
!152 = metadata !{i32 136, i32 5, metadata !153, null}
!153 = metadata !{i32 786443, metadata !24, i32 134, i32 28, metadata !2, i32 8} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 137, i32 4, metadata !153, null}
!155 = metadata !{i32 138, i32 3, metadata !24, null}
!156 = metadata !{i32 89, i32 33, metadata !25, null}
!157 = metadata !{i32 786688, metadata !28, metadata !"col", metadata !2, i32 82, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!158 = metadata !{i32 89, i32 8, metadata !25, null}
!159 = metadata !{i32 88, i32 32, metadata !27, null}
!160 = metadata !{i32 89, i32 41, metadata !24, null}
!161 = metadata !{i32 91, i32 1, metadata !24, null}
!162 = metadata !{i32 99, i32 4, metadata !24, null}
!163 = metadata !{i32 140, i32 2, metadata !28, null}
