; ModuleID = '/home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

@.str = private unnamed_addr constant [19 x i8] c"Testing mmult ...\0A\00", align 1
@.str1 = private unnamed_addr constant [62 x i8] c"Average number of processor cycles for golden version: %llu \0A\00", align 1
@.str2 = private unnamed_addr constant [64 x i8] c"Average number of processor cycles for software version: %llu \0A\00", align 1
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
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !58), !dbg !59
  store float* %in_arr2, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !60), !dbg !61
  store float* %out_arr, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !62), !dbg !63
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !64), !dbg !66
  store i32 0, i32* %row, align 4, !dbg !67
  br label %4, !dbg !67

; <label>:4                                       ; preds = %48, %0
  %5 = load i32* %row, align 4, !dbg !68
  %6 = icmp slt i32 %5, 32, !dbg !68
  br i1 %6, label %7, label %51, !dbg !68

; <label>:7                                       ; preds = %4
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !71), !dbg !74
  store i32 0, i32* %col, align 4, !dbg !75
  br label %8, !dbg !75

; <label>:8                                       ; preds = %44, %7
  %9 = load i32* %col, align 4, !dbg !76
  %10 = icmp slt i32 %9, 32, !dbg !76
  br i1 %10, label %11, label %47, !dbg !76

; <label>:11                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{float* %result}, metadata !79), !dbg !81
  store float 0.000000e+00, float* %result, align 4, !dbg !82
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !83), !dbg !85
  store i32 0, i32* %k, align 4, !dbg !86
  br label %12, !dbg !86

; <label>:12                                      ; preds = %33, %11
  %13 = load i32* %k, align 4, !dbg !87
  %14 = icmp slt i32 %13, 32, !dbg !87
  br i1 %14, label %15, label %36, !dbg !87

; <label>:15                                      ; preds = %12
  %16 = load i32* %row, align 4, !dbg !90
  %17 = mul nsw i32 %16, 32, !dbg !90
  %18 = load i32* %k, align 4, !dbg !90
  %19 = add nsw i32 %17, %18, !dbg !90
  %20 = load float** %1, align 4, !dbg !90
  %21 = getelementptr inbounds float* %20, i32 %19, !dbg !90
  %22 = load float* %21, align 4, !dbg !90
  %23 = load i32* %k, align 4, !dbg !90
  %24 = mul nsw i32 %23, 32, !dbg !90
  %25 = load i32* %col, align 4, !dbg !90
  %26 = add nsw i32 %24, %25, !dbg !90
  %27 = load float** %2, align 4, !dbg !90
  %28 = getelementptr inbounds float* %27, i32 %26, !dbg !90
  %29 = load float* %28, align 4, !dbg !90
  %30 = fmul float %22, %29, !dbg !90
  %31 = load float* %result, align 4, !dbg !90
  %32 = fadd float %31, %30, !dbg !90
  store float %32, float* %result, align 4, !dbg !90
  br label %33, !dbg !92

; <label>:33                                      ; preds = %15
  %34 = load i32* %k, align 4, !dbg !93
  %35 = add nsw i32 %34, 1, !dbg !93
  store i32 %35, i32* %k, align 4, !dbg !93
  br label %12, !dbg !93

; <label>:36                                      ; preds = %12
  %37 = load float* %result, align 4, !dbg !94
  %38 = load i32* %row, align 4, !dbg !94
  %39 = mul nsw i32 %38, 32, !dbg !94
  %40 = load i32* %col, align 4, !dbg !94
  %41 = add nsw i32 %39, %40, !dbg !94
  %42 = load float** %3, align 4, !dbg !94
  %43 = getelementptr inbounds float* %42, i32 %41, !dbg !94
  store float %37, float* %43, align 4, !dbg !94
  br label %44, !dbg !95

; <label>:44                                      ; preds = %36
  %45 = load i32* %col, align 4, !dbg !96
  %46 = add nsw i32 %45, 1, !dbg !96
  store i32 %46, i32* %col, align 4, !dbg !96
  br label %8, !dbg !96

; <label>:47                                      ; preds = %8
  br label %48, !dbg !97

; <label>:48                                      ; preds = %47
  %49 = load i32* %row, align 4, !dbg !98
  %50 = add nsw i32 %49, 1, !dbg !98
  store i32 %50, i32* %row, align 4, !dbg !98
  br label %4, !dbg !98

; <label>:51                                      ; preds = %4
  ret void, !dbg !99
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
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !100), !dbg !101
  store float* %tin2Buf, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !102), !dbg !103
  store float* %toutBufSw, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !104), !dbg !105
  store float* %toutBufHw, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !106), !dbg !107
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !108), !dbg !109
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0)), !dbg !110
  %6 = load float** %1, align 4, !dbg !111
  %7 = load float** %2, align 4, !dbg !111
  %8 = load float** %3, align 4, !dbg !111
  %9 = load float** %4, align 4, !dbg !111
  call void @_ZL10mmult_initPfS_S_S_(float* %6, float* %7, float* %8, float* %9), !dbg !111
  call void @llvm.dbg.declare(metadata !{i64* %clock_start}, metadata !112), !dbg !114
  call void @llvm.dbg.declare(metadata !{i64* %clock_end}, metadata !115), !dbg !114
  %10 = call i64 @sds_clock_counter(), !dbg !114
  store i64 %10, i64* %clock_start, align 8, !dbg !114
  store i32 0, i32* %i, align 4, !dbg !116
  br label %11, !dbg !116

