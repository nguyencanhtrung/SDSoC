; ModuleID = 'C:/xup/SDSoC/labs/lab5a/src/rgb_2_gray.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

; Function Attrs: nounwind
define i32 @rgb_2_gray(i32* %color, i8* %gray) #0 {
  %1 = alloca i32*, align 4
  %2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %index = alloca i32, align 4
  %red = alloca i32, align 4
  %green = alloca i32, align 4
  %blue = alloca i32, align 4
  %thisPixel = alloca i32, align 4
  %gr = alloca i16, align 2
  store i32* %color, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !26), !dbg !27
  store i8* %gray, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !28), !dbg !29
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !30), !dbg !31
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !32), !dbg !33
  call void @llvm.dbg.declare(metadata !{i32* %index}, metadata !34), !dbg !35
  call void @llvm.dbg.declare(metadata !{i32* %red}, metadata !36), !dbg !37
  call void @llvm.dbg.declare(metadata !{i32* %green}, metadata !38), !dbg !39
  call void @llvm.dbg.declare(metadata !{i32* %blue}, metadata !40), !dbg !41
  call void @llvm.dbg.declare(metadata !{i32* %thisPixel}, metadata !42), !dbg !43
  store i32 0, i32* %i, align 4, !dbg !44
  br label %3, !dbg !44

; <label>:3                                       ; preds = %46, %0
  %4 = load i32* %i, align 4, !dbg !46
  %5 = icmp slt i32 %4, 1080, !dbg !46
  br i1 %5, label %6, label %49, !dbg !46

; <label>:6                                       ; preds = %3
  store i32 0, i32* %j, align 4, !dbg !49
  br label %7, !dbg !49

; <label>:7                                       ; preds = %42, %6
  %8 = load i32* %j, align 4, !dbg !52
  %9 = icmp slt i32 %8, 1920, !dbg !52
  br i1 %9, label %10, label %45, !dbg !52

; <label>:10                                      ; preds = %7
  %11 = load i32* %i, align 4, !dbg !55
  %12 = mul nsw i32 %11, 1920, !dbg !55
  %13 = load i32* %j, align 4, !dbg !55
  %14 = add nsw i32 %12, %13, !dbg !55
  store i32 %14, i32* %index, align 4, !dbg !55
  %15 = load i32* %index, align 4, !dbg !57
  %16 = load i32** %1, align 4, !dbg !57
  %17 = getelementptr inbounds i32* %16, i32 %15, !dbg !57
  %18 = load i32* %17, align 4, !dbg !57
  store i32 %18, i32* %thisPixel, align 4, !dbg !57
  %19 = load i32* %thisPixel, align 4, !dbg !58
  %20 = and i32 %19, 16711680, !dbg !58
  %21 = lshr i32 %20, 16, !dbg !58
  store i32 %21, i32* %red, align 4, !dbg !58
  %22 = load i32* %thisPixel, align 4, !dbg !59
  %23 = and i32 %22, 65280, !dbg !59
  %24 = lshr i32 %23, 8, !dbg !59
  store i32 %24, i32* %green, align 4, !dbg !59
  %25 = load i32* %thisPixel, align 4, !dbg !60
  %26 = and i32 %25, 255, !dbg !60
  store i32 %26, i32* %blue, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata !{i16* %gr}, metadata !61), !dbg !64
  %27 = load i32* %red, align 4, !dbg !65
  %28 = mul i32 %27, 298, !dbg !65
  %29 = load i32* %green, align 4, !dbg !65
  %30 = mul i32 %29, 587, !dbg !65
  %31 = add i32 %28, %30, !dbg !65
  %32 = load i32* %blue, align 4, !dbg !65
  %33 = mul i32 %32, 114, !dbg !65
  %34 = add i32 %31, %33, !dbg !65
  %35 = lshr i32 %34, 10, !dbg !65
  %36 = trunc i32 %35 to i16, !dbg !65
  store i16 %36, i16* %gr, align 2, !dbg !65
  %37 = load i16* %gr, align 2, !dbg !66
  %38 = trunc i16 %37 to i8, !dbg !66
  %39 = load i32* %index, align 4, !dbg !66
  %40 = load i8** %2, align 4, !dbg !66
  %41 = getelementptr inbounds i8* %40, i32 %39, !dbg !66
  store i8 %38, i8* %41, align 1, !dbg !66
  br label %42, !dbg !67

; <label>:42                                      ; preds = %10
  %43 = load i32* %j, align 4, !dbg !68
  %44 = add nsw i32 %43, 1, !dbg !68
  store i32 %44, i32* %j, align 4, !dbg !68
  br label %7, !dbg !68

; <label>:45                                      ; preds = %7
  br label %46, !dbg !69

; <label>:46                                      ; preds = %45
  %47 = load i32* %i, align 4, !dbg !70
  %48 = add nsw i32 %47, 1, !dbg !70
  store i32 %48, i32* %i, align 4, !dbg !70
  br label %3, !dbg !70

