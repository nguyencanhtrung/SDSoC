; ModuleID = 'C:/labs/lab1_prebuilt/src/main.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

@.str = private unnamed_addr constant [19 x i8] c"Testing mmult ...\0A\00", align 1
@.str1 = private unnamed_addr constant [62 x i8] c"Average number of processor cycles for golden version: %llu \0A\00", align 1
@.str2 = private unnamed_addr constant [64 x i8] c"Average number of processor cycles for hardware version: %llu \0A\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"Testing with A_NROWS = A_NCOLS = B_NCOLS = B_NROWS = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"TEST %s\0A\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"PASSED\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str7 = private unnamed_addr constant [39 x i8] c"Mismatch: data index=%d d=%f, dout=%f\0A\00", align 1

; Function Attrs: nounwind
define void @_Z12mmult_goldenPfS_S_(float* %in_arr, float* %in_arr2, float* %out_arr) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %result = alloca float, align 4
  %k = alloca i32, align 4
  store float* %in_arr, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !63), !dbg !64
  store float* %in_arr2, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !65), !dbg !66
  store float* %out_arr, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !67), !dbg !68
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !69), !dbg !71
  store i32 0, i32* %row, align 4, !dbg !72
  br label %4, !dbg !72

; <label>:4                                       ; preds = %48, %0
  %5 = load i32* %row, align 4, !dbg !73
  %6 = icmp slt i32 %5, 32, !dbg !73
  br i1 %6, label %7, label %51, !dbg !73

; <label>:7                                       ; preds = %4
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !76), !dbg !79
  store i32 0, i32* %col, align 4, !dbg !80
  br label %8, !dbg !80

; <label>:8                                       ; preds = %44, %7
  %9 = load i32* %col, align 4, !dbg !81
  %10 = icmp slt i32 %9, 32, !dbg !81
  br i1 %10, label %11, label %47, !dbg !81

; <label>:11                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{float* %result}, metadata !84), !dbg !86
  store float 0.000000e+00, float* %result, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !88), !dbg !90
  store i32 0, i32* %k, align 4, !dbg !91
  br label %12, !dbg !91

; <label>:12                                      ; preds = %33, %11
  %13 = load i32* %k, align 4, !dbg !92
  %14 = icmp slt i32 %13, 32, !dbg !92
  br i1 %14, label %15, label %36, !dbg !92

; <label>:15                                      ; preds = %12
  %16 = load i32* %row, align 4, !dbg !95
  %17 = mul nsw i32 %16, 32, !dbg !95
  %18 = load i32* %k, align 4, !dbg !95
  %19 = add nsw i32 %17, %18, !dbg !95
  %20 = load float** %1, align 4, !dbg !95
  %21 = getelementptr inbounds float* %20, i32 %19, !dbg !95
  %22 = load float* %21, align 4, !dbg !95
  %23 = load i32* %k, align 4, !dbg !95
  %24 = mul nsw i32 %23, 32, !dbg !95
  %25 = load i32* %col, align 4, !dbg !95
  %26 = add nsw i32 %24, %25, !dbg !95
  %27 = load float** %2, align 4, !dbg !95
  %28 = getelementptr inbounds float* %27, i32 %26, !dbg !95
  %29 = load float* %28, align 4, !dbg !95
  %30 = fmul float %22, %29, !dbg !95
  %31 = load float* %result, align 4, !dbg !95
  %32 = fadd float %31, %30, !dbg !95
  store float %32, float* %result, align 4, !dbg !95
  br label %33, !dbg !97

; <label>:33                                      ; preds = %15
  %34 = load i32* %k, align 4, !dbg !98
  %35 = add nsw i32 %34, 1, !dbg !98
  store i32 %35, i32* %k, align 4, !dbg !98
  br label %12, !dbg !98

; <label>:36                                      ; preds = %12
  %37 = load float* %result, align 4, !dbg !99
  %38 = load i32* %row, align 4, !dbg !99
  %39 = mul nsw i32 %38, 32, !dbg !99
  %40 = load i32* %col, align 4, !dbg !99
  %41 = add nsw i32 %39, %40, !dbg !99
  %42 = load float** %3, align 4, !dbg !99
  %43 = getelementptr inbounds float* %42, i32 %41, !dbg !99
  store float %37, float* %43, align 4, !dbg !99
  br label %44, !dbg !100

; <label>:44                                      ; preds = %36
  %45 = load i32* %col, align 4, !dbg !101
  %46 = add nsw i32 %45, 1, !dbg !101
  store i32 %46, i32* %col, align 4, !dbg !101
  br label %8, !dbg !101

; <label>:47                                      ; preds = %8
  br label %48, !dbg !102

; <label>:48                                      ; preds = %47
  %49 = load i32* %row, align 4, !dbg !103
  %50 = add nsw i32 %49, 1, !dbg !103
  store i32 %50, i32* %row, align 4, !dbg !103
  br label %4, !dbg !103

; <label>:51                                      ; preds = %4
  ret void, !dbg !104
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define void @_Z11madd_goldenPfS_S_(float* %in_arr, float* %in_arr2, float* %out_arr) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store float* %in_arr, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !105), !dbg !106
  store float* %in_arr2, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !107), !dbg !108
  store float* %out_arr, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !109), !dbg !110
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !111), !dbg !113
  store i32 0, i32* %row, align 4, !dbg !114
  br label %4, !dbg !114

; <label>:4                                       ; preds = %37, %0
  %5 = load i32* %row, align 4, !dbg !115
  %6 = icmp slt i32 %5, 32, !dbg !115
  br i1 %6, label %7, label %40, !dbg !115

; <label>:7                                       ; preds = %4
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !118), !dbg !121
  store i32 0, i32* %col, align 4, !dbg !122
  br label %8, !dbg !122

; <label>:8                                       ; preds = %33, %7
  %9 = load i32* %col, align 4, !dbg !123
  %10 = icmp slt i32 %9, 32, !dbg !123
  br i1 %10, label %11, label %36, !dbg !123

; <label>:11                                      ; preds = %8
  %12 = load i32* %row, align 4, !dbg !126
  %13 = mul nsw i32 %12, 32, !dbg !126
  %14 = load i32* %col, align 4, !dbg !126
  %15 = add nsw i32 %13, %14, !dbg !126
  %16 = load float** %1, align 4, !dbg !126
  %17 = getelementptr inbounds float* %16, i32 %15, !dbg !126
  %18 = load float* %17, align 4, !dbg !126
  %19 = load i32* %row, align 4, !dbg !126
  %20 = mul nsw i32 %19, 32, !dbg !126
  %21 = load i32* %col, align 4, !dbg !126
  %22 = add nsw i32 %20, %21, !dbg !126
  %23 = load float** %2, align 4, !dbg !126
  %24 = getelementptr inbounds float* %23, i32 %22, !dbg !126
  %25 = load float* %24, align 4, !dbg !126
  %26 = fadd float %18, %25, !dbg !126
  %27 = load i32* %row, align 4, !dbg !126
  %28 = mul nsw i32 %27, 32, !dbg !126
  %29 = load i32* %col, align 4, !dbg !126
  %30 = add nsw i32 %28, %29, !dbg !126
  %31 = load float** %3, align 4, !dbg !126
  %32 = getelementptr inbounds float* %31, i32 %30, !dbg !126
  store float %26, float* %32, align 4, !dbg !126
  br label %33, !dbg !128

; <label>:33                                      ; preds = %11
  %34 = load i32* %col, align 4, !dbg !129
  %35 = add nsw i32 %34, 1, !dbg !129
  store i32 %35, i32* %col, align 4, !dbg !129
  br label %8, !dbg !129

; <label>:36                                      ; preds = %8
  br label %37, !dbg !130

; <label>:37                                      ; preds = %36
  %38 = load i32* %row, align 4, !dbg !131
  %39 = add nsw i32 %38, 1, !dbg !131
  store i32 %39, i32* %row, align 4, !dbg !131
  br label %4, !dbg !131

; <label>:40                                      ; preds = %4
  ret void, !dbg !132
}

