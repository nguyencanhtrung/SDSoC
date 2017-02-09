; ModuleID = '/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease/_sds/vhls/correlation_accel_v4/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str2 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@weight_rom = internal unnamed_addr global [252 x float] zeroinitializer, align 16
@lnReturnA = internal unnamed_addr global [252 x float] zeroinitializer, align 16
@p_str4 = private unnamed_addr constant [17 x i8] c"LOOP_FIRST_INDEX\00", align 1
@p_str5 = private unnamed_addr constant [33 x i8] c"ACCUMULATION_LOOP_FLOATING_INDEX\00", align 1
@p_str7 = private unnamed_addr constant [14 x i8] c"ACCUMULATIONS\00", align 1
@p_str8 = private unnamed_addr constant [16 x i8] c"LAST_ACCUM_LOOP\00", align 1
@p_str9 = private unnamed_addr constant [16 x i8] c"INIT_WEIGHT_ROM\00", align 1
@p_str10 = private unnamed_addr constant [19 x i8] c"COMP_SUM_OF_WEIGHT\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [21 x i8] c"correlation_accel_v4\00"
@str17 = internal constant [16 x i8] c"ln_returnA_c1.V\00"
@str18 = internal constant [1 x i8] zeroinitializer
@str19 = internal constant [8 x i8] c"ap_fifo\00"
@str20 = internal constant [1 x i8] zeroinitializer
@str21 = internal constant [26 x i8] c"weight_returnSquareA_c1.V\00"
@str22 = internal constant [1 x i8] zeroinitializer
@str23 = internal constant [8 x i8] c"ap_fifo\00"
@str24 = internal constant [1 x i8] zeroinitializer
@str25 = internal constant [20 x i8] c"weight_returnA_c1.V\00"
@str26 = internal constant [1 x i8] zeroinitializer
@str27 = internal constant [8 x i8] c"ap_fifo\00"
@str28 = internal constant [1 x i8] zeroinitializer
@str29 = internal constant [16 x i8] c"ln_returnA_c2.V\00"
@str30 = internal constant [1 x i8] zeroinitializer
@str31 = internal constant [8 x i8] c"ap_fifo\00"
@str32 = internal constant [1 x i8] zeroinitializer
@str33 = internal constant [26 x i8] c"weight_returnSquareA_c2.V\00"
@str34 = internal constant [1 x i8] zeroinitializer
@str35 = internal constant [8 x i8] c"ap_fifo\00"
@str36 = internal constant [1 x i8] zeroinitializer
@str37 = internal constant [20 x i8] c"weight_returnA_c2.V\00"
@str38 = internal constant [1 x i8] zeroinitializer
@str39 = internal constant [8 x i8] c"ap_fifo\00"
@str40 = internal constant [1 x i8] zeroinitializer
@str41 = internal constant [16 x i8] c"sum_weight_c1.V\00"
@str42 = internal constant [1 x i8] zeroinitializer
@str43 = internal constant [8 x i8] c"ap_fifo\00"
@str44 = internal constant [1 x i8] zeroinitializer
@str45 = internal constant [16 x i8] c"ln_returnB_c1.V\00"
@str46 = internal constant [1 x i8] zeroinitializer
@str47 = internal constant [8 x i8] c"ap_fifo\00"
@str48 = internal constant [1 x i8] zeroinitializer
@str49 = internal constant [26 x i8] c"weight_returnSquareB_c1.V\00"
@str50 = internal constant [1 x i8] zeroinitializer
@str51 = internal constant [8 x i8] c"ap_fifo\00"
@str52 = internal constant [1 x i8] zeroinitializer
@str53 = internal constant [20 x i8] c"weight_returnB_c1.V\00"
@str54 = internal constant [1 x i8] zeroinitializer
@str55 = internal constant [8 x i8] c"ap_fifo\00"
@str56 = internal constant [1 x i8] zeroinitializer
@str57 = internal constant [28 x i8] c"weight_returnA_returnB_c1.V\00"
@str58 = internal constant [1 x i8] zeroinitializer
@str59 = internal constant [8 x i8] c"ap_fifo\00"
@str60 = internal constant [1 x i8] zeroinitializer
@str61 = internal constant [16 x i8] c"sum_weight_c2.V\00"
@str62 = internal constant [1 x i8] zeroinitializer
@str63 = internal constant [8 x i8] c"ap_fifo\00"
@str64 = internal constant [1 x i8] zeroinitializer
@str65 = internal constant [16 x i8] c"ln_returnB_c2.V\00"
@str66 = internal constant [1 x i8] zeroinitializer
@str67 = internal constant [8 x i8] c"ap_fifo\00"
@str68 = internal constant [1 x i8] zeroinitializer
@str69 = internal constant [26 x i8] c"weight_returnSquareB_c2.V\00"
@str70 = internal constant [1 x i8] zeroinitializer
@str71 = internal constant [8 x i8] c"ap_fifo\00"
@str72 = internal constant [1 x i8] zeroinitializer
@str73 = internal constant [20 x i8] c"weight_returnB_c2.V\00"
@str74 = internal constant [1 x i8] zeroinitializer
@str75 = internal constant [8 x i8] c"ap_fifo\00"
@str76 = internal constant [1 x i8] zeroinitializer
@str77 = internal constant [28 x i8] c"weight_returnA_returnB_c2.V\00"
@str78 = internal constant [1 x i8] zeroinitializer
@str79 = internal constant [8 x i8] c"ap_fifo\00"
@str80 = internal constant [1 x i8] zeroinitializer
@str81 = internal constant [23 x i8] c"sum_weight_stage2_c1.V\00"
@str82 = internal constant [1 x i8] zeroinitializer
@str83 = internal constant [8 x i8] c"ap_fifo\00"
@str84 = internal constant [1 x i8] zeroinitializer
@str85 = internal constant [23 x i8] c"sum_return_stage2_c1.V\00"
@str86 = internal constant [1 x i8] zeroinitializer
@str87 = internal constant [8 x i8] c"ap_fifo\00"
@str88 = internal constant [1 x i8] zeroinitializer
@str89 = internal constant [36 x i8] c"sum_weight_returnSquare_stage2_c1.V\00"
@str90 = internal constant [1 x i8] zeroinitializer
@str91 = internal constant [8 x i8] c"ap_fifo\00"
@str92 = internal constant [1 x i8] zeroinitializer
@str93 = internal constant [30 x i8] c"sum_weight_return_stage2_c1.V\00"
@str94 = internal constant [1 x i8] zeroinitializer
@str95 = internal constant [8 x i8] c"ap_fifo\00"
@str96 = internal constant [1 x i8] zeroinitializer
@str97 = internal constant [39 x i8] c"sum_weight_returnA_returnB_stage2_c1.V\00"
@str98 = internal constant [1 x i8] zeroinitializer
@str99 = internal constant [8 x i8] c"ap_fifo\00"
@str100 = internal constant [1 x i8] zeroinitializer
@str101 = internal constant [24 x i8] c"sum_returnA_stage2_c1.V\00"
@str102 = internal constant [1 x i8] zeroinitializer
@str103 = internal constant [8 x i8] c"ap_fifo\00"
@str104 = internal constant [1 x i8] zeroinitializer
@str105 = internal constant [37 x i8] c"sum_weight_returnSquareA_stage2_c1.V\00"
@str106 = internal constant [1 x i8] zeroinitializer
@str107 = internal constant [8 x i8] c"ap_fifo\00"
@str108 = internal constant [1 x i8] zeroinitializer
@str109 = internal constant [31 x i8] c"sum_weight_returnA_stage2_c1.V\00"
@str110 = internal constant [1 x i8] zeroinitializer
@str111 = internal constant [8 x i8] c"ap_fifo\00"
@str112 = internal constant [1 x i8] zeroinitializer
@str113 = internal constant [23 x i8] c"sum_weight_stage2_c2.V\00"
@str114 = internal constant [1 x i8] zeroinitializer
@str115 = internal constant [8 x i8] c"ap_fifo\00"
@str116 = internal constant [1 x i8] zeroinitializer
@str117 = internal constant [23 x i8] c"sum_return_stage2_c2.V\00"
@str118 = internal constant [1 x i8] zeroinitializer
@str119 = internal constant [8 x i8] c"ap_fifo\00"
@str120 = internal constant [1 x i8] zeroinitializer
@str121 = internal constant [36 x i8] c"sum_weight_returnSquare_stage2_c2.V\00"
@str122 = internal constant [1 x i8] zeroinitializer
@str123 = internal constant [8 x i8] c"ap_fifo\00"
@str124 = internal constant [1 x i8] zeroinitializer
@str125 = internal constant [30 x i8] c"sum_weight_return_stage2_c2.V\00"
@str126 = internal constant [1 x i8] zeroinitializer
@str127 = internal constant [8 x i8] c"ap_fifo\00"
@str128 = internal constant [1 x i8] zeroinitializer
@str129 = internal constant [39 x i8] c"sum_weight_returnA_returnB_stage2_c2.V\00"
@str130 = internal constant [1 x i8] zeroinitializer
@str131 = internal constant [8 x i8] c"ap_fifo\00"
@str132 = internal constant [1 x i8] zeroinitializer
@str133 = internal constant [24 x i8] c"sum_returnA_stage2_c2.V\00"
@str134 = internal constant [1 x i8] zeroinitializer
@str135 = internal constant [8 x i8] c"ap_fifo\00"
@str136 = internal constant [1 x i8] zeroinitializer
@str137 = internal constant [37 x i8] c"sum_weight_returnSquareA_stage2_c2.V\00"
@str138 = internal constant [1 x i8] zeroinitializer
@str139 = internal constant [8 x i8] c"ap_fifo\00"
@str140 = internal constant [1 x i8] zeroinitializer
@str141 = internal constant [31 x i8] c"sum_weight_returnA_stage2_c2.V\00"
@str142 = internal constant [1 x i8] zeroinitializer
@str143 = internal constant [8 x i8] c"ap_fifo\00"
@str144 = internal constant [1 x i8] zeroinitializer
@str152 = internal constant [8 x i8] c"ap_fifo\00"
@str154 = internal constant [8 x i8] c"ap_fifo\00"
@str156 = internal constant [8 x i8] c"ap_fifo\00"
@str158 = internal constant [8 x i8] c"ap_fifo\00"
@str161 = internal constant [8 x i8] c"ap_fifo\00"
@str163 = internal constant [8 x i8] c"ap_fifo\00"
@str166 = internal constant [25 x i8] c"number_of_days15.channel\00"
@str167 = internal constant [1 x i8] zeroinitializer
@str168 = internal constant [8 x i8] c"ap_fifo\00"
@str169 = internal constant [25 x i8] c"number_of_days16.channel\00"
@str170 = internal constant [1 x i8] zeroinitializer
@str171 = internal constant [8 x i8] c"ap_fifo\00"
@str172 = internal constant [28 x i8] c"number_of_indices17.channel\00"
@str173 = internal constant [1 x i8] zeroinitializer
@str174 = internal constant [8 x i8] c"ap_fifo\00"
@str175 = internal constant [28 x i8] c"number_of_indices18.channel\00"
@str176 = internal constant [1 x i8] zeroinitializer
@str177 = internal constant [8 x i8] c"ap_fifo\00"
@str178 = internal constant [25 x i8] c"number_of_days19.channel\00"
@str179 = internal constant [1 x i8] zeroinitializer
@str180 = internal constant [8 x i8] c"ap_fifo\00"
@str181 = internal constant [28 x i8] c"number_of_indices20.channel\00"
@str182 = internal constant [1 x i8] zeroinitializer
@str183 = internal constant [8 x i8] c"ap_fifo\00"
@str186 = internal constant [8 x i8] c"ap_fifo\00"
@str187 = internal constant [8 x i8] c"ap_fifo\00"
@str188 = internal constant [8 x i8] c"ap_fifo\00"
@str189 = internal constant [8 x i8] c"ap_fifo\00"
@str192 = internal constant [8 x i8] c"ap_fifo\00"
@str193 = internal constant [8 x i8] c"ap_fifo\00"
@str194 = internal constant [8 x i8] c"ap_fifo\00"
@str195 = internal constant [8 x i8] c"ap_fifo\00"
@str197 = internal constant [8 x i8] c"ap_fifo\00"
@str198 = internal constant [8 x i8] c"ap_fifo\00"
@str201 = internal constant [8 x i8] c"ap_fifo\00"
@str202 = internal constant [8 x i8] c"ap_fifo\00"

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