; <label>:49                                      ; preds = %3
  ret i32 0, !dbg !71
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_argument_annotation = !{!17, !18}
!xidane.function_declaration_type = !{!17, !19}
!xidane.function_declaration_filename = !{!17, !20}
!xidane.ExternC = !{!17}
!llvm.module.flags = !{!21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\xup\SDSoC\labs\lab5a\SDDebug/../src\rgb_2_gray.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../src\5Crgb_2_gray.c", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5a\5CSDDebug"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"rgb_2_gray", metadata !"rgb_2_gray", metadata !"", i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32*, i8*)* @rgb_2_gray, null, null, metadata !2, i32 6} ; [ DW_TAG_subprogram ] [line 6] [def] [rgb_2_gray]
!5 = metadata !{metadata !"C:/xup/SDSoC/labs/lab5a/src/rgb_2_gray.c", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5a\5CSDDebug"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/rgb_2_gray.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10, metadata !14}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from uint32_t]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!12 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/libc/usr/include\5Cstdint.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5a\5CSDDebug"}
!13 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from uint8_t]
!15 = metadata !{i32 786454, metadata !12, null, metadata !"uint8_t", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [uint8_t] [line 48, size 0, align 0, offset 0] [from unsigned char]
!16 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!17 = metadata !{i32 (i32*, i8*)* @rgb_2_gray}
!18 = metadata !{metadata !"input,,2073600,,,,,, output,,2073600,,,,,, "}
!19 = metadata !{metadata !"int.uint32_t *.1.uint8_t *.1"}
!20 = metadata !{metadata !"../src/rgb_2_gray.h"}
!21 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!22 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!23 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!24 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!25 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!26 = metadata !{i32 786689, metadata !4, metadata !"color", metadata !6, i32 16777222, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [color] [line 6]
!27 = metadata !{i32 6, i32 26, metadata !4, null}
!28 = metadata !{i32 786689, metadata !4, metadata !"gray", metadata !6, i32 33554438, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gray] [line 6]
!29 = metadata !{i32 6, i32 42, metadata !4, null}
!30 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !6, i32 14, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 14]
!31 = metadata !{i32 14, i32 6, metadata !4, null}
!32 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !6, i32 14, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 14]
!33 = metadata !{i32 14, i32 9, metadata !4, null}
!34 = metadata !{i32 786688, metadata !4, metadata !"index", metadata !6, i32 15, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 15]
!35 = metadata !{i32 15, i32 6, metadata !4, null}
!36 = metadata !{i32 786688, metadata !4, metadata !"red", metadata !6, i32 16, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [red] [line 16]
!37 = metadata !{i32 16, i32 11, metadata !4, null}
!38 = metadata !{i32 786688, metadata !4, metadata !"green", metadata !6, i32 16, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [green] [line 16]
!39 = metadata !{i32 16, i32 16, metadata !4, null}
!40 = metadata !{i32 786688, metadata !4, metadata !"blue", metadata !6, i32 16, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blue] [line 16]
!41 = metadata !{i32 16, i32 23, metadata !4, null}
!42 = metadata !{i32 786688, metadata !4, metadata !"thisPixel", metadata !6, i32 17, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thisPixel] [line 17]
!43 = metadata !{i32 17, i32 11, metadata !4, null}
!44 = metadata !{i32 19, i32 7, metadata !45, null}
!45 = metadata !{i32 786443, metadata !5, metadata !4, i32 19, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/rgb_2_gray.c]
!46 = metadata !{i32 19, i32 7, metadata !47, null}
!47 = metadata !{i32 786443, metadata !5, metadata !48, i32 19, i32 7, i32 2, i32 7} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/rgb_2_gray.c]
!48 = metadata !{i32 786443, metadata !5, metadata !45, i32 19, i32 7, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/rgb_2_gray.c]
!49 = metadata !{i32 20, i32 8, metadata !50, null}
!50 = metadata !{i32 786443, metadata !5, metadata !51, i32 20, i32 3, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/rgb_2_gray.c]
!51 = metadata !{i32 786443, metadata !5, metadata !45, i32 19, i32 37, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/rgb_2_gray.c]
!52 = metadata !{i32 20, i32 8, metadata !53, null}
!53 = metadata !{i32 786443, metadata !5, metadata !54, i32 20, i32 8, i32 2, i32 6} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/rgb_2_gray.c]
!54 = metadata !{i32 786443, metadata !5, metadata !50, i32 20, i32 8, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/rgb_2_gray.c]
!55 = metadata !{i32 22, i32 4, metadata !56, null}
!56 = metadata !{i32 786443, metadata !5, metadata !50, i32 20, i32 37, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/rgb_2_gray.c]
!57 = metadata !{i32 24, i32 4, metadata !56, null}
!58 = metadata !{i32 25, i32 4, metadata !56, null}
!59 = metadata !{i32 26, i32 4, metadata !56, null}
!60 = metadata !{i32 27, i32 4, metadata !56, null}
!61 = metadata !{i32 786688, metadata !56, metadata !"gr", metadata !6, i32 29, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gr] [line 29]
!62 = metadata !{i32 786454, metadata !12, null, metadata !"uint16_t", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [uint16_t] [line 49, size 0, align 0, offset 0] [from unsigned short]
!63 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!64 = metadata !{i32 29, i32 13, metadata !56, null}
!65 = metadata !{i32 29, i32 4, metadata !56, null}
!66 = metadata !{i32 31, i32 4, metadata !56, null}
!67 = metadata !{i32 32, i32 3, metadata !56, null}
!68 = metadata !{i32 20, i32 32, metadata !50, null}
!69 = metadata !{i32 33, i32 2, metadata !51, null}
!70 = metadata !{i32 19, i32 32, metadata !45, null}
!71 = metadata !{i32 34, i32 2, metadata !4, null}