define i32 @_Z13mmultadd_testPfS_S_S_S_(float* %tin1Buf, float* %tin2Buf, float* %tin3Buf, float* %toutBufSw, float* %toutBufHw) #2 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %4 = alloca float*, align 4
  %5 = alloca float*, align 4
  %i = alloca i32, align 4
  %tmpBuf1 = alloca float*, align 4
  %tmpBuf2 = alloca [1024 x float], align 4
  %clock_start = alloca i64, align 8
  %clock_end = alloca i64, align 8
  store float* %tin1Buf, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !133), !dbg !134
  store float* %tin2Buf, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !135), !dbg !136
  store float* %tin3Buf, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !137), !dbg !138
  store float* %toutBufSw, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !139), !dbg !140
  store float* %toutBufHw, float** %5, align 4
  call void @llvm.dbg.declare(metadata !{float** %5}, metadata !141), !dbg !142
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !143), !dbg !144
  call void @llvm.dbg.declare(metadata !{float** %tmpBuf1}, metadata !145), !dbg !146
  %6 = call i8* @sds_alloc(i32 4096), !dbg !147
  %7 = bitcast i8* %6 to float*, !dbg !147
  store float* %7, float** %tmpBuf1, align 4, !dbg !147
  call void @llvm.dbg.declare(metadata !{[1024 x float]* %tmpBuf2}, metadata !148), !dbg !152
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0)), !dbg !153
  %9 = load float** %1, align 4, !dbg !154
  %10 = load float** %2, align 4, !dbg !154
  %11 = load float** %3, align 4, !dbg !154
  %12 = load float** %4, align 4, !dbg !154
  %13 = load float** %5, align 4, !dbg !154
  call void @_ZL13mmultadd_initPfS_S_S_S_(float* %9, float* %10, float* %11, float* %12, float* %13), !dbg !154
  call void @llvm.dbg.declare(metadata !{i64* %clock_start}, metadata !155), !dbg !157
  call void @llvm.dbg.declare(metadata !{i64* %clock_end}, metadata !158), !dbg !157
  %14 = call i64 @sds_clock_counter(), !dbg !157
  store i64 %14, i64* %clock_start, align 8, !dbg !157
  store i32 0, i32* %i, align 4, !dbg !159
  br label %15, !dbg !159

; <label>:15                                      ; preds = %25, %0
  %16 = load i32* %i, align 4, !dbg !161
  %17 = icmp slt i32 %16, 1024, !dbg !161
  br i1 %17, label %18, label %28, !dbg !161

; <label>:18                                      ; preds = %15
  %19 = load float** %1, align 4, !dbg !164
  %20 = load float** %2, align 4, !dbg !164
  %21 = load float** %tmpBuf1, align 4, !dbg !164
  call void @_Z12mmult_goldenPfS_S_(float* %19, float* %20, float* %21), !dbg !164
  %22 = load float** %tmpBuf1, align 4, !dbg !166
  %23 = load float** %3, align 4, !dbg !166
  %24 = load float** %4, align 4, !dbg !166
  call void @_Z11madd_goldenPfS_S_(float* %22, float* %23, float* %24), !dbg !166
  br label %25, !dbg !167

; <label>:25                                      ; preds = %18
  %26 = load i32* %i, align 4, !dbg !168
  %27 = add nsw i32 %26, 1, !dbg !168
  store i32 %27, i32* %i, align 4, !dbg !168
  br label %15, !dbg !168

; <label>:28                                      ; preds = %15
  %29 = call i64 @sds_clock_counter(), !dbg !169
  store i64 %29, i64* %clock_end, align 8, !dbg !169
  %30 = load i64* %clock_end, align 8, !dbg !169
  %31 = load i64* %clock_start, align 8, !dbg !169
  %32 = sub i64 %30, %31, !dbg !169
  %33 = udiv i64 %32, 1024, !dbg !169
  %34 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([62 x i8]* @.str1, i32 0, i32 0), i64 %33), !dbg !169
  %35 = call i64 @sds_clock_counter(), !dbg !169
  store i64 %35, i64* %clock_start, align 8, !dbg !169
  store i32 0, i32* %i, align 4, !dbg !171
  br label %36, !dbg !171

; <label>:36                                      ; preds = %46, %28
  %37 = load i32* %i, align 4, !dbg !173
  %38 = icmp slt i32 %37, 1024, !dbg !173
  br i1 %38, label %39, label %49, !dbg !173

; <label>:39                                      ; preds = %36
  %40 = load float** %1, align 4, !dbg !176
  %41 = load float** %2, align 4, !dbg !176
  %42 = getelementptr inbounds [1024 x float]* %tmpBuf2, i32 0, i32 0, !dbg !176
  call void @_Z5mmultPfS_S_(float* %40, float* %41, float* %42), !dbg !176
  %43 = getelementptr inbounds [1024 x float]* %tmpBuf2, i32 0, i32 0, !dbg !178
  %44 = load float** %3, align 4, !dbg !178
  %45 = load float** %5, align 4, !dbg !178
  call void @_Z4maddPfS_S_(float* %43, float* %44, float* %45), !dbg !178
  br label %46, !dbg !179

; <label>:46                                      ; preds = %39
  %47 = load i32* %i, align 4, !dbg !180
  %48 = add nsw i32 %47, 1, !dbg !180
  store i32 %48, i32* %i, align 4, !dbg !180
  br label %36, !dbg !180

; <label>:49                                      ; preds = %36
  %50 = call i64 @sds_clock_counter(), !dbg !181
  store i64 %50, i64* %clock_end, align 8, !dbg !181
  %51 = load i64* %clock_end, align 8, !dbg !181
  %52 = load i64* %clock_start, align 8, !dbg !181
  %53 = sub i64 %51, %52, !dbg !181
  %54 = udiv i64 %53, 1024, !dbg !181
  %55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([64 x i8]* @.str2, i32 0, i32 0), i64 %54), !dbg !181
  %56 = load float** %tmpBuf1, align 4, !dbg !183
  %57 = bitcast float* %56 to i8*, !dbg !183
  call void @sds_free(i8* %57), !dbg !183
  %58 = load float** %4, align 4, !dbg !184
  %59 = load float** %5, align 4, !dbg !184
  %60 = call i32 @_ZL18mmult_result_checkPfS_(float* %58, float* %59), !dbg !184
  ret i32 %60, !dbg !184
}

declare i8* @sds_alloc(i32) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
define internal void @_ZL13mmultadd_initPfS_S_S_S_(float* %tin1Buf, float* %tin2Buf, float* %tin3Buf, float* %toutBufSw, float* %toutBufHw) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %4 = alloca float*, align 4
  %5 = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store float* %tin1Buf, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !185), !dbg !186
  store float* %tin2Buf, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !187), !dbg !188
  store float* %tin3Buf, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !189), !dbg !190
  store float* %toutBufSw, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !191), !dbg !192
  store float* %toutBufHw, float** %5, align 4
  call void @llvm.dbg.declare(metadata !{float** %5}, metadata !193), !dbg !194
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !195), !dbg !196
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !197), !dbg !198
  store i32 0, i32* %i, align 4, !dbg !199
  br label %6, !dbg !199

; <label>:6                                       ; preds = %30, %0
  %7 = load i32* %i, align 4, !dbg !201
  %8 = icmp slt i32 %7, 32, !dbg !201
  br i1 %8, label %9, label %33, !dbg !201

; <label>:9                                       ; preds = %6
  store i32 0, i32* %j, align 4, !dbg !204
  br label %10, !dbg !204

; <label>:10                                      ; preds = %26, %9
  %11 = load i32* %j, align 4, !dbg !207
  %12 = icmp slt i32 %11, 32, !dbg !207
  br i1 %12, label %13, label %29, !dbg !207

; <label>:13                                      ; preds = %10
  %14 = load i32* %i, align 4, !dbg !210
  %15 = mul nsw i32 %14, 32, !dbg !210
  %16 = add nsw i32 1, %15, !dbg !210
  %17 = load i32* %j, align 4, !dbg !210
  %18 = add nsw i32 %16, %17, !dbg !210
  %19 = sitofp i32 %18 to float, !dbg !210
  %20 = load i32* %i, align 4, !dbg !210
  %21 = mul nsw i32 %20, 32, !dbg !210
  %22 = load i32* %j, align 4, !dbg !210
  %23 = add nsw i32 %21, %22, !dbg !210
  %24 = load float** %1, align 4, !dbg !210
  %25 = getelementptr inbounds float* %24, i32 %23, !dbg !210
  store float %19, float* %25, align 4, !dbg !210
  br label %26, !dbg !212

; <label>:26                                      ; preds = %13
  %27 = load i32* %j, align 4, !dbg !213
  %28 = add nsw i32 %27, 1, !dbg !213
  store i32 %28, i32* %j, align 4, !dbg !213
  br label %10, !dbg !213