declare float @llvm.log.f32(float) nounwind readonly

declare float @llvm.sqrt.f32(float) nounwind readonly

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define internal fastcc void @correlation_accel_v4_midEnd(i32* %NUMBER_OF_DAYS, i32* %NUMBER_OF_INDICES, float* %ln_returnA_in_V, float* %weight_returnSquareA_in_V, float* %weight_returnA_in_V, float* %sum_weight_in_V, float* %ln_returnB_in_V, float* %weight_returnSquareB_in_V, float* %weight_returnB_in_V, float* %weight_returnA_returnB_in_V, float* %sum_weight_out_V, float* %sum_return_out_V, float* %sum_weight_returnSquare_out_V, float* %sum_weight_return_out_V, float* %sum_weight_returnA_returnB_out, float* %sum_returnA_out_V, float* %sum_weight_returnSquareA_out_V, float* %sum_weight_returnA_out_V, i32* %NUMBER_OF_DAYS_out, i32* %NUMBER_OF_INDICES_out) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES_out, [8 x i8]* @str195, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str195, [8 x i8]* @str195, [8 x i8]* @str195)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS_out, [8 x i8]* @str194, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str194, [8 x i8]* @str194, [8 x i8]* @str194)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES, [8 x i8]* @str193, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str193, [8 x i8]* @str193, [8 x i8]* @str193)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS, [8 x i8]* @str192, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str192, [8 x i8]* @str192, [8 x i8]* @str192)
  %acc_returnA = alloca [6 x float], align 16
  %acc_weight_returnSquareA = alloca [6 x float], align 16
  %acc_weight_returnA = alloca [6 x float], align 16
  %acc_returnB = alloca [6 x float], align 16
  %acc_weight_returnSquareB = alloca [6 x float], align 16
  %acc_weight_returnB = alloca [6 x float], align 16
  %acc_weight_returnA_returnB = alloca [6 x float], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES_out, [8 x i8]* @str163, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str163, [8 x i8]* @str163, [8 x i8]* @str163)
  %NUMBER_OF_INDICES_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %NUMBER_OF_INDICES)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %NUMBER_OF_INDICES_out, i32 %NUMBER_OF_INDICES_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS_out, [8 x i8]* @str161, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str161, [8 x i8]* @str161, [8 x i8]* @str161)
  %NUMBER_OF_DAYS_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %NUMBER_OF_DAYS)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %NUMBER_OF_DAYS_out, i32 %NUMBER_OF_DAYS_read)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_out_V, [8 x i8]* @str111, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str112, [1 x i8]* @str112, [8 x i8]* @str111)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquareA_out_V, [8 x i8]* @str107, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str108, [1 x i8]* @str108, [8 x i8]* @str107)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_returnA_out_V, [8 x i8]* @str103, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str104, [1 x i8]* @str104, [8 x i8]* @str103)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_returnB_out, [8 x i8]* @str99, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str100, [1 x i8]* @str100, [8 x i8]* @str99)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_return_out_V, [8 x i8]* @str95, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str96, [1 x i8]* @str96, [8 x i8]* @str95)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquare_out_V, [8 x i8]* @str91, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str92, [1 x i8]* @str92, [8 x i8]* @str91)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_return_out_V, [8 x i8]* @str87, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str88, [1 x i8]* @str88, [8 x i8]* @str87)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_out_V, [8 x i8]* @str83, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str84, [1 x i8]* @str84, [8 x i8]* @str83)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_returnB_in_V, [8 x i8]* @str59, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str60, [1 x i8]* @str60, [8 x i8]* @str59)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnB_in_V, [8 x i8]* @str55, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str56, [1 x i8]* @str56, [8 x i8]* @str55)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareB_in_V, [8 x i8]* @str51, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str52, [1 x i8]* @str52, [8 x i8]* @str51)
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnB_in_V, [8 x i8]* @str47, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str48, [1 x i8]* @str48, [8 x i8]* @str47)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_in_V, [8 x i8]* @str43, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str44, [1 x i8]* @str44, [8 x i8]* @str43)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_in_V, [8 x i8]* @str27, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str28, [1 x i8]* @str28, [8 x i8]* @str27)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareA_in_V, [8 x i8]* @str23, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str24, [1 x i8]* @str24, [8 x i8]* @str23)
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnA_in_V, [8 x i8]* @str19, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str20, [1 x i8]* @str20, [8 x i8]* @str19)
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %NUMBER_OF_INDICES_read, i32 31)
  %p_neg_i = sub i32 0, %NUMBER_OF_INDICES_read
  %p_lshr_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg_i, i32 1, i32 31)
  %tmp_s = zext i31 %p_lshr_i to i32
  %p_neg_t_i = sub i32 0, %tmp_s
  %p_lshr_f_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %NUMBER_OF_INDICES_read, i32 1, i32 31)
  %tmp_1 = zext i31 %p_lshr_f_i to i32
  %upper_bound = select i1 %tmp, i32 %p_neg_t_i, i32 %tmp_1
  %tmp_i = add nsw i32 %NUMBER_OF_DAYS_read, -1
  %acc_returnB_addr = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 0
  %acc_weight_returnSquareB_addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 0
  %acc_weight_returnB_addr = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 0
  %acc_weight_returnA_returnB_add = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 0
  %acc_returnA_addr = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 0
  %acc_weight_returnSquareA_addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 0
  %acc_weight_returnA_addr = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 0
  %acc_returnB_addr_1 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 1
  %acc_weight_returnSquareB_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 1
  %acc_weight_returnB_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 1
  %acc_weight_returnA_returnB_add_1 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 1
  %acc_returnA_addr_1 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 1
  %acc_weight_returnSquareA_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 1
  %acc_weight_returnA_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 1
  %acc_returnB_addr_2 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 2
  %acc_weight_returnSquareB_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 2
  %acc_weight_returnB_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 2
  %acc_weight_returnA_returnB_add_2 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 2
  %acc_returnA_addr_2 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 2
  %acc_weight_returnSquareA_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 2
  %acc_weight_returnA_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 2
  %acc_returnB_addr_3 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 3
  %acc_weight_returnSquareB_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 3
  %acc_weight_returnB_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 3
  %acc_weight_returnA_returnB_add_3 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 3
  %acc_returnA_addr_3 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 3
  %acc_weight_returnSquareA_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 3
  %acc_weight_returnA_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 3
  %acc_returnB_addr_4 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 4
  %acc_weight_returnSquareB_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 4
  %acc_weight_returnB_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 4
  %acc_weight_returnA_returnB_add_4 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 4
  %acc_returnA_addr_4 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 4
  %acc_weight_returnSquareA_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 4
  %acc_weight_returnA_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 4
  %acc_returnB_addr_5 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 5
  %acc_weight_returnSquareB_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 5
  %acc_weight_returnB_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 5
  %acc_weight_returnA_returnB_add_5 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 5
  %acc_returnA_addr_5 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 5
  %acc_weight_returnSquareA_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 5
  %acc_weight_returnA_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 5
  br label %0

; <label>:0                                       ; preds = %3, %entry
  %column_index_i = phi i32 [ 1, %entry ], [ %column_index, %3 ]
  %tmp_1_i = icmp sgt i32 %column_index_i, %upper_bound
  br i1 %tmp_1_i, label %midEnd.1.exit, label %.preheader34.0.i

.preheader34.0.i:                                 ; preds = %0
  store float 0.000000e+00, float* %acc_returnB_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnB_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add, align 16
  store float 0.000000e+00, float* %acc_returnA_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_addr, align 16
  store float 0.000000e+00, float* %acc_returnB_addr_1, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_1, align 4
  store float 0.000000e+00, float* %acc_weight_returnB_addr_1, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_1, align 4
  store float 0.000000e+00, float* %acc_returnA_addr_1, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_1, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_addr_1, align 4
  store float 0.000000e+00, float* %acc_returnB_addr_2, align 8
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_2, align 8
  store float 0.000000e+00, float* %acc_weight_returnB_addr_2, align 8
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_2, align 8
  store float 0.000000e+00, float* %acc_returnA_addr_2, align 8
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_2, align 8
  store float 0.000000e+00, float* %acc_weight_returnA_addr_2, align 8
  store float 0.000000e+00, float* %acc_returnB_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_returnB_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_3, align 4
  store float 0.000000e+00, float* %acc_returnA_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_addr_3, align 4
  store float 0.000000e+00, float* %acc_returnB_addr_4, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_4, align 16
  store float 0.000000e+00, float* %acc_weight_returnB_addr_4, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_4, align 16
  store float 0.000000e+00, float* %acc_returnA_addr_4, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_4, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_addr_4, align 16
  store float 0.000000e+00, float* %acc_returnB_addr_5, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_5, align 4
  store float 0.000000e+00, float* %acc_weight_returnB_addr_5, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_5, align 4
  store float 0.000000e+00, float* %acc_returnA_addr_5, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_5, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_addr_5, align 4
  br label %.preheader33.i

.preheader33.i:                                   ; preds = %1, %.preheader34.0.i
  %tmp_9 = phi float [ %tmp_18, %1 ], [ 0.000000e+00, %.preheader34.0.i ]
  %i1_i = phi i32 [ %i, %1 ], [ 1, %.preheader34.0.i ]
  %tmp_9_i = icmp sgt i32 %i1_i, %tmp_i
  br i1 %tmp_9_i, label %.preheader.i, label %1

; <label>:1                                       ; preds = %.preheader33.i
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str7) nounwind
  %tmp_17_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str7)
  %channel_id = srem i32 %i1_i, 6
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_18 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_in_V)
  %tmp_19 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %ln_returnA_in_V)
  %tmp_20 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnA_in_V)
  %tmp_21 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnSquareA_in_V)
  %tmp_22 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %ln_returnB_in_V)
  %tmp_23 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnB_in_V)
  %tmp_24 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnSquareB_in_V)
  %tmp_25 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnA_returnB_in_V)
  %tmp_26_i = zext i32 %channel_id to i64
  %acc_returnA_addr_6 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp_26_i
  %acc_returnA_load = load float* %acc_returnA_addr_6, align 4
  %tmp_27_i = fadd float %acc_returnA_load, %tmp_19
  store float %tmp_27_i, float* %acc_returnA_addr_6, align 4
  %acc_weight_returnSquareA_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp_26_i
  %acc_weight_returnSquareA_load = load float* %acc_weight_returnSquareA_addr_6, align 4
  %tmp_28_i = fadd float %acc_weight_returnSquareA_load, %tmp_21
  store float %tmp_28_i, float* %acc_weight_returnSquareA_addr_6, align 4
  %acc_weight_returnA_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp_26_i
  %acc_weight_returnA_load = load float* %acc_weight_returnA_addr_6, align 4
  %tmp_29_i = fadd float %acc_weight_returnA_load, %tmp_20
  store float %tmp_29_i, float* %acc_weight_returnA_addr_6, align 4
  %acc_returnB_addr_6 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp_26_i
  %acc_returnB_load = load float* %acc_returnB_addr_6, align 4
  %tmp_30_i = fadd float %acc_returnB_load, %tmp_22
  store float %tmp_30_i, float* %acc_returnB_addr_6, align 4
  %acc_weight_returnSquareB_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp_26_i
  %acc_weight_returnSquareB_load = load float* %acc_weight_returnSquareB_addr_6, align 4
  %tmp_31_i = fadd float %acc_weight_returnSquareB_load, %tmp_24
  store float %tmp_31_i, float* %acc_weight_returnSquareB_addr_6, align 4
  %acc_weight_returnB_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp_26_i
  %acc_weight_returnB_load = load float* %acc_weight_returnB_addr_6, align 4
  %tmp_32_i = fadd float %acc_weight_returnB_load, %tmp_23
  store float %tmp_32_i, float* %acc_weight_returnB_addr_6, align 4
  %acc_weight_returnA_returnB_add_6 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_26_i
  %acc_weight_returnA_returnB_loa = load float* %acc_weight_returnA_returnB_add_6, align 4
  %tmp_33_i = fadd float %acc_weight_returnA_returnB_loa, %tmp_25
  store float %tmp_33_i, float* %acc_weight_returnA_returnB_add_6, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str7, i32 %tmp_17_i)
  %i = add nsw i32 %i1_i, 1
  br label %.preheader33.i

