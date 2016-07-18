; ModuleID = 'C:/xup/SDSoC/labs/lab1_prebuilt/src/madd.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

; Function Attrs: nounwind
define void @_Z4maddPfS_S_(float* %A, float* %B, float* %C) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store float* %A, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !20), !dbg !21
  store float* %B, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !22), !dbg !23
  store float* %C, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !24), !dbg !25
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !26), !dbg !28
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !29), !dbg !30
  store i32 0, i32* %i, align 4, !dbg !31
  br label %4, !dbg !31

; <label>:4                                       ; preds = %37, %0
  %5 = load i32* %i, align 4, !dbg !33
  %6 = icmp slt i32 %5, 32, !dbg !33
  br i1 %6, label %7, label %40, !dbg !33

; <label>:7                                       ; preds = %4
  store i32 0, i32* %j, align 4, !dbg !36
  br label %8, !dbg !36

; <label>:8                                       ; preds = %33, %7
  %9 = load i32* %j, align 4, !dbg !38
  %10 = icmp slt i32 %9, 32, !dbg !38
  br i1 %10, label %11, label %36, !dbg !38

; <label>:11                                      ; preds = %8
  %12 = load i32* %i, align 4, !dbg !41
  %13 = mul nsw i32 %12, 32, !dbg !41
  %14 = load i32* %j, align 4, !dbg !41
  %15 = add nsw i32 %13, %14, !dbg !41
  %16 = load float** %1, align 4, !dbg !41
  %17 = getelementptr inbounds float* %16, i32 %15, !dbg !41
  %18 = load float* %17, align 4, !dbg !41
  %19 = load i32* %i, align 4, !dbg !41
  %20 = mul nsw i32 %19, 32, !dbg !41
  %21 = load i32* %j, align 4, !dbg !41
  %22 = add nsw i32 %20, %21, !dbg !41
  %23 = load float** %2, align 4, !dbg !41
  %24 = getelementptr inbounds float* %23, i32 %22, !dbg !41
  %25 = load float* %24, align 4, !dbg !41
  %26 = fadd float %18, %25, !dbg !41
  %27 = load i32* %i, align 4, !dbg !41
  %28 = mul nsw i32 %27, 32, !dbg !41
  %29 = load i32* %j, align 4, !dbg !41
  %30 = add nsw i32 %28, %29, !dbg !41
  %31 = load float** %3, align 4, !dbg !41
  %32 = getelementptr inbounds float* %31, i32 %30, !dbg !41
  store float %26, float* %32, align 4, !dbg !41
  br label %33, !dbg !41

; <label>:33                                      ; preds = %11
  %34 = load i32* %j, align 4, !dbg !42
  %35 = add nsw i32 %34, 1, !dbg !42
  store i32 %35, i32* %j, align 4, !dbg !42
  br label %8, !dbg !42

; <label>:36                                      ; preds = %8
  br label %37, !dbg !43

; <label>:37                                      ; preds = %36
  %38 = load i32* %i, align 4, !dbg !44
  %39 = add nsw i32 %38, 1, !dbg !44
  store i32 %39, i32* %i, align 4, !dbg !44
  br label %4, !dbg !44

; <label>:40                                      ; preds = %4
  ret void, !dbg !45
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_argument_annotation = !{!11, !12}
!xidane.function_declaration_type = !{!11, !13}
!xidane.function_declaration_filename = !{!11, !14}
!llvm.module.flags = !{!15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/../src\madd.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"../src\5Cmadd.cpp", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"madd", metadata !"madd", metadata !"_Z4maddPfS_S_", i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @_Z4maddPfS_S_, null, null, metadata !2, i32 5} ; [ DW_TAG_subprogram ] [line 4] [def] [scope 5] [madd]
!5 = metadata !{metadata !"C:/xup/SDSoC/labs/lab1_prebuilt/src/madd.cpp", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/madd.cpp]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!10 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!11 = metadata !{void (float*, float*, float*)* @_Z4maddPfS_S_}
!12 = metadata !{metadata !"A,,,,,,,, B,,,,,,,, C,,,,,,,, "}
!13 = metadata !{metadata !"void.float [1024].1.float [1024].1.float [1024].1"}
!14 = metadata !{metadata !"../src/madd.h"}
!15 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!16 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!17 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!18 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!19 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!20 = metadata !{i32 786689, metadata !4, metadata !"A", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 4]
!21 = metadata !{i32 4, i32 17, metadata !4, null}
!22 = metadata !{i32 786689, metadata !4, metadata !"B", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 4]
!23 = metadata !{i32 4, i32 39, metadata !4, null}
!24 = metadata !{i32 786689, metadata !4, metadata !"C", metadata !6, i32 50331652, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [C] [line 4]
!25 = metadata !{i32 4, i32 61, metadata !4, null}
!26 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !6, i32 6, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 6]
!27 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!28 = metadata !{i32 6, i32 7, metadata !4, null}
!29 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !6, i32 6, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 6]
!30 = metadata !{i32 6, i32 10, metadata !4, null}
!31 = metadata !{i32 8, i32 8, metadata !32, null} ; [ DW_TAG_imported_declaration ]
!32 = metadata !{i32 786443, metadata !5, metadata !4, i32 8, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/madd.cpp]
!33 = metadata !{i32 8, i32 8, metadata !34, null} ; [ DW_TAG_imported_declaration ]
!34 = metadata !{i32 786443, metadata !5, metadata !35, i32 8, i32 8, i32 2, i32 5} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/madd.cpp]
!35 = metadata !{i32 786443, metadata !5, metadata !32, i32 8, i32 8, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/madd.cpp]
!36 = metadata !{i32 9, i32 10, metadata !37, null}
!37 = metadata !{i32 786443, metadata !5, metadata !32, i32 9, i32 5, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/madd.cpp]
!38 = metadata !{i32 9, i32 10, metadata !39, null}
!39 = metadata !{i32 786443, metadata !5, metadata !40, i32 9, i32 10, i32 2, i32 4} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/madd.cpp]
!40 = metadata !{i32 786443, metadata !5, metadata !37, i32 9, i32 10, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/madd.cpp]
!41 = metadata !{i32 11, i32 7, metadata !37, null}
!42 = metadata !{i32 9, i32 28, metadata !37, null}
!43 = metadata !{i32 11, i32 48, metadata !37, null}
!44 = metadata !{i32 8, i32 26, metadata !32, null} ; [ DW_TAG_imported_declaration ]
!45 = metadata !{i32 13, i32 1, metadata !4, null}