; <label>:29                                      ; preds = %10
  br label %30, !dbg !214

; <label>:30                                      ; preds = %29
  %31 = load i32* %i, align 4, !dbg !215
  %32 = add nsw i32 %31, 1, !dbg !215
  store i32 %32, i32* %i, align 4, !dbg !215
  br label %6, !dbg !215

; <label>:33                                      ; preds = %6
  store i32 0, i32* %i, align 4, !dbg !216
  br label %34, !dbg !216

; <label>:34                                      ; preds = %55, %33
  %35 = load i32* %i, align 4, !dbg !218
  %36 = icmp slt i32 %35, 32, !dbg !218
  br i1 %36, label %37, label %58, !dbg !218

; <label>:37                                      ; preds = %34
  store i32 0, i32* %j, align 4, !dbg !221
  br label %38, !dbg !221

; <label>:38                                      ; preds = %51, %37
  %39 = load i32* %j, align 4, !dbg !224
  %40 = icmp slt i32 %39, 32, !dbg !224
  br i1 %40, label %41, label %54, !dbg !224

; <label>:41                                      ; preds = %38
  %42 = call i32 @rand() #3, !dbg !227
  %43 = srem i32 %42, 1024, !dbg !227
  %44 = sitofp i32 %43 to float, !dbg !227
  %45 = load i32* %i, align 4, !dbg !227
  %46 = mul nsw i32 %45, 32, !dbg !227
  %47 = load i32* %j, align 4, !dbg !227
  %48 = add nsw i32 %46, %47, !dbg !227
  %49 = load float** %2, align 4, !dbg !227
  %50 = getelementptr inbounds float* %49, i32 %48, !dbg !227
  store float %44, float* %50, align 4, !dbg !227
  br label %51, !dbg !229

; <label>:51                                      ; preds = %41
  %52 = load i32* %j, align 4, !dbg !230
  %53 = add nsw i32 %52, 1, !dbg !230
  store i32 %53, i32* %j, align 4, !dbg !230
  br label %38, !dbg !230

; <label>:54                                      ; preds = %38
  br label %55, !dbg !231

; <label>:55                                      ; preds = %54
  %56 = load i32* %i, align 4, !dbg !232
  %57 = add nsw i32 %56, 1, !dbg !232
  store i32 %57, i32* %i, align 4, !dbg !232
  br label %34, !dbg !232

; <label>:58                                      ; preds = %34
  store i32 0, i32* %i, align 4, !dbg !233
  br label %59, !dbg !233

; <label>:59                                      ; preds = %82, %58
  %60 = load i32* %i, align 4, !dbg !235
  %61 = icmp slt i32 %60, 32, !dbg !235
  br i1 %61, label %62, label %85, !dbg !235

; <label>:62                                      ; preds = %59
  store i32 0, i32* %j, align 4, !dbg !238
  br label %63, !dbg !238

; <label>:63                                      ; preds = %78, %62
  %64 = load i32* %j, align 4, !dbg !241
  %65 = icmp slt i32 %64, 32, !dbg !241
  br i1 %65, label %66, label %81, !dbg !241

; <label>:66                                      ; preds = %63
  %67 = load i32* %i, align 4, !dbg !244
  %68 = mul nsw i32 %67, 32, !dbg !244
  %69 = load i32* %j, align 4, !dbg !244
  %70 = sub nsw i32 %68, %69, !dbg !244
  %71 = sitofp i32 %70 to float, !dbg !244
  %72 = load i32* %i, align 4, !dbg !244
  %73 = mul nsw i32 %72, 32, !dbg !244
  %74 = load i32* %j, align 4, !dbg !244
  %75 = add nsw i32 %73, %74, !dbg !244
  %76 = load float** %3, align 4, !dbg !244
  %77 = getelementptr inbounds float* %76, i32 %75, !dbg !244
  store float %71, float* %77, align 4, !dbg !244
  br label %78, !dbg !246

; <label>:78                                      ; preds = %66
  %79 = load i32* %j, align 4, !dbg !247
  %80 = add nsw i32 %79, 1, !dbg !247
  store i32 %80, i32* %j, align 4, !dbg !247
  br label %63, !dbg !247

; <label>:81                                      ; preds = %63
  br label %82, !dbg !248

; <label>:82                                      ; preds = %81
  %83 = load i32* %i, align 4, !dbg !249
  %84 = add nsw i32 %83, 1, !dbg !249
  store i32 %84, i32* %i, align 4, !dbg !249
  br label %59, !dbg !249

; <label>:85                                      ; preds = %59
  store i32 0, i32* %i, align 4, !dbg !250
  br label %86, !dbg !250

; <label>:86                                      ; preds = %110, %85
  %87 = load i32* %i, align 4, !dbg !252
  %88 = icmp slt i32 %87, 32, !dbg !252
  br i1 %88, label %89, label %113, !dbg !252

; <label>:89                                      ; preds = %86
  store i32 0, i32* %j, align 4, !dbg !255
  br label %90, !dbg !255

; <label>:90                                      ; preds = %106, %89
  %91 = load i32* %j, align 4, !dbg !258
  %92 = icmp slt i32 %91, 32, !dbg !258
  br i1 %92, label %93, label %109, !dbg !258

; <label>:93                                      ; preds = %90
  %94 = load i32* %i, align 4, !dbg !261
  %95 = mul nsw i32 %94, 32, !dbg !261
  %96 = load i32* %j, align 4, !dbg !261
  %97 = add nsw i32 %95, %96, !dbg !261
  %98 = load float** %4, align 4, !dbg !261
  %99 = getelementptr inbounds float* %98, i32 %97, !dbg !261
  store float 0.000000e+00, float* %99, align 4, !dbg !261
  %100 = load i32* %i, align 4, !dbg !263
  %101 = mul nsw i32 %100, 32, !dbg !263
  %102 = load i32* %j, align 4, !dbg !263
  %103 = add nsw i32 %101, %102, !dbg !263
  %104 = load float** %5, align 4, !dbg !263
  %105 = getelementptr inbounds float* %104, i32 %103, !dbg !263
  store float 0.000000e+00, float* %105, align 4, !dbg !263
  br label %106, !dbg !264

; <label>:106                                     ; preds = %93
  %107 = load i32* %j, align 4, !dbg !265
  %108 = add nsw i32 %107, 1, !dbg !265
  store i32 %108, i32* %j, align 4, !dbg !265
  br label %90, !dbg !265

; <label>:109                                     ; preds = %90
  br label %110, !dbg !266

; <label>:110                                     ; preds = %109
  %111 = load i32* %i, align 4, !dbg !267
  %112 = add nsw i32 %111, 1, !dbg !267
  store i32 %112, i32* %i, align 4, !dbg !267
  br label %86, !dbg !267

; <label>:113                                     ; preds = %86
  ret void, !dbg !268
}

declare i64 @sds_clock_counter() #2

declare void @_Z5mmultPfS_S_(float*, float*, float*) #2

declare void @_Z4maddPfS_S_(float*, float*, float*) #2

declare void @sds_free(i8*) #2

define internal i32 @_ZL18mmult_result_checkPfS_(float* %toutBufSw, float* %toutBufHw) #2 {
  %1 = alloca i32, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %i = alloca i32, align 4
  store float* %toutBufSw, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !269), !dbg !270
  store float* %toutBufHw, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !271), !dbg !272
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !273), !dbg !274
  store i32 0, i32* %i, align 4, !dbg !275
  br label %4, !dbg !275

; <label>:4                                       ; preds = %31, %0
  %5 = load i32* %i, align 4, !dbg !277
  %6 = icmp slt i32 %5, 1024, !dbg !277
  br i1 %6, label %7, label %34, !dbg !277

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4, !dbg !280
  %9 = load float** %2, align 4, !dbg !280
  %10 = getelementptr inbounds float* %9, i32 %8, !dbg !280
  %11 = load float* %10, align 4, !dbg !280
  %12 = load i32* %i, align 4, !dbg !280
  %13 = load float** %3, align 4, !dbg !280
  %14 = getelementptr inbounds float* %13, i32 %12, !dbg !280
  %15 = load float* %14, align 4, !dbg !280
  %16 = fcmp une float %11, %15, !dbg !280
  br i1 %16, label %17, label %30, !dbg !280

