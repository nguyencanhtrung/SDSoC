; ModuleID = '/home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

@test_passed = global i32 0, align 4
@sw_time_total = global i32 0, align 4
@hw_time_total = global i32 0, align 4
@tin1Buf = global float* null, align 4
@tin2Buf = global float* null, align 4
@tin3Buf = global float* null, align 4
@toutBufSwInter = global float* null, align 4
@toutBufHwInter = global float* null, align 4
@toutBufSw = global float* null, align 4
@toutBufHw = global float* null, align 4
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
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !67), !dbg !68
  store float* %in_arr2, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !69), !dbg !70
  store float* %out_arr, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !71), !dbg !72
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !73), !dbg !75
  store i32 0, i32* %row, align 4, !dbg !76
  br label %4, !dbg !76

; <label>:4                                       ; preds = %48, %0
  %5 = load i32* %row, align 4, !dbg !77
  %6 = icmp slt i32 %5, 16, !dbg !77
  br i1 %6, label %7, label %51, !dbg !77

; <label>:7                                       ; preds = %4
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !80), !dbg !83
  store i32 0, i32* %col, align 4, !dbg !84
  br label %8, !dbg !84

; <label>:8                                       ; preds = %44, %7
  %9 = load i32* %col, align 4, !dbg !85
  %10 = icmp slt i32 %9, 16, !dbg !85
  br i1 %10, label %11, label %47, !dbg !85

; <label>:11                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{float* %result}, metadata !88), !dbg !90
  store float 0.000000e+00, float* %result, align 4, !dbg !91
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !92), !dbg !94
  store i32 0, i32* %k, align 4, !dbg !95
  br label %12, !dbg !95

; <label>:12                                      ; preds = %33, %11
  %13 = load i32* %k, align 4, !dbg !96
  %14 = icmp slt i32 %13, 16, !dbg !96
  br i1 %14, label %15, label %36, !dbg !96

; <label>:15                                      ; preds = %12
  %16 = load i32* %row, align 4, !dbg !99
  %17 = mul nsw i32 %16, 16, !dbg !99
  %18 = load i32* %k, align 4, !dbg !99
  %19 = add nsw i32 %17, %18, !dbg !99
  %20 = load float** %1, align 4, !dbg !99
  %21 = getelementptr inbounds float* %20, i32 %19, !dbg !99
  %22 = load float* %21, align 4, !dbg !99
  %23 = load i32* %k, align 4, !dbg !99
  %24 = mul nsw i32 %23, 16, !dbg !99
  %25 = load i32* %col, align 4, !dbg !99
  %26 = add nsw i32 %24, %25, !dbg !99
  %27 = load float** %2, align 4, !dbg !99
  %28 = getelementptr inbounds float* %27, i32 %26, !dbg !99
  %29 = load float* %28, align 4, !dbg !99
  %30 = fmul float %22, %29, !dbg !99
  %31 = load float* %result, align 4, !dbg !99
  %32 = fadd float %31, %30, !dbg !99
  store float %32, float* %result, align 4, !dbg !99
  br label %33, !dbg !101

; <label>:33                                      ; preds = %15
  %34 = load i32* %k, align 4, !dbg !102
  %35 = add nsw i32 %34, 1, !dbg !102
  store i32 %35, i32* %k, align 4, !dbg !102
  br label %12, !dbg !102

; <label>:36                                      ; preds = %12
  %37 = load float* %result, align 4, !dbg !103
  %38 = load i32* %row, align 4, !dbg !103
  %39 = mul nsw i32 %38, 16, !dbg !103
  %40 = load i32* %col, align 4, !dbg !103
  %41 = add nsw i32 %39, %40, !dbg !103
  %42 = load float** %3, align 4, !dbg !103
  %43 = getelementptr inbounds float* %42, i32 %41, !dbg !103
  store float %37, float* %43, align 4, !dbg !103
  br label %44, !dbg !104

; <label>:44                                      ; preds = %36
  %45 = load i32* %col, align 4, !dbg !105
  %46 = add nsw i32 %45, 1, !dbg !105
  store i32 %46, i32* %col, align 4, !dbg !105
  br label %8, !dbg !105

; <label>:47                                      ; preds = %8
  br label %48, !dbg !106

; <label>:48                                      ; preds = %47
  %49 = load i32* %row, align 4, !dbg !107
  %50 = add nsw i32 %49, 1, !dbg !107
  store i32 %50, i32* %row, align 4, !dbg !107
  br label %4, !dbg !107

; <label>:51                                      ; preds = %4
  ret void, !dbg !108
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

define void @_Z10mmult_testv() #2 {
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  %clock_start = alloca i64, align 8
  %clock_end = alloca i64, align 8
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !109), !dbg !110
  call void @llvm.dbg.declare(metadata !{i32* %result}, metadata !111), !dbg !112
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0)), !dbg !113
  call void @_ZL10mmult_initv(), !dbg !114
  call void @llvm.dbg.declare(metadata !{i64* %clock_start}, metadata !115), !dbg !117
  call void @llvm.dbg.declare(metadata !{i64* %clock_end}, metadata !118), !dbg !117
  %2 = call i64 @sds_clock_counter(), !dbg !117
  store i64 %2, i64* %clock_start, align 8, !dbg !117
  store i32 0, i32* %i, align 4, !dbg !119
  br label %3, !dbg !119

; <label>:3                                       ; preds = %13, %0
  %4 = load i32* %i, align 4, !dbg !121
  %5 = icmp slt i32 %4, 1024, !dbg !121
  br i1 %5, label %6, label %16, !dbg !121

; <label>:6                                       ; preds = %3
  %7 = load float** @tin1Buf, align 4, !dbg !124
  %8 = load float** @tin2Buf, align 4, !dbg !124
  %9 = load float** @toutBufSwInter, align 4, !dbg !124
  call void @_Z12mmult_goldenPfS_S_(float* %7, float* %8, float* %9), !dbg !124
  %10 = load float** @toutBufSwInter, align 4, !dbg !126
  %11 = load float** @tin3Buf, align 4, !dbg !126
  %12 = load float** @toutBufSw, align 4, !dbg !126
  call void @_Z12mmult_goldenPfS_S_(float* %10, float* %11, float* %12), !dbg !126
  br label %13, !dbg !127

; <label>:13                                      ; preds = %6
  %14 = load i32* %i, align 4, !dbg !128
  %15 = add nsw i32 %14, 1, !dbg !128
  store i32 %15, i32* %i, align 4, !dbg !128
  br label %3, !dbg !128

