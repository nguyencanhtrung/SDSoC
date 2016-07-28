; ModuleID = '/home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

@.str = private unnamed_addr constant [19 x i8] c"Testing mmult ...\0A\00", align 1
@.str1 = private unnamed_addr constant [62 x i8] c"Average number of processor cycles for golden version: %llu \0A\00", align 1
@.str2 = private unnamed_addr constant [64 x i8] c"Average number of processor cycles for hardware version: %llu \0A\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"Please use pipeline depth from %d to %d\0A\00", align 1
@.str4 = private unnamed_addr constant [57 x i8] c"Testing with A_NROWS = A_NCOLS = B_NCOLS = B_NROWS = %d\0A\00", align 1
@.str5 = private unnamed_addr constant [21 x i8] c"Pipeline depth = %d\0A\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"TEST %s\0A\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"PASSED\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str9 = private unnamed_addr constant [49 x i8] c"Mismatch: data vector=%d index=%d d=%f, dout=%f\0A\00", align 1

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

define i32 @_Z10mmult_testPPfS0_S0_S0_i(float** %tin1Buf, float** %tin2Buf, float** %toutBufSw, float** %toutBufHw, i32 %pipeline_depth) #2 {
  %1 = alloca float**, align 4
  %2 = alloca float**, align 4
  %3 = alloca float**, align 4
  %4 = alloca float**, align 4
  %5 = alloca i32, align 4
  %i = alloca i32, align 4
  %vec = alloca i32, align 4
  %clock_start = alloca i64, align 8
  %clock_end = alloca i64, align 8
  store float** %tin1Buf, float*** %1, align 4
  call void @llvm.dbg.declare(metadata !{float*** %1}, metadata !105), !dbg !106
  store float** %tin2Buf, float*** %2, align 4
  call void @llvm.dbg.declare(metadata !{float*** %2}, metadata !107), !dbg !108
  store float** %toutBufSw, float*** %3, align 4
  call void @llvm.dbg.declare(metadata !{float*** %3}, metadata !109), !dbg !110
  store float** %toutBufHw, float*** %4, align 4
  call void @llvm.dbg.declare(metadata !{float*** %4}, metadata !111), !dbg !112
  store i32 %pipeline_depth, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !113), !dbg !114
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !115), !dbg !116
  call void @llvm.dbg.declare(metadata !{i32* %vec}, metadata !117), !dbg !118
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0)), !dbg !119
  %7 = load float*** %1, align 4, !dbg !120
  %8 = load float*** %2, align 4, !dbg !120
  %9 = load float*** %3, align 4, !dbg !120
  %10 = load float*** %4, align 4, !dbg !120
  call void @_ZL10mmult_initPPfS0_S0_S0_(float** %7, float** %8, float** %9, float** %10), !dbg !120
  call void @llvm.dbg.declare(metadata !{i64* %clock_start}, metadata !121), !dbg !123
  call void @llvm.dbg.declare(metadata !{i64* %clock_end}, metadata !124), !dbg !123
  %11 = call i64 @sds_clock_counter(), !dbg !123
  store i64 %11, i64* %clock_start, align 8, !dbg !123
  store i32 0, i32* %i, align 4, !dbg !125
  br label %12, !dbg !125

; <label>:12                                      ; preds = %36, %0
  %13 = load i32* %i, align 4, !dbg !127
  %14 = icmp slt i32 %13, 256, !dbg !127
  br i1 %14, label %15, label %39, !dbg !127

; <label>:15                                      ; preds = %12
  store i32 0, i32* %vec, align 4, !dbg !130
  br label %16, !dbg !130

; <label>:16                                      ; preds = %32, %15
  %17 = load i32* %vec, align 4, !dbg !133
  %18 = icmp slt i32 %17, 4, !dbg !133
  br i1 %18, label %19, label %35, !dbg !133

; <label>:19                                      ; preds = %16
  %20 = load i32* %vec, align 4, !dbg !136
  %21 = load float*** %1, align 4, !dbg !136
  %22 = getelementptr inbounds float** %21, i32 %20, !dbg !136
  %23 = load float** %22, align 4, !dbg !136
  %24 = load i32* %vec, align 4, !dbg !136
  %25 = load float*** %2, align 4, !dbg !136
  %26 = getelementptr inbounds float** %25, i32 %24, !dbg !136
  %27 = load float** %26, align 4, !dbg !136
  %28 = load i32* %vec, align 4, !dbg !136
  %29 = load float*** %3, align 4, !dbg !136
  %30 = getelementptr inbounds float** %29, i32 %28, !dbg !136
  %31 = load float** %30, align 4, !dbg !136
  call void @_Z12mmult_goldenPfS_S_(float* %23, float* %27, float* %31), !dbg !136
  br label %32, !dbg !138

; <label>:32                                      ; preds = %19
  %33 = load i32* %vec, align 4, !dbg !139
  %34 = add nsw i32 %33, 1, !dbg !139
  store i32 %34, i32* %vec, align 4, !dbg !139
  br label %16, !dbg !139

; <label>:35                                      ; preds = %16
  br label %36, !dbg !140

; <label>:36                                      ; preds = %35
  %37 = load i32* %i, align 4, !dbg !141
  %38 = add nsw i32 %37, 1, !dbg !141
  store i32 %38, i32* %i, align 4, !dbg !141
  br label %12, !dbg !141

; <label>:39                                      ; preds = %12
  %40 = call i64 @sds_clock_counter(), !dbg !142
  store i64 %40, i64* %clock_end, align 8, !dbg !142
  %41 = load i64* %clock_end, align 8, !dbg !142
  %42 = load i64* %clock_start, align 8, !dbg !142
  %43 = sub i64 %41, %42, !dbg !142
  %44 = udiv i64 %43, 1024, !dbg !142
  %45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([62 x i8]* @.str1, i32 0, i32 0), i64 %44), !dbg !142
  %46 = call i64 @sds_clock_counter(), !dbg !142
  store i64 %46, i64* %clock_start, align 8, !dbg !142
  store i32 0, i32* %i, align 4, !dbg !144
  br label %47, !dbg !144

; <label>:47                                      ; preds = %102, %39
  %48 = load i32* %i, align 4, !dbg !146
  %49 = icmp slt i32 %48, 256, !dbg !146
  br i1 %49, label %50, label %105, !dbg !146

; <label>:50                                      ; preds = %47
  store i32 0, i32* %vec, align 4, !dbg !149
  br label %51, !dbg !149

; <label>:51                                      ; preds = %68, %50
  %52 = load i32* %vec, align 4, !dbg !152
  %53 = load i32* %5, align 4, !dbg !152
  %54 = icmp slt i32 %52, %53, !dbg !152
  br i1 %54, label %55, label %71, !dbg !152

; <label>:55                                      ; preds = %51
  %56 = load i32* %vec, align 4, !dbg !155
  %57 = load float*** %1, align 4, !dbg !155
  %58 = getelementptr inbounds float** %57, i32 %56, !dbg !155
  %59 = load float** %58, align 4, !dbg !155
  %60 = load i32* %vec, align 4, !dbg !155
  %61 = load float*** %2, align 4, !dbg !155
  %62 = getelementptr inbounds float** %61, i32 %60, !dbg !155
  %63 = load float** %62, align 4, !dbg !155
  %64 = load i32* %vec, align 4, !dbg !155
  %65 = load float*** %4, align 4, !dbg !155
  %66 = getelementptr inbounds float** %65, i32 %64, !dbg !155
  %67 = load float** %66, align 4, !dbg !155
  call void @_Z11mmult_accelPfS_S_(float* %59, float* %63, float* %67), !dbg !155, !Xidane.Async.ID !157
  br label %68, !dbg !158

; <label>:68                                      ; preds = %55
  %69 = load i32* %vec, align 4, !dbg !159
  %70 = add nsw i32 %69, 1, !dbg !159
  store i32 %70, i32* %vec, align 4, !dbg !159
  br label %51, !dbg !159

; <label>:71                                      ; preds = %51
  %72 = load i32* %5, align 4, !dbg !160
  store i32 %72, i32* %vec, align 4, !dbg !160
  br label %73, !dbg !160

; <label>:73                                      ; preds = %89, %71
  %74 = load i32* %vec, align 4, !dbg !162
  %75 = icmp slt i32 %74, 4, !dbg !162
  br i1 %75, label %76, label %92, !dbg !162