.preheader.i:                                     ; preds = %.preheader33.i, %2
  %tmp_2 = phi float [ %sum_weight_returnA_returnB, %2 ], [ 0.000000e+00, %.preheader33.i ]
  %tmp_3 = phi float [ %sum_weight_returnB, %2 ], [ 0.000000e+00, %.preheader33.i ]
  %tmp_4 = phi float [ %sum_weight_returnSquareB, %2 ], [ 0.000000e+00, %.preheader33.i ]
  %tmp_5 = phi float [ %sum_returnB, %2 ], [ 0.000000e+00, %.preheader33.i ]
  %tmp_6 = phi float [ %sum_weight_returnA, %2 ], [ 0.000000e+00, %.preheader33.i ]
  %tmp_7 = phi float [ %sum_weight_returnSquareA, %2 ], [ 0.000000e+00, %.preheader33.i ]
  %tmp_8 = phi float [ %sum_returnA, %2 ], [ 0.000000e+00, %.preheader33.i ]
  %i2_i = phi i3 [ %i_1, %2 ], [ 0, %.preheader33.i ]
  %exitcond_i = icmp eq i3 %i2_i, -2
  %i_1 = add i3 %i2_i, 1
  br i1 %exitcond_i, label %3, label %2

; <label>:2                                       ; preds = %.preheader.i
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6)
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str8) nounwind
  %tmp_42_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 5, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_43_i = zext i3 %i2_i to i64
  %acc_returnA_addr_7 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp_43_i
  %acc_returnA_load_1 = load float* %acc_returnA_addr_7, align 4
  %sum_returnA = fadd float %tmp_8, %acc_returnA_load_1
  %acc_weight_returnSquareA_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp_43_i
  %acc_weight_returnSquareA_load_1 = load float* %acc_weight_returnSquareA_addr_7, align 4
  %sum_weight_returnSquareA = fadd float %tmp_7, %acc_weight_returnSquareA_load_1
  %acc_weight_returnA_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp_43_i
  %acc_weight_returnA_load_1 = load float* %acc_weight_returnA_addr_7, align 4
  %sum_weight_returnA = fadd float %tmp_6, %acc_weight_returnA_load_1
  %acc_returnB_addr_7 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp_43_i
  %acc_returnB_load_1 = load float* %acc_returnB_addr_7, align 4
  %sum_returnB = fadd float %tmp_5, %acc_returnB_load_1
  %acc_weight_returnSquareB_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp_43_i
  %acc_weight_returnSquareB_load_1 = load float* %acc_weight_returnSquareB_addr_7, align 4
  %sum_weight_returnSquareB = fadd float %tmp_4, %acc_weight_returnSquareB_load_1
  %acc_weight_returnB_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp_43_i
  %acc_weight_returnB_load_1 = load float* %acc_weight_returnB_addr_7, align 4
  %sum_weight_returnB = fadd float %tmp_3, %acc_weight_returnB_load_1
  %acc_weight_returnA_returnB_add_7 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_43_i
  %acc_weight_returnA_returnB_loa_1 = load float* %acc_weight_returnA_returnB_add_7, align 4
  %sum_weight_returnA_returnB = fadd float %tmp_2, %acc_weight_returnA_returnB_loa_1
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str8, i32 %tmp_42_i)
  br label %.preheader.i

; <label>:3                                       ; preds = %.preheader.i
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_out_V, float %tmp_9)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_return_out_V, float %tmp_5)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnSquare_out_V, float %tmp_4)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_return_out_V, float %tmp_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnA_returnB_out, float %tmp_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_returnA_out_V, float %tmp_8)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnSquareA_out_V, float %tmp_7)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnA_out_V, float %tmp_6)
  %column_index = add nsw i32 %column_index_i, 1
  br label %0

midEnd.1.exit:                                    ; preds = %0
  ret void
}

define internal fastcc void @correlation_accel_v4_midEnd.1(i32* %NUMBER_OF_DAYS, i32* %NUMBER_OF_INDICES, float* %ln_returnA_in_V, float* %weight_returnSquareA_in_V, float* %weight_returnA_in_V, float* %sum_weight_in_V, float* %ln_returnB_in_V, float* %weight_returnSquareB_in_V, float* %weight_returnB_in_V, float* %weight_returnA_returnB_in_V, float* %sum_weight_out_V, float* %sum_return_out_V, float* %sum_weight_returnSquare_out_V, float* %sum_weight_return_out_V, float* %sum_weight_returnA_returnB_out, float* %sum_returnA_out_V, float* %sum_weight_returnSquareA_out_V, float* %sum_weight_returnA_out_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES, [8 x i8]* @str198, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str198, [8 x i8]* @str198, [8 x i8]* @str198)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS, [8 x i8]* @str197, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str197, [8 x i8]* @str197, [8 x i8]* @str197)
  %acc_returnA = alloca [6 x float], align 16
  %acc_weight_returnSquareA = alloca [6 x float], align 16
  %acc_weight_returnA = alloca [6 x float], align 16
  %acc_returnB = alloca [6 x float], align 16
  %acc_weight_returnSquareB = alloca [6 x float], align 16
  %acc_weight_returnB = alloca [6 x float], align 16
  %acc_weight_returnA_returnB = alloca [6 x float], align 16
  %NUMBER_OF_INDICES_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %NUMBER_OF_INDICES)
  %NUMBER_OF_DAYS_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %NUMBER_OF_DAYS)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_out_V, [8 x i8]* @str111, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str112, [1 x i8]* @str112, [8 x i8]* @str111)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquareA_out_V, [8 x i8]* @str107, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str108, [1 x i8]* @str108, [8 x i8]* @str107)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_returnA_out_V, [8 x i8]* @str103, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str104, [1 x i8]* @str104, [8 x i8]* @str103)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_returnB_out, [8 x i8]* @str99, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str100, [1 x i8]* @str100, [8 x i8]* @str99)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_return_out_V, [8 x i8]* @str95, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str96, [1 x i8]* @str96, [8 x i8]* @str95)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquare_out_V, [8 x i8]* @str91, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str92, [1 x i8]* @str92, [8 x i8]* @str91)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_return_out_V, [8 x i8]* @str87, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str88, [1 x i8]* @str88, [8 x i8]* @str87)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_out_V, [8 x i8]* @str83, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str84, [1 x i8]* @str84, [8 x i8]* @str83)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_returnB_in_V, [8 x i8]* @str59, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str60, [1 x i8]* @str60, [8 x i8]* @str59)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnB_in_V, [8 x i8]* @str55, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str56, [1 x i8]* @str56, [8 x i8]* @str55)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareB_in_V, [8 x i8]* @str51, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str52, [1 x i8]* @str52, [8 x i8]* @str51)
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnB_in_V, [8 x i8]* @str47, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str48, [1 x i8]* @str48, [8 x i8]* @str47)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_in_V, [8 x i8]* @str43, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str44, [1 x i8]* @str44, [8 x i8]* @str43)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_in_V, [8 x i8]* @str27, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str28, [1 x i8]* @str28, [8 x i8]* @str27)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareA_in_V, [8 x i8]* @str23, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str24, [1 x i8]* @str24, [8 x i8]* @str23)
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnA_in_V, [8 x i8]* @str19, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str20, [1 x i8]* @str20, [8 x i8]* @str19)
  %tmp_i = add nsw i32 %NUMBER_OF_INDICES_read, -1
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %tmp_i, i32 31)
  %p_neg_i = sub i32 1, %NUMBER_OF_INDICES_read
  %p_lshr_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg_i, i32 1, i32 31)
  %tmp_s = zext i31 %p_lshr_i to i32
  %p_neg_t_i = sub i32 0, %tmp_s
  %p_lshr_f_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %tmp_i, i32 1, i32 31)
  %tmp_9 = zext i31 %p_lshr_f_i to i32
  %upper_bound = select i1 %tmp, i32 %p_neg_t_i, i32 %tmp_9
  %tmp_i_9 = add nsw i32 %NUMBER_OF_DAYS_read, -1
  %acc_returnB_addr = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 0
  %acc_weight_returnSquareB_addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 0
  %acc_weight_returnB_addr = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 0
  %acc_weight_returnA_returnB_add = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 0
  %acc_returnA_addr = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 0
  %acc_weight_returnSquareA_addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 0
  %acc_weight_returnA_addr = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 0
  %acc_returnB_addr_8 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 1
  %acc_weight_returnSquareB_addr_8 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 1
  %acc_weight_returnB_addr_8 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 1
  %acc_weight_returnA_returnB_add_8 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 1
  %acc_returnA_addr_8 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 1
  %acc_weight_returnSquareA_addr_8 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 1
  %acc_weight_returnA_addr_8 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 1
  %acc_returnB_addr_9 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 2
  %acc_weight_returnSquareB_addr_9 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 2
  %acc_weight_returnB_addr_9 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 2
  %acc_weight_returnA_returnB_add_9 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 2
  %acc_returnA_addr_9 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 2
  %acc_weight_returnSquareA_addr_9 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 2
  %acc_weight_returnA_addr_9 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 2
  %acc_returnB_addr_10 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 3
  %acc_weight_returnSquareB_addr_10 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 3
  %acc_weight_returnB_addr_10 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 3
  %acc_weight_returnA_returnB_add_10 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 3
  %acc_returnA_addr_10 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 3
  %acc_weight_returnSquareA_addr_10 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 3
  %acc_weight_returnA_addr_10 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 3
  %acc_returnB_addr_11 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 4
  %acc_weight_returnSquareB_addr_11 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 4
  %acc_weight_returnB_addr_11 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 4
  %acc_weight_returnA_returnB_add_11 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 4
  %acc_returnA_addr_11 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 4
  %acc_weight_returnSquareA_addr_11 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 4
  %acc_weight_returnA_addr_11 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 4
  %acc_returnB_addr_12 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 5
  %acc_weight_returnSquareB_addr_12 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 5
  %acc_weight_returnB_addr_12 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 5
  %acc_weight_returnA_returnB_add_12 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 5
  %acc_returnA_addr_12 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 5
  %acc_weight_returnSquareA_addr_12 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 5
  %acc_weight_returnA_addr_12 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 5
  br label %0

; <label>:0                                       ; preds = %3, %entry
  %column_index_i = phi i32 [ 1, %entry ], [ %column_index, %3 ]
  %tmp_1_i = icmp sgt i32 %column_index_i, %upper_bound
  br i1 %tmp_1_i, label %midEnd.2.exit, label %.preheader34.0.i

