; ModuleID = '/home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

; Function Attrs: nounwind
define void @_Z12mmult_kernelPA32_fS0_Pf([32 x float]* %in_A, [32 x float]* %in_B, float* %out_C) #0 {
  %1 = alloca [32 x float]*, align 4
  %2 = alloca [32 x float]*, align 4
  %3 = alloca float*, align 4
  %index_a = alloca i32, align 4
  %index_b = alloca i32, align 4
  %index_d = alloca i32, align 4
  %result = alloca float, align 4
  %product_term = alloca float, align 4
  store [32 x float]* %in_A, [32 x float]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[32 x float]** %1}, metadata !29), !dbg !30
  store [32 x float]* %in_B, [32 x float]** %2, align 4
  call void @llvm.dbg.declare(metadata !{[32 x float]** %2}, metadata !31), !dbg !32
  store float* %out_C, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !33), !dbg !34
  call void @llvm.dbg.declare(metadata !{i32* %index_a}, metadata !35), !dbg !37
  call void @llvm.dbg.declare(metadata !{i32* %index_b}, metadata !38), !dbg !39
  call void @llvm.dbg.declare(metadata !{i32* %index_d}, metadata !40), !dbg !41
  store i32 0, i32* %index_a, align 4, !dbg !42
  br label %4, !dbg !42

; <label>:4                                       ; preds = %47, %0
  %5 = load i32* %index_a, align 4, !dbg !44
  %6 = icmp slt i32 %5, 32, !dbg !44
  br i1 %6, label %7, label %50, !dbg !44

; <label>:7                                       ; preds = %4
  store i32 0, i32* %index_b, align 4, !dbg !47
  br label %8, !dbg !47

; <label>:8                                       ; preds = %43, %7
  %9 = load i32* %index_b, align 4, !dbg !50
  %10 = icmp slt i32 %9, 32, !dbg !50
  br i1 %10, label %11, label %46, !dbg !50

; <label>:11                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{float* %result}, metadata !53), !dbg !55
  store float 0.000000e+00, float* %result, align 4, !dbg !56
  store i32 0, i32* %index_d, align 4, !dbg !57
  br label %12, !dbg !57

; <label>:12                                      ; preds = %32, %11
  %13 = load i32* %index_d, align 4, !dbg !59
  %14 = icmp slt i32 %13, 32, !dbg !59
  br i1 %14, label %15, label %35, !dbg !59

; <label>:15                                      ; preds = %12
  call void @llvm.dbg.declare(metadata !{float* %product_term}, metadata !62), !dbg !64
  %16 = load i32* %index_d, align 4, !dbg !65
  %17 = load i32* %index_a, align 4, !dbg !65
  %18 = load [32 x float]** %1, align 4, !dbg !65
  %19 = getelementptr inbounds [32 x float]* %18, i32 %17, !dbg !65
  %20 = getelementptr inbounds [32 x float]* %19, i32 0, i32 %16, !dbg !65
  %21 = load float* %20, align 4, !dbg !65
  %22 = load i32* %index_b, align 4, !dbg !65
  %23 = load i32* %index_d, align 4, !dbg !65
  %24 = load [32 x float]** %2, align 4, !dbg !65
  %25 = getelementptr inbounds [32 x float]* %24, i32 %23, !dbg !65
  %26 = getelementptr inbounds [32 x float]* %25, i32 0, i32 %22, !dbg !65
  %27 = load float* %26, align 4, !dbg !65
  %28 = fmul float %21, %27, !dbg !65
  store float %28, float* %product_term, align 4, !dbg !65
  %29 = load float* %product_term, align 4, !dbg !66
  %30 = load float* %result, align 4, !dbg !66
  %31 = fadd float %30, %29, !dbg !66
  store float %31, float* %result, align 4, !dbg !66
  br label %32, !dbg !67

; <label>:32                                      ; preds = %15
  %33 = load i32* %index_d, align 4, !dbg !68
  %34 = add nsw i32 %33, 1, !dbg !68
  store i32 %34, i32* %index_d, align 4, !dbg !68
  br label %12, !dbg !68