; <label>:11                                      ; preds = %18, %0
  %12 = load i32* %i, align 4, !dbg !118
  %13 = icmp slt i32 %12, 1024, !dbg !118
  br i1 %13, label %14, label %21, !dbg !118

; <label>:14                                      ; preds = %11
  %15 = load float** %1, align 4, !dbg !121
  %16 = load float** %2, align 4, !dbg !121
  %17 = load float** %3, align 4, !dbg !121
  call void @_Z12mmult_goldenPfS_S_(float* %15, float* %16, float* %17), !dbg !121
  br label %18, !dbg !123

; <label>:18                                      ; preds = %14
  %19 = load i32* %i, align 4, !dbg !124
  %20 = add nsw i32 %19, 1, !dbg !124
  store i32 %20, i32* %i, align 4, !dbg !124
  br label %11, !dbg !124

; <label>:21                                      ; preds = %11
  %22 = call i64 @sds_clock_counter(), !dbg !125
  store i64 %22, i64* %clock_end, align 8, !dbg !125
  %23 = load i64* %clock_end, align 8, !dbg !125
  %24 = load i64* %clock_start, align 8, !dbg !125
  %25 = sub i64 %23, %24, !dbg !125
  %26 = udiv i64 %25, 1024, !dbg !125
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([62 x i8]* @.str1, i32 0, i32 0), i64 %26), !dbg !125
  %28 = call i64 @sds_clock_counter(), !dbg !125
  store i64 %28, i64* %clock_start, align 8, !dbg !125
  store i32 0, i32* %i, align 4, !dbg !127
  br label %29, !dbg !127

; <label>:29                                      ; preds = %36, %21
  %30 = load i32* %i, align 4, !dbg !129
  %31 = icmp slt i32 %30, 1024, !dbg !129
  br i1 %31, label %32, label %39, !dbg !129

; <label>:32                                      ; preds = %29
  %33 = load float** %1, align 4, !dbg !132
  %34 = load float** %2, align 4, !dbg !132
  %35 = load float** %4, align 4, !dbg !132
  call void @_Z11mmult_accelPfS_S_(float* %33, float* %34, float* %35), !dbg !132
  br label %36, !dbg !132

; <label>:36                                      ; preds = %32
  %37 = load i32* %i, align 4, !dbg !133
  %38 = add nsw i32 %37, 1, !dbg !133
  store i32 %38, i32* %i, align 4, !dbg !133
  br label %29, !dbg !133

; <label>:39                                      ; preds = %29
  %40 = call i64 @sds_clock_counter(), !dbg !134
  store i64 %40, i64* %clock_end, align 8, !dbg !134
  %41 = load i64* %clock_end, align 8, !dbg !134
  %42 = load i64* %clock_start, align 8, !dbg !134
  %43 = sub i64 %41, %42, !dbg !134
  %44 = udiv i64 %43, 1024, !dbg !134
  %45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([64 x i8]* @.str2, i32 0, i32 0), i64 %44), !dbg !134
  %46 = load float** %3, align 4, !dbg !136
  %47 = load float** %4, align 4, !dbg !136
  %48 = call i32 @_ZL18mmult_result_checkPfS_(float* %46, float* %47), !dbg !136
  ret i32 %48, !dbg !136
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
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !137), !dbg !138
  store float* %tin2Buf, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !139), !dbg !140
  store float* %toutBufSw, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !141), !dbg !142
  store float* %toutBufHw, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !143), !dbg !144
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !145), !dbg !146
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !147), !dbg !148
  store i32 0, i32* %i, align 4, !dbg !149
  br label %5, !dbg !149

; <label>:5                                       ; preds = %29, %0
  %6 = load i32* %i, align 4, !dbg !151
  %7 = icmp slt i32 %6, 32, !dbg !151
  br i1 %7, label %8, label %32, !dbg !151

; <label>:8                                       ; preds = %5
  store i32 0, i32* %j, align 4, !dbg !154
  br label %9, !dbg !154

; <label>:9                                       ; preds = %25, %8
  %10 = load i32* %j, align 4, !dbg !157
  %11 = icmp slt i32 %10, 32, !dbg !157
  br i1 %11, label %12, label %28, !dbg !157

; <label>:12                                      ; preds = %9
  %13 = load i32* %i, align 4, !dbg !160
  %14 = mul nsw i32 %13, 32, !dbg !160
  %15 = add nsw i32 1, %14, !dbg !160
  %16 = load i32* %j, align 4, !dbg !160
  %17 = add nsw i32 %15, %16, !dbg !160
  %18 = sitofp i32 %17 to float, !dbg !160
  %19 = load i32* %i, align 4, !dbg !160
  %20 = mul nsw i32 %19, 32, !dbg !160
  %21 = load i32* %j, align 4, !dbg !160
  %22 = add nsw i32 %20, %21, !dbg !160
  %23 = load float** %1, align 4, !dbg !160
  %24 = getelementptr inbounds float* %23, i32 %22, !dbg !160
  store float %18, float* %24, align 4, !dbg !160
  br label %25, !dbg !162