; <label>:16                                      ; preds = %3
  %17 = call i64 @sds_clock_counter(), !dbg !129
  store i64 %17, i64* %clock_end, align 8, !dbg !129
  %18 = load i64* %clock_end, align 8, !dbg !129
  %19 = load i64* %clock_start, align 8, !dbg !129
  %20 = sub i64 %18, %19, !dbg !129
  %21 = udiv i64 %20, 1024, !dbg !129
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([62 x i8]* @.str1, i32 0, i32 0), i64 %21), !dbg !129
  %23 = call i64 @sds_clock_counter(), !dbg !129
  store i64 %23, i64* %clock_start, align 8, !dbg !129
  store i32 0, i32* %i, align 4, !dbg !131
  br label %24, !dbg !131

; <label>:24                                      ; preds = %34, %16
  %25 = load i32* %i, align 4, !dbg !133
  %26 = icmp slt i32 %25, 1024, !dbg !133
  br i1 %26, label %27, label %37, !dbg !133

; <label>:27                                      ; preds = %24
  %28 = load float** @tin1Buf, align 4, !dbg !136
  %29 = load float** @tin2Buf, align 4, !dbg !136
  %30 = load float** @toutBufHwInter, align 4, !dbg !136
  call void @_Z11mmult_accelPfS_S_(float* %28, float* %29, float* %30), !dbg !136
  %31 = load float** @toutBufHwInter, align 4, !dbg !138
  %32 = load float** @tin3Buf, align 4, !dbg !138
  %33 = load float** @toutBufHw, align 4, !dbg !138
  call void @_Z11mmult_accelPfS_S_(float* %31, float* %32, float* %33), !dbg !138
  br label %34, !dbg !139

; <label>:34                                      ; preds = %27
  %35 = load i32* %i, align 4, !dbg !140
  %36 = add nsw i32 %35, 1, !dbg !140
  store i32 %36, i32* %i, align 4, !dbg !140
  br label %24, !dbg !140

; <label>:37                                      ; preds = %24
  %38 = call i64 @sds_clock_counter(), !dbg !141
  store i64 %38, i64* %clock_end, align 8, !dbg !141
  %39 = load i64* %clock_end, align 8, !dbg !141
  %40 = load i64* %clock_start, align 8, !dbg !141
  %41 = sub i64 %39, %40, !dbg !141
  %42 = udiv i64 %41, 1024, !dbg !141
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([64 x i8]* @.str2, i32 0, i32 0), i64 %42), !dbg !141
  %44 = call i32 @_ZL18mmult_result_checkv(), !dbg !143
  store i32 %44, i32* %result, align 4, !dbg !143
  %45 = load i32* %result, align 4, !dbg !144
  %46 = icmp ne i32 %45, 0, !dbg !144
  br i1 %46, label %47, label %48, !dbg !144

; <label>:47                                      ; preds = %37
  store i32 0, i32* @test_passed, align 4, !dbg !146
  br label %49, !dbg !148

; <label>:48                                      ; preds = %37
  store i32 1, i32* @test_passed, align 4, !dbg !149
  br label %49

; <label>:49                                      ; preds = %48, %47
  ret void, !dbg !151
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
define internal void @_ZL10mmult_initv() #0 {
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !152), !dbg !153
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !154), !dbg !155
  store i32 0, i32* %i, align 4, !dbg !156
  br label %1, !dbg !156

; <label>:1                                       ; preds = %25, %0
  %2 = load i32* %i, align 4, !dbg !158
  %3 = icmp slt i32 %2, 16, !dbg !158
  br i1 %3, label %4, label %28, !dbg !158

; <label>:4                                       ; preds = %1
  store i32 0, i32* %j, align 4, !dbg !161
  br label %5, !dbg !161

; <label>:5                                       ; preds = %21, %4
  %6 = load i32* %j, align 4, !dbg !164
  %7 = icmp slt i32 %6, 16, !dbg !164
  br i1 %7, label %8, label %24, !dbg !164

; <label>:8                                       ; preds = %5
  %9 = load i32* %i, align 4, !dbg !167
  %10 = mul nsw i32 %9, 16, !dbg !167
  %11 = add nsw i32 1, %10, !dbg !167
  %12 = load i32* %j, align 4, !dbg !167
  %13 = add nsw i32 %11, %12, !dbg !167
  %14 = sitofp i32 %13 to float, !dbg !167
  %15 = load i32* %i, align 4, !dbg !167
  %16 = mul nsw i32 %15, 16, !dbg !167
  %17 = load i32* %j, align 4, !dbg !167
  %18 = add nsw i32 %16, %17, !dbg !167
  %19 = load float** @tin1Buf, align 4, !dbg !167
  %20 = getelementptr inbounds float* %19, i32 %18, !dbg !167
  store float %14, float* %20, align 4, !dbg !167
  br label %21, !dbg !169

; <label>:21                                      ; preds = %8
  %22 = load i32* %j, align 4, !dbg !170
  %23 = add nsw i32 %22, 1, !dbg !170
  store i32 %23, i32* %j, align 4, !dbg !170
  br label %5, !dbg !170

; <label>:24                                      ; preds = %5
  br label %25, !dbg !171

; <label>:25                                      ; preds = %24
  %26 = load i32* %i, align 4, !dbg !172
  %27 = add nsw i32 %26, 1, !dbg !172
  store i32 %27, i32* %i, align 4, !dbg !172
  br label %1, !dbg !172

; <label>:28                                      ; preds = %1
  store i32 0, i32* %i, align 4, !dbg !173
  br label %29, !dbg !173

; <label>:29                                      ; preds = %59, %28
  %30 = load i32* %i, align 4, !dbg !175
  %31 = icmp slt i32 %30, 16, !dbg !175
  br i1 %31, label %32, label %62, !dbg !175

; <label>:32                                      ; preds = %29
  store i32 0, i32* %j, align 4, !dbg !178
  br label %33, !dbg !178

; <label>:33                                      ; preds = %55, %32
  %34 = load i32* %j, align 4, !dbg !181
  %35 = icmp slt i32 %34, 16, !dbg !181
  br i1 %35, label %36, label %58, !dbg !181