; <label>:76                                      ; preds = %73
  call void @sds_wait(i32 1), !dbg !165, !Xidane.Wait !167
  %77 = load i32* %vec, align 4, !dbg !168
  %78 = load float*** %1, align 4, !dbg !168
  %79 = getelementptr inbounds float** %78, i32 %77, !dbg !168
  %80 = load float** %79, align 4, !dbg !168
  %81 = load i32* %vec, align 4, !dbg !168
  %82 = load float*** %2, align 4, !dbg !168
  %83 = getelementptr inbounds float** %82, i32 %81, !dbg !168
  %84 = load float** %83, align 4, !dbg !168
  %85 = load i32* %vec, align 4, !dbg !168
  %86 = load float*** %4, align 4, !dbg !168
  %87 = getelementptr inbounds float** %86, i32 %85, !dbg !168
  %88 = load float** %87, align 4, !dbg !168
  call void @_Z11mmult_accelPfS_S_(float* %80, float* %84, float* %88), !dbg !168, !Xidane.Async.ID !157
  br label %89, !dbg !169

; <label>:89                                      ; preds = %76
  %90 = load i32* %vec, align 4, !dbg !170
  %91 = add nsw i32 %90, 1, !dbg !170
  store i32 %91, i32* %vec, align 4, !dbg !170
  br label %73, !dbg !170

; <label>:92                                      ; preds = %73
  store i32 0, i32* %vec, align 4, !dbg !171
  br label %93, !dbg !171

; <label>:93                                      ; preds = %98, %92
  %94 = load i32* %vec, align 4, !dbg !173
  %95 = load i32* %5, align 4, !dbg !173
  %96 = icmp slt i32 %94, %95, !dbg !173
  br i1 %96, label %97, label %101, !dbg !173

; <label>:97                                      ; preds = %93
  call void @sds_wait(i32 1), !dbg !176, !Xidane.Wait !167
  br label %98, !dbg !178

; <label>:98                                      ; preds = %97
  %99 = load i32* %vec, align 4, !dbg !179
  %100 = add nsw i32 %99, 1, !dbg !179
  store i32 %100, i32* %vec, align 4, !dbg !179
  br label %93, !dbg !179

; <label>:101                                     ; preds = %93
  br label %102, !dbg !180

; <label>:102                                     ; preds = %101
  %103 = load i32* %i, align 4, !dbg !181
  %104 = add nsw i32 %103, 1, !dbg !181
  store i32 %104, i32* %i, align 4, !dbg !181
  br label %47, !dbg !181

; <label>:105                                     ; preds = %47
  %106 = call i64 @sds_clock_counter(), !dbg !182
  store i64 %106, i64* %clock_end, align 8, !dbg !182
  %107 = load i64* %clock_end, align 8, !dbg !182
  %108 = load i64* %clock_start, align 8, !dbg !182
  %109 = sub i64 %107, %108, !dbg !182
  %110 = udiv i64 %109, 1024, !dbg !182
  %111 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([64 x i8]* @.str2, i32 0, i32 0), i64 %110), !dbg !182
  %112 = load float*** %3, align 4, !dbg !184
  %113 = load float*** %4, align 4, !dbg !184
  %114 = call i32 @_ZL18mmult_result_checkPPfS0_(float** %112, float** %113), !dbg !184
  ret i32 %114, !dbg !184
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
define internal void @_ZL10mmult_initPPfS0_S0_S0_(float** %tin1Buf, float** %tin2Buf, float** %toutBufSw, float** %toutBufHw) #0 {
  %1 = alloca float**, align 4
  %2 = alloca float**, align 4
  %3 = alloca float**, align 4
  %4 = alloca float**, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %vec = alloca i32, align 4
  store float** %tin1Buf, float*** %1, align 4
  call void @llvm.dbg.declare(metadata !{float*** %1}, metadata !185), !dbg !186
  store float** %tin2Buf, float*** %2, align 4
  call void @llvm.dbg.declare(metadata !{float*** %2}, metadata !187), !dbg !188
  store float** %toutBufSw, float*** %3, align 4
  call void @llvm.dbg.declare(metadata !{float*** %3}, metadata !189), !dbg !190
  store float** %toutBufHw, float*** %4, align 4
  call void @llvm.dbg.declare(metadata !{float*** %4}, metadata !191), !dbg !192
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !193), !dbg !194
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !195), !dbg !196
  call void @llvm.dbg.declare(metadata !{i32* %vec}, metadata !197), !dbg !198
  store i32 0, i32* %vec, align 4, !dbg !199
  br label %5, !dbg !199

; <label>:5                                       ; preds = %102, %0
  %6 = load i32* %vec, align 4, !dbg !201
  %7 = icmp slt i32 %6, 4, !dbg !201
  br i1 %7, label %8, label %105, !dbg !201

; <label>:8                                       ; preds = %5
  store i32 0, i32* %i, align 4, !dbg !204
  br label %9, !dbg !204

; <label>:9                                       ; preds = %36, %8
  %10 = load i32* %i, align 4, !dbg !207
  %11 = icmp slt i32 %10, 32, !dbg !207
  br i1 %11, label %12, label %39, !dbg !207

; <label>:12                                      ; preds = %9
  store i32 0, i32* %j, align 4, !dbg !210
  br label %13, !dbg !210

; <label>:13                                      ; preds = %32, %12
  %14 = load i32* %j, align 4, !dbg !213
  %15 = icmp slt i32 %14, 32, !dbg !213
  br i1 %15, label %16, label %35, !dbg !213

; <label>:16                                      ; preds = %13
  %17 = load i32* %i, align 4, !dbg !216
  %18 = mul nsw i32 %17, 32, !dbg !216
  %19 = add nsw i32 1, %18, !dbg !216
  %20 = load i32* %j, align 4, !dbg !216
  %21 = add nsw i32 %19, %20, !dbg !216
  %22 = sitofp i32 %21 to float, !dbg !216
  %23 = load i32* %i, align 4, !dbg !216
  %24 = mul nsw i32 %23, 32, !dbg !216
  %25 = load i32* %j, align 4, !dbg !216
  %26 = add nsw i32 %24, %25, !dbg !216
  %27 = load i32* %vec, align 4, !dbg !216
  %28 = load float*** %1, align 4, !dbg !216
  %29 = getelementptr inbounds float** %28, i32 %27, !dbg !216
  %30 = load float** %29, align 4, !dbg !216
  %31 = getelementptr inbounds float* %30, i32 %26, !dbg !216
  store float %22, float* %31, align 4, !dbg !216
  br label %32, !dbg !218

; <label>:32                                      ; preds = %16
  %33 = load i32* %j, align 4, !dbg !219
  %34 = add nsw i32 %33, 1, !dbg !219
  store i32 %34, i32* %j, align 4, !dbg !219
  br label %13, !dbg !219

; <label>:35                                      ; preds = %13
  br label %36, !dbg !220

; <label>:36                                      ; preds = %35
  %37 = load i32* %i, align 4, !dbg !221
  %38 = add nsw i32 %37, 1, !dbg !221
  store i32 %38, i32* %i, align 4, !dbg !221
  br label %9, !dbg !221

; <label>:39                                      ; preds = %9
  store i32 0, i32* %i, align 4, !dbg !222
  br label %40, !dbg !222

; <label>:40                                      ; preds = %64, %39
  %41 = load i32* %i, align 4, !dbg !224
  %42 = icmp slt i32 %41, 32, !dbg !224
  br i1 %42, label %43, label %67, !dbg !224

; <label>:43                                      ; preds = %40
  store i32 0, i32* %j, align 4, !dbg !227
  br label %44, !dbg !227

; <label>:44                                      ; preds = %60, %43
  %45 = load i32* %j, align 4, !dbg !230
  %46 = icmp slt i32 %45, 32, !dbg !230
  br i1 %46, label %47, label %63, !dbg !230

; <label>:47                                      ; preds = %44
  %48 = call i32 @rand() #4, !dbg !233
  %49 = srem i32 %48, 1024, !dbg !233
  %50 = sitofp i32 %49 to float, !dbg !233
  %51 = load i32* %i, align 4, !dbg !233
  %52 = mul nsw i32 %51, 32, !dbg !233
  %53 = load i32* %j, align 4, !dbg !233
  %54 = add nsw i32 %52, %53, !dbg !233
  %55 = load i32* %vec, align 4, !dbg !233
  %56 = load float*** %2, align 4, !dbg !233
  %57 = getelementptr inbounds float** %56, i32 %55, !dbg !233
  %58 = load float** %57, align 4, !dbg !233
  %59 = getelementptr inbounds float* %58, i32 %54, !dbg !233
  store float %50, float* %59, align 4, !dbg !233
  br label %60, !dbg !235

