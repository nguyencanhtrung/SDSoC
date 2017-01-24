; ModuleID = '/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

@_ZZ20correlation_accel_v2iiPfS_E10weight_rom = internal global [252 x float] zeroinitializer, align 4
@_ZZ20correlation_accel_v2iiPfS_E9lnReturnA = internal global [252 x float] zeroinitializer, align 4

define void @_Z20correlation_accel_v2iiPfS_(i32 %number_of_days, i32 %number_of_indices, float* %in_indices, float* %out_correlation) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float*, align 4
  %4 = alloca float*, align 4
  %NUMBER_OF_DAYS = alloca i32, align 4
  %NUMBER_OF_INDICES = alloca i32, align 4
  %sum_weight = alloca float, align 4
  %acc_return = alloca [6 x float], align 4
  %acc_weight_returnSquare = alloca [6 x float], align 4
  %acc_weight_return = alloca [6 x float], align 4
  %acc_weight_returnA_returnB = alloca [6 x float], align 4
  %shift_reg = alloca [2 x float], align 4
  %sum_returnA = alloca float, align 4
  %sum_weight_returnSquareA = alloca float, align 4
  %sum_weight_returnA = alloca float, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %lnReturn = alloca float, align 4
  %weight = alloca float, align 4
  %channel = alloca i32, align 4
  %i2 = alloca i32, align 4
  %column_index = alloca i32, align 4
  %i3 = alloca i32, align 4
  %index = alloca i32, align 4
  %i4 = alloca i32, align 4
  %lnReturn5 = alloca float, align 4
  %weight6 = alloca float, align 4
  %channel7 = alloca i32, align 4
  %sum_return = alloca float, align 4
  %sum_weight_returnSquare = alloca float, align 4
  %sum_weight_return = alloca float, align 4
  %sum_weight_returnA_returnB = alloca float, align 4
  %i8 = alloca i32, align 4
  %meanReturnA = alloca float, align 4
  %meanReturnB = alloca float, align 4
  %volatilityA = alloca float, align 4
  %volatilityB = alloca float, align 4
  %covariance = alloca float, align 4
  %corr_temp = alloca float, align 4
  store i32 %number_of_days, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !39), !dbg !40
  store i32 %number_of_indices, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !41), !dbg !42
  store float* %in_indices, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !43), !dbg !44
  store float* %out_correlation, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !45), !dbg !46
  call void @llvm.dbg.declare(metadata !{i32* %NUMBER_OF_DAYS}, metadata !47), !dbg !49
  %5 = load i32* %1, align 4, !dbg !50
  store i32 %5, i32* %NUMBER_OF_DAYS, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata !{i32* %NUMBER_OF_INDICES}, metadata !51), !dbg !52
  %6 = load i32* %2, align 4, !dbg !53
  store i32 %6, i32* %NUMBER_OF_INDICES, align 4, !dbg !53
  %7 = load i32* %NUMBER_OF_DAYS, align 4, !dbg !54
  call void @_ZL15weight_rom_initPfi(float* getelementptr inbounds ([252 x float]* @_ZZ20correlation_accel_v2iiPfS_E10weight_rom, i32 0, i32 0), i32 %7), !dbg !54
  call void @llvm.dbg.declare(metadata !{float* %sum_weight}, metadata !55), !dbg !56
  %8 = load float* getelementptr inbounds ([252 x float]* @_ZZ20correlation_accel_v2iiPfS_E10weight_rom, i32 0, i32 0), align 4, !dbg !57
  store float %8, float* %sum_weight, align 4, !dbg !57
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_return}, metadata !58), !dbg !62
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnSquare}, metadata !63), !dbg !64
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_return}, metadata !65), !dbg !66
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnA_returnB}, metadata !67), !dbg !68
  call void @llvm.dbg.declare(metadata !{[2 x float]* %shift_reg}, metadata !69), !dbg !73
  call void @llvm.dbg.declare(metadata !{float* %sum_returnA}, metadata !74), !dbg !75
  store float 0.000000e+00, float* %sum_returnA, align 4, !dbg !76
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnSquareA}, metadata !77), !dbg !78
  store float 0.000000e+00, float* %sum_weight_returnSquareA, align 4, !dbg !79
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnA}, metadata !80), !dbg !81
  store float 0.000000e+00, float* %sum_weight_returnA, align 4, !dbg !82
  br label %9, !dbg !82

; <label>:9                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !83), !dbg !85
  store i32 0, i32* %i, align 4, !dbg !86
  br label %10, !dbg !86

; <label>:10                                      ; preds = %22, %9
  %11 = load i32* %i, align 4, !dbg !87
  %12 = icmp slt i32 %11, 6, !dbg !87
  br i1 %12, label %13, label %25, !dbg !87

; <label>:13                                      ; preds = %10
  %14 = load i32* %i, align 4, !dbg !90
  %15 = getelementptr inbounds [6 x float]* %acc_return, i32 0, i32 %14, !dbg !90
  store float 0.000000e+00, float* %15, align 4, !dbg !90
  %16 = load i32* %i, align 4, !dbg !92
  %17 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %16, !dbg !92
  store float 0.000000e+00, float* %17, align 4, !dbg !92
  %18 = load i32* %i, align 4, !dbg !93
  %19 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %18, !dbg !93
  store float 0.000000e+00, float* %19, align 4, !dbg !93
  %20 = load i32* %i, align 4, !dbg !94
  %21 = getelementptr inbounds [6 x float]* %acc_weight_return, i32 0, i32 %20, !dbg !94
  store float 0.000000e+00, float* %21, align 4, !dbg !94
  br label %22, !dbg !95

; <label>:22                                      ; preds = %13
  %23 = load i32* %i, align 4, !dbg !96
  %24 = add nsw i32 %23, 1, !dbg !96
  store i32 %24, i32* %i, align 4, !dbg !96
  br label %10, !dbg !96

; <label>:25                                      ; preds = %10
  %26 = load float** %3, align 4, !dbg !97
  %27 = getelementptr inbounds float* %26, i32 0, !dbg !97
  %28 = load float* %27, align 4, !dbg !97
  %29 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !97
  store float %28, float* %29, align 4, !dbg !97
  br label %30, !dbg !97

; <label>:30                                      ; preds = %25
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !98), !dbg !100
  store i32 1, i32* %i1, align 4, !dbg !101
  br label %31, !dbg !101

; <label>:31                                      ; preds = %91, %30
  %32 = load i32* %i1, align 4, !dbg !102
  %33 = load i32* %NUMBER_OF_DAYS, align 4, !dbg !102
  %34 = sub nsw i32 %33, 1, !dbg !102
  %35 = icmp sle i32 %32, %34, !dbg !102
  br i1 %35, label %36, label %94, !dbg !102

; <label>:36                                      ; preds = %31
  %37 = load i32* %i1, align 4, !dbg !105
  %38 = icmp eq i32 %37, 1, !dbg !105
  br i1 %38, label %39, label %45, !dbg !105

; <label>:39                                      ; preds = %36
  %40 = load i32* %i1, align 4, !dbg !108
  %41 = load float** %3, align 4, !dbg !108
  %42 = getelementptr inbounds float* %41, i32 %40, !dbg !108
  %43 = load float* %42, align 4, !dbg !108
  %44 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !108
  store float %43, float* %44, align 4, !dbg !108
  br label %54, !dbg !110