; <label>:36                                      ; preds = %33
  %37 = call i32 @rand() #3, !dbg !184
  %38 = srem i32 %37, 256, !dbg !184
  %39 = sitofp i32 %38 to float, !dbg !184
  %40 = load i32* %i, align 4, !dbg !184
  %41 = mul nsw i32 %40, 16, !dbg !184
  %42 = load i32* %j, align 4, !dbg !184
  %43 = add nsw i32 %41, %42, !dbg !184
  %44 = load float** @tin2Buf, align 4, !dbg !184
  %45 = getelementptr inbounds float* %44, i32 %43, !dbg !184
  store float %39, float* %45, align 4, !dbg !184
  %46 = call i32 @rand() #3, !dbg !186
  %47 = srem i32 %46, 256, !dbg !186
  %48 = sitofp i32 %47 to float, !dbg !186
  %49 = load i32* %i, align 4, !dbg !186
  %50 = mul nsw i32 %49, 16, !dbg !186
  %51 = load i32* %j, align 4, !dbg !186
  %52 = add nsw i32 %50, %51, !dbg !186
  %53 = load float** @tin3Buf, align 4, !dbg !186
  %54 = getelementptr inbounds float* %53, i32 %52, !dbg !186
  store float %48, float* %54, align 4, !dbg !186
  br label %55, !dbg !187

; <label>:55                                      ; preds = %36
  %56 = load i32* %j, align 4, !dbg !188
  %57 = add nsw i32 %56, 1, !dbg !188
  store i32 %57, i32* %j, align 4, !dbg !188
  br label %33, !dbg !188

; <label>:58                                      ; preds = %33
  br label %59, !dbg !189

; <label>:59                                      ; preds = %58
  %60 = load i32* %i, align 4, !dbg !190
  %61 = add nsw i32 %60, 1, !dbg !190
  store i32 %61, i32* %i, align 4, !dbg !190
  br label %29, !dbg !190

; <label>:62                                      ; preds = %29
  store i32 0, i32* %i, align 4, !dbg !191
  br label %63, !dbg !191

; <label>:63                                      ; preds = %99, %62
  %64 = load i32* %i, align 4, !dbg !193
  %65 = icmp slt i32 %64, 16, !dbg !193
  br i1 %65, label %66, label %102, !dbg !193

; <label>:66                                      ; preds = %63
  store i32 0, i32* %j, align 4, !dbg !196
  br label %67, !dbg !196

; <label>:67                                      ; preds = %95, %66
  %68 = load i32* %j, align 4, !dbg !199
  %69 = icmp slt i32 %68, 16, !dbg !199
  br i1 %69, label %70, label %98, !dbg !199

; <label>:70                                      ; preds = %67
  %71 = load i32* %i, align 4, !dbg !202
  %72 = mul nsw i32 %71, 16, !dbg !202
  %73 = load i32* %j, align 4, !dbg !202
  %74 = add nsw i32 %72, %73, !dbg !202
  %75 = load float** @toutBufSwInter, align 4, !dbg !202
  %76 = getelementptr inbounds float* %75, i32 %74, !dbg !202
  store float 0.000000e+00, float* %76, align 4, !dbg !202
  %77 = load i32* %i, align 4, !dbg !204
  %78 = mul nsw i32 %77, 16, !dbg !204
  %79 = load i32* %j, align 4, !dbg !204
  %80 = add nsw i32 %78, %79, !dbg !204
  %81 = load float** @toutBufHwInter, align 4, !dbg !204
  %82 = getelementptr inbounds float* %81, i32 %80, !dbg !204
  store float 0.000000e+00, float* %82, align 4, !dbg !204
  %83 = load i32* %i, align 4, !dbg !205
  %84 = mul nsw i32 %83, 16, !dbg !205
  %85 = load i32* %j, align 4, !dbg !205
  %86 = add nsw i32 %84, %85, !dbg !205
  %87 = load float** @toutBufSw, align 4, !dbg !205
  %88 = getelementptr inbounds float* %87, i32 %86, !dbg !205
  store float 0.000000e+00, float* %88, align 4, !dbg !205
  %89 = load i32* %i, align 4, !dbg !206
  %90 = mul nsw i32 %89, 16, !dbg !206
  %91 = load i32* %j, align 4, !dbg !206
  %92 = add nsw i32 %90, %91, !dbg !206
  %93 = load float** @toutBufHw, align 4, !dbg !206
  %94 = getelementptr inbounds float* %93, i32 %92, !dbg !206
  store float 0.000000e+00, float* %94, align 4, !dbg !206
  br label %95, !dbg !207

; <label>:95                                      ; preds = %70
  %96 = load i32* %j, align 4, !dbg !208
  %97 = add nsw i32 %96, 1, !dbg !208
  store i32 %97, i32* %j, align 4, !dbg !208
  br label %67, !dbg !208

; <label>:98                                      ; preds = %67
  br label %99, !dbg !209

; <label>:99                                      ; preds = %98
  %100 = load i32* %i, align 4, !dbg !210
  %101 = add nsw i32 %100, 1, !dbg !210
  store i32 %101, i32* %i, align 4, !dbg !210
  br label %63, !dbg !210

; <label>:102                                     ; preds = %63
  ret void, !dbg !211
}

declare i64 @sds_clock_counter() #2

declare void @_Z11mmult_accelPfS_S_(float*, float*, float*) #2

define internal i32 @_ZL18mmult_result_checkv() #2 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !212), !dbg !213
  store i32 0, i32* %i, align 4, !dbg !214
  br label %2, !dbg !214

; <label>:2                                       ; preds = %29, %0
  %3 = load i32* %i, align 4, !dbg !216
  %4 = icmp slt i32 %3, 256, !dbg !216
  br i1 %4, label %5, label %32, !dbg !216

; <label>:5                                       ; preds = %2
  %6 = load i32* %i, align 4, !dbg !219
  %7 = load float** @toutBufSw, align 4, !dbg !219
  %8 = getelementptr inbounds float* %7, i32 %6, !dbg !219
  %9 = load float* %8, align 4, !dbg !219
  %10 = load i32* %i, align 4, !dbg !219
  %11 = load float** @toutBufHw, align 4, !dbg !219
  %12 = getelementptr inbounds float* %11, i32 %10, !dbg !219
  %13 = load float* %12, align 4, !dbg !219
  %14 = fcmp une float %9, %13, !dbg !219
  br i1 %14, label %15, label %28, !dbg !219