; <label>:25                                      ; preds = %12
  %26 = load i32* %j, align 4, !dbg !163
  %27 = add nsw i32 %26, 1, !dbg !163
  store i32 %27, i32* %j, align 4, !dbg !163
  br label %9, !dbg !163

; <label>:28                                      ; preds = %9
  br label %29, !dbg !164

; <label>:29                                      ; preds = %28
  %30 = load i32* %i, align 4, !dbg !165
  %31 = add nsw i32 %30, 1, !dbg !165
  store i32 %31, i32* %i, align 4, !dbg !165
  br label %5, !dbg !165

; <label>:32                                      ; preds = %5
  store i32 0, i32* %i, align 4, !dbg !166
  br label %33, !dbg !166

; <label>:33                                      ; preds = %54, %32
  %34 = load i32* %i, align 4, !dbg !168
  %35 = icmp slt i32 %34, 32, !dbg !168
  br i1 %35, label %36, label %57, !dbg !168

; <label>:36                                      ; preds = %33
  store i32 0, i32* %j, align 4, !dbg !171
  br label %37, !dbg !171

; <label>:37                                      ; preds = %50, %36
  %38 = load i32* %j, align 4, !dbg !174
  %39 = icmp slt i32 %38, 32, !dbg !174
  br i1 %39, label %40, label %53, !dbg !174

; <label>:40                                      ; preds = %37
  %41 = call i32 @rand() #3, !dbg !177
  %42 = srem i32 %41, 1024, !dbg !177
  %43 = sitofp i32 %42 to float, !dbg !177
  %44 = load i32* %i, align 4, !dbg !177
  %45 = mul nsw i32 %44, 32, !dbg !177
  %46 = load i32* %j, align 4, !dbg !177
  %47 = add nsw i32 %45, %46, !dbg !177
  %48 = load float** %2, align 4, !dbg !177
  %49 = getelementptr inbounds float* %48, i32 %47, !dbg !177
  store float %43, float* %49, align 4, !dbg !177
  br label %50, !dbg !179

; <label>:50                                      ; preds = %40
  %51 = load i32* %j, align 4, !dbg !180
  %52 = add nsw i32 %51, 1, !dbg !180
  store i32 %52, i32* %j, align 4, !dbg !180
  br label %37, !dbg !180

; <label>:53                                      ; preds = %37
  br label %54, !dbg !181

; <label>:54                                      ; preds = %53
  %55 = load i32* %i, align 4, !dbg !182
  %56 = add nsw i32 %55, 1, !dbg !182
  store i32 %56, i32* %i, align 4, !dbg !182
  br label %33, !dbg !182

; <label>:57                                      ; preds = %33
  store i32 0, i32* %i, align 4, !dbg !183
  br label %58, !dbg !183

; <label>:58                                      ; preds = %82, %57
  %59 = load i32* %i, align 4, !dbg !185
  %60 = icmp slt i32 %59, 32, !dbg !185
  br i1 %60, label %61, label %85, !dbg !185

; <label>:61                                      ; preds = %58
  store i32 0, i32* %j, align 4, !dbg !188
  br label %62, !dbg !188

; <label>:62                                      ; preds = %78, %61
  %63 = load i32* %j, align 4, !dbg !191
  %64 = icmp slt i32 %63, 32, !dbg !191
  br i1 %64, label %65, label %81, !dbg !191

; <label>:65                                      ; preds = %62
  %66 = load i32* %i, align 4, !dbg !194
  %67 = mul nsw i32 %66, 32, !dbg !194
  %68 = load i32* %j, align 4, !dbg !194
  %69 = add nsw i32 %67, %68, !dbg !194
  %70 = load float** %3, align 4, !dbg !194
  %71 = getelementptr inbounds float* %70, i32 %69, !dbg !194
  store float 0.000000e+00, float* %71, align 4, !dbg !194
  %72 = load i32* %i, align 4, !dbg !196
  %73 = mul nsw i32 %72, 32, !dbg !196
  %74 = load i32* %j, align 4, !dbg !196
  %75 = add nsw i32 %73, %74, !dbg !196
  %76 = load float** %4, align 4, !dbg !196
  %77 = getelementptr inbounds float* %76, i32 %75, !dbg !196
  store float 0.000000e+00, float* %77, align 4, !dbg !196
  br label %78, !dbg !197

; <label>:78                                      ; preds = %65
  %79 = load i32* %j, align 4, !dbg !198
  %80 = add nsw i32 %79, 1, !dbg !198
  store i32 %80, i32* %j, align 4, !dbg !198
  br label %62, !dbg !198

; <label>:81                                      ; preds = %62
  br label %82, !dbg !199

; <label>:82                                      ; preds = %81
  %83 = load i32* %i, align 4, !dbg !200
  %84 = add nsw i32 %83, 1, !dbg !200
  store i32 %84, i32* %i, align 4, !dbg !200
  br label %58, !dbg !200

; <label>:85                                      ; preds = %58
  ret void, !dbg !201
}

declare i64 @sds_clock_counter() #2

declare void @_Z11mmult_accelPfS_S_(float*, float*, float*) #2