; <label>:17                                      ; preds = %7
  %18 = load i32* %i, align 4, !dbg !283
  %19 = load i32* %i, align 4, !dbg !283
  %20 = load float** %2, align 4, !dbg !283
  %21 = getelementptr inbounds float* %20, i32 %19, !dbg !283
  %22 = load float* %21, align 4, !dbg !283
  %23 = fpext float %22 to double, !dbg !283
  %24 = load i32* %i, align 4, !dbg !283
  %25 = load float** %3, align 4, !dbg !283
  %26 = getelementptr inbounds float* %25, i32 %24, !dbg !283
  %27 = load float* %26, align 4, !dbg !283
  %28 = fpext float %27 to double, !dbg !283
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str7, i32 0, i32 0), i32 %18, double %23, double %28), !dbg !283
  store i32 0, i32* %1, !dbg !285
  br label %35, !dbg !285

; <label>:30                                      ; preds = %7
  br label %31, !dbg !286

; <label>:31                                      ; preds = %30
  %32 = load i32* %i, align 4, !dbg !287
  %33 = add nsw i32 %32, 1, !dbg !287
  store i32 %33, i32* %i, align 4, !dbg !287
  br label %4, !dbg !287

; <label>:34                                      ; preds = %4
  store i32 1, i32* %1, !dbg !288
  br label %35, !dbg !288

; <label>:35                                      ; preds = %34, %17
  %36 = load i32* %1, !dbg !289
  ret i32 %36, !dbg !289
}

define i32 @main(i32 %argc, i8** %argv) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %test_passed = alloca i32, align 4
  %tin1Buf = alloca float*, align 4
  %tin2Buf = alloca float*, align 4
  %tin3Buf = alloca float*, align 4
  %toutBufSw = alloca float*, align 4
  %toutBufHw = alloca float*, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !290), !dbg !291
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !292), !dbg !293
  call void @llvm.dbg.declare(metadata !{i32* %test_passed}, metadata !294), !dbg !295
  store i32 0, i32* %test_passed, align 4, !dbg !296
  call void @llvm.dbg.declare(metadata !{float** %tin1Buf}, metadata !297), !dbg !298
  call void @llvm.dbg.declare(metadata !{float** %tin2Buf}, metadata !299), !dbg !300
  call void @llvm.dbg.declare(metadata !{float** %tin3Buf}, metadata !301), !dbg !302
  call void @llvm.dbg.declare(metadata !{float** %toutBufSw}, metadata !303), !dbg !304
  call void @llvm.dbg.declare(metadata !{float** %toutBufHw}, metadata !305), !dbg !306
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str3, i32 0, i32 0), i32 32), !dbg !307
  %5 = call i8* @sds_alloc(i32 4096), !dbg !308
  %6 = bitcast i8* %5 to float*, !dbg !308
  store float* %6, float** %tin1Buf, align 4, !dbg !308
  %7 = call i8* @sds_alloc(i32 4096), !dbg !309
  %8 = bitcast i8* %7 to float*, !dbg !309
  store float* %8, float** %tin2Buf, align 4, !dbg !309
  %9 = call i8* @sds_alloc(i32 4096), !dbg !310
  %10 = bitcast i8* %9 to float*, !dbg !310
  store float* %10, float** %tin3Buf, align 4, !dbg !310
  %11 = call i8* @sds_alloc(i32 4096), !dbg !311
  %12 = bitcast i8* %11 to float*, !dbg !311
  store float* %12, float** %toutBufHw, align 4, !dbg !311
  %13 = call i8* @sds_alloc(i32 4096), !dbg !312
  %14 = bitcast i8* %13 to float*, !dbg !312
  store float* %14, float** %toutBufSw, align 4, !dbg !312
  %15 = load float** %tin1Buf, align 4, !dbg !313
  %16 = icmp ne float* %15, null, !dbg !313
  br i1 %16, label %17, label %29, !dbg !313

; <label>:17                                      ; preds = %0
  %18 = load float** %tin2Buf, align 4, !dbg !315
  %19 = icmp ne float* %18, null, !dbg !315
  br i1 %19, label %20, label %29, !dbg !315

; <label>:20                                      ; preds = %17
  %21 = load float** %tin3Buf, align 4, !dbg !317
  %22 = icmp ne float* %21, null, !dbg !317
  br i1 %22, label %23, label %29, !dbg !317

; <label>:23                                      ; preds = %20
  %24 = load float** %toutBufHw, align 4, !dbg !319
  %25 = icmp ne float* %24, null, !dbg !319
  br i1 %25, label %26, label %29, !dbg !319

; <label>:26                                      ; preds = %23
  %27 = load float** %toutBufSw, align 4, !dbg !321
  %28 = icmp ne float* %27, null, !dbg !321
  br i1 %28, label %60, label %29, !dbg !321

; <label>:29                                      ; preds = %26, %23, %20, %17, %0
  %30 = load float** %tin1Buf, align 4, !dbg !323
  %31 = icmp ne float* %30, null, !dbg !323
  br i1 %31, label %32, label %35, !dbg !323

; <label>:32                                      ; preds = %29
  %33 = load float** %tin1Buf, align 4, !dbg !326
  %34 = bitcast float* %33 to i8*, !dbg !326
  call void @sds_free(i8* %34), !dbg !326
  br label %35, !dbg !326

; <label>:35                                      ; preds = %32, %29
  %36 = load float** %tin2Buf, align 4, !dbg !328
  %37 = icmp ne float* %36, null, !dbg !328
  br i1 %37, label %38, label %41, !dbg !328

; <label>:38                                      ; preds = %35
  %39 = load float** %tin2Buf, align 4, !dbg !330
  %40 = bitcast float* %39 to i8*, !dbg !330
  call void @sds_free(i8* %40), !dbg !330
  br label %41, !dbg !330

; <label>:41                                      ; preds = %38, %35
  %42 = load float** %tin3Buf, align 4, !dbg !332
  %43 = icmp ne float* %42, null, !dbg !332
  br i1 %43, label %44, label %47, !dbg !332

; <label>:44                                      ; preds = %41
  %45 = load float** %tin3Buf, align 4, !dbg !334
  %46 = bitcast float* %45 to i8*, !dbg !334
  call void @sds_free(i8* %46), !dbg !334
  br label %47, !dbg !334

; <label>:47                                      ; preds = %44, %41
  %48 = load float** %toutBufHw, align 4, !dbg !336
  %49 = icmp ne float* %48, null, !dbg !336
  br i1 %49, label %50, label %53, !dbg !336

; <label>:50                                      ; preds = %47
  %51 = load float** %toutBufHw, align 4, !dbg !338
  %52 = bitcast float* %51 to i8*, !dbg !338
  call void @sds_free(i8* %52), !dbg !338
  br label %53, !dbg !338

; <label>:53                                      ; preds = %50, %47
  %54 = load float** %toutBufSw, align 4, !dbg !340
  %55 = icmp ne float* %54, null, !dbg !340
  br i1 %55, label %56, label %59, !dbg !340

; <label>:56                                      ; preds = %53
  %57 = load float** %toutBufSw, align 4, !dbg !342
  %58 = bitcast float* %57 to i8*, !dbg !342
  call void @sds_free(i8* %58), !dbg !342
  br label %59, !dbg !342

; <label>:59                                      ; preds = %56, %53
  store i32 2, i32* %1, !dbg !344
  br label %85, !dbg !344

; <label>:60                                      ; preds = %26
  %61 = load float** %tin1Buf, align 4, !dbg !345
  %62 = load float** %tin2Buf, align 4, !dbg !345
  %63 = load float** %tin3Buf, align 4, !dbg !345
  %64 = load float** %toutBufSw, align 4, !dbg !345
  %65 = load float** %toutBufHw, align 4, !dbg !345
  %66 = call i32 @_Z13mmultadd_testPfS_S_S_S_(float* %61, float* %62, float* %63, float* %64, float* %65), !dbg !345
  store i32 %66, i32* %test_passed, align 4, !dbg !345
  %67 = load float** %tin1Buf, align 4, !dbg !346
  %68 = bitcast float* %67 to i8*, !dbg !346
  call void @sds_free(i8* %68), !dbg !346
  %69 = load float** %tin2Buf, align 4, !dbg !347
  %70 = bitcast float* %69 to i8*, !dbg !347
  call void @sds_free(i8* %70), !dbg !347
  %71 = load float** %tin3Buf, align 4, !dbg !348
  %72 = bitcast float* %71 to i8*, !dbg !348
  call void @sds_free(i8* %72), !dbg !348
  %73 = load float** %toutBufHw, align 4, !dbg !349
  %74 = bitcast float* %73 to i8*, !dbg !349
  call void @sds_free(i8* %74), !dbg !349
  %75 = load float** %toutBufSw, align 4, !dbg !350
  %76 = bitcast float* %75 to i8*, !dbg !350
  call void @sds_free(i8* %76), !dbg !350
  %77 = load i32* %test_passed, align 4, !dbg !351
  %78 = icmp ne i32 %77, 0, !dbg !351
  br i1 %78, label %79, label %80, !dbg !351

