; ModuleID = '/home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp'
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
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !59), !dbg !60
  store float* %in_arr2, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !61), !dbg !62
  store float* %out_arr, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !63), !dbg !64
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !65), !dbg !67
  store i32 0, i32* %row, align 4, !dbg !68
  br label %4, !dbg !68

; <label>:4                                       ; preds = %48, %0
  %5 = load i32* %row, align 4, !dbg !69
  %6 = icmp slt i32 %5, 32, !dbg !69
  br i1 %6, label %7, label %51, !dbg !69

; <label>:7                                       ; preds = %4
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !72), !dbg !75
  store i32 0, i32* %col, align 4, !dbg !76
  br label %8, !dbg !76

; <label>:8                                       ; preds = %44, %7
  %9 = load i32* %col, align 4, !dbg !77
  %10 = icmp slt i32 %9, 32, !dbg !77
  br i1 %10, label %11, label %47, !dbg !77

; <label>:11                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{float* %result}, metadata !80), !dbg !82
  store float 0.000000e+00, float* %result, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !84), !dbg !86
  store i32 0, i32* %k, align 4, !dbg !87
  br label %12, !dbg !87

; <label>:12                                      ; preds = %33, %11
  %13 = load i32* %k, align 4, !dbg !88
  %14 = icmp slt i32 %13, 32, !dbg !88
  br i1 %14, label %15, label %36, !dbg !88

; <label>:15                                      ; preds = %12
  %16 = load i32* %row, align 4, !dbg !91
  %17 = mul nsw i32 %16, 32, !dbg !91
  %18 = load i32* %k, align 4, !dbg !91
  %19 = add nsw i32 %17, %18, !dbg !91
  %20 = load float** %1, align 4, !dbg !91
  %21 = getelementptr inbounds float* %20, i32 %19, !dbg !91
  %22 = load float* %21, align 4, !dbg !91
  %23 = load i32* %k, align 4, !dbg !91
  %24 = mul nsw i32 %23, 32, !dbg !91
  %25 = load i32* %col, align 4, !dbg !91
  %26 = add nsw i32 %24, %25, !dbg !91
  %27 = load float** %2, align 4, !dbg !91
  %28 = getelementptr inbounds float* %27, i32 %26, !dbg !91
  %29 = load float* %28, align 4, !dbg !91
  %30 = fmul float %22, %29, !dbg !91
  %31 = load float* %result, align 4, !dbg !91
  %32 = fadd float %31, %30, !dbg !91
  store float %32, float* %result, align 4, !dbg !91
  br label %33, !dbg !93

; <label>:33                                      ; preds = %15
  %34 = load i32* %k, align 4, !dbg !94
  %35 = add nsw i32 %34, 1, !dbg !94
  store i32 %35, i32* %k, align 4, !dbg !94
  br label %12, !dbg !94

; <label>:36                                      ; preds = %12
  %37 = load float* %result, align 4, !dbg !95
  %38 = load i32* %row, align 4, !dbg !95
  %39 = mul nsw i32 %38, 32, !dbg !95
  %40 = load i32* %col, align 4, !dbg !95
  %41 = add nsw i32 %39, %40, !dbg !95
  %42 = load float** %3, align 4, !dbg !95
  %43 = getelementptr inbounds float* %42, i32 %41, !dbg !95
  store float %37, float* %43, align 4, !dbg !95
  br label %44, !dbg !96

; <label>:44                                      ; preds = %36
  %45 = load i32* %col, align 4, !dbg !97
  %46 = add nsw i32 %45, 1, !dbg !97
  store i32 %46, i32* %col, align 4, !dbg !97
  br label %8, !dbg !97

; <label>:47                                      ; preds = %8
  br label %48, !dbg !98

; <label>:48                                      ; preds = %47
  %49 = load i32* %row, align 4, !dbg !99
  %50 = add nsw i32 %49, 1, !dbg !99
  store i32 %50, i32* %row, align 4, !dbg !99
  br label %4, !dbg !99

; <label>:51                                      ; preds = %4
  ret void, !dbg !100
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

define i32 @_Z10mmult_testPfS_S_S_(float* %tin1Buf, float* %tin2Buf, float* %toutBufSw, float* %toutBufHw) #2 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %4 = alloca float*, align 4
  %i = alloca i32, align 4
  %clock_start = alloca i64, align 8
  %clock_end = alloca i64, align 8
  store float* %tin1Buf, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !101), !dbg !102
  store float* %tin2Buf, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !103), !dbg !104
  store float* %toutBufSw, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !105), !dbg !106
  store float* %toutBufHw, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !107), !dbg !108
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !109), !dbg !110
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0)), !dbg !111
  %6 = load float** %1, align 4, !dbg !112
  %7 = load float** %2, align 4, !dbg !112
  %8 = load float** %3, align 4, !dbg !112
  %9 = load float** %4, align 4, !dbg !112
  call void @_ZL10mmult_initPfS_S_S_(float* %6, float* %7, float* %8, float* %9), !dbg !112
  call void @llvm.dbg.declare(metadata !{i64* %clock_start}, metadata !113), !dbg !115
  call void @llvm.dbg.declare(metadata !{i64* %clock_end}, metadata !116), !dbg !115
  %10 = call i64 @sds_clock_counter(), !dbg !115
  store i64 %10, i64* %clock_start, align 8, !dbg !115
  store i32 0, i32* %i, align 4, !dbg !117
  br label %11, !dbg !117

; <label>:11                                      ; preds = %18, %0
  %12 = load i32* %i, align 4, !dbg !119
  %13 = icmp slt i32 %12, 1024, !dbg !119
  br i1 %13, label %14, label %21, !dbg !119