; <label>:60                                      ; preds = %47
  %61 = load i32* %j, align 4, !dbg !236
  %62 = add nsw i32 %61, 1, !dbg !236
  store i32 %62, i32* %j, align 4, !dbg !236
  br label %44, !dbg !236

; <label>:63                                      ; preds = %44
  br label %64, !dbg !237

; <label>:64                                      ; preds = %63
  %65 = load i32* %i, align 4, !dbg !238
  %66 = add nsw i32 %65, 1, !dbg !238
  store i32 %66, i32* %i, align 4, !dbg !238
  br label %40, !dbg !238

; <label>:67                                      ; preds = %40
  store i32 0, i32* %i, align 4, !dbg !239
  br label %68, !dbg !239

; <label>:68                                      ; preds = %98, %67
  %69 = load i32* %i, align 4, !dbg !241
  %70 = icmp slt i32 %69, 32, !dbg !241
  br i1 %70, label %71, label %101, !dbg !241

; <label>:71                                      ; preds = %68
  store i32 0, i32* %j, align 4, !dbg !244
  br label %72, !dbg !244

; <label>:72                                      ; preds = %94, %71
  %73 = load i32* %j, align 4, !dbg !247
  %74 = icmp slt i32 %73, 32, !dbg !247
  br i1 %74, label %75, label %97, !dbg !247

; <label>:75                                      ; preds = %72
  %76 = load i32* %i, align 4, !dbg !250
  %77 = mul nsw i32 %76, 32, !dbg !250
  %78 = load i32* %j, align 4, !dbg !250
  %79 = add nsw i32 %77, %78, !dbg !250
  %80 = load i32* %vec, align 4, !dbg !250
  %81 = load float*** %3, align 4, !dbg !250
  %82 = getelementptr inbounds float** %81, i32 %80, !dbg !250
  %83 = load float** %82, align 4, !dbg !250
  %84 = getelementptr inbounds float* %83, i32 %79, !dbg !250
  store float 0.000000e+00, float* %84, align 4, !dbg !250
  %85 = load i32* %i, align 4, !dbg !252
  %86 = mul nsw i32 %85, 32, !dbg !252
  %87 = load i32* %j, align 4, !dbg !252
  %88 = add nsw i32 %86, %87, !dbg !252
  %89 = load i32* %vec, align 4, !dbg !252
  %90 = load float*** %4, align 4, !dbg !252
  %91 = getelementptr inbounds float** %90, i32 %89, !dbg !252
  %92 = load float** %91, align 4, !dbg !252
  %93 = getelementptr inbounds float* %92, i32 %88, !dbg !252
  store float 0.000000e+00, float* %93, align 4, !dbg !252
  br label %94, !dbg !253

; <label>:94                                      ; preds = %75
  %95 = load i32* %j, align 4, !dbg !254
  %96 = add nsw i32 %95, 1, !dbg !254
  store i32 %96, i32* %j, align 4, !dbg !254
  br label %72, !dbg !254

; <label>:97                                      ; preds = %72
  br label %98, !dbg !255

; <label>:98                                      ; preds = %97
  %99 = load i32* %i, align 4, !dbg !256
  %100 = add nsw i32 %99, 1, !dbg !256
  store i32 %100, i32* %i, align 4, !dbg !256
  br label %68, !dbg !256

; <label>:101                                     ; preds = %68
  br label %102, !dbg !257

; <label>:102                                     ; preds = %101
  %103 = load i32* %vec, align 4, !dbg !258
  %104 = add nsw i32 %103, 1, !dbg !258
  store i32 %104, i32* %vec, align 4, !dbg !258
  br label %5, !dbg !258

; <label>:105                                     ; preds = %5
  ret void, !dbg !259
}

declare i64 @sds_clock_counter() #2

declare void @_Z11mmult_accelPfS_S_(float*, float*, float*) #2

declare void @sds_wait(i32) #2

define internal i32 @_ZL18mmult_result_checkPPfS0_(float** %toutBufSw, float** %toutBufHw) #2 {
  %1 = alloca i32, align 4
  %2 = alloca float**, align 4
  %3 = alloca float**, align 4
  %i = alloca i32, align 4
  %vec = alloca i32, align 4
  store float** %toutBufSw, float*** %2, align 4
  call void @llvm.dbg.declare(metadata !{float*** %2}, metadata !260), !dbg !261
  store float** %toutBufHw, float*** %3, align 4
  call void @llvm.dbg.declare(metadata !{float*** %3}, metadata !262), !dbg !263
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !264), !dbg !265
  call void @llvm.dbg.declare(metadata !{i32* %vec}, metadata !266), !dbg !267
  store i32 0, i32* %vec, align 4, !dbg !268
  br label %4, !dbg !268

; <label>:4                                       ; preds = %52, %0
  %5 = load i32* %vec, align 4, !dbg !270
  %6 = icmp slt i32 %5, 4, !dbg !270
  br i1 %6, label %7, label %55, !dbg !270

; <label>:7                                       ; preds = %4
  store i32 0, i32* %i, align 4, !dbg !273
  br label %8, !dbg !273

; <label>:8                                       ; preds = %48, %7
  %9 = load i32* %i, align 4, !dbg !276
  %10 = icmp slt i32 %9, 1024, !dbg !276
  br i1 %10, label %11, label %51, !dbg !276

; <label>:11                                      ; preds = %8
  %12 = load i32* %i, align 4, !dbg !279
  %13 = load i32* %vec, align 4, !dbg !279
  %14 = load float*** %2, align 4, !dbg !279
  %15 = getelementptr inbounds float** %14, i32 %13, !dbg !279
  %16 = load float** %15, align 4, !dbg !279
  %17 = getelementptr inbounds float* %16, i32 %12, !dbg !279
  %18 = load float* %17, align 4, !dbg !279
  %19 = load i32* %i, align 4, !dbg !279
  %20 = load i32* %vec, align 4, !dbg !279
  %21 = load float*** %3, align 4, !dbg !279
  %22 = getelementptr inbounds float** %21, i32 %20, !dbg !279
  %23 = load float** %22, align 4, !dbg !279
  %24 = getelementptr inbounds float* %23, i32 %19, !dbg !279
  %25 = load float* %24, align 4, !dbg !279
  %26 = fcmp une float %18, %25, !dbg !279
  br i1 %26, label %27, label %47, !dbg !279

; <label>:27                                      ; preds = %11
  %28 = load i32* %vec, align 4, !dbg !282
  %29 = load i32* %i, align 4, !dbg !282
  %30 = load i32* %i, align 4, !dbg !282
  %31 = load i32* %vec, align 4, !dbg !282
  %32 = load float*** %2, align 4, !dbg !282
  %33 = getelementptr inbounds float** %32, i32 %31, !dbg !282
  %34 = load float** %33, align 4, !dbg !282
  %35 = getelementptr inbounds float* %34, i32 %30, !dbg !282
  %36 = load float* %35, align 4, !dbg !282
  %37 = fpext float %36 to double, !dbg !282
  %38 = load i32* %i, align 4, !dbg !282
  %39 = load i32* %vec, align 4, !dbg !282
  %40 = load float*** %3, align 4, !dbg !282
  %41 = getelementptr inbounds float** %40, i32 %39, !dbg !282
  %42 = load float** %41, align 4, !dbg !282
  %43 = getelementptr inbounds float* %42, i32 %38, !dbg !282
  %44 = load float* %43, align 4, !dbg !282
  %45 = fpext float %44 to double, !dbg !282
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str9, i32 0, i32 0), i32 %28, i32 %29, double %37, double %45), !dbg !282
  store i32 0, i32* %1, !dbg !284
  br label %56, !dbg !284

; <label>:47                                      ; preds = %11
  br label %48, !dbg !285

; <label>:48                                      ; preds = %47
  %49 = load i32* %i, align 4, !dbg !286
  %50 = add nsw i32 %49, 1, !dbg !286
  store i32 %50, i32* %i, align 4, !dbg !286
  br label %8, !dbg !286

; <label>:51                                      ; preds = %8
  br label %52, !dbg !287