; <label>:79                                      ; preds = %60
  br label %81, !dbg !352

; <label>:80                                      ; preds = %60
  br label %81, !dbg !354

; <label>:81                                      ; preds = %80, %79
  %82 = phi [7 x i8]* [ @.str5, %79 ], [ @.str6, %80 ], !dbg !351
  %83 = getelementptr inbounds [7 x i8]* %82, i32 0, i32 0, !dbg !356
  %84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str4, i32 0, i32 0), i8* %83), !dbg !356
  store i32 0, i32* %1, !dbg !359
  br label %85, !dbg !359

; <label>:85                                      ; preds = %81, %59
  %86 = load i32* %1, !dbg !360
  ret i32 %86, !dbg !360
}

; Function Attrs: nounwind
declare i32 @rand() #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!28, !29, !30, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !42, !44, !45, !46, !47, !48, !49, !50, !51}
!xidane.function_declaration_filename = !{!28, !52, !30, !52, !31, !52, !33, !53, !35, !54, !37, !52, !39, !53, !41, !55, !43, !56, !44, !53, !46, !52, !48, !52, !50, !57}
!xidane.ExternC = !{!33, !35, !39, !44, !50}
!llvm.module.flags = !{!58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\labs\lab1_prebuilt\SDRelease/../src\main.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"../src\5Cmain.cpp", metadata !"C:\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !11, metadata !12, metadata !16, metadata !22, metadata !25}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"mmult_golden", metadata !"mmult_golden", metadata !"_Z12mmult_goldenPfS_S_", i32 42, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @_Z12mmult_goldenPfS_S_, null, null, metadata !2, i32 43} ; [ DW_TAG_subprogram ] [line 42] [def] [scope 43] [mmult_golden]
!5 = metadata !{metadata !"C:/labs/lab1_prebuilt/src/main.cpp", metadata !"C:\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!10 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!11 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"madd_golden", metadata !"madd_golden", metadata !"_Z11madd_goldenPfS_S_", i32 55, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @_Z11madd_goldenPfS_S_, null, null, metadata !2, i32 56} ; [ DW_TAG_subprogram ] [line 55] [def] [scope 56] [madd_golden]
!12 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"mmultadd_test", metadata !"mmultadd_test", metadata !"_Z13mmultadd_testPfS_S_S_S_", i32 77, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (float*, float*, float*, float*, float*)* @_Z13mmultadd_testPfS_S_S_S_, null, null, metadata !2, i32 79} ; [ DW_TAG_subprogram ] [line 77] [def] [scope 79] [mmultadd_test]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !15, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9}
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"main", metadata !"main", metadata !"", i32 112, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 112} ; [ DW_TAG_subprogram ] [line 112] [def] [main]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !15, metadata !15, metadata !19}
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!21 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!22 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"mmult_result_check", metadata !"mmult_result_check", metadata !"_ZL18mmult_result_checkPfS_", i32 64, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (float*, float*)* @_ZL18mmult_result_checkPfS_, null, null, metadata !2, i32 65} ; [ DW_TAG_subprogram ] [line 64] [local] [def] [scope 65] [mmult_result_check]
!23 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{metadata !15, metadata !9, metadata !9}
!25 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"mmultadd_init", metadata !"mmultadd_init", metadata !"_ZL13mmultadd_initPfS_S_S_S_", i32 14, metadata !26, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*, float*, float*)* @_ZL13mmultadd_initPfS_S_S_S_, null, null, metadata !2, i32 16} ; [ DW_TAG_subprogram ] [line 14] [local] [def] [scope 16] [mmultadd_init]
!26 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!27 = metadata !{null, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9}
!28 = metadata !{void (float*, float*, float*)* @_Z12mmult_goldenPfS_S_}
!29 = metadata !{metadata !"void.float *.1.float *.1.float *.1"}
!30 = metadata !{void (float*, float*, float*)* @_Z11madd_goldenPfS_S_}
!31 = metadata !{i32 (float*, float*, float*, float*, float*)* @_Z13mmultadd_testPfS_S_S_S_}
!32 = metadata !{metadata !"int.float *.1.float *.1.float *.1.float *.1.float *.1"}
!33 = metadata !{i8* (i32)* @sds_alloc}
!34 = metadata !{metadata !"void .size_t.0"}
!35 = metadata !{i32 (i8*, ...)* @printf}
!36 = metadata !{metadata !"int.const char *restrict.1"}
!37 = metadata !{void (float*, float*, float*, float*, float*)* @_ZL13mmultadd_initPfS_S_S_S_}
!38 = metadata !{metadata !"void.float *.1.float *.1.float *.1.float *.1.float *.1"}
!39 = metadata !{i64 ()* @sds_clock_counter}
!40 = metadata !{metadata !"unsigned long long."}
!41 = metadata !{void (float*, float*, float*)* @_Z5mmultPfS_S_}
!42 = metadata !{metadata !"void.float [1024].1.float [1024].1.float [1024].1"}
!43 = metadata !{void (float*, float*, float*)* @_Z4maddPfS_S_}
!44 = metadata !{void (i8*)* @sds_free}
!45 = metadata !{metadata !"void.void *.1"}
!46 = metadata !{i32 (float*, float*)* @_ZL18mmult_result_checkPfS_}
!47 = metadata !{metadata !"int.float *.1.float *.1"}
!48 = metadata !{i32 (i32, i8**)* @main}
!49 = metadata !{metadata !"int.int.0.char *[].1"}
!50 = metadata !{i32 ()* @rand}
!51 = metadata !{metadata !"int."}
!52 = metadata !{metadata !"C:/labs/lab1_prebuilt/src/main.cpp"}
!53 = metadata !{metadata !"C:/Xilinx/SDSoC/2014.4/arm-xilinx-linux-gnueabi/include\5Csds_lib.h"}
!54 = metadata !{metadata !"C:/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/libc/usr/include\5Cstdio.h"}
!55 = metadata !{metadata !"../src/mmult.h"}
!56 = metadata !{metadata !"../src/madd.h"}
!57 = metadata !{metadata !"C:/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/libc/usr/include\5Cstdlib.h"}
!58 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!59 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!60 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!61 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!62 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!63 = metadata !{i32 786689, metadata !4, metadata !"in_arr", metadata !6, i32 16777258, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr] [line 42]
!64 = metadata !{i32 42, i32 26, metadata !4, null}
!65 = metadata !{i32 786689, metadata !4, metadata !"in_arr2", metadata !6, i32 33554474, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr2] [line 42]
!66 = metadata !{i32 42, i32 42, metadata !4, null}
!67 = metadata !{i32 786689, metadata !4, metadata !"out_arr", metadata !6, i32 50331690, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_arr] [line 42]
!68 = metadata !{i32 42, i32 58, metadata !4, null}
!69 = metadata !{i32 786688, metadata !70, metadata !"row", metadata !6, i32 44, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 44]
!70 = metadata !{i32 786443, metadata !5, metadata !4, i32 44, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!71 = metadata !{i32 44, i32 12, metadata !70, null}
!72 = metadata !{i32 44, i32 8, metadata !70, null}
!73 = metadata !{i32 44, i32 8, metadata !74, null}
!74 = metadata !{i32 786443, metadata !5, metadata !75, i32 44, i32 8, i32 2, i32 48} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!75 = metadata !{i32 786443, metadata !5, metadata !70, i32 44, i32 8, i32 1, i32 43} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!76 = metadata !{i32 786688, metadata !77, metadata !"col", metadata !6, i32 45, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 45]
!77 = metadata !{i32 786443, metadata !5, metadata !78, i32 45, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!78 = metadata !{i32 786443, metadata !5, metadata !70, i32 44, i32 43, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!79 = metadata !{i32 45, i32 14, metadata !77, null}
!80 = metadata !{i32 45, i32 10, metadata !77, null}
!81 = metadata !{i32 45, i32 10, metadata !82, null}
!82 = metadata !{i32 786443, metadata !5, metadata !83, i32 45, i32 10, i32 2, i32 47} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!83 = metadata !{i32 786443, metadata !5, metadata !77, i32 45, i32 10, i32 1, i32 44} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!84 = metadata !{i32 786688, metadata !85, metadata !"result", metadata !6, i32 46, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 46]
!85 = metadata !{i32 786443, metadata !5, metadata !77, i32 45, i32 45, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!86 = metadata !{i32 46, i32 13, metadata !85, null}
!87 = metadata !{i32 46, i32 7, metadata !85, null}
!88 = metadata !{i32 786688, metadata !89, metadata !"k", metadata !6, i32 47, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 47]
!89 = metadata !{i32 786443, metadata !5, metadata !85, i32 47, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!90 = metadata !{i32 47, i32 16, metadata !89, null}
!91 = metadata !{i32 47, i32 12, metadata !89, null}
!92 = metadata !{i32 47, i32 12, metadata !93, null}
!93 = metadata !{i32 786443, metadata !5, metadata !94, i32 47, i32 12, i32 2, i32 46} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!94 = metadata !{i32 786443, metadata !5, metadata !89, i32 47, i32 12, i32 1, i32 45} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!95 = metadata !{i32 48, i32 9, metadata !96, null}
!96 = metadata !{i32 786443, metadata !5, metadata !89, i32 47, i32 41, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!97 = metadata !{i32 49, i32 7, metadata !96, null}
!98 = metadata !{i32 47, i32 36, metadata !89, null}
!99 = metadata !{i32 50, i32 7, metadata !85, null}
!100 = metadata !{i32 51, i32 5, metadata !85, null}
!101 = metadata !{i32 45, i32 38, metadata !77, null}
!102 = metadata !{i32 52, i32 3, metadata !78, null}
!103 = metadata !{i32 44, i32 36, metadata !70, null}
!104 = metadata !{i32 53, i32 1, metadata !4, null}
!105 = metadata !{i32 786689, metadata !11, metadata !"in_arr", metadata !6, i32 16777271, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr] [line 55]
!106 = metadata !{i32 55, i32 25, metadata !11, null}
!107 = metadata !{i32 786689, metadata !11, metadata !"in_arr2", metadata !6, i32 33554487, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr2] [line 55]
!108 = metadata !{i32 55, i32 40, metadata !11, null}
!109 = metadata !{i32 786689, metadata !11, metadata !"out_arr", metadata !6, i32 50331703, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_arr] [line 55]
!110 = metadata !{i32 55, i32 56, metadata !11, null}
!111 = metadata !{i32 786688, metadata !112, metadata !"row", metadata !6, i32 57, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 57]
!112 = metadata !{i32 786443, metadata !5, metadata !11, i32 57, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!113 = metadata !{i32 57, i32 12, metadata !112, null}
!114 = metadata !{i32 57, i32 8, metadata !112, null}
!115 = metadata !{i32 57, i32 8, metadata !116, null}
!116 = metadata !{i32 786443, metadata !5, metadata !117, i32 57, i32 8, i32 2, i32 52} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!117 = metadata !{i32 786443, metadata !5, metadata !112, i32 57, i32 8, i32 1, i32 49} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!118 = metadata !{i32 786688, metadata !119, metadata !"col", metadata !6, i32 58, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 58]
!119 = metadata !{i32 786443, metadata !5, metadata !120, i32 58, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!120 = metadata !{i32 786443, metadata !5, metadata !112, i32 57, i32 41, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!121 = metadata !{i32 58, i32 14, metadata !119, null} ; [ DW_TAG_imported_module ]
!122 = metadata !{i32 58, i32 10, metadata !119, null} ; [ DW_TAG_imported_module ]
!123 = metadata !{i32 58, i32 10, metadata !124, null} ; [ DW_TAG_imported_module ]
!124 = metadata !{i32 786443, metadata !5, metadata !125, i32 58, i32 10, i32 2, i32 51} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!125 = metadata !{i32 786443, metadata !5, metadata !119, i32 58, i32 10, i32 1, i32 50} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!126 = metadata !{i32 59, i32 7, metadata !127, null}
!127 = metadata !{i32 786443, metadata !5, metadata !119, i32 58, i32 43, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!128 = metadata !{i32 60, i32 5, metadata !127, null}
!129 = metadata !{i32 58, i32 36, metadata !119, null} ; [ DW_TAG_imported_module ]
!130 = metadata !{i32 61, i32 3, metadata !120, null}
!131 = metadata !{i32 57, i32 34, metadata !112, null}
!132 = metadata !{i32 62, i32 1, metadata !11, null}
!133 = metadata !{i32 786689, metadata !12, metadata !"tin1Buf", metadata !6, i32 16777293, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin1Buf] [line 77]
!134 = metadata !{i32 77, i32 26, metadata !12, null}
!135 = metadata !{i32 786689, metadata !12, metadata !"tin2Buf", metadata !6, i32 33554509, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin2Buf] [line 77]
!136 = metadata !{i32 77, i32 43, metadata !12, null}
!137 = metadata !{i32 786689, metadata !12, metadata !"tin3Buf", metadata !6, i32 50331725, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin3Buf] [line 77]
!138 = metadata !{i32 77, i32 59, metadata !12, null}
!139 = metadata !{i32 786689, metadata !12, metadata !"toutBufSw", metadata !6, i32 67108942, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufSw] [line 78]
!140 = metadata !{i32 78, i32 26, metadata !12, null}
!141 = metadata !{i32 786689, metadata !12, metadata !"toutBufHw", metadata !6, i32 83886158, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufHw] [line 78]
!142 = metadata !{i32 78, i32 44, metadata !12, null}
!143 = metadata !{i32 786688, metadata !12, metadata !"i", metadata !6, i32 80, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 80]
!144 = metadata !{i32 80, i32 7, metadata !12, null}
!145 = metadata !{i32 786688, metadata !12, metadata !"tmpBuf1", metadata !6, i32 82, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmpBuf1] [line 82]
!146 = metadata !{i32 82, i32 10, metadata !12, null}
!147 = metadata !{i32 82, i32 29, metadata !12, null}
!148 = metadata !{i32 786688, metadata !12, metadata !"tmpBuf2", metadata !6, i32 83, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmpBuf2] [line 83]
!149 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !10, metadata !150, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32768, align 32, offset 0] [from float]
!150 = metadata !{metadata !151}
!151 = metadata !{i32 786465, i64 0, i64 1024}    ; [ DW_TAG_subrange_type ] [0, 1023]
!152 = metadata !{i32 83, i32 9, metadata !12, null}
!153 = metadata !{i32 85, i32 3, metadata !12, null}
!154 = metadata !{i32 87, i32 3, metadata !12, null}
!155 = metadata !{i32 786688, metadata !12, metadata !"clock_start", metadata !6, i32 89, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_start] [line 89]
!156 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!157 = metadata !{i32 89, i32 3, metadata !12, null}
!158 = metadata !{i32 786688, metadata !12, metadata !"clock_end", metadata !6, i32 89, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_end] [line 89]
!159 = metadata !{i32 91, i32 8, metadata !160, null}
!160 = metadata !{i32 786443, metadata !5, metadata !12, i32 91, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!161 = metadata !{i32 91, i32 8, metadata !162, null}
!162 = metadata !{i32 786443, metadata !5, metadata !163, i32 91, i32 8, i32 2, i32 54} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!163 = metadata !{i32 786443, metadata !5, metadata !160, i32 91, i32 8, i32 1, i32 53} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!164 = metadata !{i32 92, i32 5, metadata !165, null}
!165 = metadata !{i32 786443, metadata !5, metadata !160, i32 91, i32 35, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!166 = metadata !{i32 93, i32 5, metadata !165, null}
!167 = metadata !{i32 94, i32 3, metadata !165, null}
!168 = metadata !{i32 91, i32 30, metadata !160, null}
!169 = metadata !{i32 96, i32 3, metadata !170, null}
!170 = metadata !{i32 786443, metadata !5, metadata !12, i32 96, i32 3, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!171 = metadata !{i32 98, i32 8, metadata !172, null}
!172 = metadata !{i32 786443, metadata !5, metadata !12, i32 98, i32 3, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!173 = metadata !{i32 98, i32 8, metadata !174, null}
!174 = metadata !{i32 786443, metadata !5, metadata !175, i32 98, i32 8, i32 2, i32 56} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!175 = metadata !{i32 786443, metadata !5, metadata !172, i32 98, i32 8, i32 1, i32 55} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!176 = metadata !{i32 99, i32 5, metadata !177, null}
!177 = metadata !{i32 786443, metadata !5, metadata !172, i32 98, i32 35, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!178 = metadata !{i32 101, i32 5, metadata !177, null}
!179 = metadata !{i32 102, i32 3, metadata !177, null}
!180 = metadata !{i32 98, i32 30, metadata !172, null}
!181 = metadata !{i32 104, i32 3, metadata !182, null}
!182 = metadata !{i32 786443, metadata !5, metadata !12, i32 104, i32 3, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!183 = metadata !{i32 106, i32 3, metadata !12, null}
!184 = metadata !{i32 108, i32 10, metadata !12, null}
!185 = metadata !{i32 786689, metadata !25, metadata !"tin1Buf", metadata !6, i32 16777230, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin1Buf] [line 14]
!186 = metadata !{i32 14, i32 34, metadata !25, null}
!187 = metadata !{i32 786689, metadata !25, metadata !"tin2Buf", metadata !6, i32 33554446, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin2Buf] [line 14]
!188 = metadata !{i32 14, i32 50, metadata !25, null}
!189 = metadata !{i32 786689, metadata !25, metadata !"tin3Buf", metadata !6, i32 50331662, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin3Buf] [line 14]
!190 = metadata !{i32 14, i32 66, metadata !25, null}
!191 = metadata !{i32 786689, metadata !25, metadata !"toutBufSw", metadata !6, i32 67108879, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufSw] [line 15]
!192 = metadata !{i32 15, i32 34, metadata !25, null}
!193 = metadata !{i32 786689, metadata !25, metadata !"toutBufHw", metadata !6, i32 83886095, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufHw] [line 15]
!194 = metadata !{i32 15, i32 52, metadata !25, null}
!195 = metadata !{i32 786688, metadata !25, metadata !"i", metadata !6, i32 17, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 17]
!196 = metadata !{i32 17, i32 7, metadata !25, null}
!197 = metadata !{i32 786688, metadata !25, metadata !"j", metadata !6, i32 17, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 17]
!198 = metadata !{i32 17, i32 10, metadata !25, null}
!199 = metadata !{i32 19, i32 8, metadata !200, null}
!200 = metadata !{i32 786443, metadata !5, metadata !25, i32 19, i32 3, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!201 = metadata !{i32 19, i32 8, metadata !202, null}
!202 = metadata !{i32 786443, metadata !5, metadata !203, i32 19, i32 8, i32 2, i32 60} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!203 = metadata !{i32 786443, metadata !5, metadata !200, i32 19, i32 8, i32 1, i32 57} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!204 = metadata !{i32 20, i32 10, metadata !205, null}
!205 = metadata !{i32 786443, metadata !5, metadata !206, i32 20, i32 5, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!206 = metadata !{i32 786443, metadata !5, metadata !200, i32 19, i32 33, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!207 = metadata !{i32 20, i32 10, metadata !208, null}
!208 = metadata !{i32 786443, metadata !5, metadata !209, i32 20, i32 10, i32 2, i32 59} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!209 = metadata !{i32 786443, metadata !5, metadata !205, i32 20, i32 10, i32 1, i32 58} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!210 = metadata !{i32 21, i32 7, metadata !211, null}
!211 = metadata !{i32 786443, metadata !5, metadata !205, i32 20, i32 35, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!212 = metadata !{i32 22, i32 5, metadata !211, null}
!213 = metadata !{i32 20, i32 30, metadata !205, null}
!214 = metadata !{i32 23, i32 3, metadata !206, null}
!215 = metadata !{i32 19, i32 28, metadata !200, null}
!216 = metadata !{i32 24, i32 8, metadata !217, null}
!217 = metadata !{i32 786443, metadata !5, metadata !25, i32 24, i32 3, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!218 = metadata !{i32 24, i32 8, metadata !219, null}
!219 = metadata !{i32 786443, metadata !5, metadata !220, i32 24, i32 8, i32 2, i32 64} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!220 = metadata !{i32 786443, metadata !5, metadata !217, i32 24, i32 8, i32 1, i32 61} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!221 = metadata !{i32 25, i32 10, metadata !222, null}
!222 = metadata !{i32 786443, metadata !5, metadata !223, i32 25, i32 5, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!223 = metadata !{i32 786443, metadata !5, metadata !217, i32 24, i32 33, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!224 = metadata !{i32 25, i32 10, metadata !225, null}
!225 = metadata !{i32 786443, metadata !5, metadata !226, i32 25, i32 10, i32 2, i32 63} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!226 = metadata !{i32 786443, metadata !5, metadata !222, i32 25, i32 10, i32 1, i32 62} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!227 = metadata !{i32 26, i32 34, metadata !228, null}
!228 = metadata !{i32 786443, metadata !5, metadata !222, i32 25, i32 35, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!229 = metadata !{i32 27, i32 5, metadata !228, null}
!230 = metadata !{i32 25, i32 30, metadata !222, null}
!231 = metadata !{i32 28, i32 3, metadata !223, null}
!232 = metadata !{i32 24, i32 28, metadata !217, null}
!233 = metadata !{i32 29, i32 8, metadata !234, null}
!234 = metadata !{i32 786443, metadata !5, metadata !25, i32 29, i32 3, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!235 = metadata !{i32 29, i32 8, metadata !236, null}
!236 = metadata !{i32 786443, metadata !5, metadata !237, i32 29, i32 8, i32 2, i32 68} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!237 = metadata !{i32 786443, metadata !5, metadata !234, i32 29, i32 8, i32 1, i32 65} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!238 = metadata !{i32 30, i32 10, metadata !239, null}
!239 = metadata !{i32 786443, metadata !5, metadata !240, i32 30, i32 5, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!240 = metadata !{i32 786443, metadata !5, metadata !234, i32 29, i32 33, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!241 = metadata !{i32 30, i32 10, metadata !242, null}
!242 = metadata !{i32 786443, metadata !5, metadata !243, i32 30, i32 10, i32 2, i32 67} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!243 = metadata !{i32 786443, metadata !5, metadata !239, i32 30, i32 10, i32 1, i32 66} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!244 = metadata !{i32 31, i32 7, metadata !245, null}
!245 = metadata !{i32 786443, metadata !5, metadata !239, i32 30, i32 35, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!246 = metadata !{i32 32, i32 5, metadata !245, null}
!247 = metadata !{i32 30, i32 30, metadata !239, null}
!248 = metadata !{i32 33, i32 3, metadata !240, null}
!249 = metadata !{i32 29, i32 28, metadata !234, null}
!250 = metadata !{i32 34, i32 8, metadata !251, null}
!251 = metadata !{i32 786443, metadata !5, metadata !25, i32 34, i32 3, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!252 = metadata !{i32 34, i32 8, metadata !253, null}
!253 = metadata !{i32 786443, metadata !5, metadata !254, i32 34, i32 8, i32 2, i32 72} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!254 = metadata !{i32 786443, metadata !5, metadata !251, i32 34, i32 8, i32 1, i32 69} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!255 = metadata !{i32 35, i32 10, metadata !256, null}
!256 = metadata !{i32 786443, metadata !5, metadata !257, i32 35, i32 5, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!257 = metadata !{i32 786443, metadata !5, metadata !251, i32 34, i32 33, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!258 = metadata !{i32 35, i32 10, metadata !259, null}
!259 = metadata !{i32 786443, metadata !5, metadata !260, i32 35, i32 10, i32 2, i32 71} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!260 = metadata !{i32 786443, metadata !5, metadata !256, i32 35, i32 10, i32 1, i32 70} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!261 = metadata !{i32 36, i32 7, metadata !262, null}
!262 = metadata !{i32 786443, metadata !5, metadata !256, i32 35, i32 35, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!263 = metadata !{i32 37, i32 7, metadata !262, null}
!264 = metadata !{i32 38, i32 5, metadata !262, null}
!265 = metadata !{i32 35, i32 30, metadata !256, null}
!266 = metadata !{i32 39, i32 3, metadata !257, null}
!267 = metadata !{i32 34, i32 28, metadata !251, null}
!268 = metadata !{i32 40, i32 1, metadata !25, null}
!269 = metadata !{i32 786689, metadata !22, metadata !"toutBufSw", metadata !6, i32 16777280, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufSw] [line 64]
!270 = metadata !{i32 64, i32 38, metadata !22, null}
!271 = metadata !{i32 786689, metadata !22, metadata !"toutBufHw", metadata !6, i32 33554496, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufHw] [line 64]
!272 = metadata !{i32 64, i32 56, metadata !22, null}
!273 = metadata !{i32 786688, metadata !22, metadata !"i", metadata !6, i32 66, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 66]
!274 = metadata !{i32 66, i32 7, metadata !22, null}
!275 = metadata !{i32 68, i32 8, metadata !276, null}
!276 = metadata !{i32 786443, metadata !5, metadata !22, i32 68, i32 3, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!277 = metadata !{i32 68, i32 8, metadata !278, null}
!278 = metadata !{i32 786443, metadata !5, metadata !279, i32 68, i32 8, i32 2, i32 74} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!279 = metadata !{i32 786443, metadata !5, metadata !276, i32 68, i32 8, i32 1, i32 73} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!280 = metadata !{i32 69, i32 9, metadata !281, null}
!281 = metadata !{i32 786443, metadata !5, metadata !282, i32 69, i32 9, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!282 = metadata !{i32 786443, metadata !5, metadata !276, i32 68, i32 43, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!283 = metadata !{i32 70, i32 7, metadata !284, null}
!284 = metadata !{i32 786443, metadata !5, metadata !281, i32 69, i32 39, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!285 = metadata !{i32 71, i32 7, metadata !284, null}
!286 = metadata !{i32 73, i32 3, metadata !282, null}
!287 = metadata !{i32 68, i32 38, metadata !276, null}
!288 = metadata !{i32 74, i32 3, metadata !22, null}
!289 = metadata !{i32 75, i32 1, metadata !22, null}
!290 = metadata !{i32 786689, metadata !16, metadata !"argc", metadata !6, i32 16777328, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 112]
!291 = metadata !{i32 112, i32 14, metadata !16, null}
!292 = metadata !{i32 786689, metadata !16, metadata !"argv", metadata !6, i32 33554544, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 112]
!293 = metadata !{i32 112, i32 26, metadata !16, null}
!294 = metadata !{i32 786688, metadata !16, metadata !"test_passed", metadata !6, i32 113, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [test_passed] [line 113]
!295 = metadata !{i32 113, i32 7, metadata !16, null}
!296 = metadata !{i32 113, i32 3, metadata !16, null}
!297 = metadata !{i32 786688, metadata !16, metadata !"tin1Buf", metadata !6, i32 114, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tin1Buf] [line 114]
!298 = metadata !{i32 114, i32 10, metadata !16, null}
!299 = metadata !{i32 786688, metadata !16, metadata !"tin2Buf", metadata !6, i32 114, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tin2Buf] [line 114]
!300 = metadata !{i32 114, i32 20, metadata !16, null}
!301 = metadata !{i32 786688, metadata !16, metadata !"tin3Buf", metadata !6, i32 114, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tin3Buf] [line 114]
!302 = metadata !{i32 114, i32 30, metadata !16, null}
!303 = metadata !{i32 786688, metadata !16, metadata !"toutBufSw", metadata !6, i32 114, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [toutBufSw] [line 114]
!304 = metadata !{i32 114, i32 40, metadata !16, null}
!305 = metadata !{i32 786688, metadata !16, metadata !"toutBufHw", metadata !6, i32 114, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [toutBufHw] [line 114]
!306 = metadata !{i32 114, i32 52, metadata !16, null}
!307 = metadata !{i32 116, i32 3, metadata !16, null}
!308 = metadata !{i32 118, i32 22, metadata !16, null}
!309 = metadata !{i32 119, i32 22, metadata !16, null}
!310 = metadata !{i32 120, i32 22, metadata !16, null}
!311 = metadata !{i32 121, i32 24, metadata !16, null}
!312 = metadata !{i32 122, i32 24, metadata !16, null}
!313 = metadata !{i32 124, i32 7, metadata !314, null}
!314 = metadata !{i32 786443, metadata !5, metadata !16, i32 124, i32 7, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!315 = metadata !{i32 124, i32 7, metadata !316, null}
!316 = metadata !{i32 786443, metadata !5, metadata !314, i32 124, i32 7, i32 1, i32 75} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!317 = metadata !{i32 124, i32 7, metadata !318, null}
!318 = metadata !{i32 786443, metadata !5, metadata !314, i32 124, i32 7, i32 2, i32 76} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!319 = metadata !{i32 124, i32 7, metadata !320, null}
!320 = metadata !{i32 786443, metadata !5, metadata !314, i32 124, i32 7, i32 3, i32 77} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!321 = metadata !{i32 124, i32 7, metadata !322, null}
!322 = metadata !{i32 786443, metadata !5, metadata !314, i32 124, i32 7, i32 4, i32 78} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!323 = metadata !{i32 125, i32 9, metadata !324, null}
!324 = metadata !{i32 786443, metadata !5, metadata !325, i32 125, i32 9, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!325 = metadata !{i32 786443, metadata !5, metadata !314, i32 124, i32 69, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!326 = metadata !{i32 125, i32 18, metadata !327, null}
!327 = metadata !{i32 786443, metadata !5, metadata !324, i32 125, i32 18, i32 1, i32 79} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!328 = metadata !{i32 126, i32 9, metadata !329, null}
!329 = metadata !{i32 786443, metadata !5, metadata !325, i32 126, i32 9, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!330 = metadata !{i32 126, i32 18, metadata !331, null}
!331 = metadata !{i32 786443, metadata !5, metadata !329, i32 126, i32 18, i32 1, i32 80} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!332 = metadata !{i32 127, i32 9, metadata !333, null}
!333 = metadata !{i32 786443, metadata !5, metadata !325, i32 127, i32 9, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!334 = metadata !{i32 127, i32 18, metadata !335, null}
!335 = metadata !{i32 786443, metadata !5, metadata !333, i32 127, i32 18, i32 1, i32 81} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!336 = metadata !{i32 128, i32 9, metadata !337, null}
!337 = metadata !{i32 786443, metadata !5, metadata !325, i32 128, i32 9, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!338 = metadata !{i32 128, i32 20, metadata !339, null}
!339 = metadata !{i32 786443, metadata !5, metadata !337, i32 128, i32 20, i32 1, i32 82} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!340 = metadata !{i32 129, i32 9, metadata !341, null}
!341 = metadata !{i32 786443, metadata !5, metadata !325, i32 129, i32 9, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!342 = metadata !{i32 129, i32 20, metadata !343, null}
!343 = metadata !{i32 786443, metadata !5, metadata !341, i32 129, i32 20, i32 1, i32 83} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!344 = metadata !{i32 130, i32 5, metadata !325, null}
!345 = metadata !{i32 133, i32 17, metadata !16, null}
!346 = metadata !{i32 135, i32 3, metadata !16, null}
!347 = metadata !{i32 136, i32 3, metadata !16, null}
!348 = metadata !{i32 137, i32 3, metadata !16, null}
!349 = metadata !{i32 138, i32 3, metadata !16, null}
!350 = metadata !{i32 139, i32 3, metadata !16, null}
!351 = metadata !{i32 141, i32 3, metadata !16, null}
!352 = metadata !{i32 141, i32 3, metadata !353, null}
!353 = metadata !{i32 786443, metadata !5, metadata !16, i32 141, i32 3, i32 1, i32 84} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!354 = metadata !{i32 141, i32 3, metadata !355, null}
!355 = metadata !{i32 786443, metadata !5, metadata !16, i32 141, i32 3, i32 2, i32 85} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!356 = metadata !{i32 141, i32 3, metadata !357, null}
!357 = metadata !{i32 786443, metadata !5, metadata !358, i32 141, i32 3, i32 4, i32 87} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!358 = metadata !{i32 786443, metadata !5, metadata !16, i32 141, i32 3, i32 3, i32 86} ; [ DW_TAG_lexical_block ] [C:\labs\lab1_prebuilt\SDRelease/C:/labs/lab1_prebuilt/src/main.cpp]
!359 = metadata !{i32 143, i32 3, metadata !16, null}
!360 = metadata !{i32 144, i32 1, metadata !16, null}
