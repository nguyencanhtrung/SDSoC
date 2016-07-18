; ModuleID = 'C:/xup/SDSoC/labs/lab5a/src/edge_detect.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

@sobel_operator.x_op = internal constant [3 x [3 x i16]] [[3 x i16] [i16 -1, i16 0, i16 1], [3 x i16] [i16 -2, i16 0, i16 2], [3 x i16] [i16 -1, i16 0, i16 1]], align 2
@sobel_operator.y_op = internal constant [3 x [3 x i16]] [[3 x i16] [i16 1, i16 2, i16 1], [3 x i16] zeroinitializer, [3 x i16] [i16 -1, i16 -2, i16 -1]], align 2

; Function Attrs: nounwind
define i32 @sobel_filter(i8* %input, i8* %output) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %index = alloca i32, align 4
  %buff_A = alloca [3 x [1920 x i8]], align 1
  %buff_C = alloca [3 x [3 x i8]], align 1
  %input_data = alloca i16, align 2
  %temp = alloca i8, align 1
  %tempx = alloca i8, align 1
  %y = alloca i8, align 1
  %edge = alloca i8, align 1
  store i8* %input, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !74), !dbg !75
  store i8* %output, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !76), !dbg !77
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !78), !dbg !79
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !80), !dbg !81
  call void @llvm.dbg.declare(metadata !{i32* %index}, metadata !82), !dbg !83
  store i32 0, i32* %index, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata !{[3 x [1920 x i8]]* %buff_A}, metadata !85), !dbg !89
  call void @llvm.dbg.declare(metadata !{[3 x [3 x i8]]* %buff_C}, metadata !90), !dbg !93
  store i32 0, i32* %row, align 4, !dbg !94
  br label %3, !dbg !94

; <label>:3                                       ; preds = %86, %0
  %4 = load i32* %row, align 4, !dbg !96
  %5 = icmp slt i32 %4, 1081, !dbg !96
  br i1 %5, label %6, label %89, !dbg !96

; <label>:6                                       ; preds = %3
  store i32 0, i32* %col, align 4, !dbg !99
  br label %7, !dbg !99

; <label>:7                                       ; preds = %82, %6
  %8 = load i32* %col, align 4, !dbg !102
  %9 = icmp slt i32 %8, 1921, !dbg !102
  br i1 %9, label %10, label %85, !dbg !102

; <label>:10                                      ; preds = %7
  call void @llvm.dbg.declare(metadata !{i16* %input_data}, metadata !105), !dbg !108
  store i16 0, i16* %input_data, align 2, !dbg !109
  call void @llvm.dbg.declare(metadata !{i8* %temp}, metadata !110), !dbg !111
  store i8 0, i8* %temp, align 1, !dbg !112
  call void @llvm.dbg.declare(metadata !{i8* %tempx}, metadata !113), !dbg !114
  store i8 0, i8* %tempx, align 1, !dbg !115
  %11 = load i32* %col, align 4, !dbg !116
  %12 = icmp slt i32 %11, 1920, !dbg !116
  br i1 %12, label %13, label %19, !dbg !116

; <label>:13                                      ; preds = %10
  %14 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i32 0, i32 0, !dbg !118
  %15 = load i32* %col, align 4, !dbg !118
  call void @linebuffer_shift_up([1920 x i8]* %14, i32 %15), !dbg !118
  %16 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i32 0, i32 0, !dbg !120
  %17 = load i32* %col, align 4, !dbg !120
  %18 = call zeroext i8 @linebuffer_getval([1920 x i8]* %16, i32 0, i32 %17), !dbg !120
  store i8 %18, i8* %temp, align 1, !dbg !120
  br label %19, !dbg !121

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %col, align 4, !dbg !122
  %21 = icmp slt i32 %20, 1920, !dbg !122
  %22 = zext i1 %21 to i32, !dbg !122
  %23 = load i32* %row, align 4, !dbg !122
  %24 = icmp slt i32 %23, 1080, !dbg !122
  %25 = zext i1 %24 to i32, !dbg !122
  %26 = and i32 %22, %25, !dbg !122
  %27 = icmp ne i32 %26, 0, !dbg !122
  br i1 %27, label %28, label %46, !dbg !122

; <label>:28                                      ; preds = %19
  call void @llvm.dbg.declare(metadata !{i8* %y}, metadata !124), !dbg !126
  %29 = load i32* %row, align 4, !dbg !127
  %30 = mul nsw i32 %29, 1920, !dbg !127
  %31 = load i32* %col, align 4, !dbg !127
  %32 = add nsw i32 %30, %31, !dbg !127
  store i32 %32, i32* %index, align 4, !dbg !127
  %33 = load i32* %index, align 4, !dbg !128
  %34 = load i8** %1, align 4, !dbg !128
  %35 = getelementptr inbounds i8* %34, i32 %33, !dbg !128
  %36 = load i8* %35, align 1, !dbg !128
  %37 = zext i8 %36 to i16, !dbg !128
  store i16 %37, i16* %input_data, align 2, !dbg !128
  %38 = load i16* %input_data, align 2, !dbg !129
  %39 = zext i16 %38 to i32, !dbg !129
  %40 = ashr i32 %39, 0, !dbg !129
  %41 = trunc i32 %40 to i8, !dbg !129
  store i8 %41, i8* %y, align 1, !dbg !129
  %42 = load i8* %y, align 1, !dbg !130
  store i8 %42, i8* %tempx, align 1, !dbg !130
  %43 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i32 0, i32 0, !dbg !131
  %44 = load i8* %tempx, align 1, !dbg !131
  %45 = load i32* %col, align 4, !dbg !131
  call void @linebuffer_insert_bottom([1920 x i8]* %43, i8 zeroext %44, i32 %45), !dbg !131
  br label %46, !dbg !132

; <label>:46                                      ; preds = %28, %19
  %47 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i32 0, i32 0, !dbg !133
  call void @window_shift_right([3 x i8]* %47), !dbg !133
  %48 = load i32* %col, align 4, !dbg !134
  %49 = icmp slt i32 %48, 1920, !dbg !134
  br i1 %49, label %50, label %59, !dbg !134