; <label>:45                                      ; preds = %36
  %46 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !111
  %47 = load float* %46, align 4, !dbg !111
  %48 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !111
  store float %47, float* %48, align 4, !dbg !111
  %49 = load i32* %i1, align 4, !dbg !113
  %50 = load float** %3, align 4, !dbg !113
  %51 = getelementptr inbounds float* %50, i32 %49, !dbg !113
  %52 = load float* %51, align 4, !dbg !113
  %53 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !113
  store float %52, float* %53, align 4, !dbg !113
  br label %54

; <label>:54                                      ; preds = %45, %39
  call void @llvm.dbg.declare(metadata !{float* %lnReturn}, metadata !114), !dbg !115
  %55 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !116
  %56 = load float* %55, align 4, !dbg !116
  %57 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !116
  %58 = load float* %57, align 4, !dbg !116
  %59 = fdiv float %56, %58, !dbg !116
  %60 = call float @logf(float %59) #3, !dbg !116
  store float %60, float* %lnReturn, align 4, !dbg !116
  call void @llvm.dbg.declare(metadata !{float* %weight}, metadata !117), !dbg !118
  %61 = load i32* %i1, align 4, !dbg !119
  %62 = getelementptr inbounds [252 x float]* @_ZZ20correlation_accel_v2iiPfS_E10weight_rom, i32 0, i32 %61, !dbg !119
  %63 = load float* %62, align 4, !dbg !119
  store float %63, float* %weight, align 4, !dbg !119
  call void @llvm.dbg.declare(metadata !{i32* %channel}, metadata !120), !dbg !121
  %64 = load i32* %i1, align 4, !dbg !122
  %65 = srem i32 %64, 6, !dbg !122
  store i32 %65, i32* %channel, align 4, !dbg !122
  %66 = load float* %lnReturn, align 4, !dbg !123
  %67 = load i32* %channel, align 4, !dbg !123
  %68 = getelementptr inbounds [6 x float]* %acc_return, i32 0, i32 %67, !dbg !123
  %69 = load float* %68, align 4, !dbg !123
  %70 = fadd float %69, %66, !dbg !123
  store float %70, float* %68, align 4, !dbg !123
  %71 = load float* %lnReturn, align 4, !dbg !124
  %72 = load float* %lnReturn, align 4, !dbg !124
  %73 = fmul float %71, %72, !dbg !124
  %74 = load float* %weight, align 4, !dbg !124
  %75 = fmul float %73, %74, !dbg !124
  %76 = load i32* %channel, align 4, !dbg !124
  %77 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %76, !dbg !124
  %78 = load float* %77, align 4, !dbg !124
  %79 = fadd float %78, %75, !dbg !124
  store float %79, float* %77, align 4, !dbg !124
  %80 = load float* %lnReturn, align 4, !dbg !125
  %81 = load float* %weight, align 4, !dbg !125
  %82 = fmul float %80, %81, !dbg !125
  %83 = load i32* %channel, align 4, !dbg !125
  %84 = getelementptr inbounds [6 x float]* %acc_weight_return, i32 0, i32 %83, !dbg !125
  %85 = load float* %84, align 4, !dbg !125
  %86 = fadd float %85, %82, !dbg !125
  store float %86, float* %84, align 4, !dbg !125
  %87 = load float* %lnReturn, align 4, !dbg !126
  %88 = load i32* %i1, align 4, !dbg !126
  %89 = sub nsw i32 %88, 1, !dbg !126
  %90 = getelementptr inbounds [252 x float]* @_ZZ20correlation_accel_v2iiPfS_E9lnReturnA, i32 0, i32 %89, !dbg !126
  store float %87, float* %90, align 4, !dbg !126
  br label %91, !dbg !127

; <label>:91                                      ; preds = %54
  %92 = load i32* %i1, align 4, !dbg !128
  %93 = add nsw i32 %92, 1, !dbg !128
  store i32 %93, i32* %i1, align 4, !dbg !128
  br label %31, !dbg !128

; <label>:94                                      ; preds = %31
  br label %95, !dbg !129

; <label>:95                                      ; preds = %94
  call void @llvm.dbg.declare(metadata !{i32* %i2}, metadata !130), !dbg !132
  store i32 0, i32* %i2, align 4, !dbg !133
  br label %96, !dbg !133

; <label>:96                                      ; preds = %115, %95
  %97 = load i32* %i2, align 4, !dbg !134
  %98 = icmp slt i32 %97, 6, !dbg !134
  br i1 %98, label %99, label %118, !dbg !134

; <label>:99                                      ; preds = %96
  %100 = load i32* %i2, align 4, !dbg !137
  %101 = getelementptr inbounds [6 x float]* %acc_return, i32 0, i32 %100, !dbg !137
  %102 = load float* %101, align 4, !dbg !137
  %103 = load float* %sum_returnA, align 4, !dbg !137
  %104 = fadd float %103, %102, !dbg !137
  store float %104, float* %sum_returnA, align 4, !dbg !137
  %105 = load i32* %i2, align 4, !dbg !139
  %106 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %105, !dbg !139
  %107 = load float* %106, align 4, !dbg !139
  %108 = load float* %sum_weight_returnSquareA, align 4, !dbg !139
  %109 = fadd float %108, %107, !dbg !139
  store float %109, float* %sum_weight_returnSquareA, align 4, !dbg !139
  %110 = load i32* %i2, align 4, !dbg !140
  %111 = getelementptr inbounds [6 x float]* %acc_weight_return, i32 0, i32 %110, !dbg !140
  %112 = load float* %111, align 4, !dbg !140
  %113 = load float* %sum_weight_returnA, align 4, !dbg !140
  %114 = fadd float %113, %112, !dbg !140
  store float %114, float* %sum_weight_returnA, align 4, !dbg !140
  br label %115, !dbg !141

; <label>:115                                     ; preds = %99
  %116 = load i32* %i2, align 4, !dbg !142
  %117 = add nsw i32 %116, 1, !dbg !142
  store i32 %117, i32* %i2, align 4, !dbg !142
  br label %96, !dbg !142

; <label>:118                                     ; preds = %96
  call void @llvm.dbg.declare(metadata !{i32* %column_index}, metadata !143), !dbg !145
  store i32 1, i32* %column_index, align 4, !dbg !146
  br label %119, !dbg !146

; <label>:119                                     ; preds = %318, %118
  %120 = load i32* %column_index, align 4, !dbg !147
  %121 = load i32* %NUMBER_OF_INDICES, align 4, !dbg !147
  %122 = icmp slt i32 %120, %121, !dbg !147
  br i1 %122, label %123, label %321, !dbg !147

; <label>:123                                     ; preds = %119
  br label %124, !dbg !150

; <label>:124                                     ; preds = %123
  call void @llvm.dbg.declare(metadata !{i32* %i3}, metadata !153), !dbg !155
  store i32 0, i32* %i3, align 4, !dbg !156
  br label %125, !dbg !156

; <label>:125                                     ; preds = %139, %124
  %126 = load i32* %i3, align 4, !dbg !157
  %127 = icmp slt i32 %126, 6, !dbg !157
  br i1 %127, label %128, label %142, !dbg !157