; <label>:14                                      ; preds = %11
  %15 = load float** %1, align 4, !dbg !122
  %16 = load float** %2, align 4, !dbg !122
  %17 = load float** %3, align 4, !dbg !122
  call void @_Z12mmult_goldenPfS_S_(float* %15, float* %16, float* %17), !dbg !122
  br label %18, !dbg !124

; <label>:18                                      ; preds = %14
  %19 = load i32* %i, align 4, !dbg !125
  %20 = add nsw i32 %19, 1, !dbg !125
  store i32 %20, i32* %i, align 4, !dbg !125
  br label %11, !dbg !125

; <label>:21                                      ; preds = %11
  %22 = call i64 @sds_clock_counter(), !dbg !126
  store i64 %22, i64* %clock_end, align 8, !dbg !126
  %23 = load i64* %clock_end, align 8, !dbg !126
  %24 = load i64* %clock_start, align 8, !dbg !126
  %25 = sub i64 %23, %24, !dbg !126
  %26 = udiv i64 %25, 1024, !dbg !126
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([62 x i8]* @.str1, i32 0, i32 0), i64 %26), !dbg !126
  %28 = call i64 @sds_clock_counter(), !dbg !126
  store i64 %28, i64* %clock_start, align 8, !dbg !126
  store i32 0, i32* %i, align 4, !dbg !128
  br label %29, !dbg !128

; <label>:29                                      ; preds = %36, %21
  %30 = load i32* %i, align 4, !dbg !130
  %31 = icmp slt i32 %30, 1024, !dbg !130
  br i1 %31, label %32, label %39, !dbg !130

; <label>:32                                      ; preds = %29
  %33 = load float** %1, align 4, !dbg !133
  %34 = load float** %2, align 4, !dbg !133
  %35 = load float** %4, align 4, !dbg !133
  call void @_Z11mmult_accelPfS_S_(float* %33, float* %34, float* %35), !dbg !133
  br label %36, !dbg !133

; <label>:36                                      ; preds = %32
  %37 = load i32* %i, align 4, !dbg !134
  %38 = add nsw i32 %37, 1, !dbg !134
  store i32 %38, i32* %i, align 4, !dbg !134
  br label %29, !dbg !134

; <label>:39                                      ; preds = %29
  %40 = call i64 @sds_clock_counter(), !dbg !135
  store i64 %40, i64* %clock_end, align 8, !dbg !135
  %41 = load i64* %clock_end, align 8, !dbg !135
  %42 = load i64* %clock_start, align 8, !dbg !135
  %43 = sub i64 %41, %42, !dbg !135
  %44 = udiv i64 %43, 1024, !dbg !135
  %45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([64 x i8]* @.str2, i32 0, i32 0), i64 %44), !dbg !135
  %46 = load float** %3, align 4, !dbg !137
  %47 = load float** %4, align 4, !dbg !137
  %48 = call i32 @_ZL18mmult_result_checkPfS_(float* %46, float* %47), !dbg !137
  ret i32 %48, !dbg !137
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
define internal void @_ZL10mmult_initPfS_S_S_(float* %tin1Buf, float* %tin2Buf, float* %toutBufSw, float* %toutBufHw) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %4 = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store float* %tin1Buf, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !138), !dbg !139
  store float* %tin2Buf, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !140), !dbg !141
  store float* %toutBufSw, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !142), !dbg !143
  store float* %toutBufHw, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !144), !dbg !145
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !146), !dbg !147
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !148), !dbg !149
  store i32 0, i32* %i, align 4, !dbg !150
  br label %5, !dbg !150

; <label>:5                                       ; preds = %29, %0
  %6 = load i32* %i, align 4, !dbg !152
  %7 = icmp slt i32 %6, 32, !dbg !152
  br i1 %7, label %8, label %32, !dbg !152

; <label>:8                                       ; preds = %5
  store i32 0, i32* %j, align 4, !dbg !155
  br label %9, !dbg !155

; <label>:9                                       ; preds = %25, %8
  %10 = load i32* %j, align 4, !dbg !158
  %11 = icmp slt i32 %10, 32, !dbg !158
  br i1 %11, label %12, label %28, !dbg !158

; <label>:12                                      ; preds = %9
  %13 = load i32* %i, align 4, !dbg !161
  %14 = mul nsw i32 %13, 32, !dbg !161
  %15 = add nsw i32 1, %14, !dbg !161
  %16 = load i32* %j, align 4, !dbg !161
  %17 = add nsw i32 %15, %16, !dbg !161
  %18 = sitofp i32 %17 to float, !dbg !161
  %19 = load i32* %i, align 4, !dbg !161
  %20 = mul nsw i32 %19, 32, !dbg !161
  %21 = load i32* %j, align 4, !dbg !161
  %22 = add nsw i32 %20, %21, !dbg !161
  %23 = load float** %1, align 4, !dbg !161
  %24 = getelementptr inbounds float* %23, i32 %22, !dbg !161
  store float %18, float* %24, align 4, !dbg !161
  br label %25, !dbg !163

; <label>:25                                      ; preds = %12
  %26 = load i32* %j, align 4, !dbg !164
  %27 = add nsw i32 %26, 1, !dbg !164
  store i32 %27, i32* %j, align 4, !dbg !164
  br label %9, !dbg !164

; <label>:28                                      ; preds = %9
  br label %29, !dbg !165

; <label>:29                                      ; preds = %28
  %30 = load i32* %i, align 4, !dbg !166
  %31 = add nsw i32 %30, 1, !dbg !166
  store i32 %31, i32* %i, align 4, !dbg !166
  br label %5, !dbg !166

; <label>:32                                      ; preds = %5
  store i32 0, i32* %i, align 4, !dbg !167
  br label %33, !dbg !167