.preheader34.0.i:                                 ; preds = %0
  store float 0.000000e+00, float* %acc_returnB_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnB_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add, align 16
  store float 0.000000e+00, float* %acc_returnA_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_addr, align 16
  store float 0.000000e+00, float* %acc_returnB_addr_8, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_8, align 4
  store float 0.000000e+00, float* %acc_weight_returnB_addr_8, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_8, align 4
  store float 0.000000e+00, float* %acc_returnA_addr_8, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_8, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_addr_8, align 4
  store float 0.000000e+00, float* %acc_returnB_addr_9, align 8
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_9, align 8
  store float 0.000000e+00, float* %acc_weight_returnB_addr_9, align 8
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_9, align 8
  store float 0.000000e+00, float* %acc_returnA_addr_9, align 8
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_9, align 8
  store float 0.000000e+00, float* %acc_weight_returnA_addr_9, align 8
  store float 0.000000e+00, float* %acc_returnB_addr_10, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_10, align 4
  store float 0.000000e+00, float* %acc_weight_returnB_addr_10, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_10, align 4
  store float 0.000000e+00, float* %acc_returnA_addr_10, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_10, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_addr_10, align 4
  store float 0.000000e+00, float* %acc_returnB_addr_11, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_11, align 16
  store float 0.000000e+00, float* %acc_weight_returnB_addr_11, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_11, align 16
  store float 0.000000e+00, float* %acc_returnA_addr_11, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_11, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_addr_11, align 16
  store float 0.000000e+00, float* %acc_returnB_addr_12, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_12, align 4
  store float 0.000000e+00, float* %acc_weight_returnB_addr_12, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_12, align 4
  store float 0.000000e+00, float* %acc_returnA_addr_12, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_12, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_addr_12, align 4
  br label %.preheader33.i

.preheader33.i:                                   ; preds = %1, %.preheader34.0.i
  %tmp_10 = phi float [ %tmp_34, %1 ], [ 0.000000e+00, %.preheader34.0.i ]
  %i1_i = phi i32 [ %i, %1 ], [ 1, %.preheader34.0.i ]
  %tmp_9_i = icmp sgt i32 %i1_i, %tmp_i_9
  br i1 %tmp_9_i, label %.preheader.i, label %1

; <label>:1                                       ; preds = %.preheader33.i
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str7) nounwind
  %tmp_17_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str7)
  %channel_id = srem i32 %i1_i, 6
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_34 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_in_V)
  %tmp_35 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %ln_returnA_in_V)
  %tmp_36 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnA_in_V)
  %tmp_37 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnSquareA_in_V)
  %tmp_38 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %ln_returnB_in_V)
  %tmp_39 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnB_in_V)
  %tmp_40 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnSquareB_in_V)
  %tmp_41 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnA_returnB_in_V)
  %tmp_26_i = zext i32 %channel_id to i64
  %acc_returnA_addr_13 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp_26_i
  %acc_returnA_load = load float* %acc_returnA_addr_13, align 4
  %tmp_27_i = fadd float %acc_returnA_load, %tmp_35
  store float %tmp_27_i, float* %acc_returnA_addr_13, align 4
  %acc_weight_returnSquareA_addr_13 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp_26_i
  %acc_weight_returnSquareA_load = load float* %acc_weight_returnSquareA_addr_13, align 4
  %tmp_28_i = fadd float %acc_weight_returnSquareA_load, %tmp_37
  store float %tmp_28_i, float* %acc_weight_returnSquareA_addr_13, align 4
  %acc_weight_returnA_addr_13 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp_26_i
  %acc_weight_returnA_load = load float* %acc_weight_returnA_addr_13, align 4
  %tmp_29_i = fadd float %acc_weight_returnA_load, %tmp_36
  store float %tmp_29_i, float* %acc_weight_returnA_addr_13, align 4
  %acc_returnB_addr_13 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp_26_i
  %acc_returnB_load = load float* %acc_returnB_addr_13, align 4
  %tmp_30_i = fadd float %acc_returnB_load, %tmp_38
  store float %tmp_30_i, float* %acc_returnB_addr_13, align 4
  %acc_weight_returnSquareB_addr_13 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp_26_i
  %acc_weight_returnSquareB_load = load float* %acc_weight_returnSquareB_addr_13, align 4
  %tmp_31_i = fadd float %acc_weight_returnSquareB_load, %tmp_40
  store float %tmp_31_i, float* %acc_weight_returnSquareB_addr_13, align 4
  %acc_weight_returnB_addr_13 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp_26_i
  %acc_weight_returnB_load = load float* %acc_weight_returnB_addr_13, align 4
  %tmp_32_i = fadd float %acc_weight_returnB_load, %tmp_39
  store float %tmp_32_i, float* %acc_weight_returnB_addr_13, align 4
  %acc_weight_returnA_returnB_add_13 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_26_i
  %acc_weight_returnA_returnB_loa = load float* %acc_weight_returnA_returnB_add_13, align 4
  %tmp_33_i = fadd float %acc_weight_returnA_returnB_loa, %tmp_41
  store float %tmp_33_i, float* %acc_weight_returnA_returnB_add_13, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str7, i32 %tmp_17_i)
  %i = add nsw i32 %i1_i, 1
  br label %.preheader33.i

.preheader.i:                                     ; preds = %.preheader33.i, %2
  %tmp_11 = phi float [ %sum_weight_returnA_returnB, %2 ], [ 0.000000e+00, %.preheader33.i ]
  %tmp_12 = phi float [ %sum_weight_returnB, %2 ], [ 0.000000e+00, %.preheader33.i ]
  %tmp_13 = phi float [ %sum_weight_returnSquareB, %2 ], [ 0.000000e+00, %.preheader33.i ]
  %tmp_14 = phi float [ %sum_returnB, %2 ], [ 0.000000e+00, %.preheader33.i ]
  %tmp_15 = phi float [ %sum_weight_returnA, %2 ], [ 0.000000e+00, %.preheader33.i ]
  %tmp_16 = phi float [ %sum_weight_returnSquareA, %2 ], [ 0.000000e+00, %.preheader33.i ]
  %tmp_17 = phi float [ %sum_returnA, %2 ], [ 0.000000e+00, %.preheader33.i ]
  %i2_i = phi i3 [ %i_2, %2 ], [ 0, %.preheader33.i ]
  %exitcond_i = icmp eq i3 %i2_i, -2
  %i_2 = add i3 %i2_i, 1
  br i1 %exitcond_i, label %3, label %2

; <label>:2                                       ; preds = %.preheader.i
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6)
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str8) nounwind
  %tmp_42_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 5, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_43_i = zext i3 %i2_i to i64
  %acc_returnA_addr_14 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp_43_i
  %acc_returnA_load_2 = load float* %acc_returnA_addr_14, align 4
  %sum_returnA = fadd float %tmp_17, %acc_returnA_load_2
  %acc_weight_returnSquareA_addr_14 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp_43_i
  %acc_weight_returnSquareA_load_2 = load float* %acc_weight_returnSquareA_addr_14, align 4
  %sum_weight_returnSquareA = fadd float %tmp_16, %acc_weight_returnSquareA_load_2
  %acc_weight_returnA_addr_14 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp_43_i
  %acc_weight_returnA_load_2 = load float* %acc_weight_returnA_addr_14, align 4
  %sum_weight_returnA = fadd float %tmp_15, %acc_weight_returnA_load_2
  %acc_returnB_addr_14 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp_43_i
  %acc_returnB_load_2 = load float* %acc_returnB_addr_14, align 4
  %sum_returnB = fadd float %tmp_14, %acc_returnB_load_2
  %acc_weight_returnSquareB_addr_14 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp_43_i
  %acc_weight_returnSquareB_load_2 = load float* %acc_weight_returnSquareB_addr_14, align 4
  %sum_weight_returnSquareB = fadd float %tmp_13, %acc_weight_returnSquareB_load_2
  %acc_weight_returnB_addr_14 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp_43_i
  %acc_weight_returnB_load_2 = load float* %acc_weight_returnB_addr_14, align 4
  %sum_weight_returnB = fadd float %tmp_12, %acc_weight_returnB_load_2
  %acc_weight_returnA_returnB_add_14 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_43_i
  %acc_weight_returnA_returnB_loa_2 = load float* %acc_weight_returnA_returnB_add_14, align 4
  %sum_weight_returnA_returnB = fadd float %tmp_11, %acc_weight_returnA_returnB_loa_2
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str8, i32 %tmp_42_i)
  br label %.preheader.i

; <label>:3                                       ; preds = %.preheader.i
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_out_V, float %tmp_10)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_return_out_V, float %tmp_14)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnSquare_out_V, float %tmp_13)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_return_out_V, float %tmp_12)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnA_returnB_out, float %tmp_11)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_returnA_out_V, float %tmp_17)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnSquareA_out_V, float %tmp_16)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnA_out_V, float %tmp_15)
  %column_index = add nsw i32 %column_index_i, 1
  br label %0

midEnd.2.exit:                                    ; preds = %0
  ret void
}