; <label>:50                                      ; preds = %46
  %51 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i32 0, i32 0, !dbg !136
  %52 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i32 0, i32 0, !dbg !138
  %53 = load i32* %col, align 4, !dbg !138
  %54 = call zeroext i8 @linebuffer_getval([1920 x i8]* %52, i32 2, i32 %53), !dbg !138
  call void @window_insert([3 x i8]* %51, i8 zeroext %54, i32 0, i32 2), !dbg !136
  %55 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i32 0, i32 0, !dbg !139
  %56 = load i8* %temp, align 1, !dbg !139
  call void @window_insert([3 x i8]* %55, i8 zeroext %56, i32 1, i32 2), !dbg !139
  %57 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i32 0, i32 0, !dbg !140
  %58 = load i8* %tempx, align 1, !dbg !140
  call void @window_insert([3 x i8]* %57, i8 zeroext %58, i32 2, i32 2), !dbg !140
  br label %59, !dbg !141

; <label>:59                                      ; preds = %50, %46
  call void @llvm.dbg.declare(metadata !{i8* %edge}, metadata !142), !dbg !143
  %60 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i32 0, i32 0, !dbg !144
  %61 = call zeroext i8 @sobel_operator([3 x i8]* %60), !dbg !144
  store i8 %61, i8* %edge, align 1, !dbg !144
  %62 = load i32* %row, align 4, !dbg !145
  %63 = icmp sgt i32 %62, 0, !dbg !145
  br i1 %63, label %64, label %81, !dbg !145

; <label>:64                                      ; preds = %59
  %65 = load i32* %col, align 4, !dbg !147
  %66 = icmp sgt i32 %65, 0, !dbg !147
  br i1 %66, label %67, label %81, !dbg !147

; <label>:67                                      ; preds = %64
  %68 = load i32* %row, align 4, !dbg !149
  %69 = sub nsw i32 %68, 1, !dbg !149
  %70 = mul nsw i32 %69, 1920, !dbg !149
  %71 = load i32* %col, align 4, !dbg !149
  %72 = sub nsw i32 %71, 1, !dbg !149
  %73 = add nsw i32 %70, %72, !dbg !149
  store i32 %73, i32* %index, align 4, !dbg !149
  %74 = load i8* %edge, align 1, !dbg !151
  %75 = zext i8 %74 to i32, !dbg !151
  %76 = shl i32 %75, 0, !dbg !151
  %77 = trunc i32 %76 to i8, !dbg !151
  %78 = load i32* %index, align 4, !dbg !151
  %79 = load i8** %2, align 4, !dbg !151
  %80 = getelementptr inbounds i8* %79, i32 %78, !dbg !151
  store i8 %77, i8* %80, align 1, !dbg !151
  br label %81, !dbg !152

; <label>:81                                      ; preds = %67, %64, %59
  br label %82, !dbg !153

; <label>:82                                      ; preds = %81
  %83 = load i32* %col, align 4, !dbg !154
  %84 = add nsw i32 %83, 1, !dbg !154
  store i32 %84, i32* %col, align 4, !dbg !154
  br label %7, !dbg !154

; <label>:85                                      ; preds = %7
  br label %86, !dbg !155

; <label>:86                                      ; preds = %85
  %87 = load i32* %row, align 4, !dbg !156
  %88 = add nsw i32 %87, 1, !dbg !156
  store i32 %88, i32* %row, align 4, !dbg !156
  br label %3, !dbg !156

; <label>:89                                      ; preds = %3
  ret i32 0, !dbg !157
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define internal void @linebuffer_shift_up([1920 x i8]* %M, i32 %col) #0 {
  %1 = alloca [1920 x i8]*, align 4
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  store [1920 x i8]* %M, [1920 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[1920 x i8]** %1}, metadata !158), !dbg !159
  store i32 %col, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !160), !dbg !161
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !162), !dbg !163
  store i32 2, i32* %i, align 4, !dbg !164
  br label %3, !dbg !164

; <label>:3                                       ; preds = %19, %0
  %4 = load i32* %i, align 4, !dbg !166
  %5 = icmp sgt i32 %4, 0, !dbg !166
  br i1 %5, label %6, label %22, !dbg !166

; <label>:6                                       ; preds = %3
  %7 = load i32* %2, align 4, !dbg !169
  %8 = load i32* %i, align 4, !dbg !169
  %9 = sub nsw i32 %8, 1, !dbg !169
  %10 = load [1920 x i8]** %1, align 4, !dbg !169
  %11 = getelementptr inbounds [1920 x i8]* %10, i32 %9, !dbg !169
  %12 = getelementptr inbounds [1920 x i8]* %11, i32 0, i32 %7, !dbg !169
  %13 = load i8* %12, align 1, !dbg !169
  %14 = load i32* %2, align 4, !dbg !169
  %15 = load i32* %i, align 4, !dbg !169
  %16 = load [1920 x i8]** %1, align 4, !dbg !169
  %17 = getelementptr inbounds [1920 x i8]* %16, i32 %15, !dbg !169
  %18 = getelementptr inbounds [1920 x i8]* %17, i32 0, i32 %14, !dbg !169
  store i8 %13, i8* %18, align 1, !dbg !169
  br label %19, !dbg !171

; <label>:19                                      ; preds = %6
  %20 = load i32* %i, align 4, !dbg !172
  %21 = add nsw i32 %20, -1, !dbg !172
  store i32 %21, i32* %i, align 4, !dbg !172
  br label %3, !dbg !172

; <label>:22                                      ; preds = %3
  ret void, !dbg !173
}

; Function Attrs: nounwind
define internal zeroext i8 @linebuffer_getval([1920 x i8]* %M, i32 %RowIndex, i32 %ColIndex) #0 {
  %1 = alloca [1920 x i8]*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %return_value = alloca i8, align 1
  store [1920 x i8]* %M, [1920 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[1920 x i8]** %1}, metadata !174), !dbg !175
  store i32 %RowIndex, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !176), !dbg !177
  store i32 %ColIndex, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !178), !dbg !179
  call void @llvm.dbg.declare(metadata !{i8* %return_value}, metadata !180), !dbg !181
  %4 = load i32* %3, align 4, !dbg !182
  %5 = load i32* %2, align 4, !dbg !182
  %6 = load [1920 x i8]** %1, align 4, !dbg !182
  %7 = getelementptr inbounds [1920 x i8]* %6, i32 %5, !dbg !182
  %8 = getelementptr inbounds [1920 x i8]* %7, i32 0, i32 %4, !dbg !182
  %9 = load i8* %8, align 1, !dbg !182
  store i8 %9, i8* %return_value, align 1, !dbg !182
  %10 = load i8* %return_value, align 1, !dbg !183
  ret i8 %10, !dbg !183
}