; <label>:35                                      ; preds = %12
  %36 = load float* %result, align 4, !dbg !69
  %37 = load i32* %index_a, align 4, !dbg !69
  %38 = mul nsw i32 %37, 32, !dbg !69
  %39 = load i32* %index_b, align 4, !dbg !69
  %40 = add nsw i32 %38, %39, !dbg !69
  %41 = load float** %3, align 4, !dbg !69
  %42 = getelementptr inbounds float* %41, i32 %40, !dbg !69
  store float %36, float* %42, align 4, !dbg !69
  br label %43, !dbg !70

; <label>:43                                      ; preds = %35
  %44 = load i32* %index_b, align 4, !dbg !71
  %45 = add nsw i32 %44, 1, !dbg !71
  store i32 %45, i32* %index_b, align 4, !dbg !71
  br label %8, !dbg !71

; <label>:46                                      ; preds = %8
  br label %47, !dbg !72

; <label>:47                                      ; preds = %46
  %48 = load i32* %index_a, align 4, !dbg !73
  %49 = add nsw i32 %48, 1, !dbg !73
  store i32 %49, i32* %index_a, align 4, !dbg !73
  br label %4, !dbg !73

; <label>:50                                      ; preds = %4
  ret void, !dbg !74
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define void @_Z11mmult_accelPfS_S_(float* %in_A, float* %in_B, float* %out_C) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a_buf = alloca [32 x [32 x float]], align 4
  %b_buf = alloca [32 x [32 x float]], align 4
  store float* %in_A, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !75), !dbg !76
  store float* %in_B, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !77), !dbg !78
  store float* %out_C, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !79), !dbg !80
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !81), !dbg !82
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !83), !dbg !84
  call void @llvm.dbg.declare(metadata !{[32 x [32 x float]]* %a_buf}, metadata !85), !dbg !88
  call void @llvm.dbg.declare(metadata !{[32 x [32 x float]]* %b_buf}, metadata !89), !dbg !90
  store i32 0, i32* %i, align 4, !dbg !91
  br label %4, !dbg !91

; <label>:4                                       ; preds = %27, %0
  %5 = load i32* %i, align 4, !dbg !93
  %6 = icmp slt i32 %5, 32, !dbg !93
  br i1 %6, label %7, label %30, !dbg !93

; <label>:7                                       ; preds = %4
  store i32 0, i32* %j, align 4, !dbg !96
  br label %8, !dbg !96

; <label>:8                                       ; preds = %23, %7
  %9 = load i32* %j, align 4, !dbg !99
  %10 = icmp slt i32 %9, 32, !dbg !99
  br i1 %10, label %11, label %26, !dbg !99

; <label>:11                                      ; preds = %8
  %12 = load i32* %i, align 4, !dbg !102
  %13 = mul nsw i32 %12, 32, !dbg !102
  %14 = load i32* %j, align 4, !dbg !102
  %15 = add nsw i32 %13, %14, !dbg !102
  %16 = load float** %1, align 4, !dbg !102
  %17 = getelementptr inbounds float* %16, i32 %15, !dbg !102
  %18 = load float* %17, align 4, !dbg !102
  %19 = load i32* %j, align 4, !dbg !102
  %20 = load i32* %i, align 4, !dbg !102
  %21 = getelementptr inbounds [32 x [32 x float]]* %a_buf, i32 0, i32 %20, !dbg !102
  %22 = getelementptr inbounds [32 x float]* %21, i32 0, i32 %19, !dbg !102
  store float %18, float* %22, align 4, !dbg !102
  br label %23, !dbg !104

; <label>:23                                      ; preds = %11
  %24 = load i32* %j, align 4, !dbg !105
  %25 = add nsw i32 %24, 1, !dbg !105
  store i32 %25, i32* %j, align 4, !dbg !105
  br label %8, !dbg !105

; <label>:26                                      ; preds = %8
  br label %27, !dbg !106