define void @correlation_accel_v4(i32 %number_of_days, i32 %number_of_indices, i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V) {
  %number_of_indices_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %number_of_indices)
  %number_of_days_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %number_of_days)
  %number_of_indices20_channel = alloca i32, align 4
  %number_of_days19_channel = alloca i32, align 4
  %number_of_indices18_channel = alloca i32, align 4
  %number_of_indices17_channel = alloca i32, align 4
  %number_of_days16_channel = alloca i32, align 4
  %number_of_days15_channel = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %number_of_days), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %number_of_indices), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_indices_data_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_indices_keep_V), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_indices_strb_V), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_user_V), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_last_V), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_id_V), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_dest_V), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_correlation_data_V), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_correlation_keep_V), !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_correlation_strb_V), !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_user_V), !map !61
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_last_V), !map !65
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_id_V), !map !69
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_dest_V), !map !73
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @str) nounwind
  %ln_returnA_c1_V = alloca float, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @str17, i32 1, [1 x i8]* @str18, [1 x i8]* @str18, i32 2, i32 2, float* %ln_returnA_c1_V, float* %ln_returnA_c1_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnA_c1_V, [8 x i8]* @str19, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str20, [1 x i8]* @str20, [8 x i8]* @str19)
  %weight_returnSquareA_c1_V = alloca float, align 4
  %empty_12 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @str21, i32 1, [1 x i8]* @str22, [1 x i8]* @str22, i32 2, i32 2, float* %weight_returnSquareA_c1_V, float* %weight_returnSquareA_c1_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareA_c1_V, [8 x i8]* @str23, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str24, [1 x i8]* @str24, [8 x i8]* @str23)
  %weight_returnA_c1_V = alloca float, align 4
  %empty_13 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @str25, i32 1, [1 x i8]* @str26, [1 x i8]* @str26, i32 2, i32 2, float* %weight_returnA_c1_V, float* %weight_returnA_c1_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_c1_V, [8 x i8]* @str27, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str28, [1 x i8]* @str28, [8 x i8]* @str27)
  %ln_returnA_c2_V = alloca float, align 4
  %empty_14 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @str29, i32 1, [1 x i8]* @str30, [1 x i8]* @str30, i32 2, i32 2, float* %ln_returnA_c2_V, float* %ln_returnA_c2_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnA_c2_V, [8 x i8]* @str31, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str32, [1 x i8]* @str32, [8 x i8]* @str31)
  %weight_returnSquareA_c2_V = alloca float, align 4
  %empty_15 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @str33, i32 1, [1 x i8]* @str34, [1 x i8]* @str34, i32 2, i32 2, float* %weight_returnSquareA_c2_V, float* %weight_returnSquareA_c2_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareA_c2_V, [8 x i8]* @str35, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str36, [1 x i8]* @str36, [8 x i8]* @str35)
  %weight_returnA_c2_V = alloca float, align 4
  %empty_16 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @str37, i32 1, [1 x i8]* @str38, [1 x i8]* @str38, i32 2, i32 2, float* %weight_returnA_c2_V, float* %weight_returnA_c2_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_c2_V, [8 x i8]* @str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str40, [1 x i8]* @str40, [8 x i8]* @str39)
  %sum_weight_c1_V = alloca float, align 4
  %empty_17 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @str41, i32 1, [1 x i8]* @str42, [1 x i8]* @str42, i32 2, i32 2, float* %sum_weight_c1_V, float* %sum_weight_c1_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_c1_V, [8 x i8]* @str43, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str44, [1 x i8]* @str44, [8 x i8]* @str43)
  %ln_returnB_c1_V = alloca float, align 4
  %empty_18 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @str45, i32 1, [1 x i8]* @str46, [1 x i8]* @str46, i32 2, i32 2, float* %ln_returnB_c1_V, float* %ln_returnB_c1_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnB_c1_V, [8 x i8]* @str47, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str48, [1 x i8]* @str48, [8 x i8]* @str47)
  %weight_returnSquareB_c1_V = alloca float, align 4
  %empty_19 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @str49, i32 1, [1 x i8]* @str50, [1 x i8]* @str50, i32 2, i32 2, float* %weight_returnSquareB_c1_V, float* %weight_returnSquareB_c1_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareB_c1_V, [8 x i8]* @str51, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str52, [1 x i8]* @str52, [8 x i8]* @str51)
  %weight_returnB_c1_V = alloca float, align 4
  %empty_20 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @str53, i32 1, [1 x i8]* @str54, [1 x i8]* @str54, i32 2, i32 2, float* %weight_returnB_c1_V, float* %weight_returnB_c1_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnB_c1_V, [8 x i8]* @str55, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str56, [1 x i8]* @str56, [8 x i8]* @str55)
  %weight_returnA_returnB_c1_V = alloca float, align 4
  %empty_21 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @str57, i32 1, [1 x i8]* @str58, [1 x i8]* @str58, i32 2, i32 2, float* %weight_returnA_returnB_c1_V, float* %weight_returnA_returnB_c1_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_returnB_c1_V, [8 x i8]* @str59, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str60, [1 x i8]* @str60, [8 x i8]* @str59)
  %sum_weight_c2_V = alloca float, align 4
  %empty_22 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @str61, i32 1, [1 x i8]* @str62, [1 x i8]* @str62, i32 2, i32 2, float* %sum_weight_c2_V, float* %sum_weight_c2_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_c2_V, [8 x i8]* @str63, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str64, [1 x i8]* @str64, [8 x i8]* @str63)
  %ln_returnB_c2_V = alloca float, align 4
  %empty_23 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @str65, i32 1, [1 x i8]* @str66, [1 x i8]* @str66, i32 2, i32 2, float* %ln_returnB_c2_V, float* %ln_returnB_c2_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnB_c2_V, [8 x i8]* @str67, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str68, [1 x i8]* @str68, [8 x i8]* @str67)
  %weight_returnSquareB_c2_V = alloca float, align 4
  %empty_24 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @str69, i32 1, [1 x i8]* @str70, [1 x i8]* @str70, i32 2, i32 2, float* %weight_returnSquareB_c2_V, float* %weight_returnSquareB_c2_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareB_c2_V, [8 x i8]* @str71, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str72, [1 x i8]* @str72, [8 x i8]* @str71)
  %weight_returnB_c2_V = alloca float, align 4
  %empty_25 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @str73, i32 1, [1 x i8]* @str74, [1 x i8]* @str74, i32 2, i32 2, float* %weight_returnB_c2_V, float* %weight_returnB_c2_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnB_c2_V, [8 x i8]* @str75, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str76, [1 x i8]* @str76, [8 x i8]* @str75)
  %weight_returnA_returnB_c2_V = alloca float, align 4
  %empty_26 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @str77, i32 1, [1 x i8]* @str78, [1 x i8]* @str78, i32 2, i32 2, float* %weight_returnA_returnB_c2_V, float* %weight_returnA_returnB_c2_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_returnB_c2_V, [8 x i8]* @str79, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str80, [1 x i8]* @str80, [8 x i8]* @str79)
  %sum_weight_stage2_c1_V = alloca float, align 4
  %empty_27 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str81, i32 1, [1 x i8]* @str82, [1 x i8]* @str82, i32 2, i32 2, float* %sum_weight_stage2_c1_V, float* %sum_weight_stage2_c1_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_stage2_c1_V, [8 x i8]* @str83, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str84, [1 x i8]* @str84, [8 x i8]* @str83)
  %sum_return_stage2_c1_V = alloca float, align 4
  %empty_28 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str85, i32 1, [1 x i8]* @str86, [1 x i8]* @str86, i32 2, i32 2, float* %sum_return_stage2_c1_V, float* %sum_return_stage2_c1_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_return_stage2_c1_V, [8 x i8]* @str87, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str88, [1 x i8]* @str88, [8 x i8]* @str87)
  %sum_weight_returnSquare_stage2 = alloca float, align 4
  %empty_29 = call i32 (...)* @_ssdm_op_SpecChannel([36 x i8]* @str89, i32 1, [1 x i8]* @str90, [1 x i8]* @str90, i32 2, i32 2, float* %sum_weight_returnSquare_stage2, float* %sum_weight_returnSquare_stage2)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquare_stage2, [8 x i8]* @str91, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str92, [1 x i8]* @str92, [8 x i8]* @str91)
  %sum_weight_return_stage2_c1_V = alloca float, align 4
  %empty_30 = call i32 (...)* @_ssdm_op_SpecChannel([30 x i8]* @str93, i32 1, [1 x i8]* @str94, [1 x i8]* @str94, i32 2, i32 2, float* %sum_weight_return_stage2_c1_V, float* %sum_weight_return_stage2_c1_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_return_stage2_c1_V, [8 x i8]* @str95, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str96, [1 x i8]* @str96, [8 x i8]* @str95)
  %sum_weight_returnA_returnB_sta = alloca float, align 4
  %empty_31 = call i32 (...)* @_ssdm_op_SpecChannel([39 x i8]* @str97, i32 1, [1 x i8]* @str98, [1 x i8]* @str98, i32 2, i32 2, float* %sum_weight_returnA_returnB_sta, float* %sum_weight_returnA_returnB_sta)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_returnB_sta, [8 x i8]* @str99, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str100, [1 x i8]* @str100, [8 x i8]* @str99)
  %sum_returnA_stage2_c1_V = alloca float, align 4
  %empty_32 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @str101, i32 1, [1 x i8]* @str102, [1 x i8]* @str102, i32 2, i32 2, float* %sum_returnA_stage2_c1_V, float* %sum_returnA_stage2_c1_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_returnA_stage2_c1_V, [8 x i8]* @str103, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str104, [1 x i8]* @str104, [8 x i8]* @str103)
  %sum_weight_returnSquareA_stage = alloca float, align 4
  %empty_33 = call i32 (...)* @_ssdm_op_SpecChannel([37 x i8]* @str105, i32 1, [1 x i8]* @str106, [1 x i8]* @str106, i32 2, i32 2, float* %sum_weight_returnSquareA_stage, float* %sum_weight_returnSquareA_stage)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquareA_stage, [8 x i8]* @str107, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str108, [1 x i8]* @str108, [8 x i8]* @str107)
  %sum_weight_returnA_stage2_c1_V = alloca float, align 4
  %empty_34 = call i32 (...)* @_ssdm_op_SpecChannel([31 x i8]* @str109, i32 1, [1 x i8]* @str110, [1 x i8]* @str110, i32 2, i32 2, float* %sum_weight_returnA_stage2_c1_V, float* %sum_weight_returnA_stage2_c1_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_stage2_c1_V, [8 x i8]* @str111, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str112, [1 x i8]* @str112, [8 x i8]* @str111)
  %sum_weight_stage2_c2_V = alloca float, align 4
  %empty_35 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str113, i32 1, [1 x i8]* @str114, [1 x i8]* @str114, i32 2, i32 2, float* %sum_weight_stage2_c2_V, float* %sum_weight_stage2_c2_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_stage2_c2_V, [8 x i8]* @str115, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str116, [1 x i8]* @str116, [8 x i8]* @str115)
  %sum_return_stage2_c2_V = alloca float, align 4
  %empty_36 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str117, i32 1, [1 x i8]* @str118, [1 x i8]* @str118, i32 2, i32 2, float* %sum_return_stage2_c2_V, float* %sum_return_stage2_c2_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_return_stage2_c2_V, [8 x i8]* @str119, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str120, [1 x i8]* @str120, [8 x i8]* @str119)
  %sum_weight_returnSquare_stage2_1 = alloca float, align 4
  %empty_37 = call i32 (...)* @_ssdm_op_SpecChannel([36 x i8]* @str121, i32 1, [1 x i8]* @str122, [1 x i8]* @str122, i32 2, i32 2, float* %sum_weight_returnSquare_stage2_1, float* %sum_weight_returnSquare_stage2_1)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquare_stage2_1, [8 x i8]* @str123, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str124, [1 x i8]* @str124, [8 x i8]* @str123)
  %sum_weight_return_stage2_c2_V = alloca float, align 4
  %empty_38 = call i32 (...)* @_ssdm_op_SpecChannel([30 x i8]* @str125, i32 1, [1 x i8]* @str126, [1 x i8]* @str126, i32 2, i32 2, float* %sum_weight_return_stage2_c2_V, float* %sum_weight_return_stage2_c2_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_return_stage2_c2_V, [8 x i8]* @str127, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str128, [1 x i8]* @str128, [8 x i8]* @str127)
  %sum_weight_returnA_returnB_sta_1 = alloca float, align 4
  %empty_39 = call i32 (...)* @_ssdm_op_SpecChannel([39 x i8]* @str129, i32 1, [1 x i8]* @str130, [1 x i8]* @str130, i32 2, i32 2, float* %sum_weight_returnA_returnB_sta_1, float* %sum_weight_returnA_returnB_sta_1)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_returnB_sta_1, [8 x i8]* @str131, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str132, [1 x i8]* @str132, [8 x i8]* @str131)
  %sum_returnA_stage2_c2_V = alloca float, align 4
  %empty_40 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @str133, i32 1, [1 x i8]* @str134, [1 x i8]* @str134, i32 2, i32 2, float* %sum_returnA_stage2_c2_V, float* %sum_returnA_stage2_c2_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_returnA_stage2_c2_V, [8 x i8]* @str135, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str136, [1 x i8]* @str136, [8 x i8]* @str135)
  %sum_weight_returnSquareA_stage_1 = alloca float, align 4
  %empty_41 = call i32 (...)* @_ssdm_op_SpecChannel([37 x i8]* @str137, i32 1, [1 x i8]* @str138, [1 x i8]* @str138, i32 2, i32 2, float* %sum_weight_returnSquareA_stage_1, float* %sum_weight_returnSquareA_stage_1)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquareA_stage_1, [8 x i8]* @str139, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str140, [1 x i8]* @str140, [8 x i8]* @str139)
  %sum_weight_returnA_stage2_c2_V = alloca float, align 4
  %empty_42 = call i32 (...)* @_ssdm_op_SpecChannel([31 x i8]* @str141, i32 1, [1 x i8]* @str142, [1 x i8]* @str142, i32 2, i32 2, float* %sum_weight_returnA_stage2_c2_V, float* %sum_weight_returnA_stage2_c2_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_stage2_c2_V, [8 x i8]* @str143, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str144, [1 x i8]* @str144, [8 x i8]* @str143)
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call fastcc void @correlation_accel_v4_frontEnd(i32 %number_of_days_read, i32 %number_of_indices_read, i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, float* %ln_returnA_c1_V, float* %weight_returnSquareA_c1_V, float* %weight_returnA_c1_V, float* %ln_returnA_c2_V, float* %weight_returnSquareA_c2_V, float* %weight_returnA_c2_V, float* %sum_weight_c1_V, float* %ln_returnB_c1_V, float* %weight_returnSquareB_c1_V, float* %weight_returnB_c1_V, float* %weight_returnA_returnB_c1_V, float* %sum_weight_c2_V, float* %ln_returnB_c2_V, float* %weight_returnSquareB_c2_V, float* %weight_returnB_c2_V, float* %weight_returnA_returnB_c2_V, i32* %number_of_days15_channel, i32* %number_of_days16_channel, i32* %number_of_indices17_channel, i32* %number_of_indices18_channel)
  %empty_43 = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @str166, i32 1, [1 x i8]* @str167, [1 x i8]* @str167, i32 1, i32 0, i32* %number_of_days15_channel, i32* %number_of_days15_channel)
  call void (...)* @_ssdm_op_SpecInterface(i32* %number_of_days15_channel, [8 x i8]* @str168, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str168, [8 x i8]* @str168, [8 x i8]* @str168)
  %empty_44 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @str172, i32 1, [1 x i8]* @str173, [1 x i8]* @str173, i32 1, i32 0, i32* %number_of_indices17_channel, i32* %number_of_indices17_channel)
  call void (...)* @_ssdm_op_SpecInterface(i32* %number_of_indices17_channel, [8 x i8]* @str174, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str174, [8 x i8]* @str174, [8 x i8]* @str174)
  call fastcc void @correlation_accel_v4_midEnd(i32* %number_of_days15_channel, i32* %number_of_indices17_channel, float* %ln_returnA_c1_V, float* %weight_returnSquareA_c1_V, float* %weight_returnA_c1_V, float* %sum_weight_c1_V, float* %ln_returnB_c1_V, float* %weight_returnSquareB_c1_V, float* %weight_returnB_c1_V, float* %weight_returnA_returnB_c1_V, float* %sum_weight_stage2_c1_V, float* %sum_return_stage2_c1_V, float* %sum_weight_returnSquare_stage2, float* %sum_weight_return_stage2_c1_V, float* %sum_weight_returnA_returnB_sta, float* %sum_returnA_stage2_c1_V, float* %sum_weight_returnSquareA_stage, float* %sum_weight_returnA_stage2_c1_V, i32* %number_of_days19_channel, i32* %number_of_indices20_channel)
  %empty_45 = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @str169, i32 1, [1 x i8]* @str170, [1 x i8]* @str170, i32 1, i32 0, i32* %number_of_days16_channel, i32* %number_of_days16_channel)
  call void (...)* @_ssdm_op_SpecInterface(i32* %number_of_days16_channel, [8 x i8]* @str171, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str171, [8 x i8]* @str171, [8 x i8]* @str171)
  %empty_46 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @str175, i32 1, [1 x i8]* @str176, [1 x i8]* @str176, i32 1, i32 0, i32* %number_of_indices18_channel, i32* %number_of_indices18_channel)
  call void (...)* @_ssdm_op_SpecInterface(i32* %number_of_indices18_channel, [8 x i8]* @str177, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str177, [8 x i8]* @str177, [8 x i8]* @str177)
  call fastcc void @correlation_accel_v4_midEnd.1(i32* %number_of_days16_channel, i32* %number_of_indices18_channel, float* %ln_returnA_c2_V, float* %weight_returnSquareA_c2_V, float* %weight_returnA_c2_V, float* %sum_weight_c2_V, float* %ln_returnB_c2_V, float* %weight_returnSquareB_c2_V, float* %weight_returnB_c2_V, float* %weight_returnA_returnB_c2_V, float* %sum_weight_stage2_c2_V, float* %sum_return_stage2_c2_V, float* %sum_weight_returnSquare_stage2_1, float* %sum_weight_return_stage2_c2_V, float* %sum_weight_returnA_returnB_sta_1, float* %sum_returnA_stage2_c2_V, float* %sum_weight_returnSquareA_stage_1, float* %sum_weight_returnA_stage2_c2_V)
  %empty_47 = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @str178, i32 1, [1 x i8]* @str179, [1 x i8]* @str179, i32 1, i32 0, i32* %number_of_days19_channel, i32* %number_of_days19_channel)
  call void (...)* @_ssdm_op_SpecInterface(i32* %number_of_days19_channel, [8 x i8]* @str180, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str180, [8 x i8]* @str180, [8 x i8]* @str180)
  %empty_48 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @str181, i32 1, [1 x i8]* @str182, [1 x i8]* @str182, i32 1, i32 0, i32* %number_of_indices20_channel, i32* %number_of_indices20_channel)
  call void (...)* @_ssdm_op_SpecInterface(i32* %number_of_indices20_channel, [8 x i8]* @str183, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str183, [8 x i8]* @str183, [8 x i8]* @str183)
  call fastcc void @correlation_accel_v4_backEnd(i32* %number_of_days19_channel, i32* %number_of_indices20_channel, float* %sum_weight_stage2_c1_V, float* %sum_return_stage2_c1_V, float* %sum_weight_returnSquare_stage2, float* %sum_weight_return_stage2_c1_V, float* %sum_weight_returnA_returnB_sta, float* %sum_returnA_stage2_c1_V, float* %sum_weight_returnSquareA_stage, float* %sum_weight_returnA_stage2_c1_V, float* %sum_weight_stage2_c2_V, float* %sum_return_stage2_c2_V, float* %sum_weight_returnSquare_stage2_1, float* %sum_weight_return_stage2_c2_V, float* %sum_weight_returnA_returnB_sta_1, float* %sum_returnA_stage2_c2_V, float* %sum_weight_returnSquareA_stage_1, float* %sum_weight_returnA_stage2_c2_V, i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V)
  ret void
}