; Function Attrs: nounwind
define internal void @linebuffer_insert_bottom([1920 x i8]* %M, i8 zeroext %value, i32 %col) #0 {
  %1 = alloca [1920 x i8]*, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store [1920 x i8]* %M, [1920 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[1920 x i8]** %1}, metadata !184), !dbg !185
  store i8 %value, i8* %2, align 1
  call void @llvm.dbg.declare(metadata !{i8* %2}, metadata !186), !dbg !187
  store i32 %col, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !188), !dbg !189
  %4 = load i8* %2, align 1, !dbg !190
  %5 = load i32* %3, align 4, !dbg !190
  %6 = load [1920 x i8]** %1, align 4, !dbg !190
  %7 = getelementptr inbounds [1920 x i8]* %6, i32 0, !dbg !190
  %8 = getelementptr inbounds [1920 x i8]* %7, i32 0, i32 %5, !dbg !190
  store i8 %4, i8* %8, align 1, !dbg !190
  ret void, !dbg !191
}

; Function Attrs: nounwind
define internal void @window_shift_right([3 x i8]* %M) #0 {
  %1 = alloca [3 x i8]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [3 x i8]* %M, [3 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %1}, metadata !192), !dbg !193
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !194), !dbg !195
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !196), !dbg !197
  store i32 0, i32* %i, align 4, !dbg !198
  br label %2, !dbg !198

; <label>:2                                       ; preds = %26, %0
  %3 = load i32* %i, align 4, !dbg !200
  %4 = icmp slt i32 %3, 3, !dbg !200
  br i1 %4, label %5, label %29, !dbg !200

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !203
  br label %6, !dbg !203

; <label>:6                                       ; preds = %22, %5
  %7 = load i32* %j, align 4, !dbg !206
  %8 = icmp slt i32 %7, 2, !dbg !206
  br i1 %8, label %9, label %25, !dbg !206

; <label>:9                                       ; preds = %6
  %10 = load i32* %j, align 4, !dbg !209
  %11 = add nsw i32 %10, 1, !dbg !209
  %12 = load i32* %i, align 4, !dbg !209
  %13 = load [3 x i8]** %1, align 4, !dbg !209
  %14 = getelementptr inbounds [3 x i8]* %13, i32 %12, !dbg !209
  %15 = getelementptr inbounds [3 x i8]* %14, i32 0, i32 %11, !dbg !209
  %16 = load i8* %15, align 1, !dbg !209
  %17 = load i32* %j, align 4, !dbg !209
  %18 = load i32* %i, align 4, !dbg !209
  %19 = load [3 x i8]** %1, align 4, !dbg !209
  %20 = getelementptr inbounds [3 x i8]* %19, i32 %18, !dbg !209
  %21 = getelementptr inbounds [3 x i8]* %20, i32 0, i32 %17, !dbg !209
  store i8 %16, i8* %21, align 1, !dbg !209
  br label %22, !dbg !211

; <label>:22                                      ; preds = %9
  %23 = load i32* %j, align 4, !dbg !212
  %24 = add nsw i32 %23, 1, !dbg !212
  store i32 %24, i32* %j, align 4, !dbg !212
  br label %6, !dbg !212

; <label>:25                                      ; preds = %6
  br label %26, !dbg !213

; <label>:26                                      ; preds = %25
  %27 = load i32* %i, align 4, !dbg !214
  %28 = add nsw i32 %27, 1, !dbg !214
  store i32 %28, i32* %i, align 4, !dbg !214
  br label %2, !dbg !214

; <label>:29                                      ; preds = %2
  ret void, !dbg !215
}

; Function Attrs: nounwind
define internal void @window_insert([3 x i8]* %M, i8 zeroext %value, i32 %row, i32 %col) #0 {
  %1 = alloca [3 x i8]*, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store [3 x i8]* %M, [3 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %1}, metadata !216), !dbg !217
  store i8 %value, i8* %2, align 1
  call void @llvm.dbg.declare(metadata !{i8* %2}, metadata !218), !dbg !219
  store i32 %row, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !220), !dbg !221
  store i32 %col, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !222), !dbg !223
  %5 = load i8* %2, align 1, !dbg !224
  %6 = load i32* %4, align 4, !dbg !224
  %7 = load i32* %3, align 4, !dbg !224
  %8 = load [3 x i8]** %1, align 4, !dbg !224
  %9 = getelementptr inbounds [3 x i8]* %8, i32 %7, !dbg !224
  %10 = getelementptr inbounds [3 x i8]* %9, i32 0, i32 %6, !dbg !224
  store i8 %5, i8* %10, align 1, !dbg !224
  ret void, !dbg !225
}

; Function Attrs: nounwind
define internal zeroext i8 @sobel_operator([3 x i8]* %window) #0 {
  %1 = alloca [3 x i8]*, align 4
  %x_weight = alloca i16, align 2
  %y_weight = alloca i16, align 2
  %edge_weight = alloca i16, align 2
  %edge_val = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [3 x i8]* %window, [3 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %1}, metadata !226), !dbg !227
  call void @llvm.dbg.declare(metadata !{i16* %x_weight}, metadata !228), !dbg !229
  store i16 0, i16* %x_weight, align 2, !dbg !230
  call void @llvm.dbg.declare(metadata !{i16* %y_weight}, metadata !231), !dbg !232
  store i16 0, i16* %y_weight, align 2, !dbg !233
  call void @llvm.dbg.declare(metadata !{i16* %edge_weight}, metadata !234), !dbg !235
  call void @llvm.dbg.declare(metadata !{i8* %edge_val}, metadata !236), !dbg !237
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !238), !dbg !239
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !240), !dbg !241
  store i32 0, i32* %i, align 4, !dbg !242
  br label %2, !dbg !242

; <label>:2                                       ; preds = %46, %0
  %3 = load i32* %i, align 4, !dbg !244
  %4 = icmp slt i32 %3, 3, !dbg !244
  br i1 %4, label %5, label %49, !dbg !244

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !247
  br label %6, !dbg !247

; <label>:6                                       ; preds = %42, %5
  %7 = load i32* %j, align 4, !dbg !250
  %8 = icmp slt i32 %7, 3, !dbg !250
  br i1 %8, label %9, label %45, !dbg !250