; <label>:52                                      ; preds = %51
  %53 = load i32* %vec, align 4, !dbg !288
  %54 = add nsw i32 %53, 1, !dbg !288
  store i32 %54, i32* %vec, align 4, !dbg !288
  br label %4, !dbg !288

; <label>:55                                      ; preds = %4
  store i32 1, i32* %1, !dbg !289
  br label %56, !dbg !289

; <label>:56                                      ; preds = %55, %27
  %57 = load i32* %1, !dbg !290
  ret i32 %57, !dbg !290
}

define i32 @main(i32 %argc, i8** %argv) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %pipeline_depth = alloca i32, align 4
  %test_passed = alloca i32, align 4
  %tin1Buf = alloca [4 x float*], align 4
  %tin2Buf = alloca [4 x float*], align 4
  %toutBufSw = alloca [4 x float*], align 4
  %toutBufHw = alloca [4 x float*], align 4
  %vec = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !291), !dbg !292
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !293), !dbg !294
  call void @llvm.dbg.declare(metadata !{i32* %pipeline_depth}, metadata !295), !dbg !296
  store i32 2, i32* %pipeline_depth, align 4, !dbg !297
  call void @llvm.dbg.declare(metadata !{i32* %test_passed}, metadata !298), !dbg !299
  store i32 0, i32* %test_passed, align 4, !dbg !300
  call void @llvm.dbg.declare(metadata !{[4 x float*]* %tin1Buf}, metadata !301), !dbg !305
  call void @llvm.dbg.declare(metadata !{[4 x float*]* %tin2Buf}, metadata !306), !dbg !307
  call void @llvm.dbg.declare(metadata !{[4 x float*]* %toutBufSw}, metadata !308), !dbg !309
  call void @llvm.dbg.declare(metadata !{[4 x float*]* %toutBufHw}, metadata !310), !dbg !311
  %4 = load i32* %2, align 4, !dbg !312
  %5 = icmp eq i32 %4, 2, !dbg !312
  br i1 %5, label %6, label %19, !dbg !312

; <label>:6                                       ; preds = %0
  %7 = load i8*** %3, align 4, !dbg !314
  %8 = getelementptr inbounds i8** %7, i32 1, !dbg !314
  %9 = load i8** %8, align 4, !dbg !314
  %10 = call i32 @atoi(i8* %9) #5, !dbg !314
  store i32 %10, i32* %pipeline_depth, align 4, !dbg !314
  %11 = load i32* %pipeline_depth, align 4, !dbg !316
  %12 = icmp sgt i32 %11, 3, !dbg !316
  br i1 %12, label %16, label %13, !dbg !316

; <label>:13                                      ; preds = %6
  %14 = load i32* %pipeline_depth, align 4, !dbg !318
  %15 = icmp slt i32 %14, 1, !dbg !318
  br i1 %15, label %16, label %18, !dbg !318

; <label>:16                                      ; preds = %13, %6
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str3, i32 0, i32 0), i32 1, i32 3), !dbg !320
  store i32 1, i32* %1, !dbg !322
  br label %146, !dbg !322

; <label>:18                                      ; preds = %13
  br label %19, !dbg !323

; <label>:19                                      ; preds = %18, %0
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str4, i32 0, i32 0), i32 32), !dbg !324
  %21 = load i32* %pipeline_depth, align 4, !dbg !325
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0), i32 %21), !dbg !325
  call void @llvm.dbg.declare(metadata !{i32* %vec}, metadata !326), !dbg !327
  store i32 0, i32* %vec, align 4, !dbg !328
  br label %23, !dbg !328

; <label>:23                                      ; preds = %104, %19
  %24 = load i32* %vec, align 4, !dbg !330
  %25 = icmp slt i32 %24, 4, !dbg !330
  br i1 %25, label %26, label %107, !dbg !330

; <label>:26                                      ; preds = %23
  %27 = call i8* @sds_alloc(i32 4096), !dbg !333
  %28 = bitcast i8* %27 to float*, !dbg !333
  %29 = load i32* %vec, align 4, !dbg !333
  %30 = getelementptr inbounds [4 x float*]* %tin1Buf, i32 0, i32 %29, !dbg !333
  store float* %28, float** %30, align 4, !dbg !333
  %31 = call i8* @sds_alloc(i32 4096), !dbg !335
  %32 = bitcast i8* %31 to float*, !dbg !335
  %33 = load i32* %vec, align 4, !dbg !335
  %34 = getelementptr inbounds [4 x float*]* %tin2Buf, i32 0, i32 %33, !dbg !335
  store float* %32, float** %34, align 4, !dbg !335
  %35 = call i8* @sds_alloc(i32 4096), !dbg !336
  %36 = bitcast i8* %35 to float*, !dbg !336
  %37 = load i32* %vec, align 4, !dbg !336
  %38 = getelementptr inbounds [4 x float*]* %toutBufHw, i32 0, i32 %37, !dbg !336
  store float* %36, float** %38, align 4, !dbg !336
  %39 = call i8* @sds_alloc(i32 4096), !dbg !337
  %40 = bitcast i8* %39 to float*, !dbg !337
  %41 = load i32* %vec, align 4, !dbg !337
  %42 = getelementptr inbounds [4 x float*]* %toutBufSw, i32 0, i32 %41, !dbg !337
  store float* %40, float** %42, align 4, !dbg !337
  %43 = load i32* %vec, align 4, !dbg !338
  %44 = getelementptr inbounds [4 x float*]* %tin1Buf, i32 0, i32 %43, !dbg !338
  %45 = load float** %44, align 4, !dbg !338
  %46 = icmp ne float* %45, null, !dbg !338
  br i1 %46, label %47, label %62, !dbg !338

; <label>:47                                      ; preds = %26
  %48 = load i32* %vec, align 4, !dbg !340
  %49 = getelementptr inbounds [4 x float*]* %tin2Buf, i32 0, i32 %48, !dbg !340
  %50 = load float** %49, align 4, !dbg !340
  %51 = icmp ne float* %50, null, !dbg !340
  br i1 %51, label %52, label %62, !dbg !340

; <label>:52                                      ; preds = %47
  %53 = load i32* %vec, align 4, !dbg !342
  %54 = getelementptr inbounds [4 x float*]* %toutBufHw, i32 0, i32 %53, !dbg !342
  %55 = load float** %54, align 4, !dbg !342
  %56 = icmp ne float* %55, null, !dbg !342
  br i1 %56, label %57, label %62, !dbg !342

; <label>:57                                      ; preds = %52
  %58 = load i32* %vec, align 4, !dbg !344
  %59 = getelementptr inbounds [4 x float*]* %toutBufSw, i32 0, i32 %58, !dbg !344
  %60 = load float** %59, align 4, !dbg !344
  %61 = icmp ne float* %60, null, !dbg !344
  br i1 %61, label %103, label %62, !dbg !344

; <label>:62                                      ; preds = %57, %52, %47, %26
  %63 = load i32* %vec, align 4, !dbg !346
  %64 = getelementptr inbounds [4 x float*]* %tin1Buf, i32 0, i32 %63, !dbg !346
  %65 = load float** %64, align 4, !dbg !346
  %66 = icmp ne float* %65, null, !dbg !346
  br i1 %66, label %67, label %72, !dbg !346

; <label>:67                                      ; preds = %62
  %68 = load i32* %vec, align 4, !dbg !349
  %69 = getelementptr inbounds [4 x float*]* %tin1Buf, i32 0, i32 %68, !dbg !349
  %70 = load float** %69, align 4, !dbg !349
  %71 = bitcast float* %70 to i8*, !dbg !349
  call void @sds_free(i8* %71), !dbg !349
  br label %72, !dbg !349

; <label>:72                                      ; preds = %67, %62
  %73 = load i32* %vec, align 4, !dbg !351
  %74 = getelementptr inbounds [4 x float*]* %tin2Buf, i32 0, i32 %73, !dbg !351
  %75 = load float** %74, align 4, !dbg !351
  %76 = icmp ne float* %75, null, !dbg !351
  br i1 %76, label %77, label %82, !dbg !351

; <label>:77                                      ; preds = %72
  %78 = load i32* %vec, align 4, !dbg !353
  %79 = getelementptr inbounds [4 x float*]* %tin2Buf, i32 0, i32 %78, !dbg !353
  %80 = load float** %79, align 4, !dbg !353
  %81 = bitcast float* %80 to i8*, !dbg !353
  call void @sds_free(i8* %81), !dbg !353
  br label %82, !dbg !353

