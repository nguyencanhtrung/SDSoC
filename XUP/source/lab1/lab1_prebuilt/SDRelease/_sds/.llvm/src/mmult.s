; ModuleID = 'C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp'
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
  call void @llvm.dbg.declare(metadata !{[32 x float]** %1}, metadata !30), !dbg !31
  store [32 x float]* %in_B, [32 x float]** %2, align 4
  call void @llvm.dbg.declare(metadata !{[32 x float]** %2}, metadata !32), !dbg !33
  store float* %out_C, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !34), !dbg !35
  call void @llvm.dbg.declare(metadata !{i32* %index_a}, metadata !36), !dbg !38
  call void @llvm.dbg.declare(metadata !{i32* %index_b}, metadata !39), !dbg !40
  call void @llvm.dbg.declare(metadata !{i32* %index_d}, metadata !41), !dbg !42
  store i32 0, i32* %index_a, align 4, !dbg !43
  br label %4, !dbg !43

; <label>:4                                       ; preds = %47, %0
  %5 = load i32* %index_a, align 4, !dbg !45
  %6 = icmp slt i32 %5, 32, !dbg !45
  br i1 %6, label %7, label %50, !dbg !45

; <label>:7                                       ; preds = %4
  store i32 0, i32* %index_b, align 4, !dbg !48
  br label %8, !dbg !48

; <label>:8                                       ; preds = %43, %7
  %9 = load i32* %index_b, align 4, !dbg !51
  %10 = icmp slt i32 %9, 32, !dbg !51
  br i1 %10, label %11, label %46, !dbg !51

; <label>:11                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{float* %result}, metadata !54), !dbg !56
  store float 0.000000e+00, float* %result, align 4, !dbg !57
  store i32 0, i32* %index_d, align 4, !dbg !58
  br label %12, !dbg !58

; <label>:12                                      ; preds = %32, %11
  %13 = load i32* %index_d, align 4, !dbg !60
  %14 = icmp slt i32 %13, 32, !dbg !60
  br i1 %14, label %15, label %35, !dbg !60

; <label>:15                                      ; preds = %12
  call void @llvm.dbg.declare(metadata !{float* %product_term}, metadata !63), !dbg !65
  %16 = load i32* %index_d, align 4, !dbg !66
  %17 = load i32* %index_a, align 4, !dbg !66
  %18 = load [32 x float]** %1, align 4, !dbg !66
  %19 = getelementptr inbounds [32 x float]* %18, i32 %17, !dbg !66
  %20 = getelementptr inbounds [32 x float]* %19, i32 0, i32 %16, !dbg !66
  %21 = load float* %20, align 4, !dbg !66
  %22 = load i32* %index_b, align 4, !dbg !66
  %23 = load i32* %index_d, align 4, !dbg !66
  %24 = load [32 x float]** %2, align 4, !dbg !66
  %25 = getelementptr inbounds [32 x float]* %24, i32 %23, !dbg !66
  %26 = getelementptr inbounds [32 x float]* %25, i32 0, i32 %22, !dbg !66
  %27 = load float* %26, align 4, !dbg !66
  %28 = fmul float %21, %27, !dbg !66
  store float %28, float* %product_term, align 4, !dbg !66
  %29 = load float* %product_term, align 4, !dbg !67
  %30 = load float* %result, align 4, !dbg !67
  %31 = fadd float %30, %29, !dbg !67
  store float %31, float* %result, align 4, !dbg !67
  br label %32, !dbg !68

; <label>:32                                      ; preds = %15
  %33 = load i32* %index_d, align 4, !dbg !69
  %34 = add nsw i32 %33, 1, !dbg !69
  store i32 %34, i32* %index_d, align 4, !dbg !69
  br label %12, !dbg !69

; <label>:35                                      ; preds = %12
  %36 = load float* %result, align 4, !dbg !70
  %37 = load i32* %index_a, align 4, !dbg !70
  %38 = mul nsw i32 %37, 32, !dbg !70
  %39 = load i32* %index_b, align 4, !dbg !70
  %40 = add nsw i32 %38, %39, !dbg !70
  %41 = load float** %3, align 4, !dbg !70
  %42 = getelementptr inbounds float* %41, i32 %40, !dbg !70
  store float %36, float* %42, align 4, !dbg !70
  br label %43, !dbg !71