; <label>:128                                     ; preds = %125
  %129 = load i32* %i3, align 4, !dbg !160
  %130 = getelementptr inbounds [6 x float]* %acc_return, i32 0, i32 %129, !dbg !160
  store float 0.000000e+00, float* %130, align 4, !dbg !160
  %131 = load i32* %i3, align 4, !dbg !162
  %132 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %131, !dbg !162
  store float 0.000000e+00, float* %132, align 4, !dbg !162
  %133 = load i32* %i3, align 4, !dbg !163
  %134 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %133, !dbg !163
  store float 0.000000e+00, float* %134, align 4, !dbg !163
  %135 = load i32* %i3, align 4, !dbg !164
  %136 = getelementptr inbounds [6 x float]* %acc_weight_return, i32 0, i32 %135, !dbg !164
  store float 0.000000e+00, float* %136, align 4, !dbg !164
  %137 = load i32* %i3, align 4, !dbg !165
  %138 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i32 0, i32 %137, !dbg !165
  store float 0.000000e+00, float* %138, align 4, !dbg !165
  br label %139, !dbg !166

; <label>:139                                     ; preds = %128
  %140 = load i32* %i3, align 4, !dbg !167
  %141 = add nsw i32 %140, 1, !dbg !167
  store i32 %141, i32* %i3, align 4, !dbg !167
  br label %125, !dbg !167

; <label>:142                                     ; preds = %125
  call void @llvm.dbg.declare(metadata !{i32* %index}, metadata !168), !dbg !169
  %143 = load i32* %column_index, align 4, !dbg !170
  %144 = load i32* %NUMBER_OF_DAYS, align 4, !dbg !170
  %145 = mul nsw i32 %143, %144, !dbg !170
  store i32 %145, i32* %index, align 4, !dbg !170
  %146 = load i32* %index, align 4, !dbg !171
  %147 = load float** %3, align 4, !dbg !171
  %148 = getelementptr inbounds float* %147, i32 %146, !dbg !171
  %149 = load float* %148, align 4, !dbg !171
  %150 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !171
  store float %149, float* %150, align 4, !dbg !171
  br label %151, !dbg !171

; <label>:151                                     ; preds = %142
  call void @llvm.dbg.declare(metadata !{i32* %i4}, metadata !172), !dbg !174
  store i32 1, i32* %i4, align 4, !dbg !175
  br label %152, !dbg !175

; <label>:152                                     ; preds = %224, %151
  %153 = load i32* %i4, align 4, !dbg !176
  %154 = load i32* %NUMBER_OF_DAYS, align 4, !dbg !176
  %155 = sub nsw i32 %154, 1, !dbg !176
  %156 = icmp sle i32 %153, %155, !dbg !176
  br i1 %156, label %157, label %227, !dbg !176

; <label>:157                                     ; preds = %152
  %158 = load i32* %i4, align 4, !dbg !179
  %159 = icmp eq i32 %158, 1, !dbg !179
  br i1 %159, label %160, label %168, !dbg !179

; <label>:160                                     ; preds = %157
  %161 = load i32* %index, align 4, !dbg !182
  %162 = load i32* %i4, align 4, !dbg !182
  %163 = add nsw i32 %161, %162, !dbg !182
  %164 = load float** %3, align 4, !dbg !182
  %165 = getelementptr inbounds float* %164, i32 %163, !dbg !182
  %166 = load float* %165, align 4, !dbg !182
  %167 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !182
  store float %166, float* %167, align 4, !dbg !182
  br label %179, !dbg !184

; <label>:168                                     ; preds = %157
  %169 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !185
  %170 = load float* %169, align 4, !dbg !185
  %171 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !185
  store float %170, float* %171, align 4, !dbg !185
  %172 = load i32* %index, align 4, !dbg !187
  %173 = load i32* %i4, align 4, !dbg !187
  %174 = add nsw i32 %172, %173, !dbg !187
  %175 = load float** %3, align 4, !dbg !187
  %176 = getelementptr inbounds float* %175, i32 %174, !dbg !187
  %177 = load float* %176, align 4, !dbg !187
  %178 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !187
  store float %177, float* %178, align 4, !dbg !187
  br label %179

; <label>:179                                     ; preds = %168, %160
  call void @llvm.dbg.declare(metadata !{float* %lnReturn5}, metadata !188), !dbg !189
  %180 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !190
  %181 = load float* %180, align 4, !dbg !190
  %182 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !190
  %183 = load float* %182, align 4, !dbg !190
  %184 = fdiv float %181, %183, !dbg !190
  %185 = call float @logf(float %184) #3, !dbg !190
  store float %185, float* %lnReturn5, align 4, !dbg !190
  call void @llvm.dbg.declare(metadata !{float* %weight6}, metadata !191), !dbg !192
  %186 = load i32* %i4, align 4, !dbg !193
  %187 = getelementptr inbounds [252 x float]* @_ZZ20correlation_accel_v2iiPfS_E10weight_rom, i32 0, i32 %186, !dbg !193
  %188 = load float* %187, align 4, !dbg !193
  store float %188, float* %weight6, align 4, !dbg !193
  call void @llvm.dbg.declare(metadata !{i32* %channel7}, metadata !194), !dbg !195
  %189 = load i32* %i4, align 4, !dbg !196
  %190 = srem i32 %189, 6, !dbg !196
  store i32 %190, i32* %channel7, align 4, !dbg !196
  %191 = load float* %lnReturn5, align 4, !dbg !197
  %192 = load i32* %channel7, align 4, !dbg !197
  %193 = getelementptr inbounds [6 x float]* %acc_return, i32 0, i32 %192, !dbg !197
  %194 = load float* %193, align 4, !dbg !197
  %195 = fadd float %194, %191, !dbg !197
  store float %195, float* %193, align 4, !dbg !197
  %196 = load float* %lnReturn5, align 4, !dbg !198
  %197 = load float* %lnReturn5, align 4, !dbg !198
  %198 = fmul float %196, %197, !dbg !198
  %199 = load float* %weight6, align 4, !dbg !198
  %200 = fmul float %198, %199, !dbg !198
  %201 = load i32* %channel7, align 4, !dbg !198
  %202 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %201, !dbg !198
  %203 = load float* %202, align 4, !dbg !198
  %204 = fadd float %203, %200, !dbg !198
  store float %204, float* %202, align 4, !dbg !198
  %205 = load float* %lnReturn5, align 4, !dbg !199
  %206 = load float* %weight6, align 4, !dbg !199
  %207 = fmul float %205, %206, !dbg !199
  %208 = load i32* %channel7, align 4, !dbg !199
  %209 = getelementptr inbounds [6 x float]* %acc_weight_return, i32 0, i32 %208, !dbg !199
  %210 = load float* %209, align 4, !dbg !199
  %211 = fadd float %210, %207, !dbg !199
  store float %211, float* %209, align 4, !dbg !199
  %212 = load i32* %i4, align 4, !dbg !200
  %213 = sub nsw i32 %212, 1, !dbg !200
  %214 = getelementptr inbounds [252 x float]* @_ZZ20correlation_accel_v2iiPfS_E9lnReturnA, i32 0, i32 %213, !dbg !200
  %215 = load float* %214, align 4, !dbg !200
  %216 = load float* %lnReturn5, align 4, !dbg !200
  %217 = fmul float %215, %216, !dbg !200
  %218 = load float* %weight6, align 4, !dbg !200
  %219 = fmul float %217, %218, !dbg !200
  %220 = load i32* %channel7, align 4, !dbg !200
  %221 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i32 0, i32 %220, !dbg !200
  %222 = load float* %221, align 4, !dbg !200
  %223 = fadd float %222, %219, !dbg !200
  store float %223, float* %221, align 4, !dbg !200
  br label %224, !dbg !201