; <label>:82                                      ; preds = %77, %72
  %83 = load i32* %vec, align 4, !dbg !355
  %84 = getelementptr inbounds [4 x float*]* %toutBufHw, i32 0, i32 %83, !dbg !355
  %85 = load float** %84, align 4, !dbg !355
  %86 = icmp ne float* %85, null, !dbg !355
  br i1 %86, label %87, label %92, !dbg !355

; <label>:87                                      ; preds = %82
  %88 = load i32* %vec, align 4, !dbg !357
  %89 = getelementptr inbounds [4 x float*]* %toutBufHw, i32 0, i32 %88, !dbg !357
  %90 = load float** %89, align 4, !dbg !357
  %91 = bitcast float* %90 to i8*, !dbg !357
  call void @sds_free(i8* %91), !dbg !357
  br label %92, !dbg !357

; <label>:92                                      ; preds = %87, %82
  %93 = load i32* %vec, align 4, !dbg !359
  %94 = getelementptr inbounds [4 x float*]* %toutBufSw, i32 0, i32 %93, !dbg !359
  %95 = load float** %94, align 4, !dbg !359
  %96 = icmp ne float* %95, null, !dbg !359
  br i1 %96, label %97, label %102, !dbg !359

; <label>:97                                      ; preds = %92
  %98 = load i32* %vec, align 4, !dbg !361
  %99 = getelementptr inbounds [4 x float*]* %toutBufSw, i32 0, i32 %98, !dbg !361
  %100 = load float** %99, align 4, !dbg !361
  %101 = bitcast float* %100 to i8*, !dbg !361
  call void @sds_free(i8* %101), !dbg !361
  br label %102, !dbg !361

; <label>:102                                     ; preds = %97, %92
  store i32 2, i32* %1, !dbg !363
  br label %146, !dbg !363

; <label>:103                                     ; preds = %57
  br label %104, !dbg !364

; <label>:104                                     ; preds = %103
  %105 = load i32* %vec, align 4, !dbg !365
  %106 = add nsw i32 %105, 1, !dbg !365
  store i32 %106, i32* %vec, align 4, !dbg !365
  br label %23, !dbg !365

; <label>:107                                     ; preds = %23
  %108 = getelementptr inbounds [4 x float*]* %tin1Buf, i32 0, i32 0, !dbg !366
  %109 = getelementptr inbounds [4 x float*]* %tin2Buf, i32 0, i32 0, !dbg !366
  %110 = getelementptr inbounds [4 x float*]* %toutBufSw, i32 0, i32 0, !dbg !366
  %111 = getelementptr inbounds [4 x float*]* %toutBufHw, i32 0, i32 0, !dbg !366
  %112 = load i32* %pipeline_depth, align 4, !dbg !366
  %113 = call i32 @_Z10mmult_testPPfS0_S0_S0_i(float** %108, float** %109, float** %110, float** %111, i32 %112), !dbg !366
  store i32 %113, i32* %test_passed, align 4, !dbg !366
  store i32 0, i32* %vec, align 4, !dbg !367
  br label %114, !dbg !367

; <label>:114                                     ; preds = %134, %107
  %115 = load i32* %vec, align 4, !dbg !369
  %116 = icmp slt i32 %115, 4, !dbg !369
  br i1 %116, label %117, label %137, !dbg !369

; <label>:117                                     ; preds = %114
  %118 = load i32* %vec, align 4, !dbg !372
  %119 = getelementptr inbounds [4 x float*]* %tin1Buf, i32 0, i32 %118, !dbg !372
  %120 = load float** %119, align 4, !dbg !372
  %121 = bitcast float* %120 to i8*, !dbg !372
  call void @sds_free(i8* %121), !dbg !372
  %122 = load i32* %vec, align 4, !dbg !374
  %123 = getelementptr inbounds [4 x float*]* %tin2Buf, i32 0, i32 %122, !dbg !374
  %124 = load float** %123, align 4, !dbg !374
  %125 = bitcast float* %124 to i8*, !dbg !374
  call void @sds_free(i8* %125), !dbg !374
  %126 = load i32* %vec, align 4, !dbg !375
  %127 = getelementptr inbounds [4 x float*]* %toutBufHw, i32 0, i32 %126, !dbg !375
  %128 = load float** %127, align 4, !dbg !375
  %129 = bitcast float* %128 to i8*, !dbg !375
  call void @sds_free(i8* %129), !dbg !375
  %130 = load i32* %vec, align 4, !dbg !376
  %131 = getelementptr inbounds [4 x float*]* %toutBufSw, i32 0, i32 %130, !dbg !376
  %132 = load float** %131, align 4, !dbg !376
  %133 = bitcast float* %132 to i8*, !dbg !376
  call void @sds_free(i8* %133), !dbg !376
  br label %134, !dbg !377

; <label>:134                                     ; preds = %117
  %135 = load i32* %vec, align 4, !dbg !378
  %136 = add nsw i32 %135, 1, !dbg !378
  store i32 %136, i32* %vec, align 4, !dbg !378
  br label %114, !dbg !378

; <label>:137                                     ; preds = %114
  %138 = load i32* %test_passed, align 4, !dbg !379
  %139 = icmp ne i32 %138, 0, !dbg !379
  br i1 %139, label %140, label %141, !dbg !379

; <label>:140                                     ; preds = %137
  br label %142, !dbg !380

; <label>:141                                     ; preds = %137
  br label %142, !dbg !382

; <label>:142                                     ; preds = %141, %140
  %143 = phi [7 x i8]* [ @.str7, %140 ], [ @.str8, %141 ], !dbg !379
  %144 = getelementptr inbounds [7 x i8]* %143, i32 0, i32 0, !dbg !384
  %145 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str6, i32 0, i32 0), i8* %144), !dbg !384
  store i32 0, i32* %1, !dbg !387
  br label %146, !dbg !387

; <label>:146                                     ; preds = %142, %102, %16
  %147 = load i32* %1, !dbg !388
  ret i32 %147, !dbg !388
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare i8* @sds_alloc(i32) #2

declare void @sds_free(i8*) #2