; <label>:43                                      ; preds = %35
  %44 = load i32* %index_b, align 4, !dbg !72
  %45 = add nsw i32 %44, 1, !dbg !72
  store i32 %45, i32* %index_b, align 4, !dbg !72
  br label %8, !dbg !72

; <label>:46                                      ; preds = %8
  br label %47, !dbg !73

; <label>:47                                      ; preds = %46
  %48 = load i32* %index_a, align 4, !dbg !74
  %49 = add nsw i32 %48, 1, !dbg !74
  store i32 %49, i32* %index_a, align 4, !dbg !74
  br label %4, !dbg !74

; <label>:50                                      ; preds = %4
  ret void, !dbg !75
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define void @_Z5mmultPfS_S_(float* %in_A, float* %in_B, float* %out_C) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a_buf = alloca [32 x [32 x float]], align 4
  %b_buf = alloca [32 x [32 x float]], align 4
  store float* %in_A, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !76), !dbg !77
  store float* %in_B, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !78), !dbg !79
  store float* %out_C, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !80), !dbg !81
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !82), !dbg !83
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !84), !dbg !85
  call void @llvm.dbg.declare(metadata !{[32 x [32 x float]]* %a_buf}, metadata !86), !dbg !89
  call void @llvm.dbg.declare(metadata !{[32 x [32 x float]]* %b_buf}, metadata !90), !dbg !91
  store i32 0, i32* %i, align 4, !dbg !92
  br label %4, !dbg !92

; <label>:4                                       ; preds = %27, %0
  %5 = load i32* %i, align 4, !dbg !94
  %6 = icmp slt i32 %5, 32, !dbg !94
  br i1 %6, label %7, label %30, !dbg !94

; <label>:7                                       ; preds = %4
  store i32 0, i32* %j, align 4, !dbg !97
  br label %8, !dbg !97

; <label>:8                                       ; preds = %23, %7
  %9 = load i32* %j, align 4, !dbg !100
  %10 = icmp slt i32 %9, 32, !dbg !100
  br i1 %10, label %11, label %26, !dbg !100

; <label>:11                                      ; preds = %8
  %12 = load i32* %i, align 4, !dbg !103
  %13 = mul nsw i32 %12, 32, !dbg !103
  %14 = load i32* %j, align 4, !dbg !103
  %15 = add nsw i32 %13, %14, !dbg !103
  %16 = load float** %1, align 4, !dbg !103
  %17 = getelementptr inbounds float* %16, i32 %15, !dbg !103
  %18 = load float* %17, align 4, !dbg !103
  %19 = load i32* %j, align 4, !dbg !103
  %20 = load i32* %i, align 4, !dbg !103
  %21 = getelementptr inbounds [32 x [32 x float]]* %a_buf, i32 0, i32 %20, !dbg !103
  %22 = getelementptr inbounds [32 x float]* %21, i32 0, i32 %19, !dbg !103
  store float %18, float* %22, align 4, !dbg !103
  br label %23, !dbg !105

; <label>:23                                      ; preds = %11
  %24 = load i32* %j, align 4, !dbg !106
  %25 = add nsw i32 %24, 1, !dbg !106
  store i32 %25, i32* %j, align 4, !dbg !106
  br label %8, !dbg !106

; <label>:26                                      ; preds = %8
  br label %27, !dbg !107

; <label>:27                                      ; preds = %26
  %28 = load i32* %i, align 4, !dbg !108
  %29 = add nsw i32 %28, 1, !dbg !108
  store i32 %29, i32* %i, align 4, !dbg !108
  br label %4, !dbg !108

; <label>:30                                      ; preds = %4
  store i32 0, i32* %i, align 4, !dbg !109
  br label %31, !dbg !109

; <label>:31                                      ; preds = %54, %30
  %32 = load i32* %i, align 4, !dbg !111
  %33 = icmp slt i32 %32, 32, !dbg !111
  br i1 %33, label %34, label %57, !dbg !111

; <label>:34                                      ; preds = %31
  store i32 0, i32* %j, align 4, !dbg !114
  br label %35, !dbg !114