define internal fastcc void @correlation_accel_v4_frontEnd(i32 %NUMBER_OF_DAYS, i32 %NUMBER_OF_INDICES, i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, float* %ln_returnA_out_c1_V, float* %weight_returnSquareA_out_c1_V, float* %weight_returnA_out_c1_V, float* %ln_returnA_out_c2_V, float* %weight_returnSquareA_out_c2_V, float* %weight_returnA_out_c2_V, float* %sum_weight_out_c1_V, float* %ln_returnB_out_c1_V, float* %weight_returnSquareB_out_c1_V, float* %weight_returnB_out_c1_V, float* %weight_returnA_returnB_out_c1_s, float* %sum_weight_out_c2_V, float* %ln_returnB_out_c2_V, float* %weight_returnSquareB_out_c2_V, float* %weight_returnB_out_c2_V, float* %weight_returnA_returnB_out_c2_s, i32* %NUMBER_OF_DAYS_out, i32* %NUMBER_OF_DAYS_out1, i32* %NUMBER_OF_INDICES_out, i32* %NUMBER_OF_INDICES_out2) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i1* %in_indices_dest_V, i1* %in_indices_id_V, i1* %in_indices_last_V, i1* %in_indices_user_V, i4* %in_indices_strb_V, i4* %in_indices_keep_V, i32* %in_indices_data_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES_out2, [8 x i8]* @str189, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str189, [8 x i8]* @str189, [8 x i8]* @str189)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES_out, [8 x i8]* @str188, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str188, [8 x i8]* @str188, [8 x i8]* @str188)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS_out1, [8 x i8]* @str187, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str187, [8 x i8]* @str187, [8 x i8]* @str187)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS_out, [8 x i8]* @str186, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str186, [8 x i8]* @str186, [8 x i8]* @str186)
  %NUMBER_OF_INDICES_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %NUMBER_OF_INDICES)
  %NUMBER_OF_DAYS_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %NUMBER_OF_DAYS)
  %tmp1_keep_V_i = alloca i4, align 1
  %tmp1_strb_V_i = alloca i4, align 1
  %tmp1_user_V_i = alloca i1, align 1
  %tmp1_last_V_i = alloca i1, align 1
  %tmp1_id_V_i = alloca i1, align 1
  %tmp1_dest_V_i = alloca i1, align 1
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES_out2, [8 x i8]* @str158, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str158, [8 x i8]* @str158, [8 x i8]* @str158)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %NUMBER_OF_INDICES_out2, i32 %NUMBER_OF_INDICES_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES_out, [8 x i8]* @str156, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str156, [8 x i8]* @str156, [8 x i8]* @str156)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %NUMBER_OF_INDICES_out, i32 %NUMBER_OF_INDICES_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS_out1, [8 x i8]* @str154, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str154, [8 x i8]* @str154, [8 x i8]* @str154)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %NUMBER_OF_DAYS_out1, i32 %NUMBER_OF_DAYS_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS_out, [8 x i8]* @str152, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str152, [8 x i8]* @str152, [8 x i8]* @str152)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %NUMBER_OF_DAYS_out, i32 %NUMBER_OF_DAYS_read)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_returnB_out_c2_s, [8 x i8]* @str79, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str80, [1 x i8]* @str80, [8 x i8]* @str79)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnB_out_c2_V, [8 x i8]* @str75, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str76, [1 x i8]* @str76, [8 x i8]* @str75)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareB_out_c2_V, [8 x i8]* @str71, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str72, [1 x i8]* @str72, [8 x i8]* @str71)
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnB_out_c2_V, [8 x i8]* @str67, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str68, [1 x i8]* @str68, [8 x i8]* @str67)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_out_c2_V, [8 x i8]* @str63, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str64, [1 x i8]* @str64, [8 x i8]* @str63)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_returnB_out_c1_s, [8 x i8]* @str59, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str60, [1 x i8]* @str60, [8 x i8]* @str59)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnB_out_c1_V, [8 x i8]* @str55, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str56, [1 x i8]* @str56, [8 x i8]* @str55)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareB_out_c1_V, [8 x i8]* @str51, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str52, [1 x i8]* @str52, [8 x i8]* @str51)
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnB_out_c1_V, [8 x i8]* @str47, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str48, [1 x i8]* @str48, [8 x i8]* @str47)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_out_c1_V, [8 x i8]* @str43, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str44, [1 x i8]* @str44, [8 x i8]* @str43)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_out_c2_V, [8 x i8]* @str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str40, [1 x i8]* @str40, [8 x i8]* @str39)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareA_out_c2_V, [8 x i8]* @str35, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str36, [1 x i8]* @str36, [8 x i8]* @str35)
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnA_out_c2_V, [8 x i8]* @str31, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str32, [1 x i8]* @str32, [8 x i8]* @str31)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_out_c1_V, [8 x i8]* @str27, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str28, [1 x i8]* @str28, [8 x i8]* @str27)
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareA_out_c1_V, [8 x i8]* @str23, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str24, [1 x i8]* @str24, [8 x i8]* @str23)
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnA_out_c1_V, [8 x i8]* @str19, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str20, [1 x i8]* @str20, [8 x i8]* @str19)
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 1), align 4
  br label %0

; <label>:0                                       ; preds = %1, %entry
  %tmp_i_i = phi float [ 1.000000e+00, %entry ], [ %tmp_i_i_49, %1 ]
  %i_i_i = phi i8 [ 2, %entry ], [ %i, %1 ]
  %exitcond_i_i = icmp eq i8 %i_i_i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 250, i64 250, i64 250)
  br i1 %exitcond_i_i, label %.preheader.i.i, label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str9) nounwind
  %tmp_i_i_49 = fmul float %tmp_i_i, 0x3FEE147AE0000000
  %tmp_86_i_i = zext i8 %i_i_i to i64
  %weight_rom_addr = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp_86_i_i
  store float %tmp_i_i_49, float* %weight_rom_addr, align 4
  %i = add i8 %i_i_i, 1
  br label %0

.preheader.i.i:                                   ; preds = %0, %2
  %i1_i_i = phi i31 [ %i_3, %2 ], [ 2, %0 ]
  %i1_i_cast_i = zext i31 %i1_i_i to i32
  %tmp_85_i_i = icmp slt i32 %i1_i_cast_i, %NUMBER_OF_DAYS_read
  %empty_50 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483645, i64 0)
  br i1 %tmp_85_i_i, label %2, label %weight_rom_init.exit.i