; <label>:27                                      ; preds = %26
  %28 = load i32* %i, align 4, !dbg !107
  %29 = add nsw i32 %28, 1, !dbg !107
  store i32 %29, i32* %i, align 4, !dbg !107
  br label %4, !dbg !107

; <label>:30                                      ; preds = %4
  store i32 0, i32* %i, align 4, !dbg !108
  br label %31, !dbg !108

; <label>:31                                      ; preds = %54, %30
  %32 = load i32* %i, align 4, !dbg !110
  %33 = icmp slt i32 %32, 32, !dbg !110
  br i1 %33, label %34, label %57, !dbg !110

; <label>:34                                      ; preds = %31
  store i32 0, i32* %j, align 4, !dbg !113
  br label %35, !dbg !113

; <label>:35                                      ; preds = %50, %34
  %36 = load i32* %j, align 4, !dbg !116
  %37 = icmp slt i32 %36, 32, !dbg !116
  br i1 %37, label %38, label %53, !dbg !116

; <label>:38                                      ; preds = %35
  %39 = load i32* %i, align 4, !dbg !119
  %40 = mul nsw i32 %39, 32, !dbg !119
  %41 = load i32* %j, align 4, !dbg !119
  %42 = add nsw i32 %40, %41, !dbg !119
  %43 = load float** %2, align 4, !dbg !119
  %44 = getelementptr inbounds float* %43, i32 %42, !dbg !119
  %45 = load float* %44, align 4, !dbg !119
  %46 = load i32* %j, align 4, !dbg !119
  %47 = load i32* %i, align 4, !dbg !119
  %48 = getelementptr inbounds [32 x [32 x float]]* %b_buf, i32 0, i32 %47, !dbg !119
  %49 = getelementptr inbounds [32 x float]* %48, i32 0, i32 %46, !dbg !119
  store float %45, float* %49, align 4, !dbg !119
  br label %50, !dbg !121

; <label>:50                                      ; preds = %38
  %51 = load i32* %j, align 4, !dbg !122
  %52 = add nsw i32 %51, 1, !dbg !122
  store i32 %52, i32* %j, align 4, !dbg !122
  br label %35, !dbg !122

; <label>:53                                      ; preds = %35
  br label %54, !dbg !123

; <label>:54                                      ; preds = %53
  %55 = load i32* %i, align 4, !dbg !124
  %56 = add nsw i32 %55, 1, !dbg !124
  store i32 %56, i32* %i, align 4, !dbg !124
  br label %31, !dbg !124