; <label>:35                                      ; preds = %50, %34
  %36 = load i32* %j, align 4, !dbg !117
  %37 = icmp slt i32 %36, 32, !dbg !117
  br i1 %37, label %38, label %53, !dbg !117

; <label>:38                                      ; preds = %35
  %39 = load i32* %i, align 4, !dbg !120
  %40 = mul nsw i32 %39, 32, !dbg !120
  %41 = load i32* %j, align 4, !dbg !120
  %42 = add nsw i32 %40, %41, !dbg !120
  %43 = load float** %2, align 4, !dbg !120
  %44 = getelementptr inbounds float* %43, i32 %42, !dbg !120
  %45 = load float* %44, align 4, !dbg !120
  %46 = load i32* %j, align 4, !dbg !120
  %47 = load i32* %i, align 4, !dbg !120
  %48 = getelementptr inbounds [32 x [32 x float]]* %b_buf, i32 0, i32 %47, !dbg !120
  %49 = getelementptr inbounds [32 x float]* %48, i32 0, i32 %46, !dbg !120
  store float %45, float* %49, align 4, !dbg !120
  br label %50, !dbg !122

; <label>:50                                      ; preds = %38
  %51 = load i32* %j, align 4, !dbg !123
  %52 = add nsw i32 %51, 1, !dbg !123
  store i32 %52, i32* %j, align 4, !dbg !123
  br label %35, !dbg !123

; <label>:53                                      ; preds = %35
  br label %54, !dbg !124

; <label>:54                                      ; preds = %53
  %55 = load i32* %i, align 4, !dbg !125
  %56 = add nsw i32 %55, 1, !dbg !125
  store i32 %56, i32* %i, align 4, !dbg !125
  br label %31, !dbg !125