; <label>:2                                       ; preds = %.preheader.i.i
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str10) nounwind
  %tmp_87_i_i = zext i31 %i1_i_i to i64
  %weight_rom_addr_1 = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp_87_i_i
  %weight_rom_load = load float* %weight_rom_addr_1, align 4
  %weight_rom_load_1 = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  %tmp_88_i_i = fadd float %weight_rom_load_1, %weight_rom_load
  store float %tmp_88_i_i, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  %i_3 = add i31 %i1_i_i, 1
  br label %.preheader.i.i

weight_rom_init.exit.i:                           ; preds = %.preheader.i.i
  %tmp_2_i = alloca float, align 4
  %sum_weight = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  %in_indices_data_V_read = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %in_indices_data_V)
  %tmp_i = bitcast i32 %in_indices_data_V_read to float
  %tmp1_keep_V = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_keep_V)
  store volatile i4 %tmp1_keep_V, i4* %tmp1_keep_V_i, align 4
  %tmp1_strb_V = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_strb_V)
  store volatile i4 %tmp1_strb_V, i4* %tmp1_strb_V_i, align 1
  %tmp1_user_V = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_user_V)
  store volatile i1 %tmp1_user_V, i1* %tmp1_user_V_i, align 2
  %tmp1_last_V = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_last_V)
  store volatile i1 %tmp1_last_V, i1* %tmp1_last_V_i, align 1
  %tmp1_id_V = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_id_V)
  store volatile i1 %tmp1_id_V, i1* %tmp1_id_V_i, align 4
  %tmp1_dest_V = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_dest_V)
  store volatile i1 %tmp1_dest_V, i1* %tmp1_dest_V_i, align 1
  %tmp_1_i = add nsw i32 %NUMBER_OF_DAYS_read, -1
  br label %3

; <label>:3                                       ; preds = %4, %weight_rom_init.exit.i
  %tmp_3_i = phi float [ %tmp_i, %weight_rom_init.exit.i ], [ %tmp_3_i_tmp_2_i, %4 ]
  %i_i = phi i32 [ 1, %weight_rom_init.exit.i ], [ %i_4, %4 ]
  %tmp_4_i = icmp sgt i32 %i_i, %tmp_1_i
  br i1 %tmp_4_i, label %.preheader.i.preheader, label %4

.preheader.i.preheader:                           ; preds = %3
  %tmp_2_i_load = load float* %tmp_2_i, align 4
  %shift_reg_load1_i = alloca float, align 4
  store float %tmp_2_i_load, float* %shift_reg_load1_i, align 4
  br label %.preheader.i

; <label>:4                                       ; preds = %3
  %tmp_2_i_load_1 = load float* %tmp_2_i, align 4
  %tmp = trunc i32 %i_i to i31
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str4) nounwind
  %tmp_80_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_5_i = icmp eq i32 %i_i, 1
  %in_indices_data_V_read_1 = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %in_indices_data_V)
  %in_indices_keep_V_read = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_keep_V)
  store volatile i4 %in_indices_keep_V_read, i4* %tmp1_keep_V_i, align 4
  %in_indices_strb_V_read = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_strb_V)
  store volatile i4 %in_indices_strb_V_read, i4* %tmp1_strb_V_i, align 1
  %in_indices_user_V_read = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_user_V)
  store volatile i1 %in_indices_user_V_read, i1* %tmp1_user_V_i, align 2
  %in_indices_last_V_read = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_last_V)
  store volatile i1 %in_indices_last_V_read, i1* %tmp1_last_V_i, align 1
  %in_indices_id_V_read = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_id_V)
  store volatile i1 %in_indices_id_V_read, i1* %tmp1_id_V_i, align 4
  %in_indices_dest_V_read = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_dest_V)
  store volatile i1 %in_indices_dest_V_read, i1* %tmp1_dest_V_i, align 1
  %tmp_3_i_tmp_2_i = select i1 %tmp_5_i, float %tmp_3_i, float %tmp_2_i_load_1
  %tmp_14_i = bitcast i32 %in_indices_data_V_read_1 to float
  %tmp_15_i = fdiv float %tmp_3_i_tmp_2_i, %tmp_14_i
  %lnReturn = call float @llvm.log.f32(float %tmp_15_i)
  %tmp_16_i = add i31 %tmp, -1
  %tmp_17_i = zext i31 %tmp_16_i to i64
  %lnReturnA_addr = getelementptr inbounds [252 x float]* @lnReturnA, i64 0, i64 %tmp_17_i
  store float %lnReturn, float* %lnReturnA_addr, align 4
  %empty_51 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str4, i32 %tmp_80_i)
  %i_4 = add nsw i32 %i_i, 1
  store float %tmp_14_i, float* %tmp_2_i, align 4
  br label %3

.preheader.i:                                     ; preds = %.preheader.i.preheader, %11
  %column_index_i = phi i31 [ %column_index, %11 ], [ 1, %.preheader.i.preheader ]
  %column_index_cast_i = zext i31 %column_index_i to i32
  %tmp_6_i = icmp slt i32 %column_index_cast_i, %NUMBER_OF_INDICES_read
  br i1 %tmp_6_i, label %5, label %frontEnd.1.exit

; <label>:5                                       ; preds = %.preheader.i
  %tmp_42 = trunc i31 %column_index_i to i1
  %empty_52 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483646, i64 0)
  %in_indices_data_V_read_2 = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %in_indices_data_V)
  %tmp_10_i = bitcast i32 %in_indices_data_V_read_2 to float
  %tmp1_keep_V_1 = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_keep_V)
  store volatile i4 %tmp1_keep_V_1, i4* %tmp1_keep_V_i, align 4
  %tmp1_strb_V_1 = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_strb_V)
  store volatile i4 %tmp1_strb_V_1, i4* %tmp1_strb_V_i, align 1
  %tmp1_user_V_1 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_user_V)
  store volatile i1 %tmp1_user_V_1, i1* %tmp1_user_V_i, align 2
  %tmp1_last_V_1 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_last_V)
  store volatile i1 %tmp1_last_V_1, i1* %tmp1_last_V_i, align 1
  %tmp1_id_V_1 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_id_V)
  store volatile i1 %tmp1_id_V_1, i1* %tmp1_id_V_i, align 4
  %tmp1_dest_V_1 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_dest_V)
  store volatile i1 %tmp1_dest_V_1, i1* %tmp1_dest_V_i, align 1
  br label %6

; <label>:6                                       ; preds = %10, %5
  %shift_reg_load_i = phi float [ %tmp_10_i, %5 ], [ %shift_reg_load_i_shift_reg_lo, %10 ]
  %i1_i = phi i32 [ 1, %5 ], [ %i_5, %10 ]
  %tmp_18_i = icmp sgt i32 %i1_i, %tmp_1_i
  br i1 %tmp_18_i, label %11, label %7

; <label>:7                                       ; preds = %6
  %shift_reg_load = load float* %shift_reg_load1_i, align 4
  %tmp_43 = trunc i32 %i1_i to i31
  call void (...)* @_ssdm_op_SpecLoopName([33 x i8]* @p_str5) nounwind
  %tmp_81_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([33 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_19_i = icmp eq i32 %i1_i, 1
  %in_indices_data_V_read_3 = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %in_indices_data_V)
  %in_indices_keep_V_read_2 = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_keep_V)
  store volatile i4 %in_indices_keep_V_read_2, i4* %tmp1_keep_V_i, align 4
  %in_indices_strb_V_read_2 = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_strb_V)
  store volatile i4 %in_indices_strb_V_read_2, i4* %tmp1_strb_V_i, align 1
  %in_indices_user_V_read_2 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_user_V)
  store volatile i1 %in_indices_user_V_read_2, i1* %tmp1_user_V_i, align 2
  %in_indices_last_V_read_2 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_last_V)
  store volatile i1 %in_indices_last_V_read_2, i1* %tmp1_last_V_i, align 1
  %in_indices_id_V_read_2 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_id_V)
  store volatile i1 %in_indices_id_V_read_2, i1* %tmp1_id_V_i, align 4
  %in_indices_dest_V_read_2 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_dest_V)
  store volatile i1 %in_indices_dest_V_read_2, i1* %tmp1_dest_V_i, align 1
  %shift_reg_load_i_shift_reg_lo = select i1 %tmp_19_i, float %shift_reg_load_i, float %shift_reg_load
  %tmp_26_i = bitcast i32 %in_indices_data_V_read_3 to float
  %tmp_27_i = fdiv float %shift_reg_load_i_shift_reg_lo, %tmp_26_i
  %lnReturn_2 = call float @llvm.log.f32(float %tmp_27_i)
  %tmp_28_i = zext i32 %i1_i to i64
  %weight_rom_addr_2 = getelementptr inbounds [252 x float]* @weight_rom, i64 0, i64 %tmp_28_i
  %weight = load float* %weight_rom_addr_2, align 4
  %tmp_29_i = add i31 %tmp_43, -1
  %tmp_30_i = zext i31 %tmp_29_i to i64
  %lnReturnA_addr_1 = getelementptr inbounds [252 x float]* @lnReturnA, i64 0, i64 %tmp_30_i
  %lnReturnA_temp = load float* %lnReturnA_addr_1, align 4
  %weight_returnA_temp = fmul float %lnReturnA_temp, %weight
  %tmp_31_i = fmul float %lnReturnA_temp, %lnReturnA_temp
  %weight_returnSquareA_temp = fmul float %tmp_31_i, %weight
  %weight_returnB_temp = fmul float %lnReturn_2, %weight
  %tmp_32_i = fmul float %lnReturn_2, %lnReturn_2
  %weight_returnSquareB_temp = fmul float %tmp_32_i, %weight
  %tmp_33_i = fmul float %lnReturnA_temp, %lnReturn_2
  %weight_returnA_returnB_temp = fmul float %tmp_33_i, %weight
  br i1 %tmp_42, label %8, label %9

; <label>:8                                       ; preds = %7
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %ln_returnA_out_c1_V, float %lnReturnA_temp)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnSquareA_out_c1_V, float %weight_returnSquareA_temp)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnA_out_c1_V, float %weight_returnA_temp)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_out_c1_V, float %sum_weight)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %ln_returnB_out_c1_V, float %lnReturn_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnSquareB_out_c1_V, float %weight_returnSquareB_temp)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnB_out_c1_V, float %weight_returnB_temp)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnA_returnB_out_c1_s, float %weight_returnA_returnB_temp)
  br label %10

; <label>:9                                       ; preds = %7
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %ln_returnA_out_c2_V, float %lnReturnA_temp)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnSquareA_out_c2_V, float %weight_returnSquareA_temp)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnA_out_c2_V, float %weight_returnA_temp)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_out_c2_V, float %sum_weight)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %ln_returnB_out_c2_V, float %lnReturn_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnSquareB_out_c2_V, float %weight_returnSquareB_temp)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnB_out_c2_V, float %weight_returnB_temp)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnA_returnB_out_c2_s, float %weight_returnA_returnB_temp)
  br label %10

; <label>:10                                      ; preds = %9, %8
  %empty_53 = call i32 (...)* @_ssdm_op_SpecRegionEnd([33 x i8]* @p_str5, i32 %tmp_81_i)
  %i_5 = add nsw i32 %i1_i, 1
  store float %tmp_26_i, float* %shift_reg_load1_i, align 4
  br label %6

; <label>:11                                      ; preds = %6
  %column_index = add i31 %column_index_i, 1
  br label %.preheader.i

frontEnd.1.exit:                                  ; preds = %.preheader.i
  ret void
}