; <label>:33                                      ; preds = %54, %32
  %34 = load i32* %i, align 4, !dbg !169
  %35 = icmp slt i32 %34, 32, !dbg !169
  br i1 %35, label %36, label %57, !dbg !169

; <label>:36                                      ; preds = %33
  store i32 0, i32* %j, align 4, !dbg !172
  br label %37, !dbg !172

; <label>:37                                      ; preds = %50, %36
  %38 = load i32* %j, align 4, !dbg !175
  %39 = icmp slt i32 %38, 32, !dbg !175
  br i1 %39, label %40, label %53, !dbg !175

; <label>:40                                      ; preds = %37
  %41 = call i32 @rand() #3, !dbg !178
  %42 = srem i32 %41, 1024, !dbg !178
  %43 = sitofp i32 %42 to float, !dbg !178
  %44 = load i32* %i, align 4, !dbg !178
  %45 = mul nsw i32 %44, 32, !dbg !178
  %46 = load i32* %j, align 4, !dbg !178
  %47 = add nsw i32 %45, %46, !dbg !178
  %48 = load float** %2, align 4, !dbg !178
  %49 = getelementptr inbounds float* %48, i32 %47, !dbg !178
  store float %43, float* %49, align 4, !dbg !178
  br label %50, !dbg !180

; <label>:50                                      ; preds = %40
  %51 = load i32* %j, align 4, !dbg !181
  %52 = add nsw i32 %51, 1, !dbg !181
  store i32 %52, i32* %j, align 4, !dbg !181
  br label %37, !dbg !181

; <label>:53                                      ; preds = %37
  br label %54, !dbg !182

; <label>:54                                      ; preds = %53
  %55 = load i32* %i, align 4, !dbg !183
  %56 = add nsw i32 %55, 1, !dbg !183
  store i32 %56, i32* %i, align 4, !dbg !183
  br label %33, !dbg !183

; <label>:57                                      ; preds = %33
  store i32 0, i32* %i, align 4, !dbg !184
  br label %58, !dbg !184

; <label>:58                                      ; preds = %82, %57
  %59 = load i32* %i, align 4, !dbg !186
  %60 = icmp slt i32 %59, 32, !dbg !186
  br i1 %60, label %61, label %85, !dbg !186

; <label>:61                                      ; preds = %58
  store i32 0, i32* %j, align 4, !dbg !189
  br label %62, !dbg !189

; <label>:62                                      ; preds = %78, %61
  %63 = load i32* %j, align 4, !dbg !192
  %64 = icmp slt i32 %63, 32, !dbg !192
  br i1 %64, label %65, label %81, !dbg !192

; <label>:65                                      ; preds = %62
  %66 = load i32* %i, align 4, !dbg !195
  %67 = mul nsw i32 %66, 32, !dbg !195
  %68 = load i32* %j, align 4, !dbg !195
  %69 = add nsw i32 %67, %68, !dbg !195
  %70 = load float** %3, align 4, !dbg !195
  %71 = getelementptr inbounds float* %70, i32 %69, !dbg !195
  store float 0.000000e+00, float* %71, align 4, !dbg !195
  %72 = load i32* %i, align 4, !dbg !197
  %73 = mul nsw i32 %72, 32, !dbg !197
  %74 = load i32* %j, align 4, !dbg !197
  %75 = add nsw i32 %73, %74, !dbg !197
  %76 = load float** %4, align 4, !dbg !197
  %77 = getelementptr inbounds float* %76, i32 %75, !dbg !197
  store float 0.000000e+00, float* %77, align 4, !dbg !197
  br label %78, !dbg !198

; <label>:78                                      ; preds = %65
  %79 = load i32* %j, align 4, !dbg !199
  %80 = add nsw i32 %79, 1, !dbg !199
  store i32 %80, i32* %j, align 4, !dbg !199
  br label %62, !dbg !199

; <label>:81                                      ; preds = %62
  br label %82, !dbg !200

; <label>:82                                      ; preds = %81
  %83 = load i32* %i, align 4, !dbg !201
  %84 = add nsw i32 %83, 1, !dbg !201
  store i32 %84, i32* %i, align 4, !dbg !201
  br label %58, !dbg !201

; <label>:85                                      ; preds = %58
  ret void, !dbg !202
}

declare i64 @sds_clock_counter() #2

declare void @_Z11mmult_accelPfS_S_(float*, float*, float*) #2

define internal i32 @_ZL18mmult_result_checkPfS_(float* %toutBufSw, float* %toutBufHw) #2 {
  %1 = alloca i32, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %i = alloca i32, align 4
  store float* %toutBufSw, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !203), !dbg !204
  store float* %toutBufHw, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !205), !dbg !206
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !207), !dbg !208
  store i32 0, i32* %i, align 4, !dbg !209
  br label %4, !dbg !209

; <label>:4                                       ; preds = %31, %0
  %5 = load i32* %i, align 4, !dbg !211
  %6 = icmp slt i32 %5, 1024, !dbg !211
  br i1 %6, label %7, label %34, !dbg !211

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4, !dbg !214
  %9 = load float** %2, align 4, !dbg !214
  %10 = getelementptr inbounds float* %9, i32 %8, !dbg !214
  %11 = load float* %10, align 4, !dbg !214
  %12 = load i32* %i, align 4, !dbg !214
  %13 = load float** %3, align 4, !dbg !214
  %14 = getelementptr inbounds float* %13, i32 %12, !dbg !214
  %15 = load float* %14, align 4, !dbg !214
  %16 = fcmp une float %11, %15, !dbg !214
  br i1 %16, label %17, label %30, !dbg !214