define internal i32 @_ZL18mmult_result_checkPfS_(float* %toutBufSw, float* %toutBufHw) #2 {
  %1 = alloca i32, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %i = alloca i32, align 4
  store float* %toutBufSw, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !202), !dbg !203
  store float* %toutBufHw, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !204), !dbg !205
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !206), !dbg !207
  store i32 0, i32* %i, align 4, !dbg !208
  br label %4, !dbg !208

; <label>:4                                       ; preds = %31, %0
  %5 = load i32* %i, align 4, !dbg !210
  %6 = icmp slt i32 %5, 1024, !dbg !210
  br i1 %6, label %7, label %34, !dbg !210

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4, !dbg !213
  %9 = load float** %2, align 4, !dbg !213
  %10 = getelementptr inbounds float* %9, i32 %8, !dbg !213
  %11 = load float* %10, align 4, !dbg !213
  %12 = load i32* %i, align 4, !dbg !213
  %13 = load float** %3, align 4, !dbg !213
  %14 = getelementptr inbounds float* %13, i32 %12, !dbg !213
  %15 = load float* %14, align 4, !dbg !213
  %16 = fcmp une float %11, %15, !dbg !213
  br i1 %16, label %17, label %30, !dbg !213

; <label>:17                                      ; preds = %7
  %18 = load i32* %i, align 4, !dbg !216
  %19 = load i32* %i, align 4, !dbg !216
  %20 = load float** %2, align 4, !dbg !216
  %21 = getelementptr inbounds float* %20, i32 %19, !dbg !216
  %22 = load float* %21, align 4, !dbg !216
  %23 = fpext float %22 to double, !dbg !216
  %24 = load i32* %i, align 4, !dbg !216
  %25 = load float** %3, align 4, !dbg !216
  %26 = getelementptr inbounds float* %25, i32 %24, !dbg !216
  %27 = load float* %26, align 4, !dbg !216
  %28 = fpext float %27 to double, !dbg !216
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str7, i32 0, i32 0), i32 %18, double %23, double %28), !dbg !216
  store i32 0, i32* %1, !dbg !218
  br label %35, !dbg !218

; <label>:30                                      ; preds = %7
  br label %31, !dbg !219

; <label>:31                                      ; preds = %30
  %32 = load i32* %i, align 4, !dbg !220
  %33 = add nsw i32 %32, 1, !dbg !220
  store i32 %33, i32* %i, align 4, !dbg !220
  br label %4, !dbg !220

; <label>:34                                      ; preds = %4
  store i32 1, i32* %1, !dbg !221
  br label %35, !dbg !221

; <label>:35                                      ; preds = %34, %17
  %36 = load i32* %1, !dbg !222
  ret i32 %36, !dbg !222
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
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !223), !dbg !224
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !225), !dbg !226
  call void @llvm.dbg.declare(metadata !{i32* %test_passed}, metadata !227), !dbg !228
  store i32 0, i32* %test_passed, align 4, !dbg !229
  call void @llvm.dbg.declare(metadata !{float** %tin1Buf}, metadata !230), !dbg !231
  call void @llvm.dbg.declare(metadata !{float** %tin2Buf}, metadata !232), !dbg !233
  call void @llvm.dbg.declare(metadata !{float** %toutBufSw}, metadata !234), !dbg !235
  call void @llvm.dbg.declare(metadata !{float** %toutBufHw}, metadata !236), !dbg !237
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str3, i32 0, i32 0), i32 32), !dbg !238
  %5 = call noalias i8* @malloc(i32 4096) #3, !dbg !239
  %6 = bitcast i8* %5 to float*, !dbg !239
  store float* %6, float** %tin1Buf, align 4, !dbg !239
  %7 = call noalias i8* @malloc(i32 4096) #3, !dbg !240
  %8 = bitcast i8* %7 to float*, !dbg !240
  store float* %8, float** %tin2Buf, align 4, !dbg !240
  %9 = call noalias i8* @malloc(i32 4096) #3, !dbg !241
  %10 = bitcast i8* %9 to float*, !dbg !241
  store float* %10, float** %toutBufHw, align 4, !dbg !241
  %11 = call noalias i8* @malloc(i32 4096) #3, !dbg !242
  %12 = bitcast i8* %11 to float*, !dbg !242
  store float* %12, float** %toutBufSw, align 4, !dbg !242
  %13 = load float** %tin1Buf, align 4, !dbg !243
  %14 = icmp ne float* %13, null, !dbg !243
  br i1 %14, label %15, label %24, !dbg !243

; <label>:15                                      ; preds = %0
  %16 = load float** %tin2Buf, align 4, !dbg !245
  %17 = icmp ne float* %16, null, !dbg !245
  br i1 %17, label %18, label %24, !dbg !245

; <label>:18                                      ; preds = %15
  %19 = load float** %toutBufHw, align 4, !dbg !247
  %20 = icmp ne float* %19, null, !dbg !247
  br i1 %20, label %21, label %24, !dbg !247

; <label>:21                                      ; preds = %18
  %22 = load float** %toutBufSw, align 4, !dbg !249
  %23 = icmp ne float* %22, null, !dbg !249
  br i1 %23, label %49, label %24, !dbg !249

; <label>:24                                      ; preds = %21, %18, %15, %0
  %25 = load float** %tin1Buf, align 4, !dbg !251
  %26 = icmp ne float* %25, null, !dbg !251
  br i1 %26, label %27, label %30, !dbg !251