; <label>:224                                     ; preds = %179
  %225 = load i32* %i4, align 4, !dbg !202
  %226 = add nsw i32 %225, 1, !dbg !202
  store i32 %226, i32* %i4, align 4, !dbg !202
  br label %152, !dbg !202

; <label>:227                                     ; preds = %152
  call void @llvm.dbg.declare(metadata !{float* %sum_return}, metadata !203), !dbg !204
  store float 0.000000e+00, float* %sum_return, align 4, !dbg !205
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnSquare}, metadata !206), !dbg !207
  store float 0.000000e+00, float* %sum_weight_returnSquare, align 4, !dbg !208
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_return}, metadata !209), !dbg !210
  store float 0.000000e+00, float* %sum_weight_return, align 4, !dbg !211
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnA_returnB}, metadata !212), !dbg !213
  store float 0.000000e+00, float* %sum_weight_returnA_returnB, align 4, !dbg !214
  br label %228, !dbg !214

; <label>:228                                     ; preds = %227
  call void @llvm.dbg.declare(metadata !{i32* %i8}, metadata !215), !dbg !217
  store i32 0, i32* %i8, align 4, !dbg !218
  br label %229, !dbg !218

; <label>:229                                     ; preds = %253, %228
  %230 = load i32* %i8, align 4, !dbg !219
  %231 = icmp slt i32 %230, 6, !dbg !219
  br i1 %231, label %232, label %256, !dbg !219

; <label>:232                                     ; preds = %229
  %233 = load i32* %i8, align 4, !dbg !222
  %234 = getelementptr inbounds [6 x float]* %acc_return, i32 0, i32 %233, !dbg !222
  %235 = load float* %234, align 4, !dbg !222
  %236 = load float* %sum_return, align 4, !dbg !222
  %237 = fadd float %236, %235, !dbg !222
  store float %237, float* %sum_return, align 4, !dbg !222
  %238 = load i32* %i8, align 4, !dbg !224
  %239 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %238, !dbg !224
  %240 = load float* %239, align 4, !dbg !224
  %241 = load float* %sum_weight_returnSquare, align 4, !dbg !224
  %242 = fadd float %241, %240, !dbg !224
  store float %242, float* %sum_weight_returnSquare, align 4, !dbg !224
  %243 = load i32* %i8, align 4, !dbg !225
  %244 = getelementptr inbounds [6 x float]* %acc_weight_return, i32 0, i32 %243, !dbg !225
  %245 = load float* %244, align 4, !dbg !225
  %246 = load float* %sum_weight_return, align 4, !dbg !225
  %247 = fadd float %246, %245, !dbg !225
  store float %247, float* %sum_weight_return, align 4, !dbg !225
  %248 = load i32* %i8, align 4, !dbg !226
  %249 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i32 0, i32 %248, !dbg !226
  %250 = load float* %249, align 4, !dbg !226
  %251 = load float* %sum_weight_returnA_returnB, align 4, !dbg !226
  %252 = fadd float %251, %250, !dbg !226
  store float %252, float* %sum_weight_returnA_returnB, align 4, !dbg !226
  br label %253, !dbg !227

; <label>:253                                     ; preds = %232
  %254 = load i32* %i8, align 4, !dbg !228
  %255 = add nsw i32 %254, 1, !dbg !228
  store i32 %255, i32* %i8, align 4, !dbg !228
  br label %229, !dbg !228

; <label>:256                                     ; preds = %229
  call void @llvm.dbg.declare(metadata !{float* %meanReturnA}, metadata !229), !dbg !230
  %257 = load float* %sum_returnA, align 4, !dbg !231
  %258 = load i32* %NUMBER_OF_DAYS, align 4, !dbg !231
  %259 = sub nsw i32 %258, 1, !dbg !231
  %260 = sitofp i32 %259 to float, !dbg !231
  %261 = fdiv float %257, %260, !dbg !231
  store float %261, float* %meanReturnA, align 4, !dbg !231
  call void @llvm.dbg.declare(metadata !{float* %meanReturnB}, metadata !232), !dbg !233
  %262 = load float* %sum_return, align 4, !dbg !234
  %263 = load i32* %NUMBER_OF_DAYS, align 4, !dbg !234
  %264 = sub nsw i32 %263, 1, !dbg !234
  %265 = sitofp i32 %264 to float, !dbg !234
  %266 = fdiv float %262, %265, !dbg !234
  store float %266, float* %meanReturnB, align 4, !dbg !234
  call void @llvm.dbg.declare(metadata !{float* %volatilityA}, metadata !235), !dbg !236
  %267 = load float* %sum_weight_returnSquareA, align 4, !dbg !237
  %268 = load float* %meanReturnA, align 4, !dbg !237
  %269 = fmul float 2.000000e+00, %268, !dbg !237
  %270 = load float* %sum_weight_returnA, align 4, !dbg !237
  %271 = fmul float %269, %270, !dbg !237
  %272 = fsub float %267, %271, !dbg !237
  %273 = load float* %sum_weight, align 4, !dbg !237
  %274 = fdiv float %272, %273, !dbg !237
  %275 = load float* %meanReturnA, align 4, !dbg !237
  %276 = load float* %meanReturnA, align 4, !dbg !237
  %277 = fmul float %275, %276, !dbg !237
  %278 = fadd float %274, %277, !dbg !237
  %279 = call float @sqrtf(float %278) #3, !dbg !237
  store float %279, float* %volatilityA, align 4, !dbg !237
  call void @llvm.dbg.declare(metadata !{float* %volatilityB}, metadata !238), !dbg !239
  %280 = load float* %sum_weight_returnSquare, align 4, !dbg !240
  %281 = load float* %meanReturnB, align 4, !dbg !240
  %282 = fmul float 2.000000e+00, %281, !dbg !240
  %283 = load float* %sum_weight_return, align 4, !dbg !240
  %284 = fmul float %282, %283, !dbg !240
  %285 = fsub float %280, %284, !dbg !240
  %286 = load float* %sum_weight, align 4, !dbg !240
  %287 = fdiv float %285, %286, !dbg !240
  %288 = load float* %meanReturnB, align 4, !dbg !240
  %289 = load float* %meanReturnB, align 4, !dbg !240
  %290 = fmul float %288, %289, !dbg !240
  %291 = fadd float %287, %290, !dbg !240
  %292 = call float @sqrtf(float %291) #3, !dbg !240
  store float %292, float* %volatilityB, align 4, !dbg !240
  call void @llvm.dbg.declare(metadata !{float* %covariance}, metadata !241), !dbg !242
  %293 = load float* %sum_weight_returnA_returnB, align 4, !dbg !243
  %294 = load float* %meanReturnA, align 4, !dbg !243
  %295 = load float* %sum_weight_return, align 4, !dbg !243
  %296 = fmul float %294, %295, !dbg !243
  %297 = fsub float %293, %296, !dbg !243
  %298 = load float* %meanReturnB, align 4, !dbg !243
  %299 = load float* %sum_weight_returnA, align 4, !dbg !243
  %300 = fmul float %298, %299, !dbg !243
  %301 = fsub float %297, %300, !dbg !243
  %302 = load float* %sum_weight, align 4, !dbg !243
  %303 = fdiv float %301, %302, !dbg !243
  %304 = load float* %meanReturnA, align 4, !dbg !243
  %305 = load float* %meanReturnB, align 4, !dbg !243
  %306 = fmul float %304, %305, !dbg !243
  %307 = fadd float %303, %306, !dbg !243
  store float %307, float* %covariance, align 4, !dbg !243
  call void @llvm.dbg.declare(metadata !{float* %corr_temp}, metadata !244), !dbg !245
  %308 = load float* %covariance, align 4, !dbg !246
  %309 = load float* %volatilityA, align 4, !dbg !246
  %310 = load float* %volatilityB, align 4, !dbg !246
  %311 = fmul float %309, %310, !dbg !246
  %312 = fdiv float %308, %311, !dbg !246
  store float %312, float* %corr_temp, align 4, !dbg !246
  %313 = load float* %corr_temp, align 4, !dbg !247
  %314 = load i32* %column_index, align 4, !dbg !247
  %315 = sub nsw i32 %314, 1, !dbg !247
  %316 = load float** %4, align 4, !dbg !247
  %317 = getelementptr inbounds float* %316, i32 %315, !dbg !247
  store float %313, float* %317, align 4, !dbg !247
  br label %318, !dbg !248