; <label>:17                                      ; preds = %7
  %18 = load i32* %i, align 4, !dbg !217
  %19 = load i32* %i, align 4, !dbg !217
  %20 = load float** %2, align 4, !dbg !217
  %21 = getelementptr inbounds float* %20, i32 %19, !dbg !217
  %22 = load float* %21, align 4, !dbg !217
  %23 = fpext float %22 to double, !dbg !217
  %24 = load i32* %i, align 4, !dbg !217
  %25 = load float** %3, align 4, !dbg !217
  %26 = getelementptr inbounds float* %25, i32 %24, !dbg !217
  %27 = load float* %26, align 4, !dbg !217
  %28 = fpext float %27 to double, !dbg !217
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str7, i32 0, i32 0), i32 %18, double %23, double %28), !dbg !217
  store i32 0, i32* %1, !dbg !219
  br label %35, !dbg !219

; <label>:30                                      ; preds = %7
  br label %31, !dbg !220

; <label>:31                                      ; preds = %30
  %32 = load i32* %i, align 4, !dbg !221
  %33 = add nsw i32 %32, 1, !dbg !221
  store i32 %33, i32* %i, align 4, !dbg !221
  br label %4, !dbg !221

; <label>:34                                      ; preds = %4
  store i32 1, i32* %1, !dbg !222
  br label %35, !dbg !222

; <label>:35                                      ; preds = %34, %17
  %36 = load i32* %1, !dbg !223
  ret i32 %36, !dbg !223
}

define i32 @main(i32 %argc, i8** %argv) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %test_passed = alloca i32, align 4
  %tin1Buf = alloca float*, align 4
  %tin2Buf = alloca float*, align 4
  %toutBufSw = alloca float*, align 4
  %toutBufHw = alloca float*, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !224), !dbg !225
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !226), !dbg !227
  call void @llvm.dbg.declare(metadata !{i32* %test_passed}, metadata !228), !dbg !229
  store i32 0, i32* %test_passed, align 4, !dbg !230
  call void @llvm.dbg.declare(metadata !{float** %tin1Buf}, metadata !231), !dbg !232
  call void @llvm.dbg.declare(metadata !{float** %tin2Buf}, metadata !233), !dbg !234
  call void @llvm.dbg.declare(metadata !{float** %toutBufSw}, metadata !235), !dbg !236
  call void @llvm.dbg.declare(metadata !{float** %toutBufHw}, metadata !237), !dbg !238
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str3, i32 0, i32 0), i32 32), !dbg !239
  %5 = call noalias i8* @malloc(i32 4096) #3, !dbg !240
  %6 = bitcast i8* %5 to float*, !dbg !240
  store float* %6, float** %tin1Buf, align 4, !dbg !240
  %7 = call noalias i8* @malloc(i32 4096) #3, !dbg !241
  %8 = bitcast i8* %7 to float*, !dbg !241
  store float* %8, float** %tin2Buf, align 4, !dbg !241
  %9 = call noalias i8* @malloc(i32 4096) #3, !dbg !242
  %10 = bitcast i8* %9 to float*, !dbg !242
  store float* %10, float** %toutBufHw, align 4, !dbg !242
  %11 = call noalias i8* @malloc(i32 4096) #3, !dbg !243
  %12 = bitcast i8* %11 to float*, !dbg !243
  store float* %12, float** %toutBufSw, align 4, !dbg !243
  %13 = load float** %tin1Buf, align 4, !dbg !244
  %14 = icmp ne float* %13, null, !dbg !244
  br i1 %14, label %15, label %24, !dbg !244

; <label>:15                                      ; preds = %0
  %16 = load float** %tin2Buf, align 4, !dbg !246
  %17 = icmp ne float* %16, null, !dbg !246
  br i1 %17, label %18, label %24, !dbg !246

; <label>:18                                      ; preds = %15
  %19 = load float** %toutBufHw, align 4, !dbg !248
  %20 = icmp ne float* %19, null, !dbg !248
  br i1 %20, label %21, label %24, !dbg !248

; <label>:21                                      ; preds = %18
  %22 = load float** %toutBufSw, align 4, !dbg !250
  %23 = icmp ne float* %22, null, !dbg !250
  br i1 %23, label %49, label %24, !dbg !250

; <label>:24                                      ; preds = %21, %18, %15, %0
  %25 = load float** %tin1Buf, align 4, !dbg !252
  %26 = icmp ne float* %25, null, !dbg !252
  br i1 %26, label %27, label %30, !dbg !252

; <label>:27                                      ; preds = %24
  %28 = load float** %tin1Buf, align 4, !dbg !255
  %29 = bitcast float* %28 to i8*, !dbg !255
  call void @free(i8* %29) #3, !dbg !255
  br label %30, !dbg !255

; <label>:30                                      ; preds = %27, %24
  %31 = load float** %tin2Buf, align 4, !dbg !257
  %32 = icmp ne float* %31, null, !dbg !257
  br i1 %32, label %33, label %36, !dbg !257

; <label>:33                                      ; preds = %30
  %34 = load float** %tin2Buf, align 4, !dbg !259
  %35 = bitcast float* %34 to i8*, !dbg !259
  call void @free(i8* %35) #3, !dbg !259
  br label %36, !dbg !259

; <label>:36                                      ; preds = %33, %30
  %37 = load float** %toutBufHw, align 4, !dbg !261
  %38 = icmp ne float* %37, null, !dbg !261
  br i1 %38, label %39, label %42, !dbg !261

; <label>:39                                      ; preds = %36
  %40 = load float** %toutBufHw, align 4, !dbg !263
  %41 = bitcast float* %40 to i8*, !dbg !263
  call void @free(i8* %41) #3, !dbg !263
  br label %42, !dbg !263

; <label>:42                                      ; preds = %39, %36
  %43 = load float** %toutBufSw, align 4, !dbg !265
  %44 = icmp ne float* %43, null, !dbg !265
  br i1 %44, label %45, label %48, !dbg !265