; <label>:27                                      ; preds = %24
  %28 = load float** %tin1Buf, align 4, !dbg !254
  %29 = bitcast float* %28 to i8*, !dbg !254
  call void @free(i8* %29) #3, !dbg !254
  br label %30, !dbg !254

; <label>:30                                      ; preds = %27, %24
  %31 = load float** %tin2Buf, align 4, !dbg !256
  %32 = icmp ne float* %31, null, !dbg !256
  br i1 %32, label %33, label %36, !dbg !256

; <label>:33                                      ; preds = %30
  %34 = load float** %tin2Buf, align 4, !dbg !258
  %35 = bitcast float* %34 to i8*, !dbg !258
  call void @free(i8* %35) #3, !dbg !258
  br label %36, !dbg !258

; <label>:36                                      ; preds = %33, %30
  %37 = load float** %toutBufHw, align 4, !dbg !260
  %38 = icmp ne float* %37, null, !dbg !260
  br i1 %38, label %39, label %42, !dbg !260

; <label>:39                                      ; preds = %36
  %40 = load float** %toutBufHw, align 4, !dbg !262
  %41 = bitcast float* %40 to i8*, !dbg !262
  call void @free(i8* %41) #3, !dbg !262
  br label %42, !dbg !262

; <label>:42                                      ; preds = %39, %36
  %43 = load float** %toutBufSw, align 4, !dbg !264
  %44 = icmp ne float* %43, null, !dbg !264
  br i1 %44, label %45, label %48, !dbg !264

; <label>:45                                      ; preds = %42
  %46 = load float** %toutBufSw, align 4, !dbg !266
  %47 = bitcast float* %46 to i8*, !dbg !266
  call void @free(i8* %47) #3, !dbg !266
  br label %48, !dbg !266

; <label>:48                                      ; preds = %45, %42
  store i32 2, i32* %1, !dbg !268
  br label %71, !dbg !268

; <label>:49                                      ; preds = %21
  %50 = load float** %tin1Buf, align 4, !dbg !269
  %51 = load float** %tin2Buf, align 4, !dbg !269
  %52 = load float** %toutBufSw, align 4, !dbg !269
  %53 = load float** %toutBufHw, align 4, !dbg !269
  %54 = call i32 @_Z10mmult_testPfS_S_S_(float* %50, float* %51, float* %52, float* %53), !dbg !269
  store i32 %54, i32* %test_passed, align 4, !dbg !269
  %55 = load float** %tin1Buf, align 4, !dbg !270
  %56 = bitcast float* %55 to i8*, !dbg !270
  call void @free(i8* %56) #3, !dbg !270
  %57 = load float** %tin2Buf, align 4, !dbg !271
  %58 = bitcast float* %57 to i8*, !dbg !271
  call void @free(i8* %58) #3, !dbg !271
  %59 = load float** %toutBufHw, align 4, !dbg !272
  %60 = bitcast float* %59 to i8*, !dbg !272
  call void @free(i8* %60) #3, !dbg !272
  %61 = load float** %toutBufSw, align 4, !dbg !273
  %62 = bitcast float* %61 to i8*, !dbg !273
  call void @free(i8* %62) #3, !dbg !273
  %63 = load i32* %test_passed, align 4, !dbg !274
  %64 = icmp ne i32 %63, 0, !dbg !274
  br i1 %64, label %65, label %66, !dbg !274

; <label>:65                                      ; preds = %49
  br label %67, !dbg !275

; <label>:66                                      ; preds = %49
  br label %67, !dbg !277

; <label>:67                                      ; preds = %66, %65
  %68 = phi [7 x i8]* [ @.str5, %65 ], [ @.str6, %66 ], !dbg !274
  %69 = getelementptr inbounds [7 x i8]* %68, i32 0, i32 0, !dbg !279
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str4, i32 0, i32 0), i8* %69), !dbg !279
  store i32 0, i32* %1, !dbg !282
  br label %71, !dbg !282