; <label>:15                                      ; preds = %5
  %16 = load i32* %i, align 4, !dbg !222
  %17 = load i32* %i, align 4, !dbg !222
  %18 = load float** @toutBufSw, align 4, !dbg !222
  %19 = getelementptr inbounds float* %18, i32 %17, !dbg !222
  %20 = load float* %19, align 4, !dbg !222
  %21 = fpext float %20 to double, !dbg !222
  %22 = load i32* %i, align 4, !dbg !222
  %23 = load float** @toutBufHw, align 4, !dbg !222
  %24 = getelementptr inbounds float* %23, i32 %22, !dbg !222
  %25 = load float* %24, align 4, !dbg !222
  %26 = fpext float %25 to double, !dbg !222
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str7, i32 0, i32 0), i32 %16, double %21, double %26), !dbg !222
  store i32 1, i32* %1, !dbg !224
  br label %33, !dbg !224

; <label>:28                                      ; preds = %5
  br label %29, !dbg !225

; <label>:29                                      ; preds = %28
  %30 = load i32* %i, align 4, !dbg !226
  %31 = add nsw i32 %30, 1, !dbg !226
  store i32 %31, i32* %i, align 4, !dbg !226
  br label %2, !dbg !226

; <label>:32                                      ; preds = %2
  store i32 0, i32* %1, !dbg !227
  br label %33, !dbg !227

; <label>:33                                      ; preds = %32, %15
  %34 = load i32* %1, !dbg !228
  ret i32 %34, !dbg !228
}

define i32 @main(i32 %argc, i8** %argv) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !229), !dbg !230
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !231), !dbg !232
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str3, i32 0, i32 0), i32 16), !dbg !233
  %5 = call noalias i8* @malloc(i32 1024) #3, !dbg !234
  %6 = bitcast i8* %5 to float*, !dbg !234
  store float* %6, float** @tin1Buf, align 4, !dbg !234
  %7 = call noalias i8* @malloc(i32 1024) #3, !dbg !235
  %8 = bitcast i8* %7 to float*, !dbg !235
  store float* %8, float** @tin2Buf, align 4, !dbg !235
  %9 = call noalias i8* @malloc(i32 1024) #3, !dbg !236
  %10 = bitcast i8* %9 to float*, !dbg !236
  store float* %10, float** @tin3Buf, align 4, !dbg !236
  %11 = call noalias i8* @malloc(i32 1024) #3, !dbg !237
  %12 = bitcast i8* %11 to float*, !dbg !237
  store float* %12, float** @toutBufHwInter, align 4, !dbg !237
  %13 = call noalias i8* @malloc(i32 1024) #3, !dbg !238
  %14 = bitcast i8* %13 to float*, !dbg !238
  store float* %14, float** @toutBufSwInter, align 4, !dbg !238
  %15 = call noalias i8* @malloc(i32 1024) #3, !dbg !239
  %16 = bitcast i8* %15 to float*, !dbg !239
  store float* %16, float** @toutBufHw, align 4, !dbg !239
  %17 = call noalias i8* @malloc(i32 1024) #3, !dbg !240
  %18 = bitcast i8* %17 to float*, !dbg !240
  store float* %18, float** @toutBufSw, align 4, !dbg !240
  %19 = load float** @tin1Buf, align 4, !dbg !241
  %20 = icmp ne float* %19, null, !dbg !241
  br i1 %20, label %21, label %36, !dbg !241

; <label>:21                                      ; preds = %0
  %22 = load float** @tin2Buf, align 4, !dbg !243
  %23 = icmp ne float* %22, null, !dbg !243
  br i1 %23, label %24, label %36, !dbg !243

; <label>:24                                      ; preds = %21
  %25 = load float** @toutBufHw, align 4, !dbg !245
  %26 = icmp ne float* %25, null, !dbg !245
  br i1 %26, label %27, label %36, !dbg !245

; <label>:27                                      ; preds = %24
  %28 = load float** @toutBufSw, align 4, !dbg !247
  %29 = icmp ne float* %28, null, !dbg !247
  br i1 %29, label %30, label %36, !dbg !247

; <label>:30                                      ; preds = %27
  %31 = load float** @toutBufHwInter, align 4, !dbg !249
  %32 = icmp ne float* %31, null, !dbg !249
  br i1 %32, label %33, label %36, !dbg !249

; <label>:33                                      ; preds = %30
  %34 = load float** @toutBufSwInter, align 4, !dbg !251
  %35 = icmp ne float* %34, null, !dbg !251
  br i1 %35, label %79, label %36, !dbg !251

; <label>:36                                      ; preds = %33, %30, %27, %24, %21, %0
  %37 = load float** @tin1Buf, align 4, !dbg !253
  %38 = icmp ne float* %37, null, !dbg !253
  br i1 %38, label %39, label %42, !dbg !253

; <label>:39                                      ; preds = %36
  %40 = load float** @tin1Buf, align 4, !dbg !256
  %41 = bitcast float* %40 to i8*, !dbg !256
  call void @free(i8* %41) #3, !dbg !256
  br label %42, !dbg !256

; <label>:42                                      ; preds = %39, %36
  %43 = load float** @tin2Buf, align 4, !dbg !258
  %44 = icmp ne float* %43, null, !dbg !258
  br i1 %44, label %45, label %48, !dbg !258

; <label>:45                                      ; preds = %42
  %46 = load float** @tin2Buf, align 4, !dbg !260
  %47 = bitcast float* %46 to i8*, !dbg !260
  call void @free(i8* %47) #3, !dbg !260
  br label %48, !dbg !260

; <label>:48                                      ; preds = %45, %42
  %49 = load float** @tin3Buf, align 4, !dbg !262
  %50 = icmp ne float* %49, null, !dbg !262
  br i1 %50, label %51, label %54, !dbg !262

; <label>:51                                      ; preds = %48
  %52 = load float** @tin2Buf, align 4, !dbg !264
  %53 = bitcast float* %52 to i8*, !dbg !264
  call void @free(i8* %53) #3, !dbg !264
  br label %54, !dbg !264

; <label>:54                                      ; preds = %51, %48
  %55 = load float** @toutBufHwInter, align 4, !dbg !266
  %56 = icmp ne float* %55, null, !dbg !266
  br i1 %56, label %57, label %60, !dbg !266

; <label>:57                                      ; preds = %54
  %58 = load float** @toutBufHwInter, align 4, !dbg !268
  %59 = bitcast float* %58 to i8*, !dbg !268
  call void @free(i8* %59) #3, !dbg !268
  br label %60, !dbg !268

; <label>:60                                      ; preds = %57, %54
  %61 = load float** @toutBufSwInter, align 4, !dbg !270
  %62 = icmp ne float* %61, null, !dbg !270
  br i1 %62, label %63, label %66, !dbg !270