; <label>:45                                      ; preds = %42
  %46 = load float** %toutBufSw, align 4, !dbg !267
  %47 = bitcast float* %46 to i8*, !dbg !267
  call void @free(i8* %47) #3, !dbg !267
  br label %48, !dbg !267

; <label>:48                                      ; preds = %45, %42
  store i32 2, i32* %1, !dbg !269
  br label %71, !dbg !269

; <label>:49                                      ; preds = %21
  %50 = load float** %tin1Buf, align 4, !dbg !270
  %51 = load float** %tin2Buf, align 4, !dbg !270
  %52 = load float** %toutBufSw, align 4, !dbg !270
  %53 = load float** %toutBufHw, align 4, !dbg !270
  %54 = call i32 @_Z10mmult_testPfS_S_S_(float* %50, float* %51, float* %52, float* %53), !dbg !270
  store i32 %54, i32* %test_passed, align 4, !dbg !270
  %55 = load float** %tin1Buf, align 4, !dbg !271
  %56 = bitcast float* %55 to i8*, !dbg !271
  call void @free(i8* %56) #3, !dbg !271
  %57 = load float** %tin2Buf, align 4, !dbg !272
  %58 = bitcast float* %57 to i8*, !dbg !272
  call void @free(i8* %58) #3, !dbg !272
  %59 = load float** %toutBufHw, align 4, !dbg !273
  %60 = bitcast float* %59 to i8*, !dbg !273
  call void @free(i8* %60) #3, !dbg !273
  %61 = load float** %toutBufSw, align 4, !dbg !274
  %62 = bitcast float* %61 to i8*, !dbg !274
  call void @free(i8* %62) #3, !dbg !274
  %63 = load i32* %test_passed, align 4, !dbg !275
  %64 = icmp ne i32 %63, 0, !dbg !275
  br i1 %64, label %65, label %66, !dbg !275

; <label>:65                                      ; preds = %49
  br label %67, !dbg !276

; <label>:66                                      ; preds = %49
  br label %67, !dbg !278

; <label>:67                                      ; preds = %66, %65
  %68 = phi [7 x i8]* [ @.str5, %65 ], [ @.str6, %66 ], !dbg !275
  %69 = getelementptr inbounds [7 x i8]* %68, i32 0, i32 0, !dbg !280
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str4, i32 0, i32 0), i8* %69), !dbg !280
  store i32 0, i32* %1, !dbg !283
  br label %71, !dbg !283