; Function Attrs: nounwind
declare i32 @rand() #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!xidane.function_declaration_filename = !{!27, !53, !29, !53, !31, !54, !33, !53, !35, !55, !37, !56, !39, !55, !41, !53, !43, !53, !45, !57, !47, !55, !49, !55, !51, !57}
!xidane.ExternC = !{!31, !35, !39, !45, !47, !49, !51}
!llvm.module.flags = !{!58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_pipelined"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !10, metadata !15, metadata !21, metadata !24}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_golden", metadata !"mmult_golden", metadata !"_Z12mmult_goldenPfS_S_", i32 43, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @_Z12mmult_goldenPfS_S_, null, null, metadata !2, i32 44} ; [ DW_TAG_subprogram ] [line 43] [def] [scope 44] [mmult_golden]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!9 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_test", metadata !"mmult_test", metadata !"_Z10mmult_testPPfS0_S0_S0_i", i32 70, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (float**, float**, float**, float**, i32)* @_Z10mmult_testPPfS0_S0_S0_i, null, null, metadata !2, i32 71} ; [ DW_TAG_subprogram ] [line 70] [def] [scope 71] [mmult_test]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !13, metadata !14, metadata !14, metadata !14, metadata !14, metadata !13}
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 112, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 112} ; [ DW_TAG_subprogram ] [line 112] [def] [main]
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !13, metadata !13, metadata !18}
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!20 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_result_check", metadata !"mmult_result_check", metadata !"_ZL18mmult_result_checkPPfS0_", i32 56, metadata !22, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (float**, float**)* @_ZL18mmult_result_checkPPfS0_, null, null, metadata !2, i32 57} ; [ DW_TAG_subprogram ] [line 56] [local] [def] [scope 57] [mmult_result_check]
!22 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !13, metadata !14, metadata !14}
!24 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_init", metadata !"mmult_init", metadata !"_ZL10mmult_initPPfS0_S0_S0_", i32 20, metadata !25, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float**, float**, float**, float**)* @_ZL10mmult_initPPfS0_S0_S0_, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 20] [local] [def] [scope 21] [mmult_init]
!25 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{null, metadata !14, metadata !14, metadata !14, metadata !14}
!27 = metadata !{void (float*, float*, float*)* @_Z12mmult_goldenPfS_S_}
!28 = metadata !{metadata !"void.float *.1.float *.1.float *.1"}
!29 = metadata !{i32 (float**, float**, float**, float**, i32)* @_Z10mmult_testPPfS0_S0_S0_i}
!30 = metadata !{metadata !"int.float *[4].1.float *[4].1.float *[4].1.float *[4].1.int.0"}
!31 = metadata !{i32 (i8*, ...)* @printf}
!32 = metadata !{metadata !"int.const char *restrict.1"}
!33 = metadata !{void (float**, float**, float**, float**)* @_ZL10mmult_initPPfS0_S0_S0_}
!34 = metadata !{metadata !"void.float *[4].1.float *[4].1.float *[4].1.float *[4].1"}
!35 = metadata !{i64 ()* @sds_clock_counter}
!36 = metadata !{metadata !"unsigned long long."}
!37 = metadata !{void (float*, float*, float*)* @_Z11mmult_accelPfS_S_}
!38 = metadata !{metadata !"void.float [1024].1.float [1024].1.float [1024].1"}
!39 = metadata !{void (i32)* @sds_wait}
!40 = metadata !{metadata !"void.unsigned int.0"}
!41 = metadata !{i32 (float**, float**)* @_ZL18mmult_result_checkPPfS0_}
!42 = metadata !{metadata !"int.float *[4].1.float *[4].1"}
!43 = metadata !{i32 (i32, i8**)* @main}
!44 = metadata !{metadata !"int.int.0.char *[].1"}
!45 = metadata !{i32 (i8*)* @atoi}
!46 = metadata !{metadata !"int.const char *.1"}
!47 = metadata !{i8* (i32)* @sds_alloc}
!48 = metadata !{metadata !"void .size_t.0"}
!49 = metadata !{void (i8*)* @sds_free}
!50 = metadata !{metadata !"void.void *.1"}
!51 = metadata !{i32 ()* @rand}
!52 = metadata !{metadata !"int."}
!53 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp"}
!54 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdio.h"}
!55 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/arm-xilinx-linux-gnueabi/include/sds_lib.h"}
!56 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult_accel.h"}
!57 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdlib.h"}
!58 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!59 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!60 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!61 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!62 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!63 = metadata !{i32 786689, metadata !4, metadata !"in_arr", metadata !5, i32 16777259, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr] [line 43]
!64 = metadata !{i32 43, i32 26, metadata !4, null}
!65 = metadata !{i32 786689, metadata !4, metadata !"in_arr2", metadata !5, i32 33554475, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr2] [line 43]
!66 = metadata !{i32 43, i32 42, metadata !4, null}
!67 = metadata !{i32 786689, metadata !4, metadata !"out_arr", metadata !5, i32 50331691, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_arr] [line 43]
!68 = metadata !{i32 43, i32 58, metadata !4, null}
!69 = metadata !{i32 786688, metadata !70, metadata !"row", metadata !5, i32 45, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 45]
!70 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!71 = metadata !{i32 45, i32 12, metadata !70, null}
!72 = metadata !{i32 45, i32 8, metadata !70, null}
!73 = metadata !{i32 45, i32 8, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !75, i32 45, i32 8, i32 2, i32 59} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!75 = metadata !{i32 786443, metadata !1, metadata !70, i32 45, i32 8, i32 1, i32 54} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!76 = metadata !{i32 786688, metadata !77, metadata !"col", metadata !5, i32 46, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 46]
!77 = metadata !{i32 786443, metadata !1, metadata !78, i32 46, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!78 = metadata !{i32 786443, metadata !1, metadata !70, i32 45, i32 43, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!79 = metadata !{i32 46, i32 14, metadata !77, null}
!80 = metadata !{i32 46, i32 10, metadata !77, null}
!81 = metadata !{i32 46, i32 10, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !83, i32 46, i32 10, i32 2, i32 58} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!83 = metadata !{i32 786443, metadata !1, metadata !77, i32 46, i32 10, i32 1, i32 55} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!84 = metadata !{i32 786688, metadata !85, metadata !"result", metadata !5, i32 47, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 47]
!85 = metadata !{i32 786443, metadata !1, metadata !77, i32 46, i32 45, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!86 = metadata !{i32 47, i32 13, metadata !85, null}
!87 = metadata !{i32 47, i32 7, metadata !85, null}
!88 = metadata !{i32 786688, metadata !89, metadata !"k", metadata !5, i32 48, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 48]
!89 = metadata !{i32 786443, metadata !1, metadata !85, i32 48, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!90 = metadata !{i32 48, i32 16, metadata !89, null}
!91 = metadata !{i32 48, i32 12, metadata !89, null}
!92 = metadata !{i32 48, i32 12, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !94, i32 48, i32 12, i32 2, i32 57} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!94 = metadata !{i32 786443, metadata !1, metadata !89, i32 48, i32 12, i32 1, i32 56} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!95 = metadata !{i32 49, i32 9, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !89, i32 48, i32 41, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!97 = metadata !{i32 50, i32 7, metadata !96, null}
!98 = metadata !{i32 48, i32 36, metadata !89, null}
!99 = metadata !{i32 51, i32 7, metadata !85, null}
!100 = metadata !{i32 52, i32 5, metadata !85, null}
!101 = metadata !{i32 46, i32 38, metadata !77, null}
!102 = metadata !{i32 53, i32 3, metadata !78, null}
!103 = metadata !{i32 45, i32 36, metadata !70, null}
!104 = metadata !{i32 54, i32 1, metadata !4, null}
!105 = metadata !{i32 786689, metadata !10, metadata !"tin1Buf", metadata !5, i32 16777286, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin1Buf] [line 70]
!106 = metadata !{i32 70, i32 23, metadata !10, null}
!107 = metadata !{i32 786689, metadata !10, metadata !"tin2Buf", metadata !5, i32 33554502, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin2Buf] [line 70]
!108 = metadata !{i32 70, i32 53, metadata !10, null}
!109 = metadata !{i32 786689, metadata !10, metadata !"toutBufSw", metadata !5, i32 50331718, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufSw] [line 70]
!110 = metadata !{i32 70, i32 82, metadata !10, null}
!111 = metadata !{i32 786689, metadata !10, metadata !"toutBufHw", metadata !5, i32 67108934, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufHw] [line 70]
!112 = metadata !{i32 70, i32 113, metadata !10, null}
!113 = metadata !{i32 786689, metadata !10, metadata !"pipeline_depth", metadata !5, i32 83886150, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pipeline_depth] [line 70]
!114 = metadata !{i32 70, i32 141, metadata !10, null}
!115 = metadata !{i32 786688, metadata !10, metadata !"i", metadata !5, i32 72, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 72]
!116 = metadata !{i32 72, i32 7, metadata !10, null}
!117 = metadata !{i32 786688, metadata !10, metadata !"vec", metadata !5, i32 72, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vec] [line 72]
!118 = metadata !{i32 72, i32 10, metadata !10, null}
!119 = metadata !{i32 74, i32 3, metadata !10, null}
!120 = metadata !{i32 76, i32 3, metadata !10, null}
!121 = metadata !{i32 786688, metadata !10, metadata !"clock_start", metadata !5, i32 78, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_start] [line 78]
!122 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!123 = metadata !{i32 78, i32 3, metadata !10, null}
!124 = metadata !{i32 786688, metadata !10, metadata !"clock_end", metadata !5, i32 78, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_end] [line 78]
!125 = metadata !{i32 80, i32 8, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !10, i32 80, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!127 = metadata !{i32 80, i32 8, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !129, i32 80, i32 8, i32 2, i32 63} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!129 = metadata !{i32 786443, metadata !1, metadata !126, i32 80, i32 8, i32 1, i32 60} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!130 = metadata !{i32 81, i32 10, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !132, i32 81, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!132 = metadata !{i32 786443, metadata !1, metadata !126, i32 80, i32 35, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!133 = metadata !{i32 81, i32 10, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !135, i32 81, i32 10, i32 2, i32 62} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!135 = metadata !{i32 786443, metadata !1, metadata !131, i32 81, i32 10, i32 1, i32 61} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!136 = metadata !{i32 82, i32 7, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !131, i32 81, i32 45, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!138 = metadata !{i32 83, i32 5, metadata !137, null}
!139 = metadata !{i32 81, i32 38, metadata !131, null}
!140 = metadata !{i32 84, i32 3, metadata !132, null}
!141 = metadata !{i32 80, i32 30, metadata !126, null}
!142 = metadata !{i32 86, i32 3, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !10, i32 86, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!144 = metadata !{i32 88, i32 8, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !10, i32 88, i32 3, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!146 = metadata !{i32 88, i32 8, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !148, i32 88, i32 8, i32 2, i32 71} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!148 = metadata !{i32 786443, metadata !1, metadata !145, i32 88, i32 8, i32 1, i32 64} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!149 = metadata !{i32 90, i32 10, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !151, i32 90, i32 5, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!151 = metadata !{i32 786443, metadata !1, metadata !145, i32 88, i32 35, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!152 = metadata !{i32 90, i32 10, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !154, i32 90, i32 10, i32 2, i32 66} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!154 = metadata !{i32 786443, metadata !1, metadata !150, i32 90, i32 10, i32 1, i32 65} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!155 = metadata !{i32 92, i32 7, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !150, i32 90, i32 48, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!157 = metadata !{metadata !"1"}
!158 = metadata !{i32 93, i32 5, metadata !156, null}
!159 = metadata !{i32 90, i32 41, metadata !150, null}
!160 = metadata !{i32 95, i32 10, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !151, i32 95, i32 5, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!162 = metadata !{i32 95, i32 10, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !164, i32 95, i32 10, i32 2, i32 68} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!164 = metadata !{i32 786443, metadata !1, metadata !161, i32 95, i32 10, i32 1, i32 67} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!165 = metadata !{i32 96, i32 13, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !161, i32 95, i32 58, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!167 = metadata !{metadata !"pragma_wait"}
!168 = metadata !{i32 98, i32 7, metadata !166, null}
!169 = metadata !{i32 99, i32 5, metadata !166, null}
!170 = metadata !{i32 95, i32 51, metadata !161, null}
!171 = metadata !{i32 101, i32 10, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !151, i32 101, i32 5, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!173 = metadata !{i32 101, i32 10, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !175, i32 101, i32 10, i32 2, i32 70} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!175 = metadata !{i32 786443, metadata !1, metadata !172, i32 101, i32 10, i32 1, i32 69} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!176 = metadata !{i32 102, i32 13, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !172, i32 101, i32 48, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!178 = metadata !{i32 103, i32 5, metadata !177, null}
!179 = metadata !{i32 101, i32 41, metadata !172, null}
!180 = metadata !{i32 104, i32 3, metadata !151, null}
!181 = metadata !{i32 88, i32 30, metadata !145, null}
!182 = metadata !{i32 106, i32 3, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !10, i32 106, i32 3, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!184 = metadata !{i32 108, i32 10, metadata !10, null}
!185 = metadata !{i32 786689, metadata !24, metadata !"tin1Buf", metadata !5, i32 16777236, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin1Buf] [line 20]
!186 = metadata !{i32 20, i32 31, metadata !24, null}
!187 = metadata !{i32 786689, metadata !24, metadata !"tin2Buf", metadata !5, i32 33554452, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin2Buf] [line 20]
!188 = metadata !{i32 20, i32 61, metadata !24, null}
!189 = metadata !{i32 786689, metadata !24, metadata !"toutBufSw", metadata !5, i32 50331668, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufSw] [line 20]
!190 = metadata !{i32 20, i32 90, metadata !24, null}
!191 = metadata !{i32 786689, metadata !24, metadata !"toutBufHw", metadata !5, i32 67108884, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufHw] [line 20]
!192 = metadata !{i32 20, i32 121, metadata !24, null}
!193 = metadata !{i32 786688, metadata !24, metadata !"i", metadata !5, i32 22, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 22]
!194 = metadata !{i32 22, i32 7, metadata !24, null}
!195 = metadata !{i32 786688, metadata !24, metadata !"j", metadata !5, i32 22, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 22]
!196 = metadata !{i32 22, i32 10, metadata !24, null}
!197 = metadata !{i32 786688, metadata !24, metadata !"vec", metadata !5, i32 22, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vec] [line 22]
!198 = metadata !{i32 22, i32 13, metadata !24, null}
!199 = metadata !{i32 23, i32 7, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !24, i32 23, i32 3, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!201 = metadata !{i32 23, i32 7, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !203, i32 23, i32 7, i32 2, i32 85} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!203 = metadata !{i32 786443, metadata !1, metadata !200, i32 23, i32 7, i32 1, i32 72} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!204 = metadata !{i32 24, i32 10, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !206, i32 24, i32 5, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!206 = metadata !{i32 786443, metadata !1, metadata !200, i32 23, i32 42, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!207 = metadata !{i32 24, i32 10, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !209, i32 24, i32 10, i32 2, i32 76} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!209 = metadata !{i32 786443, metadata !1, metadata !205, i32 24, i32 10, i32 1, i32 73} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!210 = metadata !{i32 25, i32 12, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !212, i32 25, i32 7, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!212 = metadata !{i32 786443, metadata !1, metadata !205, i32 24, i32 35, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!213 = metadata !{i32 25, i32 12, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !215, i32 25, i32 12, i32 2, i32 75} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!215 = metadata !{i32 786443, metadata !1, metadata !211, i32 25, i32 12, i32 1, i32 74} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!216 = metadata !{i32 26, i32 9, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !211, i32 25, i32 37, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!218 = metadata !{i32 27, i32 7, metadata !217, null}
!219 = metadata !{i32 25, i32 32, metadata !211, null}
!220 = metadata !{i32 28, i32 5, metadata !212, null}
!221 = metadata !{i32 24, i32 30, metadata !205, null}
!222 = metadata !{i32 29, i32 10, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !206, i32 29, i32 5, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!224 = metadata !{i32 29, i32 10, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !226, i32 29, i32 10, i32 2, i32 80} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!226 = metadata !{i32 786443, metadata !1, metadata !223, i32 29, i32 10, i32 1, i32 77} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!227 = metadata !{i32 30, i32 12, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !229, i32 30, i32 7, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!229 = metadata !{i32 786443, metadata !1, metadata !223, i32 29, i32 35, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!230 = metadata !{i32 30, i32 12, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !232, i32 30, i32 12, i32 2, i32 79} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!232 = metadata !{i32 786443, metadata !1, metadata !228, i32 30, i32 12, i32 1, i32 78} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!233 = metadata !{i32 31, i32 41, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !228, i32 30, i32 37, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!235 = metadata !{i32 32, i32 7, metadata !234, null}
!236 = metadata !{i32 30, i32 32, metadata !228, null}
!237 = metadata !{i32 33, i32 5, metadata !229, null}
!238 = metadata !{i32 29, i32 30, metadata !223, null}
!239 = metadata !{i32 34, i32 10, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !206, i32 34, i32 5, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!241 = metadata !{i32 34, i32 10, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !243, i32 34, i32 10, i32 2, i32 84} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!243 = metadata !{i32 786443, metadata !1, metadata !240, i32 34, i32 10, i32 1, i32 81} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!244 = metadata !{i32 35, i32 12, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !246, i32 35, i32 7, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!246 = metadata !{i32 786443, metadata !1, metadata !240, i32 34, i32 35, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!247 = metadata !{i32 35, i32 12, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !249, i32 35, i32 12, i32 2, i32 83} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!249 = metadata !{i32 786443, metadata !1, metadata !245, i32 35, i32 12, i32 1, i32 82} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!250 = metadata !{i32 36, i32 9, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !245, i32 35, i32 37, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!252 = metadata !{i32 37, i32 9, metadata !251, null}
!253 = metadata !{i32 38, i32 7, metadata !251, null}
!254 = metadata !{i32 35, i32 32, metadata !245, null}
!255 = metadata !{i32 39, i32 5, metadata !246, null}
!256 = metadata !{i32 34, i32 30, metadata !240, null}
!257 = metadata !{i32 40, i32 3, metadata !206, null}
!258 = metadata !{i32 23, i32 35, metadata !200, null}
!259 = metadata !{i32 41, i32 1, metadata !24, null}
!260 = metadata !{i32 786689, metadata !21, metadata !"toutBufSw", metadata !5, i32 16777272, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufSw] [line 56]
!261 = metadata !{i32 56, i32 38, metadata !21, null}
!262 = metadata !{i32 786689, metadata !21, metadata !"toutBufHw", metadata !5, i32 33554488, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufHw] [line 56]
!263 = metadata !{i32 56, i32 69, metadata !21, null}
!264 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !5, i32 58, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 58]
!265 = metadata !{i32 58, i32 7, metadata !21, null} ; [ DW_TAG_imported_module ]
!266 = metadata !{i32 786688, metadata !21, metadata !"vec", metadata !5, i32 58, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vec] [line 58]
!267 = metadata !{i32 58, i32 10, metadata !21, null} ; [ DW_TAG_imported_module ]
!268 = metadata !{i32 59, i32 7, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !21, i32 59, i32 3, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!270 = metadata !{i32 59, i32 7, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !272, i32 59, i32 7, i32 2, i32 89} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!272 = metadata !{i32 786443, metadata !1, metadata !269, i32 59, i32 7, i32 1, i32 86} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!273 = metadata !{i32 60, i32 10, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !275, i32 60, i32 5, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!275 = metadata !{i32 786443, metadata !1, metadata !269, i32 59, i32 42, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!276 = metadata !{i32 60, i32 10, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !278, i32 60, i32 10, i32 2, i32 88} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!278 = metadata !{i32 786443, metadata !1, metadata !274, i32 60, i32 10, i32 1, i32 87} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!279 = metadata !{i32 61, i32 11, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !281, i32 61, i32 11, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!281 = metadata !{i32 786443, metadata !1, metadata !274, i32 60, i32 45, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!282 = metadata !{i32 62, i32 9, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !280, i32 61, i32 51, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!284 = metadata !{i32 63, i32 9, metadata !283, null}
!285 = metadata !{i32 65, i32 5, metadata !281, null}
!286 = metadata !{i32 60, i32 40, metadata !274, null}
!287 = metadata !{i32 66, i32 3, metadata !275, null}
!288 = metadata !{i32 59, i32 35, metadata !269, null}
!289 = metadata !{i32 67, i32 3, metadata !21, null}
!290 = metadata !{i32 68, i32 1, metadata !21, null}
!291 = metadata !{i32 786689, metadata !15, metadata !"argc", metadata !5, i32 16777328, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 112]
!292 = metadata !{i32 112, i32 14, metadata !15, null}
!293 = metadata !{i32 786689, metadata !15, metadata !"argv", metadata !5, i32 33554544, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 112]
!294 = metadata !{i32 112, i32 26, metadata !15, null}
!295 = metadata !{i32 786688, metadata !15, metadata !"pipeline_depth", metadata !5, i32 114, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pipeline_depth] [line 114]
!296 = metadata !{i32 114, i32 7, metadata !15, null}
!297 = metadata !{i32 114, i32 3, metadata !15, null}
!298 = metadata !{i32 786688, metadata !15, metadata !"test_passed", metadata !5, i32 115, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [test_passed] [line 115]
!299 = metadata !{i32 115, i32 7, metadata !15, null}
!300 = metadata !{i32 115, i32 3, metadata !15, null}
!301 = metadata !{i32 786688, metadata !15, metadata !"tin1Buf", metadata !5, i32 116, metadata !302, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tin1Buf] [line 116]
!302 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !8, metadata !303, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from ]
!303 = metadata !{metadata !304}
!304 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!305 = metadata !{i32 116, i32 10, metadata !15, null}
!306 = metadata !{i32 786688, metadata !15, metadata !"tin2Buf", metadata !5, i32 116, metadata !302, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tin2Buf] [line 116]
!307 = metadata !{i32 116, i32 33, metadata !15, null}
!308 = metadata !{i32 786688, metadata !15, metadata !"toutBufSw", metadata !5, i32 116, metadata !302, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [toutBufSw] [line 116]
!309 = metadata !{i32 116, i32 56, metadata !15, null}
!310 = metadata !{i32 786688, metadata !15, metadata !"toutBufHw", metadata !5, i32 116, metadata !302, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [toutBufHw] [line 116]
!311 = metadata !{i32 116, i32 81, metadata !15, null}
!312 = metadata !{i32 119, i32 7, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !15, i32 119, i32 7, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!314 = metadata !{i32 120, i32 22, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !313, i32 119, i32 18, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!316 = metadata !{i32 121, i32 9, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !315, i32 121, i32 9, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!318 = metadata !{i32 121, i32 9, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !317, i32 121, i32 9, i32 1, i32 90} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!320 = metadata !{i32 122, i32 7, metadata !321, null}
!321 = metadata !{i32 786443, metadata !1, metadata !317, i32 121, i32 85, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!322 = metadata !{i32 123, i32 7, metadata !321, null}
!323 = metadata !{i32 125, i32 3, metadata !315, null}
!324 = metadata !{i32 127, i32 3, metadata !15, null}
!325 = metadata !{i32 128, i32 3, metadata !15, null}
!326 = metadata !{i32 786688, metadata !15, metadata !"vec", metadata !5, i32 129, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vec] [line 129]
!327 = metadata !{i32 129, i32 7, metadata !15, null}
!328 = metadata !{i32 130, i32 7, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !15, i32 130, i32 3, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!330 = metadata !{i32 130, i32 7, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !332, i32 130, i32 7, i32 2, i32 99} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!332 = metadata !{i32 786443, metadata !1, metadata !329, i32 130, i32 7, i32 1, i32 91} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!333 = metadata !{i32 131, i32 29, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !329, i32 130, i32 42, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!335 = metadata !{i32 132, i32 29, metadata !334, null}
!336 = metadata !{i32 133, i32 31, metadata !334, null}
!337 = metadata !{i32 134, i32 31, metadata !334, null}
!338 = metadata !{i32 135, i32 9, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !334, i32 135, i32 9, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!340 = metadata !{i32 135, i32 9, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !339, i32 135, i32 9, i32 1, i32 92} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!342 = metadata !{i32 135, i32 9, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !339, i32 135, i32 9, i32 2, i32 93} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!344 = metadata !{i32 135, i32 9, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !339, i32 135, i32 9, i32 3, i32 94} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!346 = metadata !{i32 136, i32 11, metadata !347, null}
!347 = metadata !{i32 786443, metadata !1, metadata !348, i32 136, i32 11, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!348 = metadata !{i32 786443, metadata !1, metadata !339, i32 135, i32 79, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!349 = metadata !{i32 136, i32 25, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !347, i32 136, i32 25, i32 1, i32 95} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!351 = metadata !{i32 137, i32 11, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !348, i32 137, i32 11, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!353 = metadata !{i32 137, i32 25, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !352, i32 137, i32 25, i32 1, i32 96} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!355 = metadata !{i32 138, i32 11, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !348, i32 138, i32 11, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!357 = metadata !{i32 138, i32 27, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !356, i32 138, i32 27, i32 1, i32 97} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!359 = metadata !{i32 139, i32 11, metadata !360, null}
!360 = metadata !{i32 786443, metadata !1, metadata !348, i32 139, i32 11, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!361 = metadata !{i32 139, i32 27, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !360, i32 139, i32 27, i32 1, i32 98} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!363 = metadata !{i32 140, i32 7, metadata !348, null}
!364 = metadata !{i32 142, i32 3, metadata !334, null}
!365 = metadata !{i32 130, i32 35, metadata !329, null}
!366 = metadata !{i32 144, i32 17, metadata !15, null}
!367 = metadata !{i32 146, i32 7, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !15, i32 146, i32 3, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!369 = metadata !{i32 146, i32 7, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !371, i32 146, i32 7, i32 2, i32 101} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!371 = metadata !{i32 786443, metadata !1, metadata !368, i32 146, i32 7, i32 1, i32 100} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!372 = metadata !{i32 147, i32 5, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !368, i32 146, i32 42, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!374 = metadata !{i32 148, i32 5, metadata !373, null}
!375 = metadata !{i32 149, i32 5, metadata !373, null}
!376 = metadata !{i32 150, i32 5, metadata !373, null}
!377 = metadata !{i32 151, i32 3, metadata !373, null}
!378 = metadata !{i32 146, i32 35, metadata !368, null}
!379 = metadata !{i32 154, i32 3, metadata !15, null}
!380 = metadata !{i32 154, i32 3, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !15, i32 154, i32 3, i32 1, i32 102} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!382 = metadata !{i32 154, i32 3, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !15, i32 154, i32 3, i32 2, i32 103} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!384 = metadata !{i32 154, i32 3, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !386, i32 154, i32 3, i32 4, i32 105} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!386 = metadata !{i32 786443, metadata !1, metadata !15, i32 154, i32 3, i32 3, i32 104} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_pipelined//home/trungnguyen/SDSoC/samples/mmult_pipelined/mmult.cpp]
!387 = metadata !{i32 156, i32 3, metadata !15, null}
!388 = metadata !{i32 157, i32 1, metadata !15, null}