; <label>:63                                      ; preds = %60
  %64 = load float** @toutBufSwInter, align 4, !dbg !272
  %65 = bitcast float* %64 to i8*, !dbg !272
  call void @free(i8* %65) #3, !dbg !272
  br label %66, !dbg !272

; <label>:66                                      ; preds = %63, %60
  %67 = load float** @toutBufHw, align 4, !dbg !274
  %68 = icmp ne float* %67, null, !dbg !274
  br i1 %68, label %69, label %72, !dbg !274

; <label>:69                                      ; preds = %66
  %70 = load float** @toutBufHw, align 4, !dbg !276
  %71 = bitcast float* %70 to i8*, !dbg !276
  call void @free(i8* %71) #3, !dbg !276
  br label %72, !dbg !276

; <label>:72                                      ; preds = %69, %66
  %73 = load float** @toutBufSw, align 4, !dbg !278
  %74 = icmp ne float* %73, null, !dbg !278
  br i1 %74, label %75, label %78, !dbg !278

; <label>:75                                      ; preds = %72
  %76 = load float** @toutBufSw, align 4, !dbg !280
  %77 = bitcast float* %76 to i8*, !dbg !280
  call void @free(i8* %77) #3, !dbg !280
  br label %78, !dbg !280

; <label>:78                                      ; preds = %75, %72
  store i32 2, i32* %1, !dbg !282
  br label %102, !dbg !282

; <label>:79                                      ; preds = %33
  call void @_Z10mmult_testv(), !dbg !283
  %80 = load float** @tin1Buf, align 4, !dbg !284
  %81 = bitcast float* %80 to i8*, !dbg !284
  call void @free(i8* %81) #3, !dbg !284
  %82 = load float** @tin2Buf, align 4, !dbg !285
  %83 = bitcast float* %82 to i8*, !dbg !285
  call void @free(i8* %83) #3, !dbg !285
  %84 = load float** @tin3Buf, align 4, !dbg !286
  %85 = bitcast float* %84 to i8*, !dbg !286
  call void @free(i8* %85) #3, !dbg !286
  %86 = load float** @toutBufHwInter, align 4, !dbg !287
  %87 = bitcast float* %86 to i8*, !dbg !287
  call void @free(i8* %87) #3, !dbg !287
  %88 = load float** @toutBufSwInter, align 4, !dbg !288
  %89 = bitcast float* %88 to i8*, !dbg !288
  call void @free(i8* %89) #3, !dbg !288
  %90 = load float** @toutBufHw, align 4, !dbg !289
  %91 = bitcast float* %90 to i8*, !dbg !289
  call void @free(i8* %91) #3, !dbg !289
  %92 = load float** @toutBufSw, align 4, !dbg !290
  %93 = bitcast float* %92 to i8*, !dbg !290
  call void @free(i8* %93) #3, !dbg !290
  %94 = load i32* @test_passed, align 4, !dbg !291
  %95 = icmp ne i32 %94, 0, !dbg !291
  br i1 %95, label %96, label %97, !dbg !291

; <label>:96                                      ; preds = %79
  br label %98, !dbg !292

; <label>:97                                      ; preds = %79
  br label %98, !dbg !294

; <label>:98                                      ; preds = %97, %96
  %99 = phi [7 x i8]* [ @.str5, %96 ], [ @.str6, %97 ], !dbg !291
  %100 = getelementptr inbounds [7 x i8]* %99, i32 0, i32 0, !dbg !296
  %101 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str4, i32 0, i32 0), i8* %100), !dbg !296
  store i32 0, i32* %1, !dbg !299
  br label %102, !dbg !299

; <label>:102                                     ; preds = %98, %78
  %103 = load i32* %1, !dbg !300
  ret i32 %103, !dbg !300
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #0

; Function Attrs: nounwind
declare void @free(i8*) #0