; <label>:71                                      ; preds = %67, %48
  %72 = load i32* %1, !dbg !283
  ret i32 %72, !dbg !283
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
!llvm.module.flags = !{!53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_sw"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !10, metadata !14, metadata !20, metadata !23}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_golden", metadata !"mmult_golden", metadata !"_Z12mmult_goldenPfS_S_", i32 35, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @_Z12mmult_goldenPfS_S_, null, null, metadata !2, i32 36} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 36] [mmult_golden]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
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
!48 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp"}
!49 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdio.h"}
!50 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/arm-xilinx-linux-gnueabi/include/sds_lib.h"}
!51 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_sw/mmult_accel.h"}
!52 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/stdlib.h"}
!53 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!54 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!55 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!56 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!57 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!58 = metadata !{i32 786689, metadata !4, metadata !"in_arr", metadata !5, i32 16777251, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr] [line 35]
!59 = metadata !{i32 35, i32 26, metadata !4, null}
!60 = metadata !{i32 786689, metadata !4, metadata !"in_arr2", metadata !5, i32 33554467, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr2] [line 35]
!61 = metadata !{i32 35, i32 42, metadata !4, null}
!62 = metadata !{i32 786689, metadata !4, metadata !"out_arr", metadata !5, i32 50331683, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_arr] [line 35]
!63 = metadata !{i32 35, i32 58, metadata !4, null}
!64 = metadata !{i32 786688, metadata !65, metadata !"row", metadata !5, i32 37, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 37]
!65 = metadata !{i32 786443, metadata !1, metadata !4, i32 37, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!66 = metadata !{i32 37, i32 12, metadata !65, null}
!67 = metadata !{i32 37, i32 8, metadata !65, null}
!68 = metadata !{i32 37, i32 8, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !70, i32 37, i32 8, i32 2, i32 38} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!70 = metadata !{i32 786443, metadata !1, metadata !65, i32 37, i32 8, i32 1, i32 33} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!71 = metadata !{i32 786688, metadata !72, metadata !"col", metadata !5, i32 38, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 38]
!72 = metadata !{i32 786443, metadata !1, metadata !73, i32 38, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!73 = metadata !{i32 786443, metadata !1, metadata !65, i32 37, i32 43, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!74 = metadata !{i32 38, i32 14, metadata !72, null}
!75 = metadata !{i32 38, i32 10, metadata !72, null}
!76 = metadata !{i32 38, i32 10, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !78, i32 38, i32 10, i32 2, i32 37} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!78 = metadata !{i32 786443, metadata !1, metadata !72, i32 38, i32 10, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!79 = metadata !{i32 786688, metadata !80, metadata !"result", metadata !5, i32 39, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 39]
!80 = metadata !{i32 786443, metadata !1, metadata !72, i32 38, i32 45, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!81 = metadata !{i32 39, i32 13, metadata !80, null}
!82 = metadata !{i32 39, i32 7, metadata !80, null}
!83 = metadata !{i32 786688, metadata !84, metadata !"k", metadata !5, i32 40, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 40]
!84 = metadata !{i32 786443, metadata !1, metadata !80, i32 40, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!85 = metadata !{i32 40, i32 16, metadata !84, null}
!86 = metadata !{i32 40, i32 12, metadata !84, null}
!87 = metadata !{i32 40, i32 12, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !89, i32 40, i32 12, i32 2, i32 36} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!89 = metadata !{i32 786443, metadata !1, metadata !84, i32 40, i32 12, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!90 = metadata !{i32 41, i32 9, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !84, i32 40, i32 41, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!92 = metadata !{i32 42, i32 7, metadata !91, null}
!93 = metadata !{i32 40, i32 36, metadata !84, null}
!94 = metadata !{i32 43, i32 7, metadata !80, null}
!95 = metadata !{i32 44, i32 5, metadata !80, null}
!96 = metadata !{i32 38, i32 38, metadata !72, null}
!97 = metadata !{i32 45, i32 3, metadata !73, null}
!98 = metadata !{i32 37, i32 36, metadata !65, null}
!99 = metadata !{i32 46, i32 1, metadata !4, null}
!100 = metadata !{i32 786689, metadata !10, metadata !"tin1Buf", metadata !5, i32 16777277, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin1Buf] [line 61]
!101 = metadata !{i32 61, i32 23, metadata !10, null}
!102 = metadata !{i32 786689, metadata !10, metadata !"tin2Buf", metadata !5, i32 33554493, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin2Buf] [line 61]
!103 = metadata !{i32 61, i32 40, metadata !10, null}
!104 = metadata !{i32 786689, metadata !10, metadata !"toutBufSw", metadata !5, i32 50331709, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufSw] [line 61]
!105 = metadata !{i32 61, i32 56, metadata !10, null}
!106 = metadata !{i32 786689, metadata !10, metadata !"toutBufHw", metadata !5, i32 67108925, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufHw] [line 61]
!107 = metadata !{i32 61, i32 74, metadata !10, null}
!108 = metadata !{i32 786688, metadata !10, metadata !"i", metadata !5, i32 63, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 63]
!109 = metadata !{i32 63, i32 7, metadata !10, null}
!110 = metadata !{i32 65, i32 3, metadata !10, null}
!111 = metadata !{i32 67, i32 3, metadata !10, null}
!112 = metadata !{i32 786688, metadata !10, metadata !"clock_start", metadata !5, i32 69, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_start] [line 69]
!113 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!114 = metadata !{i32 69, i32 3, metadata !10, null}
!115 = metadata !{i32 786688, metadata !10, metadata !"clock_end", metadata !5, i32 69, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clock_end] [line 69]
!116 = metadata !{i32 71, i32 8, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !10, i32 71, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!118 = metadata !{i32 71, i32 8, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !120, i32 71, i32 8, i32 2, i32 40} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!120 = metadata !{i32 786443, metadata !1, metadata !117, i32 71, i32 8, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!121 = metadata !{i32 72, i32 5, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !117, i32 71, i32 35, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!123 = metadata !{i32 73, i32 3, metadata !122, null}
!124 = metadata !{i32 71, i32 30, metadata !117, null}
!125 = metadata !{i32 75, i32 3, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !10, i32 75, i32 3, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!127 = metadata !{i32 77, i32 8, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !10, i32 77, i32 3, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!129 = metadata !{i32 77, i32 8, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !131, i32 77, i32 8, i32 2, i32 42} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!131 = metadata !{i32 786443, metadata !1, metadata !128, i32 77, i32 8, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!132 = metadata !{i32 78, i32 5, metadata !128, null}
!133 = metadata !{i32 77, i32 30, metadata !128, null}
!134 = metadata !{i32 80, i32 3, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !10, i32 80, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!136 = metadata !{i32 82, i32 10, metadata !10, null}
!137 = metadata !{i32 786689, metadata !23, metadata !"tin1Buf", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin1Buf] [line 13]
!138 = metadata !{i32 13, i32 31, metadata !23, null}
!139 = metadata !{i32 786689, metadata !23, metadata !"tin2Buf", metadata !5, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tin2Buf] [line 13]
!140 = metadata !{i32 13, i32 48, metadata !23, null}
!141 = metadata !{i32 786689, metadata !23, metadata !"toutBufSw", metadata !5, i32 50331661, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufSw] [line 13]
!142 = metadata !{i32 13, i32 64, metadata !23, null}
!143 = metadata !{i32 786689, metadata !23, metadata !"toutBufHw", metadata !5, i32 67108877, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufHw] [line 13]
!144 = metadata !{i32 13, i32 82, metadata !23, null}
!145 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !5, i32 15, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 15]
!146 = metadata !{i32 15, i32 7, metadata !23, null}
!147 = metadata !{i32 786688, metadata !23, metadata !"j", metadata !5, i32 15, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 15]
!148 = metadata !{i32 15, i32 10, metadata !23, null}
!149 = metadata !{i32 17, i32 8, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !23, i32 17, i32 3, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!151 = metadata !{i32 17, i32 8, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !153, i32 17, i32 8, i32 2, i32 46} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!153 = metadata !{i32 786443, metadata !1, metadata !150, i32 17, i32 8, i32 1, i32 43} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!154 = metadata !{i32 18, i32 10, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !156, i32 18, i32 5, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!156 = metadata !{i32 786443, metadata !1, metadata !150, i32 17, i32 33, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!157 = metadata !{i32 18, i32 10, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !159, i32 18, i32 10, i32 2, i32 45} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!159 = metadata !{i32 786443, metadata !1, metadata !155, i32 18, i32 10, i32 1, i32 44} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!160 = metadata !{i32 19, i32 7, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !155, i32 18, i32 35, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!162 = metadata !{i32 20, i32 5, metadata !161, null}
!163 = metadata !{i32 18, i32 30, metadata !155, null}
!164 = metadata !{i32 21, i32 3, metadata !156, null}
!165 = metadata !{i32 17, i32 28, metadata !150, null}
!166 = metadata !{i32 22, i32 8, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !23, i32 22, i32 3, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!168 = metadata !{i32 22, i32 8, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !170, i32 22, i32 8, i32 2, i32 50} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!170 = metadata !{i32 786443, metadata !1, metadata !167, i32 22, i32 8, i32 1, i32 47} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!171 = metadata !{i32 23, i32 10, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !173, i32 23, i32 5, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!173 = metadata !{i32 786443, metadata !1, metadata !167, i32 22, i32 33, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!174 = metadata !{i32 23, i32 10, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !176, i32 23, i32 10, i32 2, i32 49} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!176 = metadata !{i32 786443, metadata !1, metadata !172, i32 23, i32 10, i32 1, i32 48} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!177 = metadata !{i32 24, i32 34, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !172, i32 23, i32 35, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!179 = metadata !{i32 25, i32 5, metadata !178, null}
!180 = metadata !{i32 23, i32 30, metadata !172, null}
!181 = metadata !{i32 26, i32 3, metadata !173, null}
!182 = metadata !{i32 22, i32 28, metadata !167, null}
!183 = metadata !{i32 27, i32 8, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !23, i32 27, i32 3, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!185 = metadata !{i32 27, i32 8, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !187, i32 27, i32 8, i32 2, i32 54} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!187 = metadata !{i32 786443, metadata !1, metadata !184, i32 27, i32 8, i32 1, i32 51} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!188 = metadata !{i32 28, i32 10, metadata !189, null}
!189 = metadata !{i32 786443, metadata !1, metadata !190, i32 28, i32 5, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!190 = metadata !{i32 786443, metadata !1, metadata !184, i32 27, i32 33, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!191 = metadata !{i32 28, i32 10, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !193, i32 28, i32 10, i32 2, i32 53} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!193 = metadata !{i32 786443, metadata !1, metadata !189, i32 28, i32 10, i32 1, i32 52} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!194 = metadata !{i32 29, i32 7, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !189, i32 28, i32 35, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!196 = metadata !{i32 30, i32 7, metadata !195, null}
!197 = metadata !{i32 31, i32 5, metadata !195, null}
!198 = metadata !{i32 28, i32 30, metadata !189, null}
!199 = metadata !{i32 32, i32 3, metadata !190, null}
!200 = metadata !{i32 27, i32 28, metadata !184, null}
!201 = metadata !{i32 33, i32 1, metadata !23, null}
!202 = metadata !{i32 786689, metadata !20, metadata !"toutBufSw", metadata !5, i32 16777264, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufSw] [line 48]
!203 = metadata !{i32 48, i32 38, metadata !20, null}
!204 = metadata !{i32 786689, metadata !20, metadata !"toutBufHw", metadata !5, i32 33554480, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toutBufHw] [line 48]
!205 = metadata !{i32 48, i32 56, metadata !20, null}
!206 = metadata !{i32 786688, metadata !20, metadata !"i", metadata !5, i32 50, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 50]
!207 = metadata !{i32 50, i32 7, metadata !20, null}
!208 = metadata !{i32 52, i32 8, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !20, i32 52, i32 3, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!210 = metadata !{i32 52, i32 8, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !212, i32 52, i32 8, i32 2, i32 56} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!212 = metadata !{i32 786443, metadata !1, metadata !209, i32 52, i32 8, i32 1, i32 55} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!213 = metadata !{i32 53, i32 9, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !215, i32 53, i32 9, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!215 = metadata !{i32 786443, metadata !1, metadata !209, i32 52, i32 43, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!216 = metadata !{i32 54, i32 7, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !214, i32 53, i32 39, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!218 = metadata !{i32 55, i32 7, metadata !217, null}
!219 = metadata !{i32 57, i32 3, metadata !215, null}
!220 = metadata !{i32 52, i32 38, metadata !209, null}
!221 = metadata !{i32 58, i32 3, metadata !20, null} ; [ DW_TAG_imported_module ]
!222 = metadata !{i32 59, i32 1, metadata !20, null}
!223 = metadata !{i32 786689, metadata !14, metadata !"argc", metadata !5, i32 16777302, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 86]
!224 = metadata !{i32 86, i32 14, metadata !14, null}
!225 = metadata !{i32 786689, metadata !14, metadata !"argv", metadata !5, i32 33554518, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 86]
!226 = metadata !{i32 86, i32 26, metadata !14, null}
!227 = metadata !{i32 786688, metadata !14, metadata !"test_passed", metadata !5, i32 87, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [test_passed] [line 87]
!228 = metadata !{i32 87, i32 7, metadata !14, null}
!229 = metadata !{i32 87, i32 3, metadata !14, null}
!230 = metadata !{i32 786688, metadata !14, metadata !"tin1Buf", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tin1Buf] [line 88]
!231 = metadata !{i32 88, i32 10, metadata !14, null}
!232 = metadata !{i32 786688, metadata !14, metadata !"tin2Buf", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tin2Buf] [line 88]
!233 = metadata !{i32 88, i32 20, metadata !14, null}
!234 = metadata !{i32 786688, metadata !14, metadata !"toutBufSw", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [toutBufSw] [line 88]
!235 = metadata !{i32 88, i32 30, metadata !14, null}
!236 = metadata !{i32 786688, metadata !14, metadata !"toutBufHw", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [toutBufHw] [line 88]
!237 = metadata !{i32 88, i32 42, metadata !14, null}
!238 = metadata !{i32 90, i32 3, metadata !14, null}
!239 = metadata !{i32 92, i32 22, metadata !14, null}
!240 = metadata !{i32 93, i32 22, metadata !14, null}
!241 = metadata !{i32 94, i32 24, metadata !14, null}
!242 = metadata !{i32 95, i32 24, metadata !14, null}
!243 = metadata !{i32 97, i32 7, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !14, i32 97, i32 7, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!245 = metadata !{i32 97, i32 7, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !244, i32 97, i32 7, i32 1, i32 57} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!247 = metadata !{i32 97, i32 7, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !244, i32 97, i32 7, i32 2, i32 58} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!249 = metadata !{i32 97, i32 7, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !244, i32 97, i32 7, i32 3, i32 59} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!251 = metadata !{i32 98, i32 9, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !253, i32 98, i32 9, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!253 = metadata !{i32 786443, metadata !1, metadata !244, i32 97, i32 57, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!254 = metadata !{i32 98, i32 18, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !252, i32 98, i32 18, i32 1, i32 60} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!256 = metadata !{i32 99, i32 9, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !253, i32 99, i32 9, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!258 = metadata !{i32 99, i32 18, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !257, i32 99, i32 18, i32 1, i32 61} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!260 = metadata !{i32 100, i32 9, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !253, i32 100, i32 9, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!262 = metadata !{i32 100, i32 20, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !261, i32 100, i32 20, i32 1, i32 62} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!264 = metadata !{i32 101, i32 9, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !253, i32 101, i32 9, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!266 = metadata !{i32 101, i32 20, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !265, i32 101, i32 20, i32 1, i32 63} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!268 = metadata !{i32 102, i32 5, metadata !253, null}
!269 = metadata !{i32 105, i32 17, metadata !14, null}
!270 = metadata !{i32 107, i32 3, metadata !14, null}
!271 = metadata !{i32 108, i32 3, metadata !14, null}
!272 = metadata !{i32 109, i32 3, metadata !14, null}
!273 = metadata !{i32 110, i32 3, metadata !14, null}
!274 = metadata !{i32 112, i32 3, metadata !14, null}
!275 = metadata !{i32 112, i32 3, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !14, i32 112, i32 3, i32 1, i32 64} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!277 = metadata !{i32 112, i32 3, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !14, i32 112, i32 3, i32 2, i32 65} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!279 = metadata !{i32 112, i32 3, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !281, i32 112, i32 3, i32 4, i32 67} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!281 = metadata !{i32 786443, metadata !1, metadata !14, i32 112, i32 3, i32 3, i32 66} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_sw//home/trungnguyen/SDSoC/samples/mmult_sw/mmult.cpp]
!282 = metadata !{i32 114, i32 3, metadata !14, null}
!283 = metadata !{i32 115, i32 1, metadata !14, null}