; <label>:57                                      ; preds = %31
  %58 = getelementptr inbounds [32 x [32 x float]]* %a_buf, i32 0, i32 0, !dbg !125
  %59 = getelementptr inbounds [32 x [32 x float]]* %b_buf, i32 0, i32 0, !dbg !125
  %60 = load float** %3, align 4, !dbg !125
  call void @_Z12mmult_kernelPA32_fS0_Pf([32 x float]* %58, [32 x float]* %59, float* %60), !dbg !125
  ret void, !dbg !126
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!17, !18, !19, !20}
!xidane.function_declaration_filename = !{!17, !21, !19, !22}
!xidane.function_argument_annotation = !{!19, !23}
!llvm.module.flags = !{!24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_optimized"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !14}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_kernel", metadata !"mmult_kernel", metadata !"_Z12mmult_kernelPA32_fS0_Pf", i32 6, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([32 x float]*, [32 x float]*, float*)* @_Z12mmult_kernelPA32_fS0_Pf, null, null, metadata !2, i32 9} ; [ DW_TAG_subprogram ] [line 6] [def] [scope 9] [mmult_kernel]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !13}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!9 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !10, metadata !11, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from float]
!10 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786465, i64 0, i64 32}       ; [ DW_TAG_subrange_type ] [0, 31]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_accel", metadata !"mmult_accel", metadata !"_Z11mmult_accelPfS_S_", i32 31, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @_Z11mmult_accelPfS_S_, null, null, metadata !2, i32 34} ; [ DW_TAG_subprogram ] [line 31] [def] [scope 34] [mmult_accel]
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{null, metadata !13, metadata !13, metadata !13}
!17 = metadata !{void ([32 x float]*, [32 x float]*, float*)* @_Z12mmult_kernelPA32_fS0_Pf}
!18 = metadata !{metadata !"void.float [32][32].1.float [32][32].1.float [1024].1"}
!19 = metadata !{void (float*, float*, float*)* @_Z11mmult_accelPfS_S_}
!20 = metadata !{metadata !"void.float [1024].1.float [1024].1.float [1024].1"}
!21 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp"}
!22 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.h"}
!23 = metadata !{metadata !"in_A,,,,,,,, in_B,,,,,,,, out_C,,,,,,,, "}
!24 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!25 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!26 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!27 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!28 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!29 = metadata !{i32 786689, metadata !4, metadata !"in_A", metadata !5, i32 16777222, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_A] [line 6]
!30 = metadata !{i32 6, i32 25, metadata !4, null}
!31 = metadata !{i32 786689, metadata !4, metadata !"in_B", metadata !5, i32 33554439, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_B] [line 7]
!32 = metadata !{i32 7, i32 25, metadata !4, null}
!33 = metadata !{i32 786689, metadata !4, metadata !"out_C", metadata !5, i32 50331656, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_C] [line 8]
!34 = metadata !{i32 8, i32 25, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!35 = metadata !{i32 786688, metadata !4, metadata !"index_a", metadata !5, i32 14, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index_a] [line 14]
!36 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!37 = metadata !{i32 14, i32 7, metadata !4, null}
!38 = metadata !{i32 786688, metadata !4, metadata !"index_b", metadata !5, i32 14, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index_b] [line 14]
!39 = metadata !{i32 14, i32 16, metadata !4, null}
!40 = metadata !{i32 786688, metadata !4, metadata !"index_d", metadata !5, i32 14, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index_d] [line 14]
!41 = metadata !{i32 14, i32 25, metadata !4, null}
!42 = metadata !{i32 16, i32 8, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!44 = metadata !{i32 16, i32 8, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !46, i32 16, i32 8, i32 2, i32 19} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!46 = metadata !{i32 786443, metadata !1, metadata !43, i32 16, i32 8, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!47 = metadata !{i32 17, i32 10, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !49, i32 17, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!49 = metadata !{i32 786443, metadata !1, metadata !43, i32 16, i32 51, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!50 = metadata !{i32 17, i32 10, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !52, i32 17, i32 10, i32 2, i32 18} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!52 = metadata !{i32 786443, metadata !1, metadata !48, i32 17, i32 10, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!53 = metadata !{i32 786688, metadata !54, metadata !"result", metadata !5, i32 19, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 19]
!54 = metadata !{i32 786443, metadata !1, metadata !48, i32 17, i32 53, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!55 = metadata !{i32 19, i32 13, metadata !54, null}
!56 = metadata !{i32 19, i32 7, metadata !54, null}
!57 = metadata !{i32 20, i32 12, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !54, i32 20, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!59 = metadata !{i32 20, i32 12, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !61, i32 20, i32 12, i32 2, i32 17} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!61 = metadata !{i32 786443, metadata !1, metadata !58, i32 20, i32 12, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!62 = metadata !{i32 786688, metadata !63, metadata !"product_term", metadata !5, i32 23, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [product_term] [line 23]
!63 = metadata !{i32 786443, metadata !1, metadata !58, i32 20, i32 55, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!64 = metadata !{i32 23, i32 15, metadata !63, null}
!65 = metadata !{i32 23, i32 9, metadata !63, null}
!66 = metadata !{i32 24, i32 9, metadata !63, null}
!67 = metadata !{i32 25, i32 7, metadata !63, null}
!68 = metadata !{i32 20, i32 44, metadata !58, null}
!69 = metadata !{i32 26, i32 7, metadata !54, null}
!70 = metadata !{i32 27, i32 5, metadata !54, null}
!71 = metadata !{i32 17, i32 42, metadata !48, null}
!72 = metadata !{i32 28, i32 3, metadata !49, null}
!73 = metadata !{i32 16, i32 40, metadata !43, null}
!74 = metadata !{i32 29, i32 1, metadata !4, null}
!75 = metadata !{i32 786689, metadata !14, metadata !"in_A", metadata !5, i32 16777247, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_A] [line 31]
!76 = metadata !{i32 31, i32 25, metadata !14, null}
!77 = metadata !{i32 786689, metadata !14, metadata !"in_B", metadata !5, i32 33554464, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_B] [line 32]
!78 = metadata !{i32 32, i32 25, metadata !14, null}
!79 = metadata !{i32 786689, metadata !14, metadata !"out_C", metadata !5, i32 50331681, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_C] [line 33]
!80 = metadata !{i32 33, i32 25, metadata !14, null}
!81 = metadata !{i32 786688, metadata !14, metadata !"i", metadata !5, i32 35, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 35]
!82 = metadata !{i32 35, i32 7, metadata !14, null}
!83 = metadata !{i32 786688, metadata !14, metadata !"j", metadata !5, i32 35, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 35]
!84 = metadata !{i32 35, i32 10, metadata !14, null}
!85 = metadata !{i32 786688, metadata !14, metadata !"a_buf", metadata !5, i32 36, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a_buf] [line 36]
!86 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !10, metadata !87, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32768, align 32, offset 0] [from float]
!87 = metadata !{metadata !12, metadata !12}
!88 = metadata !{i32 36, i32 9, metadata !14, null}
!89 = metadata !{i32 786688, metadata !14, metadata !"b_buf", metadata !5, i32 37, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b_buf] [line 37]
!90 = metadata !{i32 37, i32 9, metadata !14, null}
!91 = metadata !{i32 40, i32 7, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !14, i32 40, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!93 = metadata !{i32 40, i32 7, metadata !94, null}
!94 = metadata !{i32 786443, metadata !1, metadata !95, i32 40, i32 7, i32 2, i32 23} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!95 = metadata !{i32 786443, metadata !1, metadata !92, i32 40, i32 7, i32 1, i32 20} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!96 = metadata !{i32 41, i32 9, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !98, i32 41, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!98 = metadata !{i32 786443, metadata !1, metadata !92, i32 40, i32 28, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!99 = metadata !{i32 41, i32 9, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !101, i32 41, i32 9, i32 2, i32 22} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!101 = metadata !{i32 786443, metadata !1, metadata !97, i32 41, i32 9, i32 1, i32 21} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!102 = metadata !{i32 43, i32 7, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !97, i32 41, i32 30, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!104 = metadata !{i32 44, i32 5, metadata !103, null}
!105 = metadata !{i32 41, i32 25, metadata !97, null}
!106 = metadata !{i32 45, i32 3, metadata !98, null}
!107 = metadata !{i32 40, i32 23, metadata !92, null}
!108 = metadata !{i32 48, i32 7, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !14, i32 48, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!110 = metadata !{i32 48, i32 7, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !112, i32 48, i32 7, i32 2, i32 27} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!112 = metadata !{i32 786443, metadata !1, metadata !109, i32 48, i32 7, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!113 = metadata !{i32 49, i32 9, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !115, i32 49, i32 5, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!115 = metadata !{i32 786443, metadata !1, metadata !109, i32 48, i32 28, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!116 = metadata !{i32 49, i32 9, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !118, i32 49, i32 9, i32 2, i32 26} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!118 = metadata !{i32 786443, metadata !1, metadata !114, i32 49, i32 9, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!119 = metadata !{i32 51, i32 7, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !114, i32 49, i32 30, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_optimized//home/trungnguyen/SDSoC/samples/mmult_optimized/mmult_accel.cpp]
!121 = metadata !{i32 52, i32 5, metadata !120, null}
!122 = metadata !{i32 49, i32 25, metadata !114, null}
!123 = metadata !{i32 53, i32 3, metadata !115, null}
!124 = metadata !{i32 48, i32 23, metadata !109, null}
!125 = metadata !{i32 56, i32 3, metadata !14, null}
!126 = metadata !{i32 57, i32 1, metadata !14, null}