; <label>:9                                       ; preds = %6
  %10 = load i16* %x_weight, align 2, !dbg !253
  %11 = sext i16 %10 to i32, !dbg !253
  %12 = load [3 x i8]** %1, align 4, !dbg !255
  %13 = load i32* %i, align 4, !dbg !255
  %14 = load i32* %j, align 4, !dbg !255
  %15 = call zeroext i8 @window_getval([3 x i8]* %12, i32 %13, i32 %14), !dbg !255
  %16 = zext i8 %15 to i32, !dbg !255
  %17 = load i32* %j, align 4, !dbg !255
  %18 = load i32* %i, align 4, !dbg !255
  %19 = getelementptr inbounds [3 x [3 x i16]]* @sobel_operator.x_op, i32 0, i32 %18, !dbg !255
  %20 = getelementptr inbounds [3 x i16]* %19, i32 0, i32 %17, !dbg !255
  %21 = load i16* %20, align 2, !dbg !255
  %22 = sext i16 %21 to i32, !dbg !255
  %23 = mul nsw i32 %16, %22, !dbg !255
  %24 = add nsw i32 %11, %23, !dbg !255
  %25 = trunc i32 %24 to i16, !dbg !255
  store i16 %25, i16* %x_weight, align 2, !dbg !255
  %26 = load i16* %y_weight, align 2, !dbg !256
  %27 = sext i16 %26 to i32, !dbg !256
  %28 = load [3 x i8]** %1, align 4, !dbg !257
  %29 = load i32* %i, align 4, !dbg !257
  %30 = load i32* %j, align 4, !dbg !257
  %31 = call zeroext i8 @window_getval([3 x i8]* %28, i32 %29, i32 %30), !dbg !257
  %32 = zext i8 %31 to i32, !dbg !257
  %33 = load i32* %j, align 4, !dbg !257
  %34 = load i32* %i, align 4, !dbg !257
  %35 = getelementptr inbounds [3 x [3 x i16]]* @sobel_operator.y_op, i32 0, i32 %34, !dbg !257
  %36 = getelementptr inbounds [3 x i16]* %35, i32 0, i32 %33, !dbg !257
  %37 = load i16* %36, align 2, !dbg !257
  %38 = sext i16 %37 to i32, !dbg !257
  %39 = mul nsw i32 %32, %38, !dbg !257
  %40 = add nsw i32 %27, %39, !dbg !257
  %41 = trunc i32 %40 to i16, !dbg !257
  store i16 %41, i16* %y_weight, align 2, !dbg !257
  br label %42, !dbg !258

; <label>:42                                      ; preds = %9
  %43 = load i32* %j, align 4, !dbg !259
  %44 = add nsw i32 %43, 1, !dbg !259
  store i32 %44, i32* %j, align 4, !dbg !259
  br label %6, !dbg !259

; <label>:45                                      ; preds = %6
  br label %46, !dbg !260

; <label>:46                                      ; preds = %45
  %47 = load i32* %i, align 4, !dbg !261
  %48 = add nsw i32 %47, 1, !dbg !261
  store i32 %48, i32* %i, align 4, !dbg !261
  br label %2, !dbg !261

; <label>:49                                      ; preds = %2
  %50 = load i16* %x_weight, align 2, !dbg !262
  %51 = sext i16 %50 to i32, !dbg !262
  %52 = icmp sgt i32 %51, 0, !dbg !262
  br i1 %52, label %53, label %56, !dbg !262

; <label>:53                                      ; preds = %49
  %54 = load i16* %x_weight, align 2, !dbg !263
  %55 = sext i16 %54 to i32, !dbg !263
  br label %60, !dbg !263

; <label>:56                                      ; preds = %49
  %57 = load i16* %x_weight, align 2, !dbg !265
  %58 = sext i16 %57 to i32, !dbg !265
  %59 = sub nsw i32 0, %58, !dbg !265
  br label %60, !dbg !265

; <label>:60                                      ; preds = %56, %53
  %61 = phi i32 [ %55, %53 ], [ %59, %56 ], !dbg !262
  %62 = load i16* %y_weight, align 2, !dbg !267
  %63 = sext i16 %62 to i32, !dbg !267
  %64 = icmp sgt i32 %63, 0, !dbg !267
  br i1 %64, label %65, label %68, !dbg !267

; <label>:65                                      ; preds = %60
  %66 = load i16* %y_weight, align 2, !dbg !270
  %67 = sext i16 %66 to i32, !dbg !270
  br label %72, !dbg !270

; <label>:68                                      ; preds = %60
  %69 = load i16* %y_weight, align 2, !dbg !272
  %70 = sext i16 %69 to i32, !dbg !272
  %71 = sub nsw i32 0, %70, !dbg !272
  br label %72, !dbg !272

; <label>:72                                      ; preds = %68, %65
  %73 = phi i32 [ %67, %65 ], [ %71, %68 ], !dbg !262
  %74 = add nsw i32 %61, %73, !dbg !274
  %75 = trunc i32 %74 to i16, !dbg !274
  store i16 %75, i16* %edge_weight, align 2, !dbg !274
  %76 = load i16* %edge_weight, align 2, !dbg !277
  %77 = sext i16 %76 to i32, !dbg !277
  %78 = icmp sgt i32 %77, 200, !dbg !277
  br i1 %78, label %79, label %80, !dbg !277

; <label>:79                                      ; preds = %72
  store i16 255, i16* %edge_weight, align 2, !dbg !279
  br label %86, !dbg !279

; <label>:80                                      ; preds = %72
  %81 = load i16* %edge_weight, align 2, !dbg !280
  %82 = sext i16 %81 to i32, !dbg !280
  %83 = icmp slt i32 %82, 100, !dbg !280
  br i1 %83, label %84, label %85, !dbg !280

; <label>:84                                      ; preds = %80
  store i16 0, i16* %edge_weight, align 2, !dbg !282
  br label %85, !dbg !282

; <label>:85                                      ; preds = %84, %80
  br label %86

; <label>:86                                      ; preds = %85, %79
  %87 = load i16* %edge_weight, align 2, !dbg !283
  %88 = trunc i16 %87 to i8, !dbg !283
  store i8 %88, i8* %edge_val, align 1, !dbg !283
  %89 = load i8* %edge_val, align 1, !dbg !284
  ret i8 %89, !dbg !284
}