; <label>:318                                     ; preds = %256
  %319 = load i32* %column_index, align 4, !dbg !249
  %320 = add nsw i32 %319, 1, !dbg !249
  store i32 %320, i32* %column_index, align 4, !dbg !249
  br label %119, !dbg !249

; <label>:321                                     ; preds = %119
  ret void, !dbg !250
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define internal void @_ZL15weight_rom_initPfi(float* %weightRom, i32 %NUMBER_OF_DAYS) #2 {
  %1 = alloca float*, align 4
  %2 = alloca i32, align 4
  %lambda = alloca float, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store float* %weightRom, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !251), !dbg !252
  store i32 %NUMBER_OF_DAYS, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !253), !dbg !254
  call void @llvm.dbg.declare(metadata !{float* %lambda}, metadata !255), !dbg !256
  store float 0x3FEE147AE0000000, float* %lambda, align 4, !dbg !257
  %3 = load float** %1, align 4, !dbg !258
  %4 = getelementptr inbounds float* %3, i32 0, !dbg !258
  store float 1.000000e+00, float* %4, align 4, !dbg !258
  %5 = load float** %1, align 4, !dbg !259
  %6 = getelementptr inbounds float* %5, i32 1, !dbg !259
  store float 1.000000e+00, float* %6, align 4, !dbg !259
  br label %7, !dbg !259

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !260), !dbg !262
  store i32 2, i32* %i, align 4, !dbg !263
  br label %8, !dbg !263

; <label>:8                                       ; preds = %22, %7
  %9 = load i32* %i, align 4, !dbg !264
  %10 = icmp slt i32 %9, 252, !dbg !264
  br i1 %10, label %11, label %25, !dbg !264

; <label>:11                                      ; preds = %8
  %12 = load float* %lambda, align 4, !dbg !267
  %13 = load i32* %i, align 4, !dbg !267
  %14 = sub nsw i32 %13, 1, !dbg !267
  %15 = load float** %1, align 4, !dbg !267
  %16 = getelementptr inbounds float* %15, i32 %14, !dbg !267
  %17 = load float* %16, align 4, !dbg !267
  %18 = fmul float %12, %17, !dbg !267
  %19 = load i32* %i, align 4, !dbg !267
  %20 = load float** %1, align 4, !dbg !267
  %21 = getelementptr inbounds float* %20, i32 %19, !dbg !267
  store float %18, float* %21, align 4, !dbg !267
  br label %22, !dbg !269

; <label>:22                                      ; preds = %11
  %23 = load i32* %i, align 4, !dbg !270
  %24 = add nsw i32 %23, 1, !dbg !270
  store i32 %24, i32* %i, align 4, !dbg !270
  br label %8, !dbg !270

; <label>:25                                      ; preds = %8
  br label %26, !dbg !271

; <label>:26                                      ; preds = %25
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !272), !dbg !274
  store i32 2, i32* %i1, align 4, !dbg !275
  br label %27, !dbg !275

; <label>:27                                      ; preds = %40, %26
  %28 = load i32* %i1, align 4, !dbg !276
  %29 = load i32* %2, align 4, !dbg !276
  %30 = icmp slt i32 %28, %29, !dbg !276
  br i1 %30, label %31, label %43, !dbg !276

; <label>:31                                      ; preds = %27
  %32 = load i32* %i1, align 4, !dbg !279
  %33 = load float** %1, align 4, !dbg !279
  %34 = getelementptr inbounds float* %33, i32 %32, !dbg !279
  %35 = load float* %34, align 4, !dbg !279
  %36 = load float** %1, align 4, !dbg !279
  %37 = getelementptr inbounds float* %36, i32 0, !dbg !279
  %38 = load float* %37, align 4, !dbg !279
  %39 = fadd float %38, %35, !dbg !279
  store float %39, float* %37, align 4, !dbg !279
  br label %40, !dbg !281

; <label>:40                                      ; preds = %31
  %41 = load i32* %i1, align 4, !dbg !282
  %42 = add nsw i32 %41, 1, !dbg !282
  store i32 %42, i32* %i1, align 4, !dbg !282
  br label %27, !dbg !282

; <label>:43                                      ; preds = %27
  ret void, !dbg !283
}

; Function Attrs: nounwind
declare float @logf(float) #2