define internal fastcc void @correlation_accel_v4_backEnd(i32* %NUMBER_OF_DAYS, i32* %NUMBER_OF_INDICES, float* %sum_weight_in_c1_V, float* %sum_return_in_c1_V, float* %sum_weight_returnSquare_in_c1_s, float* %sum_weight_return_in_c1_V, float* %sum_weight_returnA_returnB_in_s, float* %sum_returnA_in_c1_V, float* %sum_weight_returnSquareA_in_c1, float* %sum_weight_returnA_in_c1_V, float* %sum_weight_in_c2_V, float* %sum_return_in_c2_V, float* %sum_weight_returnSquare_in_c2_s, float* %sum_weight_return_in_c2_V, float* %sum_weight_returnA_returnB_in_2, float* %sum_returnA_in_c2_V, float* %sum_weight_returnSquareA_in_c2, float* %sum_weight_returnA_in_c2_V, i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i1* %out_correlation_dest_V, i1* %out_correlation_id_V, i1* %out_correlation_last_V, i1* %out_correlation_user_V, i4* %out_correlation_strb_V, i4* %out_correlation_keep_V, i32* %out_correlation_data_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES, [8 x i8]* @str202, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str202, [8 x i8]* @str202, [8 x i8]* @str202)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS, [8 x i8]* @str201, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str201, [8 x i8]* @str201, [8 x i8]* @str201)
  %NUMBER_OF_INDICES_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %NUMBER_OF_INDICES)
  %NUMBER_OF_DAYS_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %NUMBER_OF_DAYS)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_in_c2_V, [8 x i8]* @str143, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str144, [1 x i8]* @str144, [8 x i8]* @str143)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquareA_in_c2, [8 x i8]* @str139, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str140, [1 x i8]* @str140, [8 x i8]* @str139)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_returnA_in_c2_V, [8 x i8]* @str135, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str136, [1 x i8]* @str136, [8 x i8]* @str135)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_returnB_in_2, [8 x i8]* @str131, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str132, [1 x i8]* @str132, [8 x i8]* @str131)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_return_in_c2_V, [8 x i8]* @str127, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str128, [1 x i8]* @str128, [8 x i8]* @str127)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquare_in_c2_s, [8 x i8]* @str123, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str124, [1 x i8]* @str124, [8 x i8]* @str123)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_return_in_c2_V, [8 x i8]* @str119, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str120, [1 x i8]* @str120, [8 x i8]* @str119)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_in_c2_V, [8 x i8]* @str115, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str116, [1 x i8]* @str116, [8 x i8]* @str115)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_in_c1_V, [8 x i8]* @str111, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str112, [1 x i8]* @str112, [8 x i8]* @str111)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquareA_in_c1, [8 x i8]* @str107, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str108, [1 x i8]* @str108, [8 x i8]* @str107)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_returnA_in_c1_V, [8 x i8]* @str103, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str104, [1 x i8]* @str104, [8 x i8]* @str103)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_returnB_in_s, [8 x i8]* @str99, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str100, [1 x i8]* @str100, [8 x i8]* @str99)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_return_in_c1_V, [8 x i8]* @str95, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str96, [1 x i8]* @str96, [8 x i8]* @str95)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquare_in_c1_s, [8 x i8]* @str91, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str92, [1 x i8]* @str92, [8 x i8]* @str91)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_return_in_c1_V, [8 x i8]* @str87, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str88, [1 x i8]* @str88, [8 x i8]* @str87)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_in_c1_V, [8 x i8]* @str83, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str84, [1 x i8]* @str84, [8 x i8]* @str83)
  %tmp_i = add nsw i32 %NUMBER_OF_DAYS_read, -1
  %tmp_i_54 = sitofp i32 %tmp_i to float
  %tmp_44_i = add nsw i32 %NUMBER_OF_INDICES_read, -1
  br label %0

; <label>:0                                       ; preds = %4, %entry
  %column_index_i = phi i31 [ 1, %entry ], [ %column_index, %4 ]
  %column_index_cast_i = zext i31 %column_index_i to i32
  %tmp_45_i = icmp slt i32 %column_index_cast_i, %NUMBER_OF_INDICES_read
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483646, i64 0)
  br i1 %tmp_45_i, label %1, label %backEnd.1.exit

; <label>:1                                       ; preds = %0
  %tmp = trunc i31 %column_index_i to i1
  br i1 %tmp, label %2, label %3

; <label>:2                                       ; preds = %1
  %tmp_68 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_in_c1_V)
  %tmp_69 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_return_in_c1_V)
  %tmp_70 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnSquare_in_c1_s)
  %tmp_71 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_return_in_c1_V)
  %tmp_72 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnA_returnB_in_s)
  %tmp_73 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_returnA_in_c1_V)
  %tmp_74 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnSquareA_in_c1)
  %tmp_75 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnA_in_c1_V)
  br label %4

; <label>:3                                       ; preds = %1
  %tmp_76 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_in_c2_V)
  %tmp_77 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_return_in_c2_V)
  %tmp_78 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnSquare_in_c2_s)
  %tmp_79 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_return_in_c2_V)
  %tmp_80 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnA_returnB_in_2)
  %tmp_81 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_returnA_in_c2_V)
  %tmp_82 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnSquareA_in_c2)
  %tmp_83 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnA_in_c2_V)
  br label %4

; <label>:4                                       ; preds = %3, %2
  %sum_weight2_i = phi float [ %tmp_68, %2 ], [ %tmp_76, %3 ]
  %sum_return2_i = phi float [ %tmp_69, %2 ], [ %tmp_77, %3 ]
  %sum_weight_returnSquare2_i = phi float [ %tmp_70, %2 ], [ %tmp_78, %3 ]
  %sum_weight_return2_i = phi float [ %tmp_71, %2 ], [ %tmp_79, %3 ]
  %sum_weight_returnA_returnB2_i = phi float [ %tmp_72, %2 ], [ %tmp_80, %3 ]
  %sum_returnA2_i = phi float [ %tmp_73, %2 ], [ %tmp_81, %3 ]
  %sum_weight_returnSquareA2_i = phi float [ %tmp_74, %2 ], [ %tmp_82, %3 ]
  %sum_weight_returnA2_i = phi float [ %tmp_75, %2 ], [ %tmp_83, %3 ]
  %meanReturnA = fdiv float %sum_returnA2_i, %tmp_i_54
  %meanReturnB = fdiv float %sum_return2_i, %tmp_i_54
  %tmp_58_i = fmul float %meanReturnA, 2.000000e+00
  %tmp_59_i = fmul float %tmp_58_i, %sum_weight_returnA2_i
  %tmp_60_i = fsub float %sum_weight_returnSquareA2_i, %tmp_59_i
  %tmp_61_i = fdiv float %tmp_60_i, %sum_weight2_i
  %tmp_62_i = fmul float %meanReturnA, %meanReturnA
  %tmp_63_i = fadd float %tmp_61_i, %tmp_62_i
  %volatilityA = call float @llvm.sqrt.f32(float %tmp_63_i)
  %tmp_64_i = fmul float %meanReturnB, 2.000000e+00
  %tmp_65_i = fmul float %tmp_64_i, %sum_weight_return2_i
  %tmp_66_i = fsub float %sum_weight_returnSquare2_i, %tmp_65_i
  %tmp_67_i = fdiv float %tmp_66_i, %sum_weight2_i
  %tmp_68_i = fmul float %meanReturnB, %meanReturnB
  %tmp_69_i = fadd float %tmp_67_i, %tmp_68_i
  %volatilityB = call float @llvm.sqrt.f32(float %tmp_69_i)
  %tmp_70_i = fmul float %meanReturnA, %sum_weight_return2_i
  %tmp_71_i = fsub float %sum_weight_returnA_returnB2_i, %tmp_70_i
  %tmp_72_i = fmul float %meanReturnB, %sum_weight_returnA2_i
  %tmp_73_i = fsub float %tmp_71_i, %tmp_72_i
  %tmp_74_i = fdiv float %tmp_73_i, %sum_weight2_i
  %tmp_80_i = fmul float %meanReturnA, %meanReturnB
  %covariance = fadd float %tmp_74_i, %tmp_80_i
  %tmp_81_i = fmul float %volatilityA, %volatilityB
  %corr_temp = fdiv float %covariance, %tmp_81_i
  %val_assign = bitcast float %corr_temp to i32
  call void @_ssdm_op_Write.axis.volatile.i32P(i32* %out_correlation_data_V, i32 %val_assign)
  call void @_ssdm_op_Write.axis.volatile.i4P(i4* %out_correlation_keep_V, i4 -1)
  call void @_ssdm_op_Write.axis.volatile.i4P(i4* %out_correlation_strb_V, i4 1)
  call void @_ssdm_op_Write.axis.volatile.i1P(i1* %out_correlation_user_V, i1 false)
  %tmp_84_i = icmp eq i32 %column_index_cast_i, %tmp_44_i
  call void @_ssdm_op_Write.axis.volatile.i1P(i1* %out_correlation_last_V, i1 %tmp_84_i)
  call void @_ssdm_op_Write.axis.volatile.i1P(i1* %out_correlation_id_V, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i1P(i1* %out_correlation_dest_V, i1 false)
  %column_index = add i31 %column_index_i, 1
  br label %0

backEnd.1.exit:                                   ; preds = %0
  ret void
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_55 = trunc i32 %empty to i31
  ret i31 %empty_55
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i32 @_ssdm_op_Read.ap_fifo.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak void @_ssdm_op_Write.axis.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i4P(i4*, i4) {
entry:
  store i4 %1, i4* %0
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak float @_ssdm_op_Read.ap_fifo.volatile.floatP(float*) {
entry:
  %empty = call float @_autotb_FifoRead_float(float* %0)
  ret float %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.floatP(float*, float) {
entry:
  %empty = call float @_autotb_FifoWrite_float(float* %0, float %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak i32 @_ssdm_op_Read.axis.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i4 @_ssdm_op_Read.axis.volatile.i4P(i4*) {
entry:
  %empty = load i4* %0
  ret i4 %empty
}

define weak i1 @_ssdm_op_Read.axis.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_56 = and i32 %0, %empty
  %empty_57 = icmp ne i32 %empty_56, 0
  ret i1 %empty_57
}

declare i32 @_autotb_FifoRead_i32(i32*)

declare float @_autotb_FifoRead_float(float*)

declare float @_autotb_FifoWrite_float(float*, float)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i31.i32.i32(i31, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"number_of_days", metadata !11, metadata !"int", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"number_of_indices", metadata !11, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"in_indices.data.V", metadata !21, metadata !"uint32", i32 0, i32 31}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 2519999, i32 1}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 3, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"in_indices.keep.V", metadata !21, metadata !"uint4", i32 0, i32 3}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 3, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"in_indices.strb.V", metadata !21, metadata !"uint4", i32 0, i32 3}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"in_indices.user.V", metadata !21, metadata !"uint1", i32 0, i32 0}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 0, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"in_indices.last.V", metadata !21, metadata !"uint1", i32 0, i32 0}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 0, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"in_indices.id.V", metadata !21, metadata !"uint1", i32 0, i32 0}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 0, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"in_indices.dest.V", metadata !21, metadata !"uint1", i32 0, i32 0}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"out_correlation.data.V", metadata !51, metadata !"uint32", i32 0, i32 31}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 49994999, i32 1}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 3, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"out_correlation.keep.V", metadata !51, metadata !"uint4", i32 0, i32 3}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 3, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"out_correlation.strb.V", metadata !51, metadata !"uint4", i32 0, i32 3}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 0, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"out_correlation.user.V", metadata !51, metadata !"uint1", i32 0, i32 0}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 0, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"out_correlation.last.V", metadata !51, metadata !"uint1", i32 0, i32 0}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 0, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"out_correlation.id.V", metadata !51, metadata !"uint1", i32 0, i32 0}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 0, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"out_correlation.dest.V", metadata !51, metadata !"uint1", i32 0, i32 0}