; Function Attrs: nounwind
define internal zeroext i8 @window_getval([3 x i8]* %M, i32 %RowIndex, i32 %ColIndex) #0 {
  %1 = alloca [3 x i8]*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %return_value = alloca i8, align 1
  store [3 x i8]* %M, [3 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %1}, metadata !285), !dbg !286
  store i32 %RowIndex, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !287), !dbg !288
  store i32 %ColIndex, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !289), !dbg !290
  call void @llvm.dbg.declare(metadata !{i8* %return_value}, metadata !291), !dbg !292
  %4 = load i32* %3, align 4, !dbg !293
  %5 = load i32* %2, align 4, !dbg !293
  %6 = load [3 x i8]** %1, align 4, !dbg !293
  %7 = getelementptr inbounds [3 x i8]* %6, i32 %5, !dbg !293
  %8 = getelementptr inbounds [3 x i8]* %7, i32 0, i32 %4, !dbg !293
  %9 = load i8* %8, align 1, !dbg !293
  store i8 %9, i8* %return_value, align 1, !dbg !293
  %10 = load i8* %return_value, align 1, !dbg !294
  ret i8 %10, !dbg !294
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_argument_annotation = !{!50, !51}
!xidane.function_declaration_type = !{!50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!xidane.function_declaration_filename = !{!50, !67, !53, !68, !55, !68, !57, !68, !59, !68, !61, !68, !63, !68, !65, !68}
!xidane.ExternC = !{!50}
!llvm.module.flags = !{!69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !43, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\xup\SDSoC\labs\lab5a\SDDebug/../src\edge_detect.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../src\5Cedge_detect.c", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5a\5CSDDebug"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !14, metadata !21, metadata !24, metadata !31, metadata !34, metadata !37, metadata !40}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"", i32 76, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*)* @sobel_filter, null, null, metadata !2, i32 76} ; [ DW_TAG_subprogram ] [line 76] [def] [sobel_filter]
!5 = metadata !{metadata !"C:/xup/SDSoC/labs/lab5a/src/edge_detect.c", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5a\5CSDDebug"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from uint8_t]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"uint8_t", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [uint8_t] [line 48, size 0, align 0, offset 0] [from unsigned char]
!12 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/libc/usr/include\5Cstdint.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5a\5CSDDebug"}
!13 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!14 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"window_insert", metadata !"window_insert", metadata !"", i32 196, metadata !15, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([3 x i8]*, i8, i32, i32)* @window_insert, null, null, metadata !2, i32 196} ; [ DW_TAG_subprogram ] [line 196] [local] [def] [window_insert]
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{null, metadata !17, metadata !11, metadata !9, metadata !9}
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!18 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24, i64 8, i32 0, i32 0, metadata !11, metadata !19, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 24, align 8, offset 0] [from uint8_t]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!21 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"window_shift_right", metadata !"window_shift_right", metadata !"", i32 181, metadata !22, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([3 x i8]*)* @window_shift_right, null, null, metadata !2, i32 181} ; [ DW_TAG_subprogram ] [line 181] [local] [def] [window_shift_right]
!22 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !17}
!24 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"linebuffer_insert_bottom", metadata !"linebuffer_insert_bottom", metadata !"", i32 171, metadata !25, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([1920 x i8]*, i8, i32)* @linebuffer_insert_bottom, null, null, metadata !2, i32 171} ; [ DW_TAG_subprogram ] [line 171] [local] [def] [linebuffer_insert_bottom]
!25 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{null, metadata !27, metadata !11, metadata !9}
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!28 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !11, metadata !29, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 15360, align 8, offset 0] [from uint8_t]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786465, i64 0, i64 1920}     ; [ DW_TAG_subrange_type ] [0, 1919]
!31 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"linebuffer_getval", metadata !"linebuffer_getval", metadata !"", i32 159, metadata !32, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 ([1920 x i8]*, i32, i32)* @linebuffer_getval, null, null, metadata !2, i32 159} ; [ DW_TAG_subprogram ] [line 159] [local] [def] [linebuffer_getval]
!32 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{metadata !11, metadata !27, metadata !9, metadata !9}
!34 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"linebuffer_shift_up", metadata !"linebuffer_shift_up", metadata !"", i32 147, metadata !35, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([1920 x i8]*, i32)* @linebuffer_shift_up, null, null, metadata !2, i32 147} ; [ DW_TAG_subprogram ] [line 147] [local] [def] [linebuffer_shift_up]
!35 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{null, metadata !27, metadata !9}
!37 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"", i32 34, metadata !38, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 ([3 x i8]*)* @sobel_operator, null, null, metadata !2, i32 34} ; [ DW_TAG_subprogram ] [line 34] [local] [def] [sobel_operator]
!38 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!39 = metadata !{metadata !13, metadata !17}
!40 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"window_getval", metadata !"window_getval", metadata !"", i32 204, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 ([3 x i8]*, i32, i32)* @window_getval, null, null, metadata !2, i32 204} ; [ DW_TAG_subprogram ] [line 204] [local] [def] [window_getval]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{metadata !11, metadata !17, metadata !9, metadata !9}
!43 = metadata !{metadata !44, metadata !49}
!44 = metadata !{i32 786484, i32 0, metadata !37, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 44, metadata !45, i32 1, i32 1, [3 x [3 x i16]]* @sobel_operator.x_op, null} ; [ DW_TAG_variable ] [x_op] [line 44] [local] [def]
!45 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 144, i64 16, i32 0, i32 0, metadata !46, metadata !48, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 144, align 16, offset 0] [from ]
!46 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from short]
!47 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!48 = metadata !{metadata !20, metadata !20}
!49 = metadata !{i32 786484, i32 0, metadata !37, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 47, metadata !45, i32 1, i32 1, [3 x [3 x i16]]* @sobel_operator.y_op, null} ; [ DW_TAG_variable ] [y_op] [line 47] [local] [def]
!50 = metadata !{i32 (i8*, i8*)* @sobel_filter}
!51 = metadata !{metadata !"input,,2073600,,,,,, output,,2073600,,,,,, "}
!52 = metadata !{metadata !"int.uint8_t *.1.uint8_t *.1"}
!53 = metadata !{void ([1920 x i8]*, i32)* @linebuffer_shift_up}
!54 = metadata !{metadata !"void.linebuffer_t.1.int.0"}
!55 = metadata !{i8 ([1920 x i8]*, i32, i32)* @linebuffer_getval}
!56 = metadata !{metadata !"uint8_t.linebuffer_t.1.int.0.int.0"}
!57 = metadata !{void ([1920 x i8]*, i8, i32)* @linebuffer_insert_bottom}
!58 = metadata !{metadata !"void.linebuffer_t.1.uint8_t.0.int.0"}
!59 = metadata !{void ([3 x i8]*)* @window_shift_right}
!60 = metadata !{metadata !"void.window_t.1"}
!61 = metadata !{void ([3 x i8]*, i8, i32, i32)* @window_insert}
!62 = metadata !{metadata !"void.window_t.1.uint8_t.0.int.0.int.0"}
!63 = metadata !{i8 ([3 x i8]*)* @sobel_operator}
!64 = metadata !{metadata !"unsigned char.window_t.1"}
!65 = metadata !{i8 ([3 x i8]*, i32, i32)* @window_getval}
!66 = metadata !{metadata !"uint8_t.window_t.1.int.0.int.0"}
!67 = metadata !{metadata !"../src/edge_detect.h"}
!68 = metadata !{metadata !"C:/xup/SDSoC/labs/lab5a/src/edge_detect.c"}
!69 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!70 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!71 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!72 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!73 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!74 = metadata !{i32 786689, metadata !4, metadata !"input", metadata !6, i32 16777292, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [input] [line 76]
!75 = metadata !{i32 76, i32 27, metadata !4, null}
!76 = metadata !{i32 786689, metadata !4, metadata !"output", metadata !6, i32 33554508, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [output] [line 76]
!77 = metadata !{i32 76, i32 43, metadata !4, null}
!78 = metadata !{i32 786688, metadata !4, metadata !"row", metadata !6, i32 81, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 81]
!79 = metadata !{i32 81, i32 6, metadata !4, null}
!80 = metadata !{i32 786688, metadata !4, metadata !"col", metadata !6, i32 82, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 82]
!81 = metadata !{i32 82, i32 6, metadata !4, null}
!82 = metadata !{i32 786688, metadata !4, metadata !"index", metadata !6, i32 83, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 83]
!83 = metadata !{i32 83, i32 6, metadata !4, null}
!84 = metadata !{i32 83, i32 2, metadata !4, null}
!85 = metadata !{i32 786688, metadata !4, metadata !"buff_A", metadata !6, i32 85, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff_A] [line 85]
!86 = metadata !{i32 786454, metadata !5, null, metadata !"linebuffer_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [linebuffer_t] [line 22, size 0, align 0, offset 0] [from ]
!87 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 46080, i64 8, i32 0, i32 0, metadata !11, metadata !88, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 46080, align 8, offset 0] [from uint8_t]
!88 = metadata !{metadata !20, metadata !30}
!89 = metadata !{i32 85, i32 15, metadata !4, null}
!90 = metadata !{i32 786688, metadata !4, metadata !"buff_C", metadata !6, i32 86, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff_C] [line 86]
!91 = metadata !{i32 786454, metadata !5, null, metadata !"window_t", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [window_t] [line 21, size 0, align 0, offset 0] [from ]
!92 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !11, metadata !48, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from uint8_t]
!93 = metadata !{i32 86, i32 11, metadata !4, null}
!94 = metadata !{i32 88, i32 7, metadata !95, null}
!95 = metadata !{i32 786443, metadata !5, metadata !4, i32 88, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!96 = metadata !{i32 88, i32 7, metadata !97, null}
!97 = metadata !{i32 786443, metadata !5, metadata !98, i32 88, i32 7, i32 2, i32 28} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!98 = metadata !{i32 786443, metadata !5, metadata !95, i32 88, i32 7, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!99 = metadata !{i32 89, i32 8, metadata !100, null}
!100 = metadata !{i32 786443, metadata !5, metadata !101, i32 89, i32 3, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!101 = metadata !{i32 786443, metadata !5, metadata !95, i32 88, i32 42, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!102 = metadata !{i32 89, i32 8, metadata !103, null}
!103 = metadata !{i32 786443, metadata !5, metadata !104, i32 89, i32 8, i32 2, i32 27} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!104 = metadata !{i32 786443, metadata !5, metadata !100, i32 89, i32 8, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!105 = metadata !{i32 786688, metadata !106, metadata !"input_data", metadata !6, i32 94, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [input_data] [line 94]
!106 = metadata !{i32 786443, metadata !5, metadata !100, i32 89, i32 43, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!107 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!108 = metadata !{i32 94, i32 19, metadata !106, null}
!109 = metadata !{i32 94, i32 4, metadata !106, null}
!110 = metadata !{i32 786688, metadata !106, metadata !"temp", metadata !6, i32 95, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 95]
!111 = metadata !{i32 95, i32 18, metadata !106, null}
!112 = metadata !{i32 95, i32 4, metadata !106, null}
!113 = metadata !{i32 786688, metadata !106, metadata !"tempx", metadata !6, i32 96, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tempx] [line 96]
!114 = metadata !{i32 96, i32 18, metadata !106, null}
!115 = metadata !{i32 96, i32 4, metadata !106, null}
!116 = metadata !{i32 99, i32 8, metadata !117, null}
!117 = metadata !{i32 786443, metadata !5, metadata !106, i32 99, i32 8, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!118 = metadata !{i32 100, i32 5, metadata !119, null}
!119 = metadata !{i32 786443, metadata !5, metadata !117, i32 99, i32 23, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!120 = metadata !{i32 101, i32 12, metadata !119, null}
!121 = metadata !{i32 102, i32 4, metadata !119, null}
!122 = metadata !{i32 106, i32 8, metadata !123, null}
!123 = metadata !{i32 786443, metadata !5, metadata !106, i32 106, i32 8, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!124 = metadata !{i32 786688, metadata !125, metadata !"y", metadata !6, i32 107, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 107]
!125 = metadata !{i32 786443, metadata !5, metadata !123, i32 106, i32 43, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!126 = metadata !{i32 107, i32 19, metadata !125, null}
!127 = metadata !{i32 108, i32 5, metadata !125, null}
!128 = metadata !{i32 109, i32 5, metadata !125, null}
!129 = metadata !{i32 110, i32 5, metadata !125, null}
!130 = metadata !{i32 111, i32 5, metadata !125, null}
!131 = metadata !{i32 112, i32 5, metadata !125, null}
!132 = metadata !{i32 113, i32 4, metadata !125, null}
!133 = metadata !{i32 116, i32 4, metadata !106, null}
!134 = metadata !{i32 120, i32 8, metadata !135, null}
!135 = metadata !{i32 786443, metadata !5, metadata !106, i32 120, i32 8, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!136 = metadata !{i32 121, i32 5, metadata !137, null}
!137 = metadata !{i32 786443, metadata !5, metadata !135, i32 120, i32 23, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!138 = metadata !{i32 121, i32 27, metadata !137, null}
!139 = metadata !{i32 122, i32 5, metadata !137, null}
!140 = metadata !{i32 123, i32 5, metadata !137, null}
!141 = metadata !{i32 124, i32 4, metadata !137, null}
!142 = metadata !{i32 786688, metadata !106, metadata !"edge", metadata !6, i32 126, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edge] [line 126]
!143 = metadata !{i32 126, i32 18, metadata !106, null}
!144 = metadata !{i32 130, i32 11, metadata !106, null}
!145 = metadata !{i32 134, i32 8, metadata !146, null}
!146 = metadata !{i32 786443, metadata !5, metadata !106, i32 134, i32 8, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!147 = metadata !{i32 134, i32 8, metadata !148, null}
!148 = metadata !{i32 786443, metadata !5, metadata !146, i32 134, i32 8, i32 1, i32 26} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!149 = metadata !{i32 135, i32 5, metadata !150, null}
!150 = metadata !{i32 786443, metadata !5, metadata !146, i32 134, i32 28, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!151 = metadata !{i32 136, i32 5, metadata !150, null}
!152 = metadata !{i32 137, i32 4, metadata !150, null}
!153 = metadata !{i32 138, i32 3, metadata !106, null}
!154 = metadata !{i32 89, i32 36, metadata !100, null}
!155 = metadata !{i32 139, i32 2, metadata !101, null}
!156 = metadata !{i32 88, i32 35, metadata !95, null}
!157 = metadata !{i32 140, i32 2, metadata !4, null}
!158 = metadata !{i32 786689, metadata !34, metadata !"M", metadata !6, i32 16777363, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 147]
!159 = metadata !{i32 147, i32 46, metadata !34, null}
!160 = metadata !{i32 786689, metadata !34, metadata !"col", metadata !6, i32 33554579, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 147]
!161 = metadata !{i32 147, i32 53, metadata !34, null}
!162 = metadata !{i32 786688, metadata !34, metadata !"i", metadata !6, i32 149, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 149]
!163 = metadata !{i32 149, i32 6, metadata !34, null}
!164 = metadata !{i32 150, i32 7, metadata !165, null}
!165 = metadata !{i32 786443, metadata !5, metadata !34, i32 150, i32 2, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!166 = metadata !{i32 150, i32 7, metadata !167, null}
!167 = metadata !{i32 786443, metadata !5, metadata !168, i32 150, i32 7, i32 2, i32 30} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!168 = metadata !{i32 786443, metadata !5, metadata !165, i32 150, i32 7, i32 1, i32 29} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!169 = metadata !{i32 152, i32 3, metadata !170, null}
!170 = metadata !{i32 786443, metadata !5, metadata !165, i32 150, i32 40, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!171 = metadata !{i32 153, i32 2, metadata !170, null}
!172 = metadata !{i32 150, i32 35, metadata !165, null}
!173 = metadata !{i32 154, i32 1, metadata !34, null}
!174 = metadata !{i32 786689, metadata !31, metadata !"M", metadata !6, i32 16777375, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 159]
!175 = metadata !{i32 159, i32 47, metadata !31, null}
!176 = metadata !{i32 786689, metadata !31, metadata !"RowIndex", metadata !6, i32 33554591, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [RowIndex] [line 159]
!177 = metadata !{i32 159, i32 54, metadata !31, null}
!178 = metadata !{i32 786689, metadata !31, metadata !"ColIndex", metadata !6, i32 50331807, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ColIndex] [line 159]
!179 = metadata !{i32 159, i32 68, metadata !31, null}
!180 = metadata !{i32 786688, metadata !31, metadata !"return_value", metadata !6, i32 162, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_value] [line 162]
!181 = metadata !{i32 162, i32 10, metadata !31, null}
!182 = metadata !{i32 163, i32 2, metadata !31, null}
!183 = metadata !{i32 164, i32 2, metadata !31, null}
!184 = metadata !{i32 786689, metadata !24, metadata !"M", metadata !6, i32 16777387, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 171]
!185 = metadata !{i32 171, i32 51, metadata !24, null}
!186 = metadata !{i32 786689, metadata !24, metadata !"value", metadata !6, i32 33554603, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 171]
!187 = metadata !{i32 171, i32 62, metadata !24, null}
!188 = metadata !{i32 786689, metadata !24, metadata !"col", metadata !6, i32 50331819, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 171]
!189 = metadata !{i32 171, i32 73, metadata !24, null}
!190 = metadata !{i32 174, i32 2, metadata !24, null}
!191 = metadata !{i32 175, i32 1, metadata !24, null}
!192 = metadata !{i32 786689, metadata !21, metadata !"M", metadata !6, i32 16777397, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 181]
!193 = metadata !{i32 181, i32 41, metadata !21, null}
!194 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !6, i32 183, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 183]
!195 = metadata !{i32 183, i32 6, metadata !21, null}
!196 = metadata !{i32 786688, metadata !21, metadata !"j", metadata !6, i32 183, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 183]
!197 = metadata !{i32 183, i32 9, metadata !21, null}
!198 = metadata !{i32 184, i32 7, metadata !199, null}
!199 = metadata !{i32 786443, metadata !5, metadata !21, i32 184, i32 2, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!200 = metadata !{i32 184, i32 7, metadata !201, null}
!201 = metadata !{i32 786443, metadata !5, metadata !202, i32 184, i32 7, i32 2, i32 34} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!202 = metadata !{i32 786443, metadata !5, metadata !199, i32 184, i32 7, i32 1, i32 31} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!203 = metadata !{i32 186, i32 8, metadata !204, null}
!204 = metadata !{i32 786443, metadata !5, metadata !205, i32 186, i32 3, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!205 = metadata !{i32 786443, metadata !5, metadata !199, i32 184, i32 37, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!206 = metadata !{i32 186, i32 8, metadata !207, null}
!207 = metadata !{i32 786443, metadata !5, metadata !208, i32 186, i32 8, i32 2, i32 33} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!208 = metadata !{i32 786443, metadata !5, metadata !204, i32 186, i32 8, i32 1, i32 32} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!209 = metadata !{i32 188, i32 4, metadata !210, null}
!210 = metadata !{i32 786443, metadata !5, metadata !204, i32 186, i32 41, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!211 = metadata !{i32 189, i32 3, metadata !210, null}
!212 = metadata !{i32 186, i32 36, metadata !204, null}
!213 = metadata !{i32 190, i32 2, metadata !205, null}
!214 = metadata !{i32 184, i32 32, metadata !199, null}
!215 = metadata !{i32 191, i32 1, metadata !21, null}
!216 = metadata !{i32 786689, metadata !14, metadata !"M", metadata !6, i32 16777412, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 196]
!217 = metadata !{i32 196, i32 36, metadata !14, null}
!218 = metadata !{i32 786689, metadata !14, metadata !"value", metadata !6, i32 33554628, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 196]
!219 = metadata !{i32 196, i32 47, metadata !14, null}
!220 = metadata !{i32 786689, metadata !14, metadata !"row", metadata !6, i32 50331844, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row] [line 196]
!221 = metadata !{i32 196, i32 58, metadata !14, null}
!222 = metadata !{i32 786689, metadata !14, metadata !"col", metadata !6, i32 67109060, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 196]
!223 = metadata !{i32 196, i32 67, metadata !14, null}
!224 = metadata !{i32 198, i32 2, metadata !14, null}
!225 = metadata !{i32 199, i32 1, metadata !14, null}
!226 = metadata !{i32 786689, metadata !37, metadata !"window", metadata !6, i32 16777250, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [window] [line 34]
!227 = metadata !{i32 34, i32 46, metadata !37, null}
!228 = metadata !{i32 786688, metadata !37, metadata !"x_weight", metadata !6, i32 35, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_weight] [line 35]
!229 = metadata !{i32 35, i32 8, metadata !37, null}
!230 = metadata !{i32 35, i32 2, metadata !37, null}
!231 = metadata !{i32 786688, metadata !37, metadata !"y_weight", metadata !6, i32 36, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y_weight] [line 36]
!232 = metadata !{i32 36, i32 8, metadata !37, null}
!233 = metadata !{i32 36, i32 2, metadata !37, null}
!234 = metadata !{i32 786688, metadata !37, metadata !"edge_weight", metadata !6, i32 38, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edge_weight] [line 38]
!235 = metadata !{i32 38, i32 8, metadata !37, null}
!236 = metadata !{i32 786688, metadata !37, metadata !"edge_val", metadata !6, i32 39, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edge_val] [line 39]
!237 = metadata !{i32 39, i32 16, metadata !37, null}
!238 = metadata !{i32 786688, metadata !37, metadata !"i", metadata !6, i32 41, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 41]
!239 = metadata !{i32 41, i32 6, metadata !37, null}
!240 = metadata !{i32 786688, metadata !37, metadata !"j", metadata !6, i32 42, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 42]
!241 = metadata !{i32 42, i32 6, metadata !37, null}
!242 = metadata !{i32 51, i32 7, metadata !243, null}
!243 = metadata !{i32 786443, metadata !5, metadata !37, i32 51, i32 2, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!244 = metadata !{i32 51, i32 7, metadata !245, null}
!245 = metadata !{i32 786443, metadata !5, metadata !246, i32 51, i32 7, i32 2, i32 38} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!246 = metadata !{i32 786443, metadata !5, metadata !243, i32 51, i32 7, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!247 = metadata !{i32 52, i32 8, metadata !248, null}
!248 = metadata !{i32 786443, metadata !5, metadata !249, i32 52, i32 3, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!249 = metadata !{i32 786443, metadata !5, metadata !243, i32 51, i32 37, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!250 = metadata !{i32 52, i32 8, metadata !251, null}
!251 = metadata !{i32 786443, metadata !5, metadata !252, i32 52, i32 8, i32 2, i32 37} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!252 = metadata !{i32 786443, metadata !5, metadata !248, i32 52, i32 8, i32 1, i32 36} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!253 = metadata !{i32 55, i32 4, metadata !254, null}
!254 = metadata !{i32 786443, metadata !5, metadata !248, i32 52, i32 37, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!255 = metadata !{i32 55, i32 27, metadata !254, null}
!256 = metadata !{i32 58, i32 4, metadata !254, null} ; [ DW_TAG_imported_module ]
!257 = metadata !{i32 58, i32 27, metadata !254, null} ; [ DW_TAG_imported_module ]
!258 = metadata !{i32 59, i32 3, metadata !254, null}
!259 = metadata !{i32 52, i32 32, metadata !248, null}
!260 = metadata !{i32 60, i32 2, metadata !249, null}
!261 = metadata !{i32 51, i32 32, metadata !243, null}
!262 = metadata !{i32 62, i32 2, metadata !37, null}
!263 = metadata !{i32 62, i32 2, metadata !264, null}
!264 = metadata !{i32 786443, metadata !5, metadata !37, i32 62, i32 2, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!265 = metadata !{i32 62, i32 2, metadata !266, null}
!266 = metadata !{i32 786443, metadata !5, metadata !37, i32 62, i32 2, i32 2, i32 40} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!267 = metadata !{i32 62, i32 2, metadata !268, null}
!268 = metadata !{i32 786443, metadata !5, metadata !269, i32 62, i32 2, i32 4, i32 42} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!269 = metadata !{i32 786443, metadata !5, metadata !37, i32 62, i32 2, i32 3, i32 41} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!270 = metadata !{i32 62, i32 2, metadata !271, null}
!271 = metadata !{i32 786443, metadata !5, metadata !37, i32 62, i32 2, i32 5, i32 43} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!272 = metadata !{i32 62, i32 2, metadata !273, null}
!273 = metadata !{i32 786443, metadata !5, metadata !37, i32 62, i32 2, i32 6, i32 44} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!274 = metadata !{i32 62, i32 2, metadata !275, null}
!275 = metadata !{i32 786443, metadata !5, metadata !276, i32 62, i32 2, i32 8, i32 46} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!276 = metadata !{i32 786443, metadata !5, metadata !37, i32 62, i32 2, i32 7, i32 45} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!277 = metadata !{i32 65, i32 6, metadata !278, null}
!278 = metadata !{i32 786443, metadata !5, metadata !37, i32 65, i32 6, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!279 = metadata !{i32 66, i32 3, metadata !278, null}
!280 = metadata !{i32 67, i32 11, metadata !281, null}
!281 = metadata !{i32 786443, metadata !5, metadata !278, i32 67, i32 11, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/edge_detect.c]
!282 = metadata !{i32 68, i32 3, metadata !281, null}
!283 = metadata !{i32 69, i32 2, metadata !37, null}
!284 = metadata !{i32 71, i32 2, metadata !37, null}
!285 = metadata !{i32 786689, metadata !40, metadata !"M", metadata !6, i32 16777420, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 204]
!286 = metadata !{i32 204, i32 39, metadata !40, null}
!287 = metadata !{i32 786689, metadata !40, metadata !"RowIndex", metadata !6, i32 33554636, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [RowIndex] [line 204]
!288 = metadata !{i32 204, i32 46, metadata !40, null}
!289 = metadata !{i32 786689, metadata !40, metadata !"ColIndex", metadata !6, i32 50331852, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ColIndex] [line 204]
!290 = metadata !{i32 204, i32 60, metadata !40, null}
!291 = metadata !{i32 786688, metadata !40, metadata !"return_value", metadata !6, i32 206, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_value] [line 206]
!292 = metadata !{i32 206, i32 10, metadata !40, null}
!293 = metadata !{i32 207, i32 2, metadata !40, null}
!294 = metadata !{i32 208, i32 2, metadata !40, null}