; Function Attrs: nounwind
declare float @sqrtf(float) #2

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.function_argument_annotation = !{!24, !25}
!xidane.function_declaration_type = !{!24, !26, !27, !28, !29, !30, !31, !30}
!xidane.function_declaration_filename = !{!24, !32, !27, !32, !29, !33, !31, !33}
!xidane.ExternC = !{!29, !31}
!llvm.module.flags = !{!34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !15, metadata !21, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease/../src/correlation_accel_v2.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"../src/correlation_accel_v2.cpp", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !12}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"correlation_accel_v2", metadata !"correlation_accel_v2", metadata !"_Z20correlation_accel_v2iiPfS_", i32 42, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, float*, float*)* @_Z20correlation_accel_v2iiPfS_, null, null, metadata !2, i32 56} ; [ DW_TAG_subprogram ] [line 42] [def] [scope 56] [correlation_accel_v2]
!5 = metadata !{metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!11 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!12 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"weight_rom_init", metadata !"weight_rom_init", metadata !"_ZL15weight_rom_initPfi", i32 362, metadata !13, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32)* @_ZL15weight_rom_initPfi, null, null, metadata !2, i32 365} ; [ DW_TAG_subprogram ] [line 362] [local] [def] [scope 365] [weight_rom_init]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{null, metadata !10, metadata !9}
!15 = metadata !{metadata !16, metadata !20}
!16 = metadata !{i32 786484, i32 0, metadata !4, metadata !"weight_rom", metadata !"weight_rom", metadata !"", metadata !6, i32 76, metadata !17, i32 1, i32 1, [252 x float]* @_ZZ20correlation_accel_v2iiPfS_E10weight_rom, null} ; [ DW_TAG_variable ] [weight_rom] [line 76] [local] [def]
!17 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8064, i64 32, i32 0, i32 0, metadata !11, metadata !18, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8064, align 32, offset 0] [from float]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786465, i64 0, i64 252}      ; [ DW_TAG_subrange_type ] [0, 251]
!20 = metadata !{i32 786484, i32 0, metadata !4, metadata !"lnReturnA", metadata !"lnReturnA", metadata !"", metadata !6, i32 84, metadata !17, i32 1, i32 1, [252 x float]* @_ZZ20correlation_accel_v2iiPfS_E9lnReturnA, null} ; [ DW_TAG_variable ] [lnReturnA] [line 84] [local] [def]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786490, metadata !0, metadata !23, i32 39} ; [ DW_TAG_imported_module ]
!23 = metadata !{i32 786489, metadata !1, null, metadata !"std", i32 0} ; [ DW_TAG_namespace ] [std] [line 0]
!24 = metadata !{void (i32, i32, float*, float*)* @_Z20correlation_accel_v2iiPfS_}
!25 = metadata !{metadata !"in_indices,number_of_indices*number_of_days,,,AXIDMA_SG,AFI,0,, out_correlation,number_of_indices-1,,,AXIDMA_SIMPLE,AFI,0,, "}
!26 = metadata !{metadata !"void.int.0.int.0.float [2520000].1.float [49995000].1"}
!27 = metadata !{void (float*, i32)* @_ZL15weight_rom_initPfi}
!28 = metadata !{metadata !"void.float [252].1.int.0"}
!29 = metadata !{float (float)* @logf}
!30 = metadata !{metadata !"float.float.0"}
!31 = metadata !{float (float)* @sqrtf}
!32 = metadata !{metadata !"../src/correlation_accel_v2.hpp"}
!33 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/bits/mathcalls.h"}
!34 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!35 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!36 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!37 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!38 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!39 = metadata !{i32 786689, metadata !4, metadata !"number_of_days", metadata !6, i32 16777265, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [number_of_days] [line 49]
!40 = metadata !{i32 49, i32 14, metadata !4, null}
!41 = metadata !{i32 786689, metadata !4, metadata !"number_of_indices", metadata !6, i32 33554482, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [number_of_indices] [line 50]
!42 = metadata !{i32 50, i32 14, metadata !4, null}
!43 = metadata !{i32 786689, metadata !4, metadata !"in_indices", metadata !6, i32 50331700, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_indices] [line 52]
!44 = metadata !{i32 52, i32 15, metadata !4, null}
!45 = metadata !{i32 786689, metadata !4, metadata !"out_correlation", metadata !6, i32 67108917, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_correlation] [line 53]
!46 = metadata !{i32 53, i32 17, metadata !4, null}
!47 = metadata !{i32 786688, metadata !4, metadata !"NUMBER_OF_DAYS", metadata !6, i32 70, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NUMBER_OF_DAYS] [line 70]
!48 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!49 = metadata !{i32 70, i32 12, metadata !4, null}
!50 = metadata !{i32 70, i32 2, metadata !4, null}
!51 = metadata !{i32 786688, metadata !4, metadata !"NUMBER_OF_INDICES", metadata !6, i32 71, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NUMBER_OF_INDICES] [line 71]
!52 = metadata !{i32 71, i32 12, metadata !4, null}
!53 = metadata !{i32 71, i32 2, metadata !4, null}
!54 = metadata !{i32 77, i32 2, metadata !4, null}
!55 = metadata !{i32 786688, metadata !4, metadata !"sum_weight", metadata !6, i32 78, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight] [line 78]
!56 = metadata !{i32 78, i32 8, metadata !4, null}
!57 = metadata !{i32 78, i32 2, metadata !4, null}
!58 = metadata !{i32 786688, metadata !4, metadata !"acc_return", metadata !6, i32 87, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acc_return] [line 87]
!59 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !11, metadata !60, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from float]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!62 = metadata !{i32 87, i32 8, metadata !4, null}
!63 = metadata !{i32 786688, metadata !4, metadata !"acc_weight_returnSquare", metadata !6, i32 88, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acc_weight_returnSquare] [line 88]
!64 = metadata !{i32 88, i32 8, metadata !4, null}
!65 = metadata !{i32 786688, metadata !4, metadata !"acc_weight_return", metadata !6, i32 89, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acc_weight_return] [line 89]
!66 = metadata !{i32 89, i32 8, metadata !4, null}
!67 = metadata !{i32 786688, metadata !4, metadata !"acc_weight_returnA_returnB", metadata !6, i32 90, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acc_weight_returnA_returnB] [line 90]
!68 = metadata !{i32 90, i32 8, metadata !4, null}
!69 = metadata !{i32 786688, metadata !4, metadata !"shift_reg", metadata !6, i32 92, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift_reg] [line 92]
!70 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !11, metadata !71, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from float]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!73 = metadata !{i32 92, i32 8, metadata !4, null}
!74 = metadata !{i32 786688, metadata !4, metadata !"sum_returnA", metadata !6, i32 99, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_returnA] [line 99]
!75 = metadata !{i32 99, i32 8, metadata !4, null}
!76 = metadata !{i32 99, i32 2, metadata !4, null}
!77 = metadata !{i32 786688, metadata !4, metadata !"sum_weight_returnSquareA", metadata !6, i32 100, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquareA] [line 100]
!78 = metadata !{i32 100, i32 8, metadata !4, null}
!79 = metadata !{i32 100, i32 2, metadata !4, null}
!80 = metadata !{i32 786688, metadata !4, metadata !"sum_weight_returnA", metadata !6, i32 101, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA] [line 101]
!81 = metadata !{i32 101, i32 8, metadata !4, null}
!82 = metadata !{i32 101, i32 2, metadata !4, null}
!83 = metadata !{i32 786688, metadata !84, metadata !"i", metadata !6, i32 108, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 108]
!84 = metadata !{i32 786443, metadata !5, metadata !4, i32 108, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!85 = metadata !{i32 108, i32 11, metadata !84, null}
!86 = metadata !{i32 108, i32 7, metadata !84, null}
!87 = metadata !{i32 108, i32 7, metadata !88, null}
!88 = metadata !{i32 786443, metadata !5, metadata !89, i32 108, i32 7, i32 2, i32 25} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!89 = metadata !{i32 786443, metadata !5, metadata !84, i32 108, i32 7, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!90 = metadata !{i32 112, i32 4, metadata !91, null}
!91 = metadata !{i32 786443, metadata !5, metadata !84, i32 108, i32 43, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!92 = metadata !{i32 113, i32 4, metadata !91, null}
!93 = metadata !{i32 114, i32 4, metadata !91, null}
!94 = metadata !{i32 115, i32 4, metadata !91, null}
!95 = metadata !{i32 116, i32 2, metadata !91, null}
!96 = metadata !{i32 108, i32 39, metadata !84, null}
!97 = metadata !{i32 129, i32 12, metadata !4, null}
!98 = metadata !{i32 786688, metadata !99, metadata !"i", metadata !6, i32 133, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 133]
!99 = metadata !{i32 786443, metadata !5, metadata !4, i32 133, i32 3, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!100 = metadata !{i32 133, i32 11, metadata !99, null}
!101 = metadata !{i32 133, i32 7, metadata !99, null}
!102 = metadata !{i32 133, i32 7, metadata !103, null}
!103 = metadata !{i32 786443, metadata !5, metadata !104, i32 133, i32 7, i32 2, i32 27} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!104 = metadata !{i32 786443, metadata !5, metadata !99, i32 133, i32 7, i32 1, i32 26} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!105 = metadata !{i32 158, i32 7, metadata !106, null}
!106 = metadata !{i32 786443, metadata !5, metadata !107, i32 158, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!107 = metadata !{i32 786443, metadata !5, metadata !99, i32 133, i32 47, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!108 = metadata !{i32 159, i32 16, metadata !109, null}
!109 = metadata !{i32 786443, metadata !5, metadata !106, i32 158, i32 14, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!110 = metadata !{i32 160, i32 4, metadata !109, null}
!111 = metadata !{i32 162, i32 14, metadata !112, null}
!112 = metadata !{i32 786443, metadata !5, metadata !106, i32 161, i32 18, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!113 = metadata !{i32 163, i32 14, metadata !112, null}
!114 = metadata !{i32 786688, metadata !107, metadata !"lnReturn", metadata !6, i32 169, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lnReturn] [line 169]
!115 = metadata !{i32 169, i32 10, metadata !107, null}
!116 = metadata !{i32 169, i32 26, metadata !107, null}
!117 = metadata !{i32 786688, metadata !107, metadata !"weight", metadata !6, i32 170, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight] [line 170]
!118 = metadata !{i32 170, i32 10, metadata !107, null}
!119 = metadata !{i32 170, i32 4, metadata !107, null}
!120 = metadata !{i32 786688, metadata !107, metadata !"channel", metadata !6, i32 173, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [channel] [line 173]
!121 = metadata !{i32 173, i32 8, metadata !107, null}
!122 = metadata !{i32 173, i32 4, metadata !107, null}
!123 = metadata !{i32 175, i32 4, metadata !107, null}
!124 = metadata !{i32 178, i32 4, metadata !107, null}
!125 = metadata !{i32 181, i32 4, metadata !107, null}
!126 = metadata !{i32 184, i32 4, metadata !107, null}
!127 = metadata !{i32 185, i32 3, metadata !107, null}
!128 = metadata !{i32 133, i32 43, metadata !99, null}
!129 = metadata !{i32 185, i32 3, metadata !99, null}
!130 = metadata !{i32 786688, metadata !131, metadata !"i", metadata !6, i32 189, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 189]
!131 = metadata !{i32 786443, metadata !5, metadata !4, i32 189, i32 2, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!132 = metadata !{i32 189, i32 10, metadata !131, null}
!133 = metadata !{i32 189, i32 6, metadata !131, null}
!134 = metadata !{i32 189, i32 6, metadata !135, null}
!135 = metadata !{i32 786443, metadata !5, metadata !136, i32 189, i32 6, i32 2, i32 29} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!136 = metadata !{i32 786443, metadata !5, metadata !131, i32 189, i32 6, i32 1, i32 28} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!137 = metadata !{i32 193, i32 3, metadata !138, null}
!138 = metadata !{i32 786443, metadata !5, metadata !131, i32 189, i32 42, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!139 = metadata !{i32 194, i32 3, metadata !138, null}
!140 = metadata !{i32 195, i32 3, metadata !138, null}
!141 = metadata !{i32 196, i32 2, metadata !138, null}
!142 = metadata !{i32 189, i32 38, metadata !131, null}
!143 = metadata !{i32 786688, metadata !144, metadata !"column_index", metadata !6, i32 201, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [column_index] [line 201]
!144 = metadata !{i32 786443, metadata !5, metadata !4, i32 201, i32 2, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!145 = metadata !{i32 201, i32 10, metadata !144, null}
!146 = metadata !{i32 201, i32 6, metadata !144, null}
!147 = metadata !{i32 201, i32 6, metadata !148, null}
!148 = metadata !{i32 786443, metadata !5, metadata !149, i32 201, i32 6, i32 3, i32 38} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!149 = metadata !{i32 786443, metadata !5, metadata !144, i32 201, i32 6, i32 1, i32 30} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!150 = metadata !{i32 201, i32 78, metadata !151, null}
!151 = metadata !{i32 786443, metadata !5, metadata !152, i32 201, i32 78, i32 2, i32 31} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!152 = metadata !{i32 786443, metadata !5, metadata !144, i32 201, i32 78, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!153 = metadata !{i32 786688, metadata !154, metadata !"i", metadata !6, i32 204, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 204]
!154 = metadata !{i32 786443, metadata !5, metadata !152, i32 204, i32 4, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!155 = metadata !{i32 204, i32 12, metadata !154, null}
!156 = metadata !{i32 204, i32 8, metadata !154, null}
!157 = metadata !{i32 204, i32 8, metadata !158, null}
!158 = metadata !{i32 786443, metadata !5, metadata !159, i32 204, i32 8, i32 2, i32 33} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!159 = metadata !{i32 786443, metadata !5, metadata !154, i32 204, i32 8, i32 1, i32 32} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!160 = metadata !{i32 208, i32 5, metadata !161, null}
!161 = metadata !{i32 786443, metadata !5, metadata !154, i32 204, i32 44, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!162 = metadata !{i32 209, i32 5, metadata !161, null}
!163 = metadata !{i32 210, i32 5, metadata !161, null}
!164 = metadata !{i32 211, i32 5, metadata !161, null}
!165 = metadata !{i32 212, i32 5, metadata !161, null}
!166 = metadata !{i32 213, i32 4, metadata !161, null}
!167 = metadata !{i32 204, i32 40, metadata !154, null}
!168 = metadata !{i32 786688, metadata !152, metadata !"index", metadata !6, i32 215, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 215]
!169 = metadata !{i32 215, i32 8, metadata !152, null}
!170 = metadata !{i32 215, i32 4, metadata !152, null}
!171 = metadata !{i32 228, i32 12, metadata !152, null}
!172 = metadata !{i32 786688, metadata !173, metadata !"i", metadata !6, i32 232, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 232]
!173 = metadata !{i32 786443, metadata !5, metadata !152, i32 232, i32 4, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!174 = metadata !{i32 232, i32 12, metadata !173, null}
!175 = metadata !{i32 232, i32 8, metadata !173, null}
!176 = metadata !{i32 232, i32 8, metadata !177, null}
!177 = metadata !{i32 786443, metadata !5, metadata !178, i32 232, i32 8, i32 2, i32 35} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!178 = metadata !{i32 786443, metadata !5, metadata !173, i32 232, i32 8, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!179 = metadata !{i32 257, i32 8, metadata !180, null}
!180 = metadata !{i32 786443, metadata !5, metadata !181, i32 257, i32 8, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!181 = metadata !{i32 786443, metadata !5, metadata !173, i32 232, i32 48, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!182 = metadata !{i32 258, i32 17, metadata !183, null}
!183 = metadata !{i32 786443, metadata !5, metadata !180, i32 257, i32 15, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!184 = metadata !{i32 259, i32 5, metadata !183, null}
!185 = metadata !{i32 261, i32 15, metadata !186, null}
!186 = metadata !{i32 786443, metadata !5, metadata !180, i32 260, i32 19, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!187 = metadata !{i32 262, i32 15, metadata !186, null}
!188 = metadata !{i32 786688, metadata !181, metadata !"lnReturn", metadata !6, i32 267, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lnReturn] [line 267]
!189 = metadata !{i32 267, i32 11, metadata !181, null}
!190 = metadata !{i32 267, i32 23, metadata !181, null}
!191 = metadata !{i32 786688, metadata !181, metadata !"weight", metadata !6, i32 268, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight] [line 268]
!192 = metadata !{i32 268, i32 11, metadata !181, null}
!193 = metadata !{i32 268, i32 5, metadata !181, null}
!194 = metadata !{i32 786688, metadata !181, metadata !"channel", metadata !6, i32 271, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [channel] [line 271]
!195 = metadata !{i32 271, i32 9, metadata !181, null}
!196 = metadata !{i32 271, i32 5, metadata !181, null}
!197 = metadata !{i32 274, i32 5, metadata !181, null}
!198 = metadata !{i32 277, i32 5, metadata !181, null}
!199 = metadata !{i32 280, i32 5, metadata !181, null}
!200 = metadata !{i32 283, i32 5, metadata !181, null}
!201 = metadata !{i32 284, i32 4, metadata !181, null}
!202 = metadata !{i32 232, i32 44, metadata !173, null}
!203 = metadata !{i32 786688, metadata !152, metadata !"sum_return", metadata !6, i32 287, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_return] [line 287]
!204 = metadata !{i32 287, i32 9, metadata !152, null}
!205 = metadata !{i32 287, i32 3, metadata !152, null}
!206 = metadata !{i32 786688, metadata !152, metadata !"sum_weight_returnSquare", metadata !6, i32 288, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquare] [line 288]
!207 = metadata !{i32 288, i32 9, metadata !152, null}
!208 = metadata !{i32 288, i32 3, metadata !152, null}
!209 = metadata !{i32 786688, metadata !152, metadata !"sum_weight_return", metadata !6, i32 289, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_return] [line 289]
!210 = metadata !{i32 289, i32 9, metadata !152, null}
!211 = metadata !{i32 289, i32 3, metadata !152, null}
!212 = metadata !{i32 786688, metadata !152, metadata !"sum_weight_returnA_returnB", metadata !6, i32 290, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA_returnB] [line 290]
!213 = metadata !{i32 290, i32 9, metadata !152, null}
!214 = metadata !{i32 290, i32 3, metadata !152, null}
!215 = metadata !{i32 786688, metadata !216, metadata !"i", metadata !6, i32 293, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 293]
!216 = metadata !{i32 786443, metadata !5, metadata !152, i32 293, i32 3, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!217 = metadata !{i32 293, i32 11, metadata !216, null}
!218 = metadata !{i32 293, i32 7, metadata !216, null}
!219 = metadata !{i32 293, i32 7, metadata !220, null}
!220 = metadata !{i32 786443, metadata !5, metadata !221, i32 293, i32 7, i32 2, i32 37} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!221 = metadata !{i32 786443, metadata !5, metadata !216, i32 293, i32 7, i32 1, i32 36} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!222 = metadata !{i32 297, i32 4, metadata !223, null}
!223 = metadata !{i32 786443, metadata !5, metadata !216, i32 293, i32 43, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!224 = metadata !{i32 298, i32 4, metadata !223, null}
!225 = metadata !{i32 299, i32 4, metadata !223, null}
!226 = metadata !{i32 300, i32 4, metadata !223, null}
!227 = metadata !{i32 301, i32 3, metadata !223, null}
!228 = metadata !{i32 293, i32 39, metadata !216, null}
!229 = metadata !{i32 786688, metadata !152, metadata !"meanReturnA", metadata !6, i32 304, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [meanReturnA] [line 304]
!230 = metadata !{i32 304, i32 9, metadata !152, null}
!231 = metadata !{i32 304, i32 3, metadata !152, null}
!232 = metadata !{i32 786688, metadata !152, metadata !"meanReturnB", metadata !6, i32 305, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [meanReturnB] [line 305]
!233 = metadata !{i32 305, i32 9, metadata !152, null}
!234 = metadata !{i32 305, i32 3, metadata !152, null}
!235 = metadata !{i32 786688, metadata !152, metadata !"volatilityA", metadata !6, i32 307, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [volatilityA] [line 307]
!236 = metadata !{i32 307, i32 9, metadata !152, null}
!237 = metadata !{i32 307, i32 23, metadata !152, null}
!238 = metadata !{i32 786688, metadata !152, metadata !"volatilityB", metadata !6, i32 310, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [volatilityB] [line 310]
!239 = metadata !{i32 310, i32 9, metadata !152, null}
!240 = metadata !{i32 310, i32 23, metadata !152, null}
!241 = metadata !{i32 786688, metadata !152, metadata !"covariance", metadata !6, i32 313, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [covariance] [line 313]
!242 = metadata !{i32 313, i32 9, metadata !152, null}
!243 = metadata !{i32 313, i32 3, metadata !152, null}
!244 = metadata !{i32 786688, metadata !152, metadata !"corr_temp", metadata !6, i32 317, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [corr_temp] [line 317]
!245 = metadata !{i32 317, i32 9, metadata !152, null}
!246 = metadata !{i32 317, i32 3, metadata !152, null}
!247 = metadata !{i32 332, i32 16, metadata !152, null}
!248 = metadata !{i32 334, i32 2, metadata !152, null}
!249 = metadata !{i32 201, i32 62, metadata !144, null}
!250 = metadata !{i32 336, i32 1, metadata !4, null}
!251 = metadata !{i32 786689, metadata !12, metadata !"weightRom", metadata !6, i32 16777579, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weightRom] [line 363]
!252 = metadata !{i32 363, i32 9, metadata !12, null}
!253 = metadata !{i32 786689, metadata !12, metadata !"NUMBER_OF_DAYS", metadata !6, i32 33554796, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NUMBER_OF_DAYS] [line 364]
!254 = metadata !{i32 364, i32 7, metadata !12, null}
!255 = metadata !{i32 786688, metadata !12, metadata !"lambda", metadata !6, i32 366, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda] [line 366]
!256 = metadata !{i32 366, i32 8, metadata !12, null}
!257 = metadata !{i32 366, i32 2, metadata !12, null}
!258 = metadata !{i32 367, i32 2, metadata !12, null}
!259 = metadata !{i32 368, i32 2, metadata !12, null}
!260 = metadata !{i32 786688, metadata !261, metadata !"i", metadata !6, i32 371, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 371]
!261 = metadata !{i32 786443, metadata !5, metadata !12, i32 371, i32 2, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!262 = metadata !{i32 371, i32 10, metadata !261, null}
!263 = metadata !{i32 371, i32 6, metadata !261, null}
!264 = metadata !{i32 371, i32 6, metadata !265, null}
!265 = metadata !{i32 786443, metadata !5, metadata !266, i32 371, i32 6, i32 2, i32 40} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!266 = metadata !{i32 786443, metadata !5, metadata !261, i32 371, i32 6, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!267 = metadata !{i32 372, i32 3, metadata !268, null}
!268 = metadata !{i32 786443, metadata !5, metadata !261, i32 371, i32 41, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!269 = metadata !{i32 373, i32 2, metadata !268, null}
!270 = metadata !{i32 371, i32 36, metadata !261, null}
!271 = metadata !{i32 373, i32 2, metadata !261, null}
!272 = metadata !{i32 786688, metadata !273, metadata !"i", metadata !6, i32 376, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 376]
!273 = metadata !{i32 786443, metadata !5, metadata !12, i32 376, i32 2, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!274 = metadata !{i32 376, i32 10, metadata !273, null}
!275 = metadata !{i32 376, i32 6, metadata !273, null}
!276 = metadata !{i32 376, i32 6, metadata !277, null}
!277 = metadata !{i32 786443, metadata !5, metadata !278, i32 376, i32 6, i32 2, i32 42} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!278 = metadata !{i32 786443, metadata !5, metadata !273, i32 376, i32 6, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!279 = metadata !{i32 377, i32 3, metadata !280, null}
!280 = metadata !{i32 786443, metadata !5, metadata !273, i32 376, i32 41, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/src/correlation_accel_v2.cpp]
!281 = metadata !{i32 379, i32 2, metadata !280, null}
!282 = metadata !{i32 376, i32 37, metadata !273, null}
!283 = metadata !{i32 380, i32 1, metadata !12, null}