; <label>:71                                      ; preds = %67, %48
  %72 = load i32* %1, !dbg !284
  ret i32 %72, !dbg !284
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
!xidane.function_declaration_type = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!xidane.function_declaration_filename = !{!26, !48, !28, !48, !30, !49, !32, !48, !34, !50, !36, !51, !38, !48, !40, !48, !42, !52, !44, !52, !46, !52}
!xidane.ExternC = !{!30, !34, !42, !44, !46}
!xidane.function_argument_annotation = !{!36, !53}
!llvm.module.flags = !{!54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_optimized"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !10, metadata !14, metadata !20, metadata !23}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_golden", metadata !"mmult_golden", metadata !"_Z12mmult_goldenPfS_S_", i32 35, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @_Z12mmult_goldenPfS_S_, null, null, metadata !2, i32 36} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 36] [mmult_golden]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!9 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_test", metadata !"mmult_test", metadata !"_Z10mmult_testPfS_S_S_", i32 61, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (float*, float*, float*, float*)* @_Z10mmult_testPfS_S_S_, null, null, metadata !2, i32 62} ; [ DW_TAG_subprogram ] [line 61] [def] [scope 62] [mmult_test]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !13, metadata !8, metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 86, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 86} ; [ DW_TAG_subprogram ] [line 86] [def] [main]
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !13, metadata !13, metadata !17}
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!19 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!20 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_result_check", metadata !"mmult_result_check", metadata !"_ZL18mmult_result_checkPfS_", i32 48, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (float*, float*)* @_ZL18mmult_result_checkPfS_, null, null, metadata !2, i32 49} ; [ DW_TAG_subprogram ] [line 48] [local] [def] [scope 49] [mmult_result_check]
!21 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{metadata !13, metadata !8, metadata !8}
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_init", metadata !"mmult_init", metadata !"_ZL10mmult_initPfS_S_S_", i32 13, metadata !24, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*, float*)* @_ZL10mmult_initPfS_S_S_, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 13] [local] [def] [scope 14] [mmult_init]
!24 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !8, metadata !8, metadata !8, metadata !8}
!26 = metadata !{void (float*, float*, float*)* @_Z12mmult_goldenPfS_S_}
!27 = metadata !{metadata !"void.float *.1.float *.1.float *.1"}
!28 = metadata !{i32 (float*, float*, float*, float*)* @_Z10mmult_testPfS_S_S_}
!29 = metadata !{metadata !"int.float *.1.float *.1.float *.1.float *.1"}
!30 = metadata !{i32 (i8*, ...)* @printf}
!31 = metadata !{metadata !"int.const char *restrict.1"}
!32 = metadata !{void (float*, float*, float*, float*)* @_ZL10mmult_initPfS_S_S_}
!33 = metadata !{metadata !"void.float *.1.float *.1.float *.1.float *.1"}
!34 = metadata !{i64 ()* @sds_clock_counter}
!35 = metadata !{metadata !"unsigned long long."}
!36 = metadata !{void (float*, float*, float*)* @_Z11mmult_accelPfS_S_}
!37 = metadata !{metadata !"void.float [1024].1.float [1024].1.float [1024].1"}
!38 = metadata !{i32 (float*, float*)* @_ZL18mmult_result_checkPfS_}
!39 = metadata !{metadata !"int.float *.1.float *.1"}
!40 = metadata !{i32 (i32, i8**)* @main}
!41 = metadata !{metadata !"int.int.0.char *[].1"}
!42 = metadata !{i8* (i32)* @malloc}
!43 = metadata !{metadata !"void .size_t.0"}
!44 = metadata !{void (i8*)* @free}
!45 = metadata !{metadata !"void.void *.1"}
!46 = metadata !{i32 ()* @rand}
!47 = metadata !{metadata !"int."}
!48 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp"}
!49 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdio.h"}
!50 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/arm-xilinx-linux-gnueabi/include/sds_lib.h"}
!51 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.h"}
!52 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdlib.h"}
!53 = metadata !{metadata !"in_A,,,,,,,, in_B,,,,,,,, out_C,,,,,,,, "}
!54 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!55 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!56 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!57 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!58 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!59 = metadata !{i32 786689, metadata !4, metadata !"in_arr", metadata !5, i32 16777251, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr] [line 35]
!60 = metadata !{i32 35, i32 26, metadata !4, null}
!61 = metadata !{i32 786689, metadata !4, metadata !"in_arr2", metadata !5, i32 33554467, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr2] [line 35]
!62 = metadata !{i32 35, i32 42, metadata !4, null}
!63 = metadata !{i32 786689, metadata !4, metadata !"out_arr", metadata !5, i32 50331683, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_arr] [line 35]
!64 = metadata !{i32 35, i32 58, metadata !4, null}
!65 = metadata !{i32 786688, metadata !66, metadata !"row", metadata !5, i32 37, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 37]
!66 = metadata !{i32 786443, metadata !1, metadata !4, i32 37, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!67 = metadata !{i32 37, i32 12, metadata !66, null}
!68 = metadata !{i32 37, i32 8, metadata !66, null}
!69 = metadata !{i32 37, i32 8, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !71, i32 37, i32 8, i32 2, i32 38} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!71 = metadata !{i32 786443, metadata !1, metadata !66, i32 37, i32 8, i32 1, i32 33} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!72 = metadata !{i32 786688, metadata !73, metadata !"col", metadata !5, i32 38, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 38]
!73 = metadata !{i32 786443, metadata !1, metadata !74, i32 38, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!74 = metadata !{i32 786443, metadata !1, metadata !66, i32 37, i32 43, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!75 = metadata !{i32 38, i32 14, metadata !73, null}
!76 = metadata !{i32 38, i32 10, metadata !73, null}
!77 = metadata !{i32 38, i32 10, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !79, i32 38, i32 10, i32 2, i32 37} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!79 = metadata !{i32 786443, metadata !1, metadata !73, i32 38, i32 10, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!80 = metadata !{i32 786688, metadata !81, metadata !"result", metadata !5, i32 39, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 39]
!81 = metadata !{i32 786443, metadata !1, metadata !73, i32 38, i32 45, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!82 = metadata !{i32 39, i32 13, metadata !81, null}
!83 = metadata !{i32 39, i32 7, metadata !81, null}
!84 = metadata !{i32 786688, metadata !85, metadata !"k", metadata !5, i32 40, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 40]
!85 = metadata !{i32 786443, metadata !1, metadata !81, i32 40, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!86 = metadata !{i32 40, i32 16, metadata !85, null}
!87 = metadata !{i32 40, i32 12, metadata !85, null}
!88 = metadata !{i32 40, i32 12, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !90, i32 40, i32 12, i32 2, i32 36} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!90 = metadata !{i32 786443, metadata !1, metadata !85, i32 40, i32 12, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!91 = metadata !{i32 41, i32 9, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !85, i32 40, i32 41, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!93 = metadata !{i32 42, i32 7, metadata !92, null}
!94 = metadata !{i32 40, i32 36, metadata !85, null}
!95 = metadata !{i32 43, i32 7, metadata !81, null}
!96 = metadata !{i32 44, i32 5, metadata !81, null}
!97 = metadata !{i32 38, i32 38, metadata !73, null}
!98 = metadata !{i32 45, i32 3, metadata !74, null}
!99 = metadata !{i32 37, i32 36, metadata !66, null}
!100 = metadata !{i32 46, i32 1, metadata !4, null}
!101 = metadata !{i32 786689, metadata !10, metadata !"tin1Buf", metadata !5, i32 16777277, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin1Buf] [line 61]
!102 = metadata !{i32 61, i32 23, metadata !10, null}
!103 = metadata !{i32 786689, metadata !10, metadata !"tin2Buf", metadata !5, i32 33554493, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin2Buf] [line 61]
!104 = metadata !{i32 61, i32 40, metadata !10, null}
!105 = metadata !{i32 786689, metadata !10, metadata !"toutBufSw", metadata !5, i32 50331709, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufSw] [line 61]
!106 = metadata !{i32 61, i32 56, metadata !10, null}
!107 = metadata !{i32 786689, metadata !10, metadata !"toutBufHw", metadata !5, i32 67108925, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufHw] [line 61]
!108 = metadata !{i32 61, i32 74, metadata !10, null}
!109 = metadata !{i32 786688, metadata !10, metadata !"i", metadata !5, i32 63, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 63]
!110 = metadata !{i32 63, i32 7, metadata !10, null}
!111 = metadata !{i32 65, i32 3, metadata !10, null}
!112 = metadata !{i32 67, i32 3, metadata !10, null}
!113 = metadata !{i32 786688, metadata !10, metadata !"clock_start", metadata !5, i32 69, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_start] [line 69]
!114 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!115 = metadata !{i32 69, i32 3, metadata !10, null}
!116 = metadata !{i32 786688, metadata !10, metadata !"clock_end", metadata !5, i32 69, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_end] [line 69]
!117 = metadata !{i32 71, i32 8, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !10, i32 71, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!119 = metadata !{i32 71, i32 8, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !121, i32 71, i32 8, i32 2, i32 40} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!121 = metadata !{i32 786443, metadata !1, metadata !118, i32 71, i32 8, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!122 = metadata !{i32 72, i32 5, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !118, i32 71, i32 35, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!124 = metadata !{i32 73, i32 3, metadata !123, null}
!125 = metadata !{i32 71, i32 30, metadata !118, null}
!126 = metadata !{i32 75, i32 3, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !10, i32 75, i32 3, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!128 = metadata !{i32 77, i32 8, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !10, i32 77, i32 3, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!130 = metadata !{i32 77, i32 8, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !132, i32 77, i32 8, i32 2, i32 42} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!132 = metadata !{i32 786443, metadata !1, metadata !129, i32 77, i32 8, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!133 = metadata !{i32 78, i32 5, metadata !129, null}
!134 = metadata !{i32 77, i32 30, metadata !129, null}
!135 = metadata !{i32 80, i32 3, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !10, i32 80, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!137 = metadata !{i32 82, i32 10, metadata !10, null}
!138 = metadata !{i32 786689, metadata !23, metadata !"tin1Buf", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin1Buf] [line 13]
!139 = metadata !{i32 13, i32 31, metadata !23, null}
!140 = metadata !{i32 786689, metadata !23, metadata !"tin2Buf", metadata !5, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin2Buf] [line 13]
!141 = metadata !{i32 13, i32 48, metadata !23, null}
!142 = metadata !{i32 786689, metadata !23, metadata !"toutBufSw", metadata !5, i32 50331661, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufSw] [line 13]
!143 = metadata !{i32 13, i32 64, metadata !23, null}
!144 = metadata !{i32 786689, metadata !23, metadata !"toutBufHw", metadata !5, i32 67108877, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufHw] [line 13]
!145 = metadata !{i32 13, i32 82, metadata !23, null}
!146 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !5, i32 15, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 15]
!147 = metadata !{i32 15, i32 7, metadata !23, null}
!148 = metadata !{i32 786688, metadata !23, metadata !"j", metadata !5, i32 15, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 15]
!149 = metadata !{i32 15, i32 10, metadata !23, null}
!150 = metadata !{i32 17, i32 8, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !23, i32 17, i32 3, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!152 = metadata !{i32 17, i32 8, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !154, i32 17, i32 8, i32 2, i32 46} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!154 = metadata !{i32 786443, metadata !1, metadata !151, i32 17, i32 8, i32 1, i32 43} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!155 = metadata !{i32 18, i32 10, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !157, i32 18, i32 5, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!157 = metadata !{i32 786443, metadata !1, metadata !151, i32 17, i32 33, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!158 = metadata !{i32 18, i32 10, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !160, i32 18, i32 10, i32 2, i32 45} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!160 = metadata !{i32 786443, metadata !1, metadata !156, i32 18, i32 10, i32 1, i32 44} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!161 = metadata !{i32 19, i32 7, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !156, i32 18, i32 35, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!163 = metadata !{i32 20, i32 5, metadata !162, null}
!164 = metadata !{i32 18, i32 30, metadata !156, null}
!165 = metadata !{i32 21, i32 3, metadata !157, null}
!166 = metadata !{i32 17, i32 28, metadata !151, null}
!167 = metadata !{i32 22, i32 8, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !23, i32 22, i32 3, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!169 = metadata !{i32 22, i32 8, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !171, i32 22, i32 8, i32 2, i32 50} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!171 = metadata !{i32 786443, metadata !1, metadata !168, i32 22, i32 8, i32 1, i32 47} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!172 = metadata !{i32 23, i32 10, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !174, i32 23, i32 5, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!174 = metadata !{i32 786443, metadata !1, metadata !168, i32 22, i32 33, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!175 = metadata !{i32 23, i32 10, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !177, i32 23, i32 10, i32 2, i32 49} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!177 = metadata !{i32 786443, metadata !1, metadata !173, i32 23, i32 10, i32 1, i32 48} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!178 = metadata !{i32 24, i32 34, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !173, i32 23, i32 35, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!180 = metadata !{i32 25, i32 5, metadata !179, null}
!181 = metadata !{i32 23, i32 30, metadata !173, null}
!182 = metadata !{i32 26, i32 3, metadata !174, null}
!183 = metadata !{i32 22, i32 28, metadata !168, null}
!184 = metadata !{i32 27, i32 8, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !23, i32 27, i32 3, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!186 = metadata !{i32 27, i32 8, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !188, i32 27, i32 8, i32 2, i32 54} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!188 = metadata !{i32 786443, metadata !1, metadata !185, i32 27, i32 8, i32 1, i32 51} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!189 = metadata !{i32 28, i32 10, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !191, i32 28, i32 5, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!191 = metadata !{i32 786443, metadata !1, metadata !185, i32 27, i32 33, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!192 = metadata !{i32 28, i32 10, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !194, i32 28, i32 10, i32 2, i32 53} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!194 = metadata !{i32 786443, metadata !1, metadata !190, i32 28, i32 10, i32 1, i32 52} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!195 = metadata !{i32 29, i32 7, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !190, i32 28, i32 35, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!197 = metadata !{i32 30, i32 7, metadata !196, null}
!198 = metadata !{i32 31, i32 5, metadata !196, null}
!199 = metadata !{i32 28, i32 30, metadata !190, null}
!200 = metadata !{i32 32, i32 3, metadata !191, null}
!201 = metadata !{i32 27, i32 28, metadata !185, null}
!202 = metadata !{i32 33, i32 1, metadata !23, null}
!203 = metadata !{i32 786689, metadata !20, metadata !"toutBufSw", metadata !5, i32 16777264, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufSw] [line 48]
!204 = metadata !{i32 48, i32 38, metadata !20, null}
!205 = metadata !{i32 786689, metadata !20, metadata !"toutBufHw", metadata !5, i32 33554480, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufHw] [line 48]
!206 = metadata !{i32 48, i32 56, metadata !20, null}
!207 = metadata !{i32 786688, metadata !20, metadata !"i", metadata !5, i32 50, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 50]
!208 = metadata !{i32 50, i32 7, metadata !20, null}
!209 = metadata !{i32 52, i32 8, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !20, i32 52, i32 3, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!211 = metadata !{i32 52, i32 8, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !213, i32 52, i32 8, i32 2, i32 56} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!213 = metadata !{i32 786443, metadata !1, metadata !210, i32 52, i32 8, i32 1, i32 55} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!214 = metadata !{i32 53, i32 9, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !216, i32 53, i32 9, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!216 = metadata !{i32 786443, metadata !1, metadata !210, i32 52, i32 43, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!217 = metadata !{i32 54, i32 7, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !215, i32 53, i32 39, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!219 = metadata !{i32 55, i32 7, metadata !218, null}
!220 = metadata !{i32 57, i32 3, metadata !216, null}
!221 = metadata !{i32 52, i32 38, metadata !210, null}
!222 = metadata !{i32 58, i32 3, metadata !20, null} ; [ DW_TAG_imported_module ]
!223 = metadata !{i32 59, i32 1, metadata !20, null}
!224 = metadata !{i32 786689, metadata !14, metadata !"argc", metadata !5, i32 16777302, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 86]
!225 = metadata !{i32 86, i32 14, metadata !14, null}
!226 = metadata !{i32 786689, metadata !14, metadata !"argv", metadata !5, i32 33554518, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 86]
!227 = metadata !{i32 86, i32 26, metadata !14, null}
!228 = metadata !{i32 786688, metadata !14, metadata !"test_passed", metadata !5, i32 87, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [test_passed] [line 87]
!229 = metadata !{i32 87, i32 7, metadata !14, null}
!230 = metadata !{i32 87, i32 3, metadata !14, null}
!231 = metadata !{i32 786688, metadata !14, metadata !"tin1Buf", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tin1Buf] [line 88]
!232 = metadata !{i32 88, i32 10, metadata !14, null}
!233 = metadata !{i32 786688, metadata !14, metadata !"tin2Buf", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tin2Buf] [line 88]
!234 = metadata !{i32 88, i32 20, metadata !14, null}
!235 = metadata !{i32 786688, metadata !14, metadata !"toutBufSw", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [toutBufSw] [line 88]
!236 = metadata !{i32 88, i32 30, metadata !14, null}
!237 = metadata !{i32 786688, metadata !14, metadata !"toutBufHw", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [toutBufHw] [line 88]
!238 = metadata !{i32 88, i32 42, metadata !14, null}
!239 = metadata !{i32 90, i32 3, metadata !14, null}
!240 = metadata !{i32 92, i32 22, metadata !14, null}
!241 = metadata !{i32 93, i32 22, metadata !14, null}
!242 = metadata !{i32 94, i32 24, metadata !14, null}
!243 = metadata !{i32 95, i32 24, metadata !14, null}
!244 = metadata !{i32 97, i32 7, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !14, i32 97, i32 7, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!246 = metadata !{i32 97, i32 7, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !245, i32 97, i32 7, i32 1, i32 57} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!248 = metadata !{i32 97, i32 7, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !245, i32 97, i32 7, i32 2, i32 58} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!250 = metadata !{i32 97, i32 7, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !245, i32 97, i32 7, i32 3, i32 59} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!252 = metadata !{i32 98, i32 9, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !254, i32 98, i32 9, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!254 = metadata !{i32 786443, metadata !1, metadata !245, i32 97, i32 57, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!255 = metadata !{i32 98, i32 18, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !253, i32 98, i32 18, i32 1, i32 60} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!257 = metadata !{i32 99, i32 9, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !254, i32 99, i32 9, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!259 = metadata !{i32 99, i32 18, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !258, i32 99, i32 18, i32 1, i32 61} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!261 = metadata !{i32 100, i32 9, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !254, i32 100, i32 9, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!263 = metadata !{i32 100, i32 20, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !262, i32 100, i32 20, i32 1, i32 62} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!265 = metadata !{i32 101, i32 9, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !254, i32 101, i32 9, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!267 = metadata !{i32 101, i32 20, metadata !268, null}
!268 = metadata !{i32 786443, metadata !1, metadata !266, i32 101, i32 20, i32 1, i32 63} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!269 = metadata !{i32 102, i32 5, metadata !254, null}
!270 = metadata !{i32 105, i32 17, metadata !14, null}
!271 = metadata !{i32 107, i32 3, metadata !14, null}
!272 = metadata !{i32 108, i32 3, metadata !14, null}
!273 = metadata !{i32 109, i32 3, metadata !14, null}
!274 = metadata !{i32 110, i32 3, metadata !14, null}
!275 = metadata !{i32 112, i32 3, metadata !14, null}
!276 = metadata !{i32 112, i32 3, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !14, i32 112, i32 3, i32 1, i32 64} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!278 = metadata !{i32 112, i32 3, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !14, i32 112, i32 3, i32 2, i32 65} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!280 = metadata !{i32 112, i32 3, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !282, i32 112, i32 3, i32 4, i32 67} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!282 = metadata !{i32 786443, metadata !1, metadata !14, i32 112, i32 3, i32 3, i32 66} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult.cpp]
!283 = metadata !{i32 114, i32 3, metadata !14, null}
!284 = metadata !{i32 115, i32 1, metadata !14, null}