; Function Attrs: nounwind
declare i32 @rand() #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!37, !38, !39, !40, !41, !42, !43, !40, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !49}
!xidane.function_declaration_filename = !{!37, !57, !39, !57, !41, !58, !43, !57, !44, !59, !46, !60, !48, !57, !50, !57, !52, !61, !54, !61, !56, !61}
!xidane.ExternC = !{!41, !44, !52, !54, !56}
!llvm.module.flags = !{!62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !24, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !10, metadata !13, metadata !20, metadata !23}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_golden", metadata !"mmult_golden", metadata !"_Z12mmult_goldenPfS_S_", i32 42, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @_Z12mmult_goldenPfS_S_, null, null, metadata !2, i32 43} ; [ DW_TAG_subprogram ] [line 42] [def] [scope 43] [mmult_golden]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!9 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_test", metadata !"mmult_test", metadata !"_Z10mmult_testv", i32 68, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_Z10mmult_testv, null, null, metadata !2, i32 69} ; [ DW_TAG_subprogram ] [line 68] [def] [scope 69] [mmult_test]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{null}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 102, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 102} ; [ DW_TAG_subprogram ] [line 102] [def] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !16, metadata !17}
!16 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!19 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!20 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_result_check", metadata !"mmult_result_check", metadata !"_ZL18mmult_result_checkv", i32 55, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @_ZL18mmult_result_checkv, null, null, metadata !2, i32 56} ; [ DW_TAG_subprogram ] [line 55] [local] [def] [scope 56] [mmult_result_check]
!21 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{metadata !16}
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_init", metadata !"mmult_init", metadata !"_ZL10mmult_initv", i32 17, metadata !11, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_ZL10mmult_initv, null, null, metadata !2, i32 18} ; [ DW_TAG_subprogram ] [line 17] [local] [def] [scope 18] [mmult_init]
!24 = metadata !{metadata !25, metadata !26, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36}
!25 = metadata !{i32 786484, i32 0, null, metadata !"test_passed", metadata !"test_passed", metadata !"", metadata !5, i32 13, metadata !16, i32 0, i32 1, i32* @test_passed, null} ; [ DW_TAG_variable ] [test_passed] [line 13] [def]
!26 = metadata !{i32 786484, i32 0, null, metadata !"sw_time_total", metadata !"sw_time_total", metadata !"", metadata !5, i32 14, metadata !27, i32 0, i32 1, i32* @sw_time_total, null} ; [ DW_TAG_variable ] [sw_time_total] [line 14] [def]
!27 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from long unsigned int]
!28 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!29 = metadata !{i32 786484, i32 0, null, metadata !"hw_time_total", metadata !"hw_time_total", metadata !"", metadata !5, i32 14, metadata !27, i32 0, i32 1, i32* @hw_time_total, null} ; [ DW_TAG_variable ] [hw_time_total] [line 14] [def]
!30 = metadata !{i32 786484, i32 0, null, metadata !"tin1Buf", metadata !"tin1Buf", metadata !"", metadata !5, i32 15, metadata !8, i32 0, i32 1, float** @tin1Buf, null} ; [ DW_TAG_variable ] [tin1Buf] [line 15] [def]
!31 = metadata !{i32 786484, i32 0, null, metadata !"tin2Buf", metadata !"tin2Buf", metadata !"", metadata !5, i32 15, metadata !8, i32 0, i32 1, float** @tin2Buf, null} ; [ DW_TAG_variable ] [tin2Buf] [line 15] [def]
!32 = metadata !{i32 786484, i32 0, null, metadata !"tin3Buf", metadata !"tin3Buf", metadata !"", metadata !5, i32 15, metadata !8, i32 0, i32 1, float** @tin3Buf, null} ; [ DW_TAG_variable ] [tin3Buf] [line 15] [def]
!33 = metadata !{i32 786484, i32 0, null, metadata !"toutBufSwInter", metadata !"toutBufSwInter", metadata !"", metadata !5, i32 15, metadata !8, i32 0, i32 1, float** @toutBufSwInter, null} ; [ DW_TAG_variable ] [toutBufSwInter] [line 15] [def]
!34 = metadata !{i32 786484, i32 0, null, metadata !"toutBufHwInter", metadata !"toutBufHwInter", metadata !"", metadata !5, i32 15, metadata !8, i32 0, i32 1, float** @toutBufHwInter, null} ; [ DW_TAG_variable ] [toutBufHwInter] [line 15] [def]
!35 = metadata !{i32 786484, i32 0, null, metadata !"toutBufSw", metadata !"toutBufSw", metadata !"", metadata !5, i32 15, metadata !8, i32 0, i32 1, float** @toutBufSw, null} ; [ DW_TAG_variable ] [toutBufSw] [line 15] [def]
!36 = metadata !{i32 786484, i32 0, null, metadata !"toutBufHw", metadata !"toutBufHw", metadata !"", metadata !5, i32 15, metadata !8, i32 0, i32 1, float** @toutBufHw, null} ; [ DW_TAG_variable ] [toutBufHw] [line 15] [def]
!37 = metadata !{void (float*, float*, float*)* @_Z12mmult_goldenPfS_S_}
!38 = metadata !{metadata !"void.float *.1.float *.1.float *.1"}
!39 = metadata !{void ()* @_Z10mmult_testv}
!40 = metadata !{metadata !"void."}
!41 = metadata !{i32 (i8*, ...)* @printf}
!42 = metadata !{metadata !"int.const char *restrict.1"}
!43 = metadata !{void ()* @_ZL10mmult_initv}
!44 = metadata !{i64 ()* @sds_clock_counter}
!45 = metadata !{metadata !"unsigned long long."}
!46 = metadata !{void (float*, float*, float*)* @_Z11mmult_accelPfS_S_}
!47 = metadata !{metadata !"void.float [256].1.float [256].1.float [256].1"}
!48 = metadata !{i32 ()* @_ZL18mmult_result_checkv}
!49 = metadata !{metadata !"int."}
!50 = metadata !{i32 (i32, i8**)* @main}
!51 = metadata !{metadata !"int.int.0.char *[].1"}
!52 = metadata !{i8* (i32)* @malloc}
!53 = metadata !{metadata !"void .size_t.0"}
!54 = metadata !{void (i8*)* @free}
!55 = metadata !{metadata !"void.void *.1"}
!56 = metadata !{i32 ()* @rand}
!57 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp"}
!58 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdio.h"}
!59 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/arm-xilinx-linux-gnueabi/include/sds_lib.h"}
!60 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.h"}
!61 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdlib.h"}
!62 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!63 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!64 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!65 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!66 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!67 = metadata !{i32 786689, metadata !4, metadata !"in_arr", metadata !5, i32 16777258, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr] [line 42]
!68 = metadata !{i32 42, i32 26, metadata !4, null}
!69 = metadata !{i32 786689, metadata !4, metadata !"in_arr2", metadata !5, i32 33554474, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr2] [line 42]
!70 = metadata !{i32 42, i32 42, metadata !4, null}
!71 = metadata !{i32 786689, metadata !4, metadata !"out_arr", metadata !5, i32 50331690, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_arr] [line 42]
!72 = metadata !{i32 42, i32 58, metadata !4, null}
!73 = metadata !{i32 786688, metadata !74, metadata !"row", metadata !5, i32 44, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 44]
!74 = metadata !{i32 786443, metadata !1, metadata !4, i32 44, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!75 = metadata !{i32 44, i32 12, metadata !74, null}
!76 = metadata !{i32 44, i32 8, metadata !74, null}
!77 = metadata !{i32 44, i32 8, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !79, i32 44, i32 8, i32 2, i32 45} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!79 = metadata !{i32 786443, metadata !1, metadata !74, i32 44, i32 8, i32 1, i32 40} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!80 = metadata !{i32 786688, metadata !81, metadata !"col", metadata !5, i32 45, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 45]
!81 = metadata !{i32 786443, metadata !1, metadata !82, i32 45, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!82 = metadata !{i32 786443, metadata !1, metadata !74, i32 44, i32 43, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!83 = metadata !{i32 45, i32 14, metadata !81, null}
!84 = metadata !{i32 45, i32 10, metadata !81, null}
!85 = metadata !{i32 45, i32 10, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !87, i32 45, i32 10, i32 2, i32 44} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!87 = metadata !{i32 786443, metadata !1, metadata !81, i32 45, i32 10, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!88 = metadata !{i32 786688, metadata !89, metadata !"result", metadata !5, i32 46, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 46]
!89 = metadata !{i32 786443, metadata !1, metadata !81, i32 45, i32 45, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!90 = metadata !{i32 46, i32 13, metadata !89, null}
!91 = metadata !{i32 46, i32 7, metadata !89, null}
!92 = metadata !{i32 786688, metadata !93, metadata !"k", metadata !5, i32 47, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 47]
!93 = metadata !{i32 786443, metadata !1, metadata !89, i32 47, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!94 = metadata !{i32 47, i32 16, metadata !93, null}
!95 = metadata !{i32 47, i32 12, metadata !93, null}
!96 = metadata !{i32 47, i32 12, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !98, i32 47, i32 12, i32 2, i32 43} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!98 = metadata !{i32 786443, metadata !1, metadata !93, i32 47, i32 12, i32 1, i32 42} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!99 = metadata !{i32 48, i32 9, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !93, i32 47, i32 41, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!101 = metadata !{i32 49, i32 7, metadata !100, null}
!102 = metadata !{i32 47, i32 36, metadata !93, null}
!103 = metadata !{i32 50, i32 7, metadata !89, null}
!104 = metadata !{i32 51, i32 5, metadata !89, null}
!105 = metadata !{i32 45, i32 38, metadata !81, null}
!106 = metadata !{i32 52, i32 3, metadata !82, null}
!107 = metadata !{i32 44, i32 36, metadata !74, null}
!108 = metadata !{i32 53, i32 1, metadata !4, null}
!109 = metadata !{i32 786688, metadata !10, metadata !"i", metadata !5, i32 70, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 70]
!110 = metadata !{i32 70, i32 7, metadata !10, null}
!111 = metadata !{i32 786688, metadata !10, metadata !"result", metadata !5, i32 70, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 70]
!112 = metadata !{i32 70, i32 10, metadata !10, null}
!113 = metadata !{i32 72, i32 3, metadata !10, null}
!114 = metadata !{i32 74, i32 3, metadata !10, null}
!115 = metadata !{i32 786688, metadata !10, metadata !"clock_start", metadata !5, i32 76, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_start] [line 76]
!116 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!117 = metadata !{i32 76, i32 3, metadata !10, null}
!118 = metadata !{i32 786688, metadata !10, metadata !"clock_end", metadata !5, i32 76, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_end] [line 76]
!119 = metadata !{i32 78, i32 8, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !10, i32 78, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!121 = metadata !{i32 78, i32 8, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !123, i32 78, i32 8, i32 2, i32 47} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!123 = metadata !{i32 786443, metadata !1, metadata !120, i32 78, i32 8, i32 1, i32 46} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!124 = metadata !{i32 79, i32 5, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !120, i32 78, i32 35, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!126 = metadata !{i32 80, i32 5, metadata !125, null}
!127 = metadata !{i32 81, i32 3, metadata !125, null}
!128 = metadata !{i32 78, i32 30, metadata !120, null}
!129 = metadata !{i32 83, i32 3, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !10, i32 83, i32 3, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!131 = metadata !{i32 85, i32 8, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !10, i32 85, i32 3, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!133 = metadata !{i32 85, i32 8, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !135, i32 85, i32 8, i32 2, i32 49} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!135 = metadata !{i32 786443, metadata !1, metadata !132, i32 85, i32 8, i32 1, i32 48} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!136 = metadata !{i32 86, i32 5, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !132, i32 85, i32 35, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!138 = metadata !{i32 87, i32 5, metadata !137, null}
!139 = metadata !{i32 88, i32 3, metadata !137, null}
!140 = metadata !{i32 85, i32 30, metadata !132, null}
!141 = metadata !{i32 90, i32 3, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !10, i32 90, i32 3, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!143 = metadata !{i32 92, i32 12, metadata !10, null}
!144 = metadata !{i32 93, i32 7, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !10, i32 93, i32 7, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!146 = metadata !{i32 94, i32 5, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !145, i32 93, i32 20, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!148 = metadata !{i32 95, i32 3, metadata !147, null}
!149 = metadata !{i32 97, i32 5, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !145, i32 96, i32 8, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!151 = metadata !{i32 99, i32 1, metadata !10, null}
!152 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !5, i32 19, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 19]
!153 = metadata !{i32 19, i32 7, metadata !23, null}
!154 = metadata !{i32 786688, metadata !23, metadata !"j", metadata !5, i32 19, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 19]
!155 = metadata !{i32 19, i32 10, metadata !23, null}
!156 = metadata !{i32 21, i32 8, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !23, i32 21, i32 3, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!158 = metadata !{i32 21, i32 8, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !160, i32 21, i32 8, i32 2, i32 53} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!160 = metadata !{i32 786443, metadata !1, metadata !157, i32 21, i32 8, i32 1, i32 50} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!161 = metadata !{i32 22, i32 10, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !163, i32 22, i32 5, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!163 = metadata !{i32 786443, metadata !1, metadata !157, i32 21, i32 33, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!164 = metadata !{i32 22, i32 10, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !166, i32 22, i32 10, i32 2, i32 52} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!166 = metadata !{i32 786443, metadata !1, metadata !162, i32 22, i32 10, i32 1, i32 51} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!167 = metadata !{i32 23, i32 7, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !162, i32 22, i32 35, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!169 = metadata !{i32 24, i32 5, metadata !168, null}
!170 = metadata !{i32 22, i32 30, metadata !162, null}
!171 = metadata !{i32 25, i32 3, metadata !163, null}
!172 = metadata !{i32 21, i32 28, metadata !157, null}
!173 = metadata !{i32 26, i32 8, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !23, i32 26, i32 3, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!175 = metadata !{i32 26, i32 8, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !177, i32 26, i32 8, i32 2, i32 57} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!177 = metadata !{i32 786443, metadata !1, metadata !174, i32 26, i32 8, i32 1, i32 54} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!178 = metadata !{i32 27, i32 10, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !180, i32 27, i32 5, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!180 = metadata !{i32 786443, metadata !1, metadata !174, i32 26, i32 33, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!181 = metadata !{i32 27, i32 10, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !183, i32 27, i32 10, i32 2, i32 56} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!183 = metadata !{i32 786443, metadata !1, metadata !179, i32 27, i32 10, i32 1, i32 55} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!184 = metadata !{i32 28, i32 34, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !179, i32 27, i32 35, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!186 = metadata !{i32 29, i32 34, metadata !185, null}
!187 = metadata !{i32 30, i32 5, metadata !185, null}
!188 = metadata !{i32 27, i32 30, metadata !179, null}
!189 = metadata !{i32 31, i32 3, metadata !180, null}
!190 = metadata !{i32 26, i32 28, metadata !174, null}
!191 = metadata !{i32 32, i32 8, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !23, i32 32, i32 3, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!193 = metadata !{i32 32, i32 8, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !195, i32 32, i32 8, i32 2, i32 61} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!195 = metadata !{i32 786443, metadata !1, metadata !192, i32 32, i32 8, i32 1, i32 58} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!196 = metadata !{i32 33, i32 10, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !198, i32 33, i32 5, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!198 = metadata !{i32 786443, metadata !1, metadata !192, i32 32, i32 33, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!199 = metadata !{i32 33, i32 10, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !201, i32 33, i32 10, i32 2, i32 60} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!201 = metadata !{i32 786443, metadata !1, metadata !197, i32 33, i32 10, i32 1, i32 59} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!202 = metadata !{i32 34, i32 7, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !197, i32 33, i32 35, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!204 = metadata !{i32 35, i32 7, metadata !203, null}
!205 = metadata !{i32 36, i32 7, metadata !203, null}
!206 = metadata !{i32 37, i32 7, metadata !203, null}
!207 = metadata !{i32 38, i32 5, metadata !203, null}
!208 = metadata !{i32 33, i32 30, metadata !197, null}
!209 = metadata !{i32 39, i32 3, metadata !198, null}
!210 = metadata !{i32 32, i32 28, metadata !192, null}
!211 = metadata !{i32 40, i32 1, metadata !23, null}
!212 = metadata !{i32 786688, metadata !20, metadata !"i", metadata !5, i32 57, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 57]
!213 = metadata !{i32 57, i32 7, metadata !20, null}
!214 = metadata !{i32 59, i32 8, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !20, i32 59, i32 3, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!216 = metadata !{i32 59, i32 8, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !218, i32 59, i32 8, i32 2, i32 63} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!218 = metadata !{i32 786443, metadata !1, metadata !215, i32 59, i32 8, i32 1, i32 62} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!219 = metadata !{i32 60, i32 9, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !221, i32 60, i32 9, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!221 = metadata !{i32 786443, metadata !1, metadata !215, i32 59, i32 43, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!222 = metadata !{i32 61, i32 7, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !220, i32 60, i32 39, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!224 = metadata !{i32 62, i32 7, metadata !223, null}
!225 = metadata !{i32 64, i32 3, metadata !221, null}
!226 = metadata !{i32 59, i32 38, metadata !215, null}
!227 = metadata !{i32 65, i32 3, metadata !20, null}
!228 = metadata !{i32 66, i32 1, metadata !20, null}
!229 = metadata !{i32 786689, metadata !13, metadata !"argc", metadata !5, i32 16777318, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 102]
!230 = metadata !{i32 102, i32 14, metadata !13, null}
!231 = metadata !{i32 786689, metadata !13, metadata !"argv", metadata !5, i32 33554534, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 102]
!232 = metadata !{i32 102, i32 26, metadata !13, null}
!233 = metadata !{i32 104, i32 3, metadata !13, null}
!234 = metadata !{i32 106, i32 22, metadata !13, null}
!235 = metadata !{i32 107, i32 22, metadata !13, null}
!236 = metadata !{i32 108, i32 22, metadata !13, null}
!237 = metadata !{i32 109, i32 29, metadata !13, null}
!238 = metadata !{i32 110, i32 29, metadata !13, null}
!239 = metadata !{i32 111, i32 24, metadata !13, null}
!240 = metadata !{i32 112, i32 24, metadata !13, null}
!241 = metadata !{i32 113, i32 7, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !13, i32 113, i32 7, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!243 = metadata !{i32 113, i32 7, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !242, i32 113, i32 7, i32 1, i32 64} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!245 = metadata !{i32 113, i32 7, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !242, i32 113, i32 7, i32 2, i32 65} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!247 = metadata !{i32 113, i32 7, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !242, i32 113, i32 7, i32 3, i32 66} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!249 = metadata !{i32 113, i32 7, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !242, i32 113, i32 7, i32 4, i32 67} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!251 = metadata !{i32 113, i32 7, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !242, i32 113, i32 7, i32 5, i32 68} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!253 = metadata !{i32 114, i32 9, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !255, i32 114, i32 9, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!255 = metadata !{i32 786443, metadata !1, metadata !242, i32 113, i32 95, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!256 = metadata !{i32 114, i32 18, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !254, i32 114, i32 18, i32 1, i32 69} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!258 = metadata !{i32 115, i32 9, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !255, i32 115, i32 9, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!260 = metadata !{i32 115, i32 18, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !259, i32 115, i32 18, i32 1, i32 70} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!262 = metadata !{i32 116, i32 9, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !255, i32 116, i32 9, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!264 = metadata !{i32 116, i32 18, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !263, i32 116, i32 18, i32 1, i32 71} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!266 = metadata !{i32 117, i32 9, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !255, i32 117, i32 9, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!268 = metadata !{i32 117, i32 25, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !267, i32 117, i32 25, i32 1, i32 72} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!270 = metadata !{i32 118, i32 9, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !255, i32 118, i32 9, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!272 = metadata !{i32 118, i32 25, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !271, i32 118, i32 25, i32 1, i32 73} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!274 = metadata !{i32 119, i32 9, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !255, i32 119, i32 9, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!276 = metadata !{i32 119, i32 20, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !275, i32 119, i32 20, i32 1, i32 74} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!278 = metadata !{i32 120, i32 9, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !255, i32 120, i32 9, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!280 = metadata !{i32 120, i32 20, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !279, i32 120, i32 20, i32 1, i32 75} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!282 = metadata !{i32 121, i32 5, metadata !255, null}
!283 = metadata !{i32 124, i32 3, metadata !13, null}
!284 = metadata !{i32 126, i32 3, metadata !13, null}
!285 = metadata !{i32 127, i32 3, metadata !13, null}
!286 = metadata !{i32 128, i32 3, metadata !13, null}
!287 = metadata !{i32 129, i32 3, metadata !13, null}
!288 = metadata !{i32 130, i32 3, metadata !13, null}
!289 = metadata !{i32 131, i32 3, metadata !13, null}
!290 = metadata !{i32 132, i32 3, metadata !13, null}
!291 = metadata !{i32 134, i32 3, metadata !13, null}
!292 = metadata !{i32 134, i32 3, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !13, i32 134, i32 3, i32 1, i32 76} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!294 = metadata !{i32 134, i32 3, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !13, i32 134, i32 3, i32 2, i32 77} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!296 = metadata !{i32 134, i32 3, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !298, i32 134, i32 3, i32 4, i32 79} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!298 = metadata !{i32 786443, metadata !1, metadata !13, i32 134, i32 3, i32 3, i32 78} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult.cpp]
!299 = metadata !{i32 136, i32 3, metadata !13, null}
!300 = metadata !{i32 137, i32 1, metadata !13, null}