; <label>:57                                      ; preds = %31
  %58 = getelementptr inbounds [32 x [32 x float]]* %a_buf, i32 0, i32 0, !dbg !126
  %59 = getelementptr inbounds [32 x [32 x float]]* %b_buf, i32 0, i32 0, !dbg !126
  %60 = load float** %3, align 4, !dbg !126
  call void @_Z12mmult_kernelPA32_fS0_Pf([32 x float]* %58, [32 x float]* %59, float* %60), !dbg !126
  ret void, !dbg !127
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!18, !19, !20, !21}
!xidane.function_declaration_filename = !{!18, !22, !20, !23}
!xidane.function_argument_annotation = !{!20, !24}
!llvm.module.flags = !{!25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/../src\mmult.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"../src\5Cmmult.cpp", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !15}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"mmult_kernel", metadata !"mmult_kernel", metadata !"_Z12mmult_kernelPA32_fS0_Pf", i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([32 x float]*, [32 x float]*, float*)* @_Z12mmult_kernelPA32_fS0_Pf, null, null, metadata !2, i32 9} ; [ DW_TAG_subprogram ] [line 6] [def] [scope 9] [mmult_kernel]
!5 = metadata !{metadata !"C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !14}
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!10 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !11, metadata !12, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from float]
!11 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786465, i64 0, i64 32}       ; [ DW_TAG_subrange_type ] [0, 31]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!15 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"mmult", metadata !"mmult", metadata !"_Z5mmultPfS_S_", i32 31, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @_Z5mmultPfS_S_, null, null, metadata !2, i32 34} ; [ DW_TAG_subprogram ] [line 31] [def] [scope 34] [mmult]
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{null, metadata !14, metadata !14, metadata !14}
!18 = metadata !{void ([32 x float]*, [32 x float]*, float*)* @_Z12mmult_kernelPA32_fS0_Pf}
!19 = metadata !{metadata !"void.float [32][32].1.float [32][32].1.float [1024].1"}
!20 = metadata !{void (float*, float*, float*)* @_Z5mmultPfS_S_}
!21 = metadata !{metadata !"void.float [1024].1.float [1024].1.float [1024].1"}
!22 = metadata !{metadata !"C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp"}
!23 = metadata !{metadata !"../src/mmult.h"}
!24 = metadata !{metadata !"in_A,,,,,,,, in_B,,,,,,,, out_C,,,,,,,, "}
!25 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!26 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!27 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!28 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!29 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!30 = metadata !{i32 786689, metadata !4, metadata !"in_A", metadata !6, i32 16777222, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_A] [line 6]
!31 = metadata !{i32 6, i32 25, metadata !4, null}
!32 = metadata !{i32 786689, metadata !4, metadata !"in_B", metadata !6, i32 33554439, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_B] [line 7]
!33 = metadata !{i32 7, i32 25, metadata !4, null}
!34 = metadata !{i32 786689, metadata !4, metadata !"out_C", metadata !6, i32 50331656, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_C] [line 8]
!35 = metadata !{i32 8, i32 25, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!36 = metadata !{i32 786688, metadata !4, metadata !"index_a", metadata !6, i32 14, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index_a] [line 14]
!37 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!38 = metadata !{i32 14, i32 7, metadata !4, null}
!39 = metadata !{i32 786688, metadata !4, metadata !"index_b", metadata !6, i32 14, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index_b] [line 14]
!40 = metadata !{i32 14, i32 16, metadata !4, null}
!41 = metadata !{i32 786688, metadata !4, metadata !"index_d", metadata !6, i32 14, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index_d] [line 14]
!42 = metadata !{i32 14, i32 25, metadata !4, null}
!43 = metadata !{i32 16, i32 8, metadata !44, null}
!44 = metadata !{i32 786443, metadata !5, metadata !4, i32 16, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!45 = metadata !{i32 16, i32 8, metadata !46, null}
!46 = metadata !{i32 786443, metadata !5, metadata !47, i32 16, i32 8, i32 2, i32 19} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!47 = metadata !{i32 786443, metadata !5, metadata !44, i32 16, i32 8, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!48 = metadata !{i32 17, i32 10, metadata !49, null}
!49 = metadata !{i32 786443, metadata !5, metadata !50, i32 17, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!50 = metadata !{i32 786443, metadata !5, metadata !44, i32 16, i32 51, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!51 = metadata !{i32 17, i32 10, metadata !52, null}
!52 = metadata !{i32 786443, metadata !5, metadata !53, i32 17, i32 10, i32 2, i32 18} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!53 = metadata !{i32 786443, metadata !5, metadata !49, i32 17, i32 10, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!54 = metadata !{i32 786688, metadata !55, metadata !"result", metadata !6, i32 19, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 19]
!55 = metadata !{i32 786443, metadata !5, metadata !49, i32 17, i32 53, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!56 = metadata !{i32 19, i32 13, metadata !55, null}
!57 = metadata !{i32 19, i32 7, metadata !55, null}
!58 = metadata !{i32 20, i32 12, metadata !59, null}
!59 = metadata !{i32 786443, metadata !5, metadata !55, i32 20, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!60 = metadata !{i32 20, i32 12, metadata !61, null}
!61 = metadata !{i32 786443, metadata !5, metadata !62, i32 20, i32 12, i32 2, i32 17} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!62 = metadata !{i32 786443, metadata !5, metadata !59, i32 20, i32 12, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!63 = metadata !{i32 786688, metadata !64, metadata !"product_term", metadata !6, i32 23, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [product_term] [line 23]
!64 = metadata !{i32 786443, metadata !5, metadata !59, i32 20, i32 55, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!65 = metadata !{i32 23, i32 15, metadata !64, null}
!66 = metadata !{i32 23, i32 9, metadata !64, null}
!67 = metadata !{i32 24, i32 9, metadata !64, null}
!68 = metadata !{i32 25, i32 7, metadata !64, null}
!69 = metadata !{i32 20, i32 44, metadata !59, null}
!70 = metadata !{i32 26, i32 7, metadata !55, null}
!71 = metadata !{i32 27, i32 5, metadata !55, null}
!72 = metadata !{i32 17, i32 42, metadata !49, null}
!73 = metadata !{i32 28, i32 3, metadata !50, null}
!74 = metadata !{i32 16, i32 40, metadata !44, null}
!75 = metadata !{i32 29, i32 1, metadata !4, null}
!76 = metadata !{i32 786689, metadata !15, metadata !"in_A", metadata !6, i32 16777247, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_A] [line 31]
!77 = metadata !{i32 31, i32 18, metadata !15, null}
!78 = metadata !{i32 786689, metadata !15, metadata !"in_B", metadata !6, i32 33554464, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_B] [line 32]
!79 = metadata !{i32 32, i32 18, metadata !15, null}
!80 = metadata !{i32 786689, metadata !15, metadata !"out_C", metadata !6, i32 50331681, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_C] [line 33]
!81 = metadata !{i32 33, i32 18, metadata !15, null}
!82 = metadata !{i32 786688, metadata !15, metadata !"i", metadata !6, i32 35, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 35]
!83 = metadata !{i32 35, i32 7, metadata !15, null}
!84 = metadata !{i32 786688, metadata !15, metadata !"j", metadata !6, i32 35, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 35]
!85 = metadata !{i32 35, i32 10, metadata !15, null}
!86 = metadata !{i32 786688, metadata !15, metadata !"a_buf", metadata !6, i32 36, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a_buf] [line 36]
!87 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !11, metadata !88, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32768, align 32, offset 0] [from float]
!88 = metadata !{metadata !13, metadata !13}
!89 = metadata !{i32 36, i32 9, metadata !15, null}
!90 = metadata !{i32 786688, metadata !15, metadata !"b_buf", metadata !6, i32 37, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b_buf] [line 37]
!91 = metadata !{i32 37, i32 9, metadata !15, null}
!92 = metadata !{i32 40, i32 7, metadata !93, null}
!93 = metadata !{i32 786443, metadata !5, metadata !15, i32 40, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!94 = metadata !{i32 40, i32 7, metadata !95, null}
!95 = metadata !{i32 786443, metadata !5, metadata !96, i32 40, i32 7, i32 2, i32 23} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!96 = metadata !{i32 786443, metadata !5, metadata !93, i32 40, i32 7, i32 1, i32 20} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!97 = metadata !{i32 41, i32 9, metadata !98, null}
!98 = metadata !{i32 786443, metadata !5, metadata !99, i32 41, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!99 = metadata !{i32 786443, metadata !5, metadata !93, i32 40, i32 28, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!100 = metadata !{i32 41, i32 9, metadata !101, null}
!101 = metadata !{i32 786443, metadata !5, metadata !102, i32 41, i32 9, i32 2, i32 22} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!102 = metadata !{i32 786443, metadata !5, metadata !98, i32 41, i32 9, i32 1, i32 21} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!103 = metadata !{i32 43, i32 7, metadata !104, null}
!104 = metadata !{i32 786443, metadata !5, metadata !98, i32 41, i32 30, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!105 = metadata !{i32 44, i32 5, metadata !104, null}
!106 = metadata !{i32 41, i32 25, metadata !98, null}
!107 = metadata !{i32 45, i32 3, metadata !99, null}
!108 = metadata !{i32 40, i32 23, metadata !93, null}
!109 = metadata !{i32 48, i32 7, metadata !110, null}
!110 = metadata !{i32 786443, metadata !5, metadata !15, i32 48, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!111 = metadata !{i32 48, i32 7, metadata !112, null}
!112 = metadata !{i32 786443, metadata !5, metadata !113, i32 48, i32 7, i32 2, i32 27} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!113 = metadata !{i32 786443, metadata !5, metadata !110, i32 48, i32 7, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!114 = metadata !{i32 49, i32 9, metadata !115, null}
!115 = metadata !{i32 786443, metadata !5, metadata !116, i32 49, i32 5, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!116 = metadata !{i32 786443, metadata !5, metadata !110, i32 48, i32 28, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!117 = metadata !{i32 49, i32 9, metadata !118, null}
!118 = metadata !{i32 786443, metadata !5, metadata !119, i32 49, i32 9, i32 2, i32 26} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!119 = metadata !{i32 786443, metadata !5, metadata !115, i32 49, i32 9, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!120 = metadata !{i32 51, i32 7, metadata !121, null}
!121 = metadata !{i32 786443, metadata !5, metadata !115, i32 49, i32 30, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp]
!122 = metadata !{i32 52, i32 5, metadata !121, null}
!123 = metadata !{i32 49, i32 25, metadata !115, null}
!124 = metadata !{i32 53, i32 3, metadata !116, null}
!125 = metadata !{i32 48, i32 23, metadata !110, null}
!126 = metadata !{i32 56, i32 3, metadata !15, null}
!127 = metadata !{i32 57, i32 1, metadata !15, null}
