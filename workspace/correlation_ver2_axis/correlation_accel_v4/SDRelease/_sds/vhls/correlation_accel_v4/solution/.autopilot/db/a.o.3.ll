; ModuleID = '/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease/_sds/vhls/correlation_accel_v4/solution/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=23 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=4 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@weight_rom = internal unnamed_addr global [252 x float] zeroinitializer, align 16 ; [#uses=5 type=[252 x float]*]
@lnReturnA = internal unnamed_addr global [252 x float] zeroinitializer, align 16 ; [#uses=2 type=[252 x float]*]
@p_str4 = private unnamed_addr constant [17 x i8] c"LOOP_FIRST_INDEX\00", align 1 ; [#uses=3 type=[17 x i8]*]
@p_str5 = private unnamed_addr constant [33 x i8] c"ACCUMULATION_LOOP_FLOATING_INDEX\00", align 1 ; [#uses=3 type=[33 x i8]*]
@p_str7 = private unnamed_addr constant [14 x i8] c"ACCUMULATIONS\00", align 1 ; [#uses=6 type=[14 x i8]*]
@p_str8 = private unnamed_addr constant [16 x i8] c"LAST_ACCUM_LOOP\00", align 1 ; [#uses=6 type=[16 x i8]*]
@p_str9 = private unnamed_addr constant [16 x i8] c"INIT_WEIGHT_ROM\00", align 1 ; [#uses=1 type=[16 x i8]*]
@p_str10 = private unnamed_addr constant [19 x i8] c"COMP_SUM_OF_WEIGHT\00", align 1 ; [#uses=1 type=[19 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [21 x i8] c"correlation_accel_v4\00" ; [#uses=1 type=[21 x i8]*]
@str17 = internal constant [16 x i8] c"ln_returnA_c1.V\00" ; [#uses=1 type=[16 x i8]*]
@str18 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str19 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str20 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str21 = internal constant [26 x i8] c"weight_returnSquareA_c1.V\00" ; [#uses=1 type=[26 x i8]*]
@str22 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str23 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str24 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str25 = internal constant [20 x i8] c"weight_returnA_c1.V\00" ; [#uses=1 type=[20 x i8]*]
@str26 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str27 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str28 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str29 = internal constant [16 x i8] c"ln_returnA_c2.V\00" ; [#uses=1 type=[16 x i8]*]
@str30 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str31 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str32 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str33 = internal constant [26 x i8] c"weight_returnSquareA_c2.V\00" ; [#uses=1 type=[26 x i8]*]
@str34 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str35 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str36 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str37 = internal constant [20 x i8] c"weight_returnA_c2.V\00" ; [#uses=1 type=[20 x i8]*]
@str38 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str39 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str40 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str41 = internal constant [16 x i8] c"sum_weight_c1.V\00" ; [#uses=1 type=[16 x i8]*]
@str42 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str43 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str44 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str45 = internal constant [16 x i8] c"ln_returnB_c1.V\00" ; [#uses=1 type=[16 x i8]*]
@str46 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str47 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str48 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str49 = internal constant [26 x i8] c"weight_returnSquareB_c1.V\00" ; [#uses=1 type=[26 x i8]*]
@str50 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str51 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str52 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str53 = internal constant [20 x i8] c"weight_returnB_c1.V\00" ; [#uses=1 type=[20 x i8]*]
@str54 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str55 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str56 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str57 = internal constant [28 x i8] c"weight_returnA_returnB_c1.V\00" ; [#uses=1 type=[28 x i8]*]
@str58 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str59 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str60 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str61 = internal constant [16 x i8] c"sum_weight_c2.V\00" ; [#uses=1 type=[16 x i8]*]
@str62 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str63 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str64 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str65 = internal constant [16 x i8] c"ln_returnB_c2.V\00" ; [#uses=1 type=[16 x i8]*]
@str66 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str67 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str68 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str69 = internal constant [26 x i8] c"weight_returnSquareB_c2.V\00" ; [#uses=1 type=[26 x i8]*]
@str70 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str71 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str72 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str73 = internal constant [20 x i8] c"weight_returnB_c2.V\00" ; [#uses=1 type=[20 x i8]*]
@str74 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str75 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str76 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str77 = internal constant [28 x i8] c"weight_returnA_returnB_c2.V\00" ; [#uses=1 type=[28 x i8]*]
@str78 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str79 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str80 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str81 = internal constant [23 x i8] c"sum_weight_stage2_c1.V\00" ; [#uses=1 type=[23 x i8]*]
@str82 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str83 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str84 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str85 = internal constant [23 x i8] c"sum_return_stage2_c1.V\00" ; [#uses=1 type=[23 x i8]*]
@str86 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str87 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str88 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str89 = internal constant [36 x i8] c"sum_weight_returnSquare_stage2_c1.V\00" ; [#uses=1 type=[36 x i8]*]
@str90 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str91 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str92 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str93 = internal constant [30 x i8] c"sum_weight_return_stage2_c1.V\00" ; [#uses=1 type=[30 x i8]*]
@str94 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str95 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str96 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str97 = internal constant [39 x i8] c"sum_weight_returnA_returnB_stage2_c1.V\00" ; [#uses=1 type=[39 x i8]*]
@str98 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str99 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str100 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str101 = internal constant [24 x i8] c"sum_returnA_stage2_c1.V\00" ; [#uses=1 type=[24 x i8]*]
@str102 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str103 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str104 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str105 = internal constant [37 x i8] c"sum_weight_returnSquareA_stage2_c1.V\00" ; [#uses=1 type=[37 x i8]*]
@str106 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str107 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str108 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str109 = internal constant [31 x i8] c"sum_weight_returnA_stage2_c1.V\00" ; [#uses=1 type=[31 x i8]*]
@str110 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str111 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=8 type=[8 x i8]*]
@str112 = internal constant [1 x i8] zeroinitializer ; [#uses=8 type=[1 x i8]*]
@str113 = internal constant [23 x i8] c"sum_weight_stage2_c2.V\00" ; [#uses=1 type=[23 x i8]*]
@str114 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str115 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str116 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str117 = internal constant [23 x i8] c"sum_return_stage2_c2.V\00" ; [#uses=1 type=[23 x i8]*]
@str118 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str119 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str120 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str121 = internal constant [36 x i8] c"sum_weight_returnSquare_stage2_c2.V\00" ; [#uses=1 type=[36 x i8]*]
@str122 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str123 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str124 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str125 = internal constant [30 x i8] c"sum_weight_return_stage2_c2.V\00" ; [#uses=1 type=[30 x i8]*]
@str126 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str127 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str128 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str129 = internal constant [39 x i8] c"sum_weight_returnA_returnB_stage2_c2.V\00" ; [#uses=1 type=[39 x i8]*]
@str130 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str131 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str132 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str133 = internal constant [24 x i8] c"sum_returnA_stage2_c2.V\00" ; [#uses=1 type=[24 x i8]*]
@str134 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str135 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str136 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str137 = internal constant [37 x i8] c"sum_weight_returnSquareA_stage2_c2.V\00" ; [#uses=1 type=[37 x i8]*]
@str138 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str139 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str140 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str141 = internal constant [31 x i8] c"sum_weight_returnA_stage2_c2.V\00" ; [#uses=1 type=[31 x i8]*]
@str142 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str143 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str144 = internal constant [1 x i8] zeroinitializer ; [#uses=4 type=[1 x i8]*]
@str152 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str154 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str156 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str158 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str161 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str163 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str166 = internal constant [25 x i8] c"number_of_days15.channel\00" ; [#uses=1 type=[25 x i8]*]
@str167 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str168 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str169 = internal constant [25 x i8] c"number_of_days16.channel\00" ; [#uses=1 type=[25 x i8]*]
@str170 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str171 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str172 = internal constant [28 x i8] c"number_of_indices17.channel\00" ; [#uses=1 type=[28 x i8]*]
@str173 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str174 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str175 = internal constant [28 x i8] c"number_of_indices18.channel\00" ; [#uses=1 type=[28 x i8]*]
@str176 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str177 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str178 = internal constant [25 x i8] c"number_of_days19.channel\00" ; [#uses=1 type=[25 x i8]*]
@str179 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str180 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str181 = internal constant [28 x i8] c"number_of_indices20.channel\00" ; [#uses=1 type=[28 x i8]*]
@str182 = internal constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@str183 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str186 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str187 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str188 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str189 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str192 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str193 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str194 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str195 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str197 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str198 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str201 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]
@str202 = internal constant [8 x i8] c"ap_fifo\00" ; [#uses=4 type=[8 x i8]*]

; [#uses=46]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

; [#uses=125]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=8]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=362]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=2]
declare float @llvm.log.f32(float) nounwind readonly

; [#uses=2]
declare float @llvm.sqrt.f32(float) nounwind readonly

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=38]
define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

; [#uses=16]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define internal fastcc void @correlation_accel_v4_midEnd(i32* %NUMBER_OF_DAYS, i32* %NUMBER_OF_INDICES, float* %ln_returnA_in_V, float* %weight_returnSquareA_in_V, float* %weight_returnA_in_V, float* %sum_weight_in_V, float* %ln_returnB_in_V, float* %weight_returnSquareB_in_V, float* %weight_returnB_in_V, float* %weight_returnA_returnB_in_V, float* %sum_weight_out_V, float* %sum_return_out_V, float* %sum_weight_returnSquare_out_V, float* %sum_weight_return_out_V, float* %sum_weight_returnA_returnB_out, float* %sum_returnA_out_V, float* %sum_weight_returnSquareA_out_V, float* %sum_weight_returnA_out_V, i32* %NUMBER_OF_DAYS_out, i32* %NUMBER_OF_INDICES_out) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES_out, [8 x i8]* @str195, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str195, [8 x i8]* @str195, [8 x i8]* @str195)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS_out, [8 x i8]* @str194, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str194, [8 x i8]* @str194, [8 x i8]* @str194)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES, [8 x i8]* @str193, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str193, [8 x i8]* @str193, [8 x i8]* @str193)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS, [8 x i8]* @str192, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str192, [8 x i8]* @str192, [8 x i8]* @str192)
  %acc_returnA = alloca [6 x float], align 16     ; [#uses=8 type=[6 x float]*]
  %acc_weight_returnSquareA = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  %acc_weight_returnA = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  %acc_returnB = alloca [6 x float], align 16     ; [#uses=8 type=[6 x float]*]
  %acc_weight_returnSquareB = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  %acc_weight_returnB = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  %acc_weight_returnA_returnB = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES_out, [8 x i8]* @str163, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str163, [8 x i8]* @str163, [8 x i8]* @str163)
  %NUMBER_OF_INDICES_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %NUMBER_OF_INDICES) ; [#uses=4 type=i32]
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %NUMBER_OF_INDICES_out, i32 %NUMBER_OF_INDICES_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS_out, [8 x i8]* @str161, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str161, [8 x i8]* @str161, [8 x i8]* @str161)
  %NUMBER_OF_DAYS_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %NUMBER_OF_DAYS) ; [#uses=2 type=i32]
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
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_returnA}, metadata !7), !dbg !74 ; [debug line = 641:9] [debug variable = acc_returnA]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnSquareA}, metadata !75), !dbg !76 ; [debug line = 642:9] [debug variable = acc_weight_returnSquareA]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnA}, metadata !77), !dbg !78 ; [debug line = 643:9] [debug variable = acc_weight_returnA]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_returnB}, metadata !79), !dbg !80 ; [debug line = 645:9] [debug variable = acc_returnB]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnSquareB}, metadata !81), !dbg !82 ; [debug line = 646:9] [debug variable = acc_weight_returnSquareB]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnB}, metadata !83), !dbg !84 ; [debug line = 647:9] [debug variable = acc_weight_returnB]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnA_returnB}, metadata !85), !dbg !86 ; [debug line = 649:9] [debug variable = acc_weight_returnA_returnB]
  call void @llvm.dbg.value(metadata !{i32 %NUMBER_OF_DAYS_read}, i64 0, metadata !87), !dbg !88 ; [debug line = 587:7] [debug variable = NUMBER_OF_DAYS]
  call void @llvm.dbg.value(metadata !{i32 %NUMBER_OF_INDICES_read}, i64 0, metadata !89), !dbg !90 ; [debug line = 588:7] [debug variable = NUMBER_OF_INDICES]
  call void @llvm.dbg.value(metadata !{float* %ln_returnA_in_V}, i64 0, metadata !91), !dbg !96 ; [debug line = 591:23] [debug variable = ln_returnA_in.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareA_in_V}, i64 0, metadata !97), !dbg !99 ; [debug line = 592:23] [debug variable = weight_returnSquareA_in.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_in_V}, i64 0, metadata !100), !dbg !102 ; [debug line = 593:23] [debug variable = weight_returnA_in.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_in_V}, i64 0, metadata !103), !dbg !105 ; [debug line = 595:23] [debug variable = sum_weight_in.V]
  call void @llvm.dbg.value(metadata !{float* %ln_returnB_in_V}, i64 0, metadata !106), !dbg !108 ; [debug line = 596:23] [debug variable = ln_returnB_in.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareB_in_V}, i64 0, metadata !109), !dbg !111 ; [debug line = 597:23] [debug variable = weight_returnSquareB_in.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnB_in_V}, i64 0, metadata !112), !dbg !114 ; [debug line = 598:23] [debug variable = weight_returnB_in.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_returnB_in_V}, i64 0, metadata !115), !dbg !117 ; [debug line = 599:23] [debug variable = weight_returnA_returnB_in.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_out_V}, i64 0, metadata !118), !dbg !120 ; [debug line = 601:23] [debug variable = sum_weight_out.V]
  call void @llvm.dbg.value(metadata !{float* %sum_return_out_V}, i64 0, metadata !121), !dbg !123 ; [debug line = 602:23] [debug variable = sum_return_out.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquare_out_V}, i64 0, metadata !124), !dbg !126 ; [debug line = 603:23] [debug variable = sum_weight_returnSquare_out.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_return_out_V}, i64 0, metadata !127), !dbg !129 ; [debug line = 604:23] [debug variable = sum_weight_return_out.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_returnB_out}, i64 0, metadata !130), !dbg !132 ; [debug line = 605:23] [debug variable = sum_weight_returnA_returnB_out.V]
  call void @llvm.dbg.value(metadata !{float* %sum_returnA_out_V}, i64 0, metadata !133), !dbg !135 ; [debug line = 606:23] [debug variable = sum_returnA_out.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquareA_out_V}, i64 0, metadata !136), !dbg !138 ; [debug line = 607:23] [debug variable = sum_weight_returnSquareA_out.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_out_V}, i64 0, metadata !139), !dbg !141 ; [debug line = 608:23] [debug variable = sum_weight_returnA_out.V]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %NUMBER_OF_INDICES_read, i32 31), !dbg !142 ; [#uses=1 type=i1] [debug line = 638:57]
  %p_neg_i = sub i32 0, %NUMBER_OF_INDICES_read, !dbg !142 ; [#uses=1 type=i32] [debug line = 638:57]
  %p_lshr_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg_i, i32 1, i32 31), !dbg !142 ; [#uses=1 type=i31] [debug line = 638:57]
  %tmp_s = zext i31 %p_lshr_i to i32, !dbg !142   ; [#uses=1 type=i32] [debug line = 638:57]
  %p_neg_t_i = sub i32 0, %tmp_s, !dbg !142       ; [#uses=1 type=i32] [debug line = 638:57]
  %p_lshr_f_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %NUMBER_OF_INDICES_read, i32 1, i32 31), !dbg !142 ; [#uses=1 type=i31] [debug line = 638:57]
  %tmp_1 = zext i31 %p_lshr_f_i to i32, !dbg !142 ; [#uses=1 type=i32] [debug line = 638:57]
  %upper_bound = select i1 %tmp, i32 %p_neg_t_i, i32 %tmp_1, !dbg !142 ; [#uses=1 type=i32] [debug line = 638:57]
  call void @llvm.dbg.value(metadata !{i32 %upper_bound}, i64 0, metadata !143), !dbg !142 ; [debug line = 638:57] [debug variable = upper_bound]
  %tmp_i = add nsw i32 %NUMBER_OF_DAYS_read, -1, !dbg !144 ; [#uses=1 type=i32] [debug line = 684:16]
  %acc_returnB_addr = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 0, !dbg !146 ; [#uses=1 type=float*] [debug line = 671:2]
  %acc_weight_returnSquareB_addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 0, !dbg !149 ; [#uses=1 type=float*] [debug line = 672:4]
  %acc_weight_returnB_addr = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 0, !dbg !150 ; [#uses=1 type=float*] [debug line = 673:4]
  %acc_weight_returnA_returnB_add = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 0, !dbg !151 ; [#uses=1 type=float*] [debug line = 675:4]
  %acc_returnA_addr = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 0, !dbg !152 ; [#uses=1 type=float*] [debug line = 677:4]
  %acc_weight_returnSquareA_addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 0, !dbg !153 ; [#uses=1 type=float*] [debug line = 678:4]
  %acc_weight_returnA_addr = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 0, !dbg !154 ; [#uses=1 type=float*] [debug line = 679:4]
  %acc_returnB_addr_1 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 1, !dbg !146 ; [#uses=1 type=float*] [debug line = 671:2]
  %acc_weight_returnSquareB_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 1, !dbg !149 ; [#uses=1 type=float*] [debug line = 672:4]
  %acc_weight_returnB_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 1, !dbg !150 ; [#uses=1 type=float*] [debug line = 673:4]
  %acc_weight_returnA_returnB_add_1 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 1, !dbg !151 ; [#uses=1 type=float*] [debug line = 675:4]
  %acc_returnA_addr_1 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 1, !dbg !152 ; [#uses=1 type=float*] [debug line = 677:4]
  %acc_weight_returnSquareA_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 1, !dbg !153 ; [#uses=1 type=float*] [debug line = 678:4]
  %acc_weight_returnA_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 1, !dbg !154 ; [#uses=1 type=float*] [debug line = 679:4]
  %acc_returnB_addr_2 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 2, !dbg !146 ; [#uses=1 type=float*] [debug line = 671:2]
  %acc_weight_returnSquareB_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 2, !dbg !149 ; [#uses=1 type=float*] [debug line = 672:4]
  %acc_weight_returnB_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 2, !dbg !150 ; [#uses=1 type=float*] [debug line = 673:4]
  %acc_weight_returnA_returnB_add_2 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 2, !dbg !151 ; [#uses=1 type=float*] [debug line = 675:4]
  %acc_returnA_addr_2 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 2, !dbg !152 ; [#uses=1 type=float*] [debug line = 677:4]
  %acc_weight_returnSquareA_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 2, !dbg !153 ; [#uses=1 type=float*] [debug line = 678:4]
  %acc_weight_returnA_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 2, !dbg !154 ; [#uses=1 type=float*] [debug line = 679:4]
  %acc_returnB_addr_3 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 3, !dbg !146 ; [#uses=1 type=float*] [debug line = 671:2]
  %acc_weight_returnSquareB_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 3, !dbg !149 ; [#uses=1 type=float*] [debug line = 672:4]
  %acc_weight_returnB_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 3, !dbg !150 ; [#uses=1 type=float*] [debug line = 673:4]
  %acc_weight_returnA_returnB_add_3 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 3, !dbg !151 ; [#uses=1 type=float*] [debug line = 675:4]
  %acc_returnA_addr_3 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 3, !dbg !152 ; [#uses=1 type=float*] [debug line = 677:4]
  %acc_weight_returnSquareA_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 3, !dbg !153 ; [#uses=1 type=float*] [debug line = 678:4]
  %acc_weight_returnA_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 3, !dbg !154 ; [#uses=1 type=float*] [debug line = 679:4]
  %acc_returnB_addr_4 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 4, !dbg !146 ; [#uses=1 type=float*] [debug line = 671:2]
  %acc_weight_returnSquareB_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 4, !dbg !149 ; [#uses=1 type=float*] [debug line = 672:4]
  %acc_weight_returnB_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 4, !dbg !150 ; [#uses=1 type=float*] [debug line = 673:4]
  %acc_weight_returnA_returnB_add_4 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 4, !dbg !151 ; [#uses=1 type=float*] [debug line = 675:4]
  %acc_returnA_addr_4 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 4, !dbg !152 ; [#uses=1 type=float*] [debug line = 677:4]
  %acc_weight_returnSquareA_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 4, !dbg !153 ; [#uses=1 type=float*] [debug line = 678:4]
  %acc_weight_returnA_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 4, !dbg !154 ; [#uses=1 type=float*] [debug line = 679:4]
  %acc_returnB_addr_5 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 5, !dbg !146 ; [#uses=1 type=float*] [debug line = 671:2]
  %acc_weight_returnSquareB_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 5, !dbg !149 ; [#uses=1 type=float*] [debug line = 672:4]
  %acc_weight_returnB_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 5, !dbg !150 ; [#uses=1 type=float*] [debug line = 673:4]
  %acc_weight_returnA_returnB_add_5 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 5, !dbg !151 ; [#uses=1 type=float*] [debug line = 675:4]
  %acc_returnA_addr_5 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 5, !dbg !152 ; [#uses=1 type=float*] [debug line = 677:4]
  %acc_weight_returnSquareA_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 5, !dbg !153 ; [#uses=1 type=float*] [debug line = 678:4]
  %acc_weight_returnA_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 5, !dbg !154 ; [#uses=1 type=float*] [debug line = 679:4]
  br label %0, !dbg !155                          ; [debug line = 639:25]

; <label>:0                                       ; preds = %3, %entry
  %column_index_i = phi i32 [ 1, %entry ], [ %column_index, %3 ] ; [#uses=2 type=i32]
  %tmp_1_i = icmp sgt i32 %column_index_i, %upper_bound, !dbg !155 ; [#uses=1 type=i1] [debug line = 639:25]
  br i1 %tmp_1_i, label %midEnd.1.exit, label %.preheader34.0.i, !dbg !155 ; [debug line = 639:25]

.preheader34.0.i:                                 ; preds = %0
  store float 0.000000e+00, float* %acc_returnB_addr, align 16, !dbg !146 ; [debug line = 671:2]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr, align 16, !dbg !149 ; [debug line = 672:4]
  store float 0.000000e+00, float* %acc_weight_returnB_addr, align 16, !dbg !150 ; [debug line = 673:4]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add, align 16, !dbg !151 ; [debug line = 675:4]
  store float 0.000000e+00, float* %acc_returnA_addr, align 16, !dbg !152 ; [debug line = 677:4]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr, align 16, !dbg !153 ; [debug line = 678:4]
  store float 0.000000e+00, float* %acc_weight_returnA_addr, align 16, !dbg !154 ; [debug line = 679:4]
  store float 0.000000e+00, float* %acc_returnB_addr_1, align 4, !dbg !146 ; [debug line = 671:2]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_1, align 4, !dbg !149 ; [debug line = 672:4]
  store float 0.000000e+00, float* %acc_weight_returnB_addr_1, align 4, !dbg !150 ; [debug line = 673:4]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_1, align 4, !dbg !151 ; [debug line = 675:4]
  store float 0.000000e+00, float* %acc_returnA_addr_1, align 4, !dbg !152 ; [debug line = 677:4]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_1, align 4, !dbg !153 ; [debug line = 678:4]
  store float 0.000000e+00, float* %acc_weight_returnA_addr_1, align 4, !dbg !154 ; [debug line = 679:4]
  store float 0.000000e+00, float* %acc_returnB_addr_2, align 8, !dbg !146 ; [debug line = 671:2]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_2, align 8, !dbg !149 ; [debug line = 672:4]
  store float 0.000000e+00, float* %acc_weight_returnB_addr_2, align 8, !dbg !150 ; [debug line = 673:4]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_2, align 8, !dbg !151 ; [debug line = 675:4]
  store float 0.000000e+00, float* %acc_returnA_addr_2, align 8, !dbg !152 ; [debug line = 677:4]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_2, align 8, !dbg !153 ; [debug line = 678:4]
  store float 0.000000e+00, float* %acc_weight_returnA_addr_2, align 8, !dbg !154 ; [debug line = 679:4]
  store float 0.000000e+00, float* %acc_returnB_addr_3, align 4, !dbg !146 ; [debug line = 671:2]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_3, align 4, !dbg !149 ; [debug line = 672:4]
  store float 0.000000e+00, float* %acc_weight_returnB_addr_3, align 4, !dbg !150 ; [debug line = 673:4]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_3, align 4, !dbg !151 ; [debug line = 675:4]
  store float 0.000000e+00, float* %acc_returnA_addr_3, align 4, !dbg !152 ; [debug line = 677:4]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_3, align 4, !dbg !153 ; [debug line = 678:4]
  store float 0.000000e+00, float* %acc_weight_returnA_addr_3, align 4, !dbg !154 ; [debug line = 679:4]
  store float 0.000000e+00, float* %acc_returnB_addr_4, align 16, !dbg !146 ; [debug line = 671:2]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_4, align 16, !dbg !149 ; [debug line = 672:4]
  store float 0.000000e+00, float* %acc_weight_returnB_addr_4, align 16, !dbg !150 ; [debug line = 673:4]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_4, align 16, !dbg !151 ; [debug line = 675:4]
  store float 0.000000e+00, float* %acc_returnA_addr_4, align 16, !dbg !152 ; [debug line = 677:4]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_4, align 16, !dbg !153 ; [debug line = 678:4]
  store float 0.000000e+00, float* %acc_weight_returnA_addr_4, align 16, !dbg !154 ; [debug line = 679:4]
  store float 0.000000e+00, float* %acc_returnB_addr_5, align 4, !dbg !146 ; [debug line = 671:2]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_5, align 4, !dbg !149 ; [debug line = 672:4]
  store float 0.000000e+00, float* %acc_weight_returnB_addr_5, align 4, !dbg !150 ; [debug line = 673:4]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_5, align 4, !dbg !151 ; [debug line = 675:4]
  store float 0.000000e+00, float* %acc_returnA_addr_5, align 4, !dbg !152 ; [debug line = 677:4]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_5, align 4, !dbg !153 ; [debug line = 678:4]
  store float 0.000000e+00, float* %acc_weight_returnA_addr_5, align 4, !dbg !154 ; [debug line = 679:4]
  br label %.preheader33.i, !dbg !144             ; [debug line = 684:16]

.preheader33.i:                                   ; preds = %1, %.preheader34.0.i
  %tmp_9 = phi float [ %tmp_18, %1 ], [ 0.000000e+00, %.preheader34.0.i ] ; [#uses=1 type=float]
  %i1_i = phi i32 [ %i, %1 ], [ 1, %.preheader34.0.i ] ; [#uses=3 type=i32]
  %tmp_9_i = icmp sgt i32 %i1_i, %tmp_i, !dbg !144 ; [#uses=1 type=i1] [debug line = 684:16]
  br i1 %tmp_9_i, label %.preheader.i, label %1, !dbg !144 ; [debug line = 684:16]

; <label>:1                                       ; preds = %.preheader33.i
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str7) nounwind, !dbg !156 ; [debug line = 684:48]
  %tmp_17_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str7), !dbg !158 ; [#uses=1 type=i32] [debug line = 684:87]
  %channel_id = srem i32 %i1_i, 6, !dbg !159      ; [#uses=1 type=i32] [debug line = 696:26]
  call void @llvm.dbg.value(metadata !{i32 %channel_id}, i64 0, metadata !160), !dbg !159 ; [debug line = 696:26] [debug variable = channel_id]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !161 ; [debug line = 699:1]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_in_V}, i64 0, metadata !162), !dbg !167 ; [debug line = 129:56@700:15] [debug variable = stream<float>.V]
  %tmp_18 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_in_V), !dbg !169 ; [#uses=1 type=float] [debug line = 131:9@700:15]
  call void @llvm.dbg.value(metadata !{float %tmp_18}, i64 0, metadata !171), !dbg !169 ; [debug line = 131:9@700:15] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_18}, i64 0, metadata !172), !dbg !168 ; [debug line = 700:15] [debug variable = sum_weight]
  call void @llvm.dbg.value(metadata !{float* %ln_returnA_in_V}, i64 0, metadata !162), !dbg !173 ; [debug line = 129:56@702:21] [debug variable = stream<float>.V]
  %tmp_19 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %ln_returnA_in_V), !dbg !175 ; [#uses=1 type=float] [debug line = 131:9@702:21]
  call void @llvm.dbg.value(metadata !{float %tmp_19}, i64 0, metadata !171), !dbg !175 ; [debug line = 131:9@702:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_19}, i64 0, metadata !176), !dbg !174 ; [debug line = 702:21] [debug variable = lnReturnA_temp]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_in_V}, i64 0, metadata !162), !dbg !177 ; [debug line = 129:56@703:26] [debug variable = stream<float>.V]
  %tmp_20 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnA_in_V), !dbg !179 ; [#uses=1 type=float] [debug line = 131:9@703:26]
  call void @llvm.dbg.value(metadata !{float %tmp_20}, i64 0, metadata !171), !dbg !179 ; [debug line = 131:9@703:26] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_20}, i64 0, metadata !180), !dbg !178 ; [debug line = 703:26] [debug variable = weight_returnA_temp]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareA_in_V}, i64 0, metadata !162), !dbg !181 ; [debug line = 129:56@704:32] [debug variable = stream<float>.V]
  %tmp_21 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnSquareA_in_V), !dbg !183 ; [#uses=1 type=float] [debug line = 131:9@704:32]
  call void @llvm.dbg.value(metadata !{float %tmp_21}, i64 0, metadata !171), !dbg !183 ; [debug line = 131:9@704:32] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_21}, i64 0, metadata !184), !dbg !182 ; [debug line = 704:32] [debug variable = weight_returnSquareA_temp]
  call void @llvm.dbg.value(metadata !{float* %ln_returnB_in_V}, i64 0, metadata !162), !dbg !185 ; [debug line = 129:56@706:21] [debug variable = stream<float>.V]
  %tmp_22 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %ln_returnB_in_V), !dbg !187 ; [#uses=1 type=float] [debug line = 131:9@706:21]
  call void @llvm.dbg.value(metadata !{float %tmp_22}, i64 0, metadata !171), !dbg !187 ; [debug line = 131:9@706:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_22}, i64 0, metadata !188), !dbg !186 ; [debug line = 706:21] [debug variable = lnReturnB_temp]
  call void @llvm.dbg.value(metadata !{float* %weight_returnB_in_V}, i64 0, metadata !162), !dbg !189 ; [debug line = 129:56@707:26] [debug variable = stream<float>.V]
  %tmp_23 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnB_in_V), !dbg !191 ; [#uses=1 type=float] [debug line = 131:9@707:26]
  call void @llvm.dbg.value(metadata !{float %tmp_23}, i64 0, metadata !171), !dbg !191 ; [debug line = 131:9@707:26] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_23}, i64 0, metadata !192), !dbg !190 ; [debug line = 707:26] [debug variable = weight_returnB_temp]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareB_in_V}, i64 0, metadata !162), !dbg !193 ; [debug line = 129:56@708:32] [debug variable = stream<float>.V]
  %tmp_24 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnSquareB_in_V), !dbg !195 ; [#uses=1 type=float] [debug line = 131:9@708:32]
  call void @llvm.dbg.value(metadata !{float %tmp_24}, i64 0, metadata !171), !dbg !195 ; [debug line = 131:9@708:32] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_24}, i64 0, metadata !196), !dbg !194 ; [debug line = 708:32] [debug variable = weight_returnSquareB_temp]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_returnB_in_V}, i64 0, metadata !162), !dbg !197 ; [debug line = 129:56@710:34] [debug variable = stream<float>.V]
  %tmp_25 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnA_returnB_in_V), !dbg !199 ; [#uses=1 type=float] [debug line = 131:9@710:34]
  call void @llvm.dbg.value(metadata !{float %tmp_25}, i64 0, metadata !171), !dbg !199 ; [debug line = 131:9@710:34] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_25}, i64 0, metadata !200), !dbg !198 ; [debug line = 710:34] [debug variable = weight_returnA_returnB_temp]
  %tmp_26_i = zext i32 %channel_id to i64, !dbg !201 ; [#uses=7 type=i64] [debug line = 722:2]
  %acc_returnA_addr_6 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp_26_i, !dbg !201 ; [#uses=2 type=float*] [debug line = 722:2]
  %acc_returnA_load = load float* %acc_returnA_addr_6, align 4, !dbg !201 ; [#uses=1 type=float] [debug line = 722:2]
  %tmp_27_i = fadd float %acc_returnA_load, %tmp_19, !dbg !201 ; [#uses=1 type=float] [debug line = 722:2]
  store float %tmp_27_i, float* %acc_returnA_addr_6, align 4, !dbg !201 ; [debug line = 722:2]
  %acc_weight_returnSquareA_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp_26_i, !dbg !202 ; [#uses=2 type=float*] [debug line = 723:4]
  %acc_weight_returnSquareA_load = load float* %acc_weight_returnSquareA_addr_6, align 4, !dbg !202 ; [#uses=1 type=float] [debug line = 723:4]
  %tmp_28_i = fadd float %acc_weight_returnSquareA_load, %tmp_21, !dbg !202 ; [#uses=1 type=float] [debug line = 723:4]
  store float %tmp_28_i, float* %acc_weight_returnSquareA_addr_6, align 4, !dbg !202 ; [debug line = 723:4]
  %acc_weight_returnA_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp_26_i, !dbg !203 ; [#uses=2 type=float*] [debug line = 724:4]
  %acc_weight_returnA_load = load float* %acc_weight_returnA_addr_6, align 4, !dbg !203 ; [#uses=1 type=float] [debug line = 724:4]
  %tmp_29_i = fadd float %acc_weight_returnA_load, %tmp_20, !dbg !203 ; [#uses=1 type=float] [debug line = 724:4]
  store float %tmp_29_i, float* %acc_weight_returnA_addr_6, align 4, !dbg !203 ; [debug line = 724:4]
  %acc_returnB_addr_6 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp_26_i, !dbg !204 ; [#uses=2 type=float*] [debug line = 726:4]
  %acc_returnB_load = load float* %acc_returnB_addr_6, align 4, !dbg !204 ; [#uses=1 type=float] [debug line = 726:4]
  %tmp_30_i = fadd float %acc_returnB_load, %tmp_22, !dbg !204 ; [#uses=1 type=float] [debug line = 726:4]
  store float %tmp_30_i, float* %acc_returnB_addr_6, align 4, !dbg !204 ; [debug line = 726:4]
  %acc_weight_returnSquareB_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp_26_i, !dbg !205 ; [#uses=2 type=float*] [debug line = 727:4]
  %acc_weight_returnSquareB_load = load float* %acc_weight_returnSquareB_addr_6, align 4, !dbg !205 ; [#uses=1 type=float] [debug line = 727:4]
  %tmp_31_i = fadd float %acc_weight_returnSquareB_load, %tmp_24, !dbg !205 ; [#uses=1 type=float] [debug line = 727:4]
  store float %tmp_31_i, float* %acc_weight_returnSquareB_addr_6, align 4, !dbg !205 ; [debug line = 727:4]
  %acc_weight_returnB_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp_26_i, !dbg !206 ; [#uses=2 type=float*] [debug line = 728:4]
  %acc_weight_returnB_load = load float* %acc_weight_returnB_addr_6, align 4, !dbg !206 ; [#uses=1 type=float] [debug line = 728:4]
  %tmp_32_i = fadd float %acc_weight_returnB_load, %tmp_23, !dbg !206 ; [#uses=1 type=float] [debug line = 728:4]
  store float %tmp_32_i, float* %acc_weight_returnB_addr_6, align 4, !dbg !206 ; [debug line = 728:4]
  %acc_weight_returnA_returnB_add_6 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_26_i, !dbg !207 ; [#uses=2 type=float*] [debug line = 730:4]
  %acc_weight_returnA_returnB_loa = load float* %acc_weight_returnA_returnB_add_6, align 4, !dbg !207 ; [#uses=1 type=float] [debug line = 730:4]
  %tmp_33_i = fadd float %acc_weight_returnA_returnB_loa, %tmp_25, !dbg !207 ; [#uses=1 type=float] [debug line = 730:4]
  store float %tmp_33_i, float* %acc_weight_returnA_returnB_add_6, align 4, !dbg !207 ; [debug line = 730:4]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str7, i32 %tmp_17_i), !dbg !208 ; [#uses=0 type=i32] [debug line = 731:3]
  %i = add nsw i32 %i1_i, 1, !dbg !209            ; [#uses=1 type=i32] [debug line = 684:43]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !210), !dbg !209 ; [debug line = 684:43] [debug variable = i]
  br label %.preheader33.i, !dbg !209             ; [debug line = 684:43]

.preheader.i:                                     ; preds = %2, %.preheader33.i
  %tmp_2 = phi float [ %sum_weight_returnA_returnB, %2 ], [ 0.000000e+00, %.preheader33.i ] ; [#uses=2 type=float]
  %tmp_3 = phi float [ %sum_weight_returnB, %2 ], [ 0.000000e+00, %.preheader33.i ] ; [#uses=2 type=float]
  %tmp_4 = phi float [ %sum_weight_returnSquareB, %2 ], [ 0.000000e+00, %.preheader33.i ] ; [#uses=2 type=float]
  %tmp_5 = phi float [ %sum_returnB, %2 ], [ 0.000000e+00, %.preheader33.i ] ; [#uses=2 type=float]
  %tmp_6 = phi float [ %sum_weight_returnA, %2 ], [ 0.000000e+00, %.preheader33.i ] ; [#uses=2 type=float]
  %tmp_7 = phi float [ %sum_weight_returnSquareA, %2 ], [ 0.000000e+00, %.preheader33.i ] ; [#uses=2 type=float]
  %tmp_8 = phi float [ %sum_returnA, %2 ], [ 0.000000e+00, %.preheader33.i ] ; [#uses=2 type=float]
  %i2_i = phi i3 [ %i_1, %2 ], [ 0, %.preheader33.i ] ; [#uses=3 type=i3]
  %exitcond_i = icmp eq i3 %i2_i, -2, !dbg !211   ; [#uses=1 type=i1] [debug line = 735:16]
  %i_1 = add i3 %i2_i, 1, !dbg !213               ; [#uses=1 type=i3] [debug line = 735:25]
  br i1 %exitcond_i, label %3, label %2, !dbg !211 ; [debug line = 735:16]

; <label>:2                                       ; preds = %.preheader.i
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str8) nounwind, !dbg !214 ; [debug line = 735:30]
  %tmp_42_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str8), !dbg !216 ; [#uses=1 type=i32] [debug line = 735:71]
  call void (...)* @_ssdm_op_SpecPipeline(i32 5, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !217 ; [debug line = 737:1]
  %tmp_43_i = zext i3 %i2_i to i64, !dbg !218     ; [#uses=7 type=i64] [debug line = 739:2]
  %acc_returnA_addr_7 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp_43_i, !dbg !218 ; [#uses=1 type=float*] [debug line = 739:2]
  %acc_returnA_load_1 = load float* %acc_returnA_addr_7, align 4, !dbg !218 ; [#uses=1 type=float] [debug line = 739:2]
  %sum_returnA = fadd float %tmp_8, %acc_returnA_load_1, !dbg !218 ; [#uses=1 type=float] [debug line = 739:2]
  call void @llvm.dbg.value(metadata !{float %sum_returnA}, i64 0, metadata !219), !dbg !218 ; [debug line = 739:2] [debug variable = sum_returnA]
  %acc_weight_returnSquareA_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp_43_i, !dbg !220 ; [#uses=1 type=float*] [debug line = 740:4]
  %acc_weight_returnSquareA_load_1 = load float* %acc_weight_returnSquareA_addr_7, align 4, !dbg !220 ; [#uses=1 type=float] [debug line = 740:4]
  %sum_weight_returnSquareA = fadd float %tmp_7, %acc_weight_returnSquareA_load_1, !dbg !220 ; [#uses=1 type=float] [debug line = 740:4]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnSquareA}, i64 0, metadata !221), !dbg !220 ; [debug line = 740:4] [debug variable = sum_weight_returnSquareA]
  %acc_weight_returnA_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp_43_i, !dbg !222 ; [#uses=1 type=float*] [debug line = 741:4]
  %acc_weight_returnA_load_1 = load float* %acc_weight_returnA_addr_7, align 4, !dbg !222 ; [#uses=1 type=float] [debug line = 741:4]
  %sum_weight_returnA = fadd float %tmp_6, %acc_weight_returnA_load_1, !dbg !222 ; [#uses=1 type=float] [debug line = 741:4]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnA}, i64 0, metadata !223), !dbg !222 ; [debug line = 741:4] [debug variable = sum_weight_returnA]
  %acc_returnB_addr_7 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp_43_i, !dbg !224 ; [#uses=1 type=float*] [debug line = 743:4]
  %acc_returnB_load_1 = load float* %acc_returnB_addr_7, align 4, !dbg !224 ; [#uses=1 type=float] [debug line = 743:4]
  %sum_returnB = fadd float %tmp_5, %acc_returnB_load_1, !dbg !224 ; [#uses=1 type=float] [debug line = 743:4]
  call void @llvm.dbg.value(metadata !{float %sum_returnB}, i64 0, metadata !225), !dbg !224 ; [debug line = 743:4] [debug variable = sum_returnB]
  %acc_weight_returnSquareB_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp_43_i, !dbg !226 ; [#uses=1 type=float*] [debug line = 744:4]
  %acc_weight_returnSquareB_load_1 = load float* %acc_weight_returnSquareB_addr_7, align 4, !dbg !226 ; [#uses=1 type=float] [debug line = 744:4]
  %sum_weight_returnSquareB = fadd float %tmp_4, %acc_weight_returnSquareB_load_1, !dbg !226 ; [#uses=1 type=float] [debug line = 744:4]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnSquareB}, i64 0, metadata !227), !dbg !226 ; [debug line = 744:4] [debug variable = sum_weight_returnSquareB]
  %acc_weight_returnB_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp_43_i, !dbg !228 ; [#uses=1 type=float*] [debug line = 745:4]
  %acc_weight_returnB_load_1 = load float* %acc_weight_returnB_addr_7, align 4, !dbg !228 ; [#uses=1 type=float] [debug line = 745:4]
  %sum_weight_returnB = fadd float %tmp_3, %acc_weight_returnB_load_1, !dbg !228 ; [#uses=1 type=float] [debug line = 745:4]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnB}, i64 0, metadata !229), !dbg !228 ; [debug line = 745:4] [debug variable = sum_weight_returnB]
  %acc_weight_returnA_returnB_add_7 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_43_i, !dbg !230 ; [#uses=1 type=float*] [debug line = 746:4]
  %acc_weight_returnA_returnB_loa_1 = load float* %acc_weight_returnA_returnB_add_7, align 4, !dbg !230 ; [#uses=1 type=float] [debug line = 746:4]
  %sum_weight_returnA_returnB = fadd float %tmp_2, %acc_weight_returnA_returnB_loa_1, !dbg !230 ; [#uses=1 type=float] [debug line = 746:4]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnA_returnB}, i64 0, metadata !231), !dbg !230 ; [debug line = 746:4] [debug variable = sum_weight_returnA_returnB]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str8, i32 %tmp_42_i), !dbg !232 ; [#uses=0 type=i32] [debug line = 747:3]
  call void @llvm.dbg.value(metadata !{i3 %i_1}, i64 0, metadata !233), !dbg !213 ; [debug line = 735:25] [debug variable = i]
  br label %.preheader.i, !dbg !213               ; [debug line = 735:25]

; <label>:3                                       ; preds = %.preheader.i
  call void @llvm.dbg.value(metadata !{float* %sum_weight_out_V}, i64 0, metadata !234), !dbg !237 ; [debug line = 105:48@750:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_out_V}, i64 0, metadata !239), !dbg !242 ; [debug line = 144:48@106:9@750:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_9}, i64 0, metadata !245), !dbg !247 ; [debug line = 145:31@106:9@750:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_out_V, float %tmp_9), !dbg !248 ; [debug line = 146:9@106:9@750:4]
  call void @llvm.dbg.value(metadata !{float* %sum_return_out_V}, i64 0, metadata !234), !dbg !249 ; [debug line = 105:48@752:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_return_out_V}, i64 0, metadata !239), !dbg !251 ; [debug line = 144:48@106:9@752:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_5}, i64 0, metadata !245), !dbg !253 ; [debug line = 145:31@106:9@752:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_return_out_V, float %tmp_5), !dbg !254 ; [debug line = 146:9@106:9@752:4]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquare_out_V}, i64 0, metadata !234), !dbg !255 ; [debug line = 105:48@753:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquare_out_V}, i64 0, metadata !239), !dbg !257 ; [debug line = 144:48@106:9@753:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_4}, i64 0, metadata !245), !dbg !259 ; [debug line = 145:31@106:9@753:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnSquare_out_V, float %tmp_4), !dbg !260 ; [debug line = 146:9@106:9@753:4]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_return_out_V}, i64 0, metadata !234), !dbg !261 ; [debug line = 105:48@754:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_return_out_V}, i64 0, metadata !239), !dbg !263 ; [debug line = 144:48@106:9@754:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_3}, i64 0, metadata !245), !dbg !265 ; [debug line = 145:31@106:9@754:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_return_out_V, float %tmp_3), !dbg !266 ; [debug line = 146:9@106:9@754:4]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_returnB_out}, i64 0, metadata !234), !dbg !267 ; [debug line = 105:48@756:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_returnB_out}, i64 0, metadata !239), !dbg !269 ; [debug line = 144:48@106:9@756:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_2}, i64 0, metadata !245), !dbg !271 ; [debug line = 145:31@106:9@756:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnA_returnB_out, float %tmp_2), !dbg !272 ; [debug line = 146:9@106:9@756:4]
  call void @llvm.dbg.value(metadata !{float* %sum_returnA_out_V}, i64 0, metadata !234), !dbg !273 ; [debug line = 105:48@758:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_returnA_out_V}, i64 0, metadata !239), !dbg !275 ; [debug line = 144:48@106:9@758:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_8}, i64 0, metadata !245), !dbg !277 ; [debug line = 145:31@106:9@758:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_returnA_out_V, float %tmp_8), !dbg !278 ; [debug line = 146:9@106:9@758:4]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquareA_out_V}, i64 0, metadata !234), !dbg !279 ; [debug line = 105:48@759:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquareA_out_V}, i64 0, metadata !239), !dbg !281 ; [debug line = 144:48@106:9@759:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_7}, i64 0, metadata !245), !dbg !283 ; [debug line = 145:31@106:9@759:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnSquareA_out_V, float %tmp_7), !dbg !284 ; [debug line = 146:9@106:9@759:4]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_out_V}, i64 0, metadata !234), !dbg !285 ; [debug line = 105:48@760:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_out_V}, i64 0, metadata !239), !dbg !287 ; [debug line = 144:48@106:9@760:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_6}, i64 0, metadata !245), !dbg !289 ; [debug line = 145:31@106:9@760:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnA_out_V, float %tmp_6), !dbg !290 ; [debug line = 146:9@106:9@760:4]
  %column_index = add nsw i32 %column_index_i, 1, !dbg !291 ; [#uses=1 type=i32] [debug line = 639:56]
  call void @llvm.dbg.value(metadata !{i32 %column_index}, i64 0, metadata !292), !dbg !291 ; [debug line = 639:56] [debug variable = column_index]
  br label %0, !dbg !291                          ; [debug line = 639:56]

midEnd.1.exit:                                    ; preds = %0
  ret void
}

; [#uses=1]
define internal fastcc void @correlation_accel_v4_midEnd.1(i32* %NUMBER_OF_DAYS, i32* %NUMBER_OF_INDICES, float* %ln_returnA_in_V, float* %weight_returnSquareA_in_V, float* %weight_returnA_in_V, float* %sum_weight_in_V, float* %ln_returnB_in_V, float* %weight_returnSquareB_in_V, float* %weight_returnB_in_V, float* %weight_returnA_returnB_in_V, float* %sum_weight_out_V, float* %sum_return_out_V, float* %sum_weight_returnSquare_out_V, float* %sum_weight_return_out_V, float* %sum_weight_returnA_returnB_out, float* %sum_returnA_out_V, float* %sum_weight_returnSquareA_out_V, float* %sum_weight_returnA_out_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES, [8 x i8]* @str198, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str198, [8 x i8]* @str198, [8 x i8]* @str198)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS, [8 x i8]* @str197, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str197, [8 x i8]* @str197, [8 x i8]* @str197)
  %acc_returnA = alloca [6 x float], align 16     ; [#uses=8 type=[6 x float]*]
  %acc_weight_returnSquareA = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  %acc_weight_returnA = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  %acc_returnB = alloca [6 x float], align 16     ; [#uses=8 type=[6 x float]*]
  %acc_weight_returnSquareB = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  %acc_weight_returnB = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  %acc_weight_returnA_returnB = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  %NUMBER_OF_INDICES_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %NUMBER_OF_INDICES) ; [#uses=2 type=i32]
  %NUMBER_OF_DAYS_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %NUMBER_OF_DAYS) ; [#uses=1 type=i32]
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
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_returnA}, metadata !7), !dbg !74 ; [debug line = 641:9] [debug variable = acc_returnA]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnSquareA}, metadata !75), !dbg !76 ; [debug line = 642:9] [debug variable = acc_weight_returnSquareA]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnA}, metadata !77), !dbg !78 ; [debug line = 643:9] [debug variable = acc_weight_returnA]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_returnB}, metadata !79), !dbg !80 ; [debug line = 645:9] [debug variable = acc_returnB]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnSquareB}, metadata !81), !dbg !82 ; [debug line = 646:9] [debug variable = acc_weight_returnSquareB]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnB}, metadata !83), !dbg !84 ; [debug line = 647:9] [debug variable = acc_weight_returnB]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnA_returnB}, metadata !85), !dbg !86 ; [debug line = 649:9] [debug variable = acc_weight_returnA_returnB]
  call void @llvm.dbg.value(metadata !{i32 %NUMBER_OF_DAYS_read}, i64 0, metadata !87), !dbg !88 ; [debug line = 587:7] [debug variable = NUMBER_OF_DAYS]
  call void @llvm.dbg.value(metadata !{i32 %NUMBER_OF_INDICES_read}, i64 0, metadata !89), !dbg !90 ; [debug line = 588:7] [debug variable = NUMBER_OF_INDICES]
  call void @llvm.dbg.value(metadata !{float* %ln_returnA_in_V}, i64 0, metadata !91), !dbg !96 ; [debug line = 591:23] [debug variable = ln_returnA_in.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareA_in_V}, i64 0, metadata !97), !dbg !99 ; [debug line = 592:23] [debug variable = weight_returnSquareA_in.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_in_V}, i64 0, metadata !100), !dbg !102 ; [debug line = 593:23] [debug variable = weight_returnA_in.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_in_V}, i64 0, metadata !103), !dbg !105 ; [debug line = 595:23] [debug variable = sum_weight_in.V]
  call void @llvm.dbg.value(metadata !{float* %ln_returnB_in_V}, i64 0, metadata !106), !dbg !108 ; [debug line = 596:23] [debug variable = ln_returnB_in.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareB_in_V}, i64 0, metadata !109), !dbg !111 ; [debug line = 597:23] [debug variable = weight_returnSquareB_in.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnB_in_V}, i64 0, metadata !112), !dbg !114 ; [debug line = 598:23] [debug variable = weight_returnB_in.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_returnB_in_V}, i64 0, metadata !115), !dbg !117 ; [debug line = 599:23] [debug variable = weight_returnA_returnB_in.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_out_V}, i64 0, metadata !118), !dbg !120 ; [debug line = 601:23] [debug variable = sum_weight_out.V]
  call void @llvm.dbg.value(metadata !{float* %sum_return_out_V}, i64 0, metadata !121), !dbg !123 ; [debug line = 602:23] [debug variable = sum_return_out.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquare_out_V}, i64 0, metadata !124), !dbg !126 ; [debug line = 603:23] [debug variable = sum_weight_returnSquare_out.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_return_out_V}, i64 0, metadata !127), !dbg !129 ; [debug line = 604:23] [debug variable = sum_weight_return_out.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_returnB_out}, i64 0, metadata !130), !dbg !132 ; [debug line = 605:23] [debug variable = sum_weight_returnA_returnB_out.V]
  call void @llvm.dbg.value(metadata !{float* %sum_returnA_out_V}, i64 0, metadata !133), !dbg !135 ; [debug line = 606:23] [debug variable = sum_returnA_out.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquareA_out_V}, i64 0, metadata !136), !dbg !138 ; [debug line = 607:23] [debug variable = sum_weight_returnSquareA_out.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_out_V}, i64 0, metadata !139), !dbg !141 ; [debug line = 608:23] [debug variable = sum_weight_returnA_out.V]
  %tmp_i = add nsw i32 %NUMBER_OF_INDICES_read, -1, !dbg !142 ; [#uses=2 type=i32] [debug line = 638:57]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %tmp_i, i32 31), !dbg !142 ; [#uses=1 type=i1] [debug line = 638:57]
  %p_neg_i = sub i32 1, %NUMBER_OF_INDICES_read, !dbg !142 ; [#uses=1 type=i32] [debug line = 638:57]
  %p_lshr_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg_i, i32 1, i32 31), !dbg !142 ; [#uses=1 type=i31] [debug line = 638:57]
  %tmp_s = zext i31 %p_lshr_i to i32, !dbg !142   ; [#uses=1 type=i32] [debug line = 638:57]
  %p_neg_t_i = sub i32 0, %tmp_s, !dbg !142       ; [#uses=1 type=i32] [debug line = 638:57]
  %p_lshr_f_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %tmp_i, i32 1, i32 31), !dbg !142 ; [#uses=1 type=i31] [debug line = 638:57]
  %tmp_9 = zext i31 %p_lshr_f_i to i32, !dbg !142 ; [#uses=1 type=i32] [debug line = 638:57]
  %upper_bound = select i1 %tmp, i32 %p_neg_t_i, i32 %tmp_9, !dbg !142 ; [#uses=1 type=i32] [debug line = 638:57]
  call void @llvm.dbg.value(metadata !{i32 %upper_bound}, i64 0, metadata !143), !dbg !142 ; [debug line = 638:57] [debug variable = upper_bound]
  %tmp_i_9 = add nsw i32 %NUMBER_OF_DAYS_read, -1, !dbg !144 ; [#uses=1 type=i32] [debug line = 684:16]
  %acc_returnB_addr = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 0, !dbg !146 ; [#uses=1 type=float*] [debug line = 671:2]
  %acc_weight_returnSquareB_addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 0, !dbg !149 ; [#uses=1 type=float*] [debug line = 672:4]
  %acc_weight_returnB_addr = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 0, !dbg !150 ; [#uses=1 type=float*] [debug line = 673:4]
  %acc_weight_returnA_returnB_add = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 0, !dbg !151 ; [#uses=1 type=float*] [debug line = 675:4]
  %acc_returnA_addr = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 0, !dbg !152 ; [#uses=1 type=float*] [debug line = 677:4]
  %acc_weight_returnSquareA_addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 0, !dbg !153 ; [#uses=1 type=float*] [debug line = 678:4]
  %acc_weight_returnA_addr = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 0, !dbg !154 ; [#uses=1 type=float*] [debug line = 679:4]
  %acc_returnB_addr_8 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 1, !dbg !146 ; [#uses=1 type=float*] [debug line = 671:2]
  %acc_weight_returnSquareB_addr_8 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 1, !dbg !149 ; [#uses=1 type=float*] [debug line = 672:4]
  %acc_weight_returnB_addr_8 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 1, !dbg !150 ; [#uses=1 type=float*] [debug line = 673:4]
  %acc_weight_returnA_returnB_add_8 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 1, !dbg !151 ; [#uses=1 type=float*] [debug line = 675:4]
  %acc_returnA_addr_8 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 1, !dbg !152 ; [#uses=1 type=float*] [debug line = 677:4]
  %acc_weight_returnSquareA_addr_8 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 1, !dbg !153 ; [#uses=1 type=float*] [debug line = 678:4]
  %acc_weight_returnA_addr_8 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 1, !dbg !154 ; [#uses=1 type=float*] [debug line = 679:4]
  %acc_returnB_addr_9 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 2, !dbg !146 ; [#uses=1 type=float*] [debug line = 671:2]
  %acc_weight_returnSquareB_addr_9 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 2, !dbg !149 ; [#uses=1 type=float*] [debug line = 672:4]
  %acc_weight_returnB_addr_9 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 2, !dbg !150 ; [#uses=1 type=float*] [debug line = 673:4]
  %acc_weight_returnA_returnB_add_9 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 2, !dbg !151 ; [#uses=1 type=float*] [debug line = 675:4]
  %acc_returnA_addr_9 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 2, !dbg !152 ; [#uses=1 type=float*] [debug line = 677:4]
  %acc_weight_returnSquareA_addr_9 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 2, !dbg !153 ; [#uses=1 type=float*] [debug line = 678:4]
  %acc_weight_returnA_addr_9 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 2, !dbg !154 ; [#uses=1 type=float*] [debug line = 679:4]
  %acc_returnB_addr_10 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 3, !dbg !146 ; [#uses=1 type=float*] [debug line = 671:2]
  %acc_weight_returnSquareB_addr_10 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 3, !dbg !149 ; [#uses=1 type=float*] [debug line = 672:4]
  %acc_weight_returnB_addr_10 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 3, !dbg !150 ; [#uses=1 type=float*] [debug line = 673:4]
  %acc_weight_returnA_returnB_add_10 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 3, !dbg !151 ; [#uses=1 type=float*] [debug line = 675:4]
  %acc_returnA_addr_10 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 3, !dbg !152 ; [#uses=1 type=float*] [debug line = 677:4]
  %acc_weight_returnSquareA_addr_10 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 3, !dbg !153 ; [#uses=1 type=float*] [debug line = 678:4]
  %acc_weight_returnA_addr_10 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 3, !dbg !154 ; [#uses=1 type=float*] [debug line = 679:4]
  %acc_returnB_addr_11 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 4, !dbg !146 ; [#uses=1 type=float*] [debug line = 671:2]
  %acc_weight_returnSquareB_addr_11 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 4, !dbg !149 ; [#uses=1 type=float*] [debug line = 672:4]
  %acc_weight_returnB_addr_11 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 4, !dbg !150 ; [#uses=1 type=float*] [debug line = 673:4]
  %acc_weight_returnA_returnB_add_11 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 4, !dbg !151 ; [#uses=1 type=float*] [debug line = 675:4]
  %acc_returnA_addr_11 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 4, !dbg !152 ; [#uses=1 type=float*] [debug line = 677:4]
  %acc_weight_returnSquareA_addr_11 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 4, !dbg !153 ; [#uses=1 type=float*] [debug line = 678:4]
  %acc_weight_returnA_addr_11 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 4, !dbg !154 ; [#uses=1 type=float*] [debug line = 679:4]
  %acc_returnB_addr_12 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 5, !dbg !146 ; [#uses=1 type=float*] [debug line = 671:2]
  %acc_weight_returnSquareB_addr_12 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 5, !dbg !149 ; [#uses=1 type=float*] [debug line = 672:4]
  %acc_weight_returnB_addr_12 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 5, !dbg !150 ; [#uses=1 type=float*] [debug line = 673:4]
  %acc_weight_returnA_returnB_add_12 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 5, !dbg !151 ; [#uses=1 type=float*] [debug line = 675:4]
  %acc_returnA_addr_12 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 5, !dbg !152 ; [#uses=1 type=float*] [debug line = 677:4]
  %acc_weight_returnSquareA_addr_12 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 5, !dbg !153 ; [#uses=1 type=float*] [debug line = 678:4]
  %acc_weight_returnA_addr_12 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 5, !dbg !154 ; [#uses=1 type=float*] [debug line = 679:4]
  br label %0, !dbg !155                          ; [debug line = 639:25]

; <label>:0                                       ; preds = %3, %entry
  %column_index_i = phi i32 [ 1, %entry ], [ %column_index, %3 ] ; [#uses=2 type=i32]
  %tmp_1_i = icmp sgt i32 %column_index_i, %upper_bound, !dbg !155 ; [#uses=1 type=i1] [debug line = 639:25]
  br i1 %tmp_1_i, label %midEnd.2.exit, label %.preheader34.0.i, !dbg !155 ; [debug line = 639:25]

.preheader34.0.i:                                 ; preds = %0
  store float 0.000000e+00, float* %acc_returnB_addr, align 16, !dbg !146 ; [debug line = 671:2]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr, align 16, !dbg !149 ; [debug line = 672:4]
  store float 0.000000e+00, float* %acc_weight_returnB_addr, align 16, !dbg !150 ; [debug line = 673:4]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add, align 16, !dbg !151 ; [debug line = 675:4]
  store float 0.000000e+00, float* %acc_returnA_addr, align 16, !dbg !152 ; [debug line = 677:4]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr, align 16, !dbg !153 ; [debug line = 678:4]
  store float 0.000000e+00, float* %acc_weight_returnA_addr, align 16, !dbg !154 ; [debug line = 679:4]
  store float 0.000000e+00, float* %acc_returnB_addr_8, align 4, !dbg !146 ; [debug line = 671:2]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_8, align 4, !dbg !149 ; [debug line = 672:4]
  store float 0.000000e+00, float* %acc_weight_returnB_addr_8, align 4, !dbg !150 ; [debug line = 673:4]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_8, align 4, !dbg !151 ; [debug line = 675:4]
  store float 0.000000e+00, float* %acc_returnA_addr_8, align 4, !dbg !152 ; [debug line = 677:4]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_8, align 4, !dbg !153 ; [debug line = 678:4]
  store float 0.000000e+00, float* %acc_weight_returnA_addr_8, align 4, !dbg !154 ; [debug line = 679:4]
  store float 0.000000e+00, float* %acc_returnB_addr_9, align 8, !dbg !146 ; [debug line = 671:2]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_9, align 8, !dbg !149 ; [debug line = 672:4]
  store float 0.000000e+00, float* %acc_weight_returnB_addr_9, align 8, !dbg !150 ; [debug line = 673:4]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_9, align 8, !dbg !151 ; [debug line = 675:4]
  store float 0.000000e+00, float* %acc_returnA_addr_9, align 8, !dbg !152 ; [debug line = 677:4]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_9, align 8, !dbg !153 ; [debug line = 678:4]
  store float 0.000000e+00, float* %acc_weight_returnA_addr_9, align 8, !dbg !154 ; [debug line = 679:4]
  store float 0.000000e+00, float* %acc_returnB_addr_10, align 4, !dbg !146 ; [debug line = 671:2]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_10, align 4, !dbg !149 ; [debug line = 672:4]
  store float 0.000000e+00, float* %acc_weight_returnB_addr_10, align 4, !dbg !150 ; [debug line = 673:4]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_10, align 4, !dbg !151 ; [debug line = 675:4]
  store float 0.000000e+00, float* %acc_returnA_addr_10, align 4, !dbg !152 ; [debug line = 677:4]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_10, align 4, !dbg !153 ; [debug line = 678:4]
  store float 0.000000e+00, float* %acc_weight_returnA_addr_10, align 4, !dbg !154 ; [debug line = 679:4]
  store float 0.000000e+00, float* %acc_returnB_addr_11, align 16, !dbg !146 ; [debug line = 671:2]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_11, align 16, !dbg !149 ; [debug line = 672:4]
  store float 0.000000e+00, float* %acc_weight_returnB_addr_11, align 16, !dbg !150 ; [debug line = 673:4]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_11, align 16, !dbg !151 ; [debug line = 675:4]
  store float 0.000000e+00, float* %acc_returnA_addr_11, align 16, !dbg !152 ; [debug line = 677:4]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_11, align 16, !dbg !153 ; [debug line = 678:4]
  store float 0.000000e+00, float* %acc_weight_returnA_addr_11, align 16, !dbg !154 ; [debug line = 679:4]
  store float 0.000000e+00, float* %acc_returnB_addr_12, align 4, !dbg !146 ; [debug line = 671:2]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_12, align 4, !dbg !149 ; [debug line = 672:4]
  store float 0.000000e+00, float* %acc_weight_returnB_addr_12, align 4, !dbg !150 ; [debug line = 673:4]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_12, align 4, !dbg !151 ; [debug line = 675:4]
  store float 0.000000e+00, float* %acc_returnA_addr_12, align 4, !dbg !152 ; [debug line = 677:4]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_12, align 4, !dbg !153 ; [debug line = 678:4]
  store float 0.000000e+00, float* %acc_weight_returnA_addr_12, align 4, !dbg !154 ; [debug line = 679:4]
  br label %.preheader33.i, !dbg !144             ; [debug line = 684:16]

.preheader33.i:                                   ; preds = %1, %.preheader34.0.i
  %tmp_10 = phi float [ %tmp_34, %1 ], [ 0.000000e+00, %.preheader34.0.i ] ; [#uses=1 type=float]
  %i1_i = phi i32 [ %i, %1 ], [ 1, %.preheader34.0.i ] ; [#uses=3 type=i32]
  %tmp_9_i = icmp sgt i32 %i1_i, %tmp_i_9, !dbg !144 ; [#uses=1 type=i1] [debug line = 684:16]
  br i1 %tmp_9_i, label %.preheader.i, label %1, !dbg !144 ; [debug line = 684:16]

; <label>:1                                       ; preds = %.preheader33.i
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str7) nounwind, !dbg !156 ; [debug line = 684:48]
  %tmp_17_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str7), !dbg !158 ; [#uses=1 type=i32] [debug line = 684:87]
  %channel_id = srem i32 %i1_i, 6, !dbg !159      ; [#uses=1 type=i32] [debug line = 696:26]
  call void @llvm.dbg.value(metadata !{i32 %channel_id}, i64 0, metadata !160), !dbg !159 ; [debug line = 696:26] [debug variable = channel_id]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !161 ; [debug line = 699:1]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_in_V}, i64 0, metadata !162), !dbg !167 ; [debug line = 129:56@700:15] [debug variable = stream<float>.V]
  %tmp_34 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_in_V), !dbg !169 ; [#uses=1 type=float] [debug line = 131:9@700:15]
  call void @llvm.dbg.value(metadata !{float %tmp_34}, i64 0, metadata !171), !dbg !169 ; [debug line = 131:9@700:15] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_34}, i64 0, metadata !172), !dbg !168 ; [debug line = 700:15] [debug variable = sum_weight]
  call void @llvm.dbg.value(metadata !{float* %ln_returnA_in_V}, i64 0, metadata !162), !dbg !173 ; [debug line = 129:56@702:21] [debug variable = stream<float>.V]
  %tmp_35 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %ln_returnA_in_V), !dbg !175 ; [#uses=1 type=float] [debug line = 131:9@702:21]
  call void @llvm.dbg.value(metadata !{float %tmp_35}, i64 0, metadata !171), !dbg !175 ; [debug line = 131:9@702:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_35}, i64 0, metadata !176), !dbg !174 ; [debug line = 702:21] [debug variable = lnReturnA_temp]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_in_V}, i64 0, metadata !162), !dbg !177 ; [debug line = 129:56@703:26] [debug variable = stream<float>.V]
  %tmp_36 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnA_in_V), !dbg !179 ; [#uses=1 type=float] [debug line = 131:9@703:26]
  call void @llvm.dbg.value(metadata !{float %tmp_36}, i64 0, metadata !171), !dbg !179 ; [debug line = 131:9@703:26] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_36}, i64 0, metadata !180), !dbg !178 ; [debug line = 703:26] [debug variable = weight_returnA_temp]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareA_in_V}, i64 0, metadata !162), !dbg !181 ; [debug line = 129:56@704:32] [debug variable = stream<float>.V]
  %tmp_37 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnSquareA_in_V), !dbg !183 ; [#uses=1 type=float] [debug line = 131:9@704:32]
  call void @llvm.dbg.value(metadata !{float %tmp_37}, i64 0, metadata !171), !dbg !183 ; [debug line = 131:9@704:32] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_37}, i64 0, metadata !184), !dbg !182 ; [debug line = 704:32] [debug variable = weight_returnSquareA_temp]
  call void @llvm.dbg.value(metadata !{float* %ln_returnB_in_V}, i64 0, metadata !162), !dbg !185 ; [debug line = 129:56@706:21] [debug variable = stream<float>.V]
  %tmp_38 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %ln_returnB_in_V), !dbg !187 ; [#uses=1 type=float] [debug line = 131:9@706:21]
  call void @llvm.dbg.value(metadata !{float %tmp_38}, i64 0, metadata !171), !dbg !187 ; [debug line = 131:9@706:21] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_38}, i64 0, metadata !188), !dbg !186 ; [debug line = 706:21] [debug variable = lnReturnB_temp]
  call void @llvm.dbg.value(metadata !{float* %weight_returnB_in_V}, i64 0, metadata !162), !dbg !189 ; [debug line = 129:56@707:26] [debug variable = stream<float>.V]
  %tmp_39 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnB_in_V), !dbg !191 ; [#uses=1 type=float] [debug line = 131:9@707:26]
  call void @llvm.dbg.value(metadata !{float %tmp_39}, i64 0, metadata !171), !dbg !191 ; [debug line = 131:9@707:26] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_39}, i64 0, metadata !192), !dbg !190 ; [debug line = 707:26] [debug variable = weight_returnB_temp]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareB_in_V}, i64 0, metadata !162), !dbg !193 ; [debug line = 129:56@708:32] [debug variable = stream<float>.V]
  %tmp_40 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnSquareB_in_V), !dbg !195 ; [#uses=1 type=float] [debug line = 131:9@708:32]
  call void @llvm.dbg.value(metadata !{float %tmp_40}, i64 0, metadata !171), !dbg !195 ; [debug line = 131:9@708:32] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_40}, i64 0, metadata !196), !dbg !194 ; [debug line = 708:32] [debug variable = weight_returnSquareB_temp]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_returnB_in_V}, i64 0, metadata !162), !dbg !197 ; [debug line = 129:56@710:34] [debug variable = stream<float>.V]
  %tmp_41 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %weight_returnA_returnB_in_V), !dbg !199 ; [#uses=1 type=float] [debug line = 131:9@710:34]
  call void @llvm.dbg.value(metadata !{float %tmp_41}, i64 0, metadata !171), !dbg !199 ; [debug line = 131:9@710:34] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_41}, i64 0, metadata !200), !dbg !198 ; [debug line = 710:34] [debug variable = weight_returnA_returnB_temp]
  %tmp_26_i = zext i32 %channel_id to i64, !dbg !201 ; [#uses=7 type=i64] [debug line = 722:2]
  %acc_returnA_addr_13 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp_26_i, !dbg !201 ; [#uses=2 type=float*] [debug line = 722:2]
  %acc_returnA_load = load float* %acc_returnA_addr_13, align 4, !dbg !201 ; [#uses=1 type=float] [debug line = 722:2]
  %tmp_27_i = fadd float %acc_returnA_load, %tmp_35, !dbg !201 ; [#uses=1 type=float] [debug line = 722:2]
  store float %tmp_27_i, float* %acc_returnA_addr_13, align 4, !dbg !201 ; [debug line = 722:2]
  %acc_weight_returnSquareA_addr_13 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp_26_i, !dbg !202 ; [#uses=2 type=float*] [debug line = 723:4]
  %acc_weight_returnSquareA_load = load float* %acc_weight_returnSquareA_addr_13, align 4, !dbg !202 ; [#uses=1 type=float] [debug line = 723:4]
  %tmp_28_i = fadd float %acc_weight_returnSquareA_load, %tmp_37, !dbg !202 ; [#uses=1 type=float] [debug line = 723:4]
  store float %tmp_28_i, float* %acc_weight_returnSquareA_addr_13, align 4, !dbg !202 ; [debug line = 723:4]
  %acc_weight_returnA_addr_13 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp_26_i, !dbg !203 ; [#uses=2 type=float*] [debug line = 724:4]
  %acc_weight_returnA_load = load float* %acc_weight_returnA_addr_13, align 4, !dbg !203 ; [#uses=1 type=float] [debug line = 724:4]
  %tmp_29_i = fadd float %acc_weight_returnA_load, %tmp_36, !dbg !203 ; [#uses=1 type=float] [debug line = 724:4]
  store float %tmp_29_i, float* %acc_weight_returnA_addr_13, align 4, !dbg !203 ; [debug line = 724:4]
  %acc_returnB_addr_13 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp_26_i, !dbg !204 ; [#uses=2 type=float*] [debug line = 726:4]
  %acc_returnB_load = load float* %acc_returnB_addr_13, align 4, !dbg !204 ; [#uses=1 type=float] [debug line = 726:4]
  %tmp_30_i = fadd float %acc_returnB_load, %tmp_38, !dbg !204 ; [#uses=1 type=float] [debug line = 726:4]
  store float %tmp_30_i, float* %acc_returnB_addr_13, align 4, !dbg !204 ; [debug line = 726:4]
  %acc_weight_returnSquareB_addr_13 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp_26_i, !dbg !205 ; [#uses=2 type=float*] [debug line = 727:4]
  %acc_weight_returnSquareB_load = load float* %acc_weight_returnSquareB_addr_13, align 4, !dbg !205 ; [#uses=1 type=float] [debug line = 727:4]
  %tmp_31_i = fadd float %acc_weight_returnSquareB_load, %tmp_40, !dbg !205 ; [#uses=1 type=float] [debug line = 727:4]
  store float %tmp_31_i, float* %acc_weight_returnSquareB_addr_13, align 4, !dbg !205 ; [debug line = 727:4]
  %acc_weight_returnB_addr_13 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp_26_i, !dbg !206 ; [#uses=2 type=float*] [debug line = 728:4]
  %acc_weight_returnB_load = load float* %acc_weight_returnB_addr_13, align 4, !dbg !206 ; [#uses=1 type=float] [debug line = 728:4]
  %tmp_32_i = fadd float %acc_weight_returnB_load, %tmp_39, !dbg !206 ; [#uses=1 type=float] [debug line = 728:4]
  store float %tmp_32_i, float* %acc_weight_returnB_addr_13, align 4, !dbg !206 ; [debug line = 728:4]
  %acc_weight_returnA_returnB_add_13 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_26_i, !dbg !207 ; [#uses=2 type=float*] [debug line = 730:4]
  %acc_weight_returnA_returnB_loa = load float* %acc_weight_returnA_returnB_add_13, align 4, !dbg !207 ; [#uses=1 type=float] [debug line = 730:4]
  %tmp_33_i = fadd float %acc_weight_returnA_returnB_loa, %tmp_41, !dbg !207 ; [#uses=1 type=float] [debug line = 730:4]
  store float %tmp_33_i, float* %acc_weight_returnA_returnB_add_13, align 4, !dbg !207 ; [debug line = 730:4]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str7, i32 %tmp_17_i), !dbg !208 ; [#uses=0 type=i32] [debug line = 731:3]
  %i = add nsw i32 %i1_i, 1, !dbg !209            ; [#uses=1 type=i32] [debug line = 684:43]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !210), !dbg !209 ; [debug line = 684:43] [debug variable = i]
  br label %.preheader33.i, !dbg !209             ; [debug line = 684:43]

.preheader.i:                                     ; preds = %2, %.preheader33.i
  %tmp_11 = phi float [ %sum_weight_returnA_returnB, %2 ], [ 0.000000e+00, %.preheader33.i ] ; [#uses=2 type=float]
  %tmp_12 = phi float [ %sum_weight_returnB, %2 ], [ 0.000000e+00, %.preheader33.i ] ; [#uses=2 type=float]
  %tmp_13 = phi float [ %sum_weight_returnSquareB, %2 ], [ 0.000000e+00, %.preheader33.i ] ; [#uses=2 type=float]
  %tmp_14 = phi float [ %sum_returnB, %2 ], [ 0.000000e+00, %.preheader33.i ] ; [#uses=2 type=float]
  %tmp_15 = phi float [ %sum_weight_returnA, %2 ], [ 0.000000e+00, %.preheader33.i ] ; [#uses=2 type=float]
  %tmp_16 = phi float [ %sum_weight_returnSquareA, %2 ], [ 0.000000e+00, %.preheader33.i ] ; [#uses=2 type=float]
  %tmp_17 = phi float [ %sum_returnA, %2 ], [ 0.000000e+00, %.preheader33.i ] ; [#uses=2 type=float]
  %i2_i = phi i3 [ %i_2, %2 ], [ 0, %.preheader33.i ] ; [#uses=3 type=i3]
  %exitcond_i = icmp eq i3 %i2_i, -2, !dbg !211   ; [#uses=1 type=i1] [debug line = 735:16]
  %i_2 = add i3 %i2_i, 1, !dbg !213               ; [#uses=1 type=i3] [debug line = 735:25]
  br i1 %exitcond_i, label %3, label %2, !dbg !211 ; [debug line = 735:16]

; <label>:2                                       ; preds = %.preheader.i
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str8) nounwind, !dbg !214 ; [debug line = 735:30]
  %tmp_42_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str8), !dbg !216 ; [#uses=1 type=i32] [debug line = 735:71]
  call void (...)* @_ssdm_op_SpecPipeline(i32 5, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !217 ; [debug line = 737:1]
  %tmp_43_i = zext i3 %i2_i to i64, !dbg !218     ; [#uses=7 type=i64] [debug line = 739:2]
  %acc_returnA_addr_14 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp_43_i, !dbg !218 ; [#uses=1 type=float*] [debug line = 739:2]
  %acc_returnA_load_2 = load float* %acc_returnA_addr_14, align 4, !dbg !218 ; [#uses=1 type=float] [debug line = 739:2]
  %sum_returnA = fadd float %tmp_17, %acc_returnA_load_2, !dbg !218 ; [#uses=1 type=float] [debug line = 739:2]
  call void @llvm.dbg.value(metadata !{float %sum_returnA}, i64 0, metadata !219), !dbg !218 ; [debug line = 739:2] [debug variable = sum_returnA]
  %acc_weight_returnSquareA_addr_14 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp_43_i, !dbg !220 ; [#uses=1 type=float*] [debug line = 740:4]
  %acc_weight_returnSquareA_load_2 = load float* %acc_weight_returnSquareA_addr_14, align 4, !dbg !220 ; [#uses=1 type=float] [debug line = 740:4]
  %sum_weight_returnSquareA = fadd float %tmp_16, %acc_weight_returnSquareA_load_2, !dbg !220 ; [#uses=1 type=float] [debug line = 740:4]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnSquareA}, i64 0, metadata !221), !dbg !220 ; [debug line = 740:4] [debug variable = sum_weight_returnSquareA]
  %acc_weight_returnA_addr_14 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp_43_i, !dbg !222 ; [#uses=1 type=float*] [debug line = 741:4]
  %acc_weight_returnA_load_2 = load float* %acc_weight_returnA_addr_14, align 4, !dbg !222 ; [#uses=1 type=float] [debug line = 741:4]
  %sum_weight_returnA = fadd float %tmp_15, %acc_weight_returnA_load_2, !dbg !222 ; [#uses=1 type=float] [debug line = 741:4]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnA}, i64 0, metadata !223), !dbg !222 ; [debug line = 741:4] [debug variable = sum_weight_returnA]
  %acc_returnB_addr_14 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp_43_i, !dbg !224 ; [#uses=1 type=float*] [debug line = 743:4]
  %acc_returnB_load_2 = load float* %acc_returnB_addr_14, align 4, !dbg !224 ; [#uses=1 type=float] [debug line = 743:4]
  %sum_returnB = fadd float %tmp_14, %acc_returnB_load_2, !dbg !224 ; [#uses=1 type=float] [debug line = 743:4]
  call void @llvm.dbg.value(metadata !{float %sum_returnB}, i64 0, metadata !225), !dbg !224 ; [debug line = 743:4] [debug variable = sum_returnB]
  %acc_weight_returnSquareB_addr_14 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp_43_i, !dbg !226 ; [#uses=1 type=float*] [debug line = 744:4]
  %acc_weight_returnSquareB_load_2 = load float* %acc_weight_returnSquareB_addr_14, align 4, !dbg !226 ; [#uses=1 type=float] [debug line = 744:4]
  %sum_weight_returnSquareB = fadd float %tmp_13, %acc_weight_returnSquareB_load_2, !dbg !226 ; [#uses=1 type=float] [debug line = 744:4]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnSquareB}, i64 0, metadata !227), !dbg !226 ; [debug line = 744:4] [debug variable = sum_weight_returnSquareB]
  %acc_weight_returnB_addr_14 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp_43_i, !dbg !228 ; [#uses=1 type=float*] [debug line = 745:4]
  %acc_weight_returnB_load_2 = load float* %acc_weight_returnB_addr_14, align 4, !dbg !228 ; [#uses=1 type=float] [debug line = 745:4]
  %sum_weight_returnB = fadd float %tmp_12, %acc_weight_returnB_load_2, !dbg !228 ; [#uses=1 type=float] [debug line = 745:4]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnB}, i64 0, metadata !229), !dbg !228 ; [debug line = 745:4] [debug variable = sum_weight_returnB]
  %acc_weight_returnA_returnB_add_14 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_43_i, !dbg !230 ; [#uses=1 type=float*] [debug line = 746:4]
  %acc_weight_returnA_returnB_loa_2 = load float* %acc_weight_returnA_returnB_add_14, align 4, !dbg !230 ; [#uses=1 type=float] [debug line = 746:4]
  %sum_weight_returnA_returnB = fadd float %tmp_11, %acc_weight_returnA_returnB_loa_2, !dbg !230 ; [#uses=1 type=float] [debug line = 746:4]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnA_returnB}, i64 0, metadata !231), !dbg !230 ; [debug line = 746:4] [debug variable = sum_weight_returnA_returnB]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str8, i32 %tmp_42_i), !dbg !232 ; [#uses=0 type=i32] [debug line = 747:3]
  call void @llvm.dbg.value(metadata !{i3 %i_2}, i64 0, metadata !233), !dbg !213 ; [debug line = 735:25] [debug variable = i]
  br label %.preheader.i, !dbg !213               ; [debug line = 735:25]

; <label>:3                                       ; preds = %.preheader.i
  call void @llvm.dbg.value(metadata !{float* %sum_weight_out_V}, i64 0, metadata !234), !dbg !237 ; [debug line = 105:48@750:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_out_V}, i64 0, metadata !239), !dbg !242 ; [debug line = 144:48@106:9@750:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_10}, i64 0, metadata !245), !dbg !247 ; [debug line = 145:31@106:9@750:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_out_V, float %tmp_10), !dbg !248 ; [debug line = 146:9@106:9@750:4]
  call void @llvm.dbg.value(metadata !{float* %sum_return_out_V}, i64 0, metadata !234), !dbg !249 ; [debug line = 105:48@752:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_return_out_V}, i64 0, metadata !239), !dbg !251 ; [debug line = 144:48@106:9@752:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_14}, i64 0, metadata !245), !dbg !253 ; [debug line = 145:31@106:9@752:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_return_out_V, float %tmp_14), !dbg !254 ; [debug line = 146:9@106:9@752:4]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquare_out_V}, i64 0, metadata !234), !dbg !255 ; [debug line = 105:48@753:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquare_out_V}, i64 0, metadata !239), !dbg !257 ; [debug line = 144:48@106:9@753:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_13}, i64 0, metadata !245), !dbg !259 ; [debug line = 145:31@106:9@753:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnSquare_out_V, float %tmp_13), !dbg !260 ; [debug line = 146:9@106:9@753:4]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_return_out_V}, i64 0, metadata !234), !dbg !261 ; [debug line = 105:48@754:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_return_out_V}, i64 0, metadata !239), !dbg !263 ; [debug line = 144:48@106:9@754:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_12}, i64 0, metadata !245), !dbg !265 ; [debug line = 145:31@106:9@754:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_return_out_V, float %tmp_12), !dbg !266 ; [debug line = 146:9@106:9@754:4]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_returnB_out}, i64 0, metadata !234), !dbg !267 ; [debug line = 105:48@756:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_returnB_out}, i64 0, metadata !239), !dbg !269 ; [debug line = 144:48@106:9@756:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_11}, i64 0, metadata !245), !dbg !271 ; [debug line = 145:31@106:9@756:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnA_returnB_out, float %tmp_11), !dbg !272 ; [debug line = 146:9@106:9@756:4]
  call void @llvm.dbg.value(metadata !{float* %sum_returnA_out_V}, i64 0, metadata !234), !dbg !273 ; [debug line = 105:48@758:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_returnA_out_V}, i64 0, metadata !239), !dbg !275 ; [debug line = 144:48@106:9@758:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_17}, i64 0, metadata !245), !dbg !277 ; [debug line = 145:31@106:9@758:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_returnA_out_V, float %tmp_17), !dbg !278 ; [debug line = 146:9@106:9@758:4]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquareA_out_V}, i64 0, metadata !234), !dbg !279 ; [debug line = 105:48@759:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquareA_out_V}, i64 0, metadata !239), !dbg !281 ; [debug line = 144:48@106:9@759:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_16}, i64 0, metadata !245), !dbg !283 ; [debug line = 145:31@106:9@759:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnSquareA_out_V, float %tmp_16), !dbg !284 ; [debug line = 146:9@106:9@759:4]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_out_V}, i64 0, metadata !234), !dbg !285 ; [debug line = 105:48@760:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_out_V}, i64 0, metadata !239), !dbg !287 ; [debug line = 144:48@106:9@760:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_15}, i64 0, metadata !245), !dbg !289 ; [debug line = 145:31@106:9@760:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnA_out_V, float %tmp_15), !dbg !290 ; [debug line = 146:9@106:9@760:4]
  %column_index = add nsw i32 %column_index_i, 1, !dbg !291 ; [#uses=1 type=i32] [debug line = 639:56]
  call void @llvm.dbg.value(metadata !{i32 %column_index}, i64 0, metadata !292), !dbg !291 ; [debug line = 639:56] [debug variable = column_index]
  br label %0, !dbg !291                          ; [debug line = 639:56]

midEnd.2.exit:                                    ; preds = %0
  ret void
}

; [#uses=0]
define void @correlation_accel_v4(i32 %number_of_days, i32 %number_of_indices, i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V) {
  %number_of_indices_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %number_of_indices) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %number_of_indices_read}, i64 0, metadata !293), !dbg !1523 ; [debug line = 35:13] [debug variable = number_of_indices]
  %number_of_days_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %number_of_days) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days_read}, i64 0, metadata !1524), !dbg !1525 ; [debug line = 34:32] [debug variable = number_of_days]
  %number_of_indices20_channel = alloca i32, align 4 ; [#uses=5 type=i32*]
  %number_of_days19_channel = alloca i32, align 4 ; [#uses=5 type=i32*]
  %number_of_indices18_channel = alloca i32, align 4 ; [#uses=5 type=i32*]
  %number_of_indices17_channel = alloca i32, align 4 ; [#uses=5 type=i32*]
  %number_of_days16_channel = alloca i32, align 4 ; [#uses=5 type=i32*]
  %number_of_days15_channel = alloca i32, align 4 ; [#uses=5 type=i32*]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind, !dbg !1526 ; [debug line = 57:1]
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %number_of_days), !map !1528
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %number_of_indices), !map !1534
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_indices_data_V), !map !1538
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_indices_keep_V), !map !1544
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_indices_strb_V), !map !1548
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_user_V), !map !1552
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_last_V), !map !1556
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_id_V), !map !1560
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_dest_V), !map !1564
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_correlation_data_V), !map !1568
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_correlation_keep_V), !map !1574
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_correlation_strb_V), !map !1578
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_user_V), !map !1582
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_last_V), !map !1586
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_id_V), !map !1590
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_dest_V), !map !1594
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @str) nounwind
  %ln_returnA_c1_V = alloca float, align 4        ; [#uses=5 type=float*]
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @str17, i32 1, [1 x i8]* @str18, [1 x i8]* @str18, i32 2, i32 2, float* %ln_returnA_c1_V, float* %ln_returnA_c1_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnA_c1_V, [8 x i8]* @str19, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str20, [1 x i8]* @str20, [8 x i8]* @str19)
  %weight_returnSquareA_c1_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @str21, i32 1, [1 x i8]* @str22, [1 x i8]* @str22, i32 2, i32 2, float* %weight_returnSquareA_c1_V, float* %weight_returnSquareA_c1_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareA_c1_V, [8 x i8]* @str23, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str24, [1 x i8]* @str24, [8 x i8]* @str23)
  %weight_returnA_c1_V = alloca float, align 4    ; [#uses=5 type=float*]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @str25, i32 1, [1 x i8]* @str26, [1 x i8]* @str26, i32 2, i32 2, float* %weight_returnA_c1_V, float* %weight_returnA_c1_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_c1_V, [8 x i8]* @str27, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str28, [1 x i8]* @str28, [8 x i8]* @str27)
  %ln_returnA_c2_V = alloca float, align 4        ; [#uses=5 type=float*]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @str29, i32 1, [1 x i8]* @str30, [1 x i8]* @str30, i32 2, i32 2, float* %ln_returnA_c2_V, float* %ln_returnA_c2_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnA_c2_V, [8 x i8]* @str31, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str32, [1 x i8]* @str32, [8 x i8]* @str31)
  %weight_returnSquareA_c2_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @str33, i32 1, [1 x i8]* @str34, [1 x i8]* @str34, i32 2, i32 2, float* %weight_returnSquareA_c2_V, float* %weight_returnSquareA_c2_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareA_c2_V, [8 x i8]* @str35, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str36, [1 x i8]* @str36, [8 x i8]* @str35)
  %weight_returnA_c2_V = alloca float, align 4    ; [#uses=5 type=float*]
  %empty_16 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @str37, i32 1, [1 x i8]* @str38, [1 x i8]* @str38, i32 2, i32 2, float* %weight_returnA_c2_V, float* %weight_returnA_c2_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_c2_V, [8 x i8]* @str39, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str40, [1 x i8]* @str40, [8 x i8]* @str39)
  %sum_weight_c1_V = alloca float, align 4        ; [#uses=5 type=float*]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @str41, i32 1, [1 x i8]* @str42, [1 x i8]* @str42, i32 2, i32 2, float* %sum_weight_c1_V, float* %sum_weight_c1_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_c1_V, [8 x i8]* @str43, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str44, [1 x i8]* @str44, [8 x i8]* @str43)
  %ln_returnB_c1_V = alloca float, align 4        ; [#uses=5 type=float*]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @str45, i32 1, [1 x i8]* @str46, [1 x i8]* @str46, i32 2, i32 2, float* %ln_returnB_c1_V, float* %ln_returnB_c1_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnB_c1_V, [8 x i8]* @str47, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str48, [1 x i8]* @str48, [8 x i8]* @str47)
  %weight_returnSquareB_c1_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @str49, i32 1, [1 x i8]* @str50, [1 x i8]* @str50, i32 2, i32 2, float* %weight_returnSquareB_c1_V, float* %weight_returnSquareB_c1_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareB_c1_V, [8 x i8]* @str51, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str52, [1 x i8]* @str52, [8 x i8]* @str51)
  %weight_returnB_c1_V = alloca float, align 4    ; [#uses=5 type=float*]
  %empty_20 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @str53, i32 1, [1 x i8]* @str54, [1 x i8]* @str54, i32 2, i32 2, float* %weight_returnB_c1_V, float* %weight_returnB_c1_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnB_c1_V, [8 x i8]* @str55, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str56, [1 x i8]* @str56, [8 x i8]* @str55)
  %weight_returnA_returnB_c1_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @str57, i32 1, [1 x i8]* @str58, [1 x i8]* @str58, i32 2, i32 2, float* %weight_returnA_returnB_c1_V, float* %weight_returnA_returnB_c1_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_returnB_c1_V, [8 x i8]* @str59, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str60, [1 x i8]* @str60, [8 x i8]* @str59)
  %sum_weight_c2_V = alloca float, align 4        ; [#uses=5 type=float*]
  %empty_22 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @str61, i32 1, [1 x i8]* @str62, [1 x i8]* @str62, i32 2, i32 2, float* %sum_weight_c2_V, float* %sum_weight_c2_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_c2_V, [8 x i8]* @str63, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str64, [1 x i8]* @str64, [8 x i8]* @str63)
  %ln_returnB_c2_V = alloca float, align 4        ; [#uses=5 type=float*]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecChannel([16 x i8]* @str65, i32 1, [1 x i8]* @str66, [1 x i8]* @str66, i32 2, i32 2, float* %ln_returnB_c2_V, float* %ln_returnB_c2_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %ln_returnB_c2_V, [8 x i8]* @str67, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str68, [1 x i8]* @str68, [8 x i8]* @str67)
  %weight_returnSquareB_c2_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_24 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @str69, i32 1, [1 x i8]* @str70, [1 x i8]* @str70, i32 2, i32 2, float* %weight_returnSquareB_c2_V, float* %weight_returnSquareB_c2_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnSquareB_c2_V, [8 x i8]* @str71, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str72, [1 x i8]* @str72, [8 x i8]* @str71)
  %weight_returnB_c2_V = alloca float, align 4    ; [#uses=5 type=float*]
  %empty_25 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @str73, i32 1, [1 x i8]* @str74, [1 x i8]* @str74, i32 2, i32 2, float* %weight_returnB_c2_V, float* %weight_returnB_c2_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnB_c2_V, [8 x i8]* @str75, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str76, [1 x i8]* @str76, [8 x i8]* @str75)
  %weight_returnA_returnB_c2_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_26 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @str77, i32 1, [1 x i8]* @str78, [1 x i8]* @str78, i32 2, i32 2, float* %weight_returnA_returnB_c2_V, float* %weight_returnA_returnB_c2_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %weight_returnA_returnB_c2_V, [8 x i8]* @str79, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str80, [1 x i8]* @str80, [8 x i8]* @str79)
  %sum_weight_stage2_c1_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_27 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str81, i32 1, [1 x i8]* @str82, [1 x i8]* @str82, i32 2, i32 2, float* %sum_weight_stage2_c1_V, float* %sum_weight_stage2_c1_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_stage2_c1_V, [8 x i8]* @str83, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str84, [1 x i8]* @str84, [8 x i8]* @str83)
  %sum_return_stage2_c1_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_28 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str85, i32 1, [1 x i8]* @str86, [1 x i8]* @str86, i32 2, i32 2, float* %sum_return_stage2_c1_V, float* %sum_return_stage2_c1_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_return_stage2_c1_V, [8 x i8]* @str87, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str88, [1 x i8]* @str88, [8 x i8]* @str87)
  %sum_weight_returnSquare_stage2 = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_29 = call i32 (...)* @_ssdm_op_SpecChannel([36 x i8]* @str89, i32 1, [1 x i8]* @str90, [1 x i8]* @str90, i32 2, i32 2, float* %sum_weight_returnSquare_stage2, float* %sum_weight_returnSquare_stage2) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquare_stage2, [8 x i8]* @str91, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str92, [1 x i8]* @str92, [8 x i8]* @str91)
  %sum_weight_return_stage2_c1_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_30 = call i32 (...)* @_ssdm_op_SpecChannel([30 x i8]* @str93, i32 1, [1 x i8]* @str94, [1 x i8]* @str94, i32 2, i32 2, float* %sum_weight_return_stage2_c1_V, float* %sum_weight_return_stage2_c1_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_return_stage2_c1_V, [8 x i8]* @str95, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str96, [1 x i8]* @str96, [8 x i8]* @str95)
  %sum_weight_returnA_returnB_sta = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_31 = call i32 (...)* @_ssdm_op_SpecChannel([39 x i8]* @str97, i32 1, [1 x i8]* @str98, [1 x i8]* @str98, i32 2, i32 2, float* %sum_weight_returnA_returnB_sta, float* %sum_weight_returnA_returnB_sta) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_returnB_sta, [8 x i8]* @str99, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str100, [1 x i8]* @str100, [8 x i8]* @str99)
  %sum_returnA_stage2_c1_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_32 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @str101, i32 1, [1 x i8]* @str102, [1 x i8]* @str102, i32 2, i32 2, float* %sum_returnA_stage2_c1_V, float* %sum_returnA_stage2_c1_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_returnA_stage2_c1_V, [8 x i8]* @str103, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str104, [1 x i8]* @str104, [8 x i8]* @str103)
  %sum_weight_returnSquareA_stage = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_33 = call i32 (...)* @_ssdm_op_SpecChannel([37 x i8]* @str105, i32 1, [1 x i8]* @str106, [1 x i8]* @str106, i32 2, i32 2, float* %sum_weight_returnSquareA_stage, float* %sum_weight_returnSquareA_stage) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquareA_stage, [8 x i8]* @str107, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str108, [1 x i8]* @str108, [8 x i8]* @str107)
  %sum_weight_returnA_stage2_c1_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_34 = call i32 (...)* @_ssdm_op_SpecChannel([31 x i8]* @str109, i32 1, [1 x i8]* @str110, [1 x i8]* @str110, i32 2, i32 2, float* %sum_weight_returnA_stage2_c1_V, float* %sum_weight_returnA_stage2_c1_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_stage2_c1_V, [8 x i8]* @str111, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str112, [1 x i8]* @str112, [8 x i8]* @str111)
  %sum_weight_stage2_c2_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_35 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str113, i32 1, [1 x i8]* @str114, [1 x i8]* @str114, i32 2, i32 2, float* %sum_weight_stage2_c2_V, float* %sum_weight_stage2_c2_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_stage2_c2_V, [8 x i8]* @str115, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str116, [1 x i8]* @str116, [8 x i8]* @str115)
  %sum_return_stage2_c2_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_36 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str117, i32 1, [1 x i8]* @str118, [1 x i8]* @str118, i32 2, i32 2, float* %sum_return_stage2_c2_V, float* %sum_return_stage2_c2_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_return_stage2_c2_V, [8 x i8]* @str119, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str120, [1 x i8]* @str120, [8 x i8]* @str119)
  %sum_weight_returnSquare_stage2_1 = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_37 = call i32 (...)* @_ssdm_op_SpecChannel([36 x i8]* @str121, i32 1, [1 x i8]* @str122, [1 x i8]* @str122, i32 2, i32 2, float* %sum_weight_returnSquare_stage2_1, float* %sum_weight_returnSquare_stage2_1) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquare_stage2_1, [8 x i8]* @str123, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str124, [1 x i8]* @str124, [8 x i8]* @str123)
  %sum_weight_return_stage2_c2_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_38 = call i32 (...)* @_ssdm_op_SpecChannel([30 x i8]* @str125, i32 1, [1 x i8]* @str126, [1 x i8]* @str126, i32 2, i32 2, float* %sum_weight_return_stage2_c2_V, float* %sum_weight_return_stage2_c2_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_return_stage2_c2_V, [8 x i8]* @str127, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str128, [1 x i8]* @str128, [8 x i8]* @str127)
  %sum_weight_returnA_returnB_sta_1 = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_39 = call i32 (...)* @_ssdm_op_SpecChannel([39 x i8]* @str129, i32 1, [1 x i8]* @str130, [1 x i8]* @str130, i32 2, i32 2, float* %sum_weight_returnA_returnB_sta_1, float* %sum_weight_returnA_returnB_sta_1) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_returnB_sta_1, [8 x i8]* @str131, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str132, [1 x i8]* @str132, [8 x i8]* @str131)
  %sum_returnA_stage2_c2_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_40 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @str133, i32 1, [1 x i8]* @str134, [1 x i8]* @str134, i32 2, i32 2, float* %sum_returnA_stage2_c2_V, float* %sum_returnA_stage2_c2_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_returnA_stage2_c2_V, [8 x i8]* @str135, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str136, [1 x i8]* @str136, [8 x i8]* @str135)
  %sum_weight_returnSquareA_stage_1 = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_41 = call i32 (...)* @_ssdm_op_SpecChannel([37 x i8]* @str137, i32 1, [1 x i8]* @str138, [1 x i8]* @str138, i32 2, i32 2, float* %sum_weight_returnSquareA_stage_1, float* %sum_weight_returnSquareA_stage_1) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquareA_stage_1, [8 x i8]* @str139, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str140, [1 x i8]* @str140, [8 x i8]* @str139)
  %sum_weight_returnA_stage2_c2_V = alloca float, align 4 ; [#uses=5 type=float*]
  %empty_42 = call i32 (...)* @_ssdm_op_SpecChannel([31 x i8]* @str141, i32 1, [1 x i8]* @str142, [1 x i8]* @str142, i32 2, i32 2, float* %sum_weight_returnA_stage2_c2_V, float* %sum_weight_returnA_stage2_c2_V) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_stage2_c2_V, [8 x i8]* @str143, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str144, [1 x i8]* @str144, [8 x i8]* @str143)
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind, !dbg !1598 ; [debug line = 50:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !1599 ; [debug line = 56:1]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days}, i64 0, metadata !1524), !dbg !1525 ; [debug line = 34:32] [debug variable = number_of_days]
  call void @llvm.dbg.value(metadata !{i32 %number_of_indices}, i64 0, metadata !293), !dbg !1523 ; [debug line = 35:13] [debug variable = number_of_indices]
  call void @llvm.dbg.value(metadata !{i32* %in_indices_data_V}, i64 0, metadata !1600), !dbg !1613 ; [debug line = 37:27] [debug variable = in_indices.data.V]
  call void @llvm.dbg.value(metadata !{i4* %in_indices_keep_V}, i64 0, metadata !1614), !dbg !1613 ; [debug line = 37:27] [debug variable = in_indices.keep.V]
  call void @llvm.dbg.value(metadata !{i4* %in_indices_strb_V}, i64 0, metadata !1624), !dbg !1613 ; [debug line = 37:27] [debug variable = in_indices.strb.V]
  call void @llvm.dbg.value(metadata !{i1* %in_indices_user_V}, i64 0, metadata !1625), !dbg !1613 ; [debug line = 37:27] [debug variable = in_indices.user.V]
  call void @llvm.dbg.value(metadata !{i1* %in_indices_last_V}, i64 0, metadata !1635), !dbg !1613 ; [debug line = 37:27] [debug variable = in_indices.last.V]
  call void @llvm.dbg.value(metadata !{i1* %in_indices_id_V}, i64 0, metadata !1636), !dbg !1613 ; [debug line = 37:27] [debug variable = in_indices.id.V]
  call void @llvm.dbg.value(metadata !{i1* %in_indices_dest_V}, i64 0, metadata !1637), !dbg !1613 ; [debug line = 37:27] [debug variable = in_indices.dest.V]
  call void @llvm.dbg.value(metadata !{i32* %out_correlation_data_V}, i64 0, metadata !1638), !dbg !1643 ; [debug line = 38:36] [debug variable = out_correlation.data.V]
  call void @llvm.dbg.value(metadata !{i4* %out_correlation_keep_V}, i64 0, metadata !1644), !dbg !1643 ; [debug line = 38:36] [debug variable = out_correlation.keep.V]
  call void @llvm.dbg.value(metadata !{i4* %out_correlation_strb_V}, i64 0, metadata !1646), !dbg !1643 ; [debug line = 38:36] [debug variable = out_correlation.strb.V]
  call void @llvm.dbg.value(metadata !{i1* %out_correlation_user_V}, i64 0, metadata !1647), !dbg !1643 ; [debug line = 38:36] [debug variable = out_correlation.user.V]
  call void @llvm.dbg.value(metadata !{i1* %out_correlation_last_V}, i64 0, metadata !1649), !dbg !1643 ; [debug line = 38:36] [debug variable = out_correlation.last.V]
  call void @llvm.dbg.value(metadata !{i1* %out_correlation_id_V}, i64 0, metadata !1650), !dbg !1643 ; [debug line = 38:36] [debug variable = out_correlation.id.V]
  call void @llvm.dbg.value(metadata !{i1* %out_correlation_dest_V}, i64 0, metadata !1651), !dbg !1643 ; [debug line = 38:36] [debug variable = out_correlation.dest.V]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days}, i64 0, metadata !1652), !dbg !1654 ; [debug line = 60:43] [debug variable = NUMBER_OF_DAYS]
  call void @llvm.dbg.value(metadata !{i32 %number_of_indices}, i64 0, metadata !1655), !dbg !1656 ; [debug line = 61:49] [debug variable = NUMBER_OF_INDICES]
  call void @llvm.dbg.declare(metadata !{float* %ln_returnA_c1_V}, metadata !1657), !dbg !1659 ; [debug line = 64:21] [debug variable = ln_returnA_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %weight_returnSquareA_c1_V}, metadata !1660), !dbg !1662 ; [debug line = 65:21] [debug variable = weight_returnSquareA_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %weight_returnA_c1_V}, metadata !1663), !dbg !1665 ; [debug line = 66:21] [debug variable = weight_returnA_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %ln_returnA_c2_V}, metadata !1666), !dbg !1668 ; [debug line = 68:21] [debug variable = ln_returnA_c2.V]
  call void @llvm.dbg.declare(metadata !{float* %weight_returnSquareA_c2_V}, metadata !1669), !dbg !1671 ; [debug line = 69:21] [debug variable = weight_returnSquareA_c2.V]
  call void @llvm.dbg.declare(metadata !{float* %weight_returnA_c2_V}, metadata !1672), !dbg !1674 ; [debug line = 70:21] [debug variable = weight_returnA_c2.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_c1_V}, metadata !1675), !dbg !1677 ; [debug line = 72:21] [debug variable = sum_weight_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %ln_returnB_c1_V}, metadata !1678), !dbg !1680 ; [debug line = 73:21] [debug variable = ln_returnB_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %weight_returnSquareB_c1_V}, metadata !1681), !dbg !1683 ; [debug line = 74:21] [debug variable = weight_returnSquareB_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %weight_returnB_c1_V}, metadata !1684), !dbg !1686 ; [debug line = 75:21] [debug variable = weight_returnB_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %weight_returnA_returnB_c1_V}, metadata !1687), !dbg !1689 ; [debug line = 76:21] [debug variable = weight_returnA_returnB_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_c2_V}, metadata !1690), !dbg !1692 ; [debug line = 78:21] [debug variable = sum_weight_c2.V]
  call void @llvm.dbg.declare(metadata !{float* %ln_returnB_c2_V}, metadata !1693), !dbg !1695 ; [debug line = 79:21] [debug variable = ln_returnB_c2.V]
  call void @llvm.dbg.declare(metadata !{float* %weight_returnSquareB_c2_V}, metadata !1696), !dbg !1698 ; [debug line = 80:21] [debug variable = weight_returnSquareB_c2.V]
  call void @llvm.dbg.declare(metadata !{float* %weight_returnB_c2_V}, metadata !1699), !dbg !1701 ; [debug line = 81:21] [debug variable = weight_returnB_c2.V]
  call void @llvm.dbg.declare(metadata !{float* %weight_returnA_returnB_c2_V}, metadata !1702), !dbg !1704 ; [debug line = 82:21] [debug variable = weight_returnA_returnB_c2.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_stage2_c1_V}, metadata !1705), !dbg !1707 ; [debug line = 104:21] [debug variable = sum_weight_stage2_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_return_stage2_c1_V}, metadata !1708), !dbg !1710 ; [debug line = 105:21] [debug variable = sum_return_stage2_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnSquare_stage2}, metadata !1711), !dbg !1713 ; [debug line = 106:21] [debug variable = sum_weight_returnSquare_stage2_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_return_stage2_c1_V}, metadata !1714), !dbg !1716 ; [debug line = 107:21] [debug variable = sum_weight_return_stage2_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnA_returnB_sta}, metadata !1717), !dbg !1719 ; [debug line = 108:21] [debug variable = sum_weight_returnA_returnB_stage2_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_returnA_stage2_c1_V}, metadata !1720), !dbg !1722 ; [debug line = 109:21] [debug variable = sum_returnA_stage2_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnSquareA_stage}, metadata !1723), !dbg !1725 ; [debug line = 110:21] [debug variable = sum_weight_returnSquareA_stage2_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnA_stage2_c1_V}, metadata !1726), !dbg !1728 ; [debug line = 111:21] [debug variable = sum_weight_returnA_stage2_c1.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_stage2_c2_V}, metadata !1729), !dbg !1731 ; [debug line = 113:21] [debug variable = sum_weight_stage2_c2.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_return_stage2_c2_V}, metadata !1732), !dbg !1734 ; [debug line = 114:21] [debug variable = sum_return_stage2_c2.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnSquare_stage2_1}, metadata !1735), !dbg !1737 ; [debug line = 115:21] [debug variable = sum_weight_returnSquare_stage2_c2.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_return_stage2_c2_V}, metadata !1738), !dbg !1740 ; [debug line = 116:21] [debug variable = sum_weight_return_stage2_c2.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnA_returnB_sta_1}, metadata !1741), !dbg !1743 ; [debug line = 117:21] [debug variable = sum_weight_returnA_returnB_stage2_c2.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_returnA_stage2_c2_V}, metadata !1744), !dbg !1746 ; [debug line = 118:21] [debug variable = sum_returnA_stage2_c2.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnSquareA_stage_1}, metadata !1747), !dbg !1749 ; [debug line = 119:21] [debug variable = sum_weight_returnSquareA_stage2_c2.V]
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnA_stage2_c2_V}, metadata !1750), !dbg !1752 ; [debug line = 120:21] [debug variable = sum_weight_returnA_stage2_c2.V]
  call fastcc void @correlation_accel_v4_frontEnd(i32 %number_of_days_read, i32 %number_of_indices_read, i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, float* %ln_returnA_c1_V, float* %weight_returnSquareA_c1_V, float* %weight_returnA_c1_V, float* %ln_returnA_c2_V, float* %weight_returnSquareA_c2_V, float* %weight_returnA_c2_V, float* %sum_weight_c1_V, float* %ln_returnB_c1_V, float* %weight_returnSquareB_c1_V, float* %weight_returnB_c1_V, float* %weight_returnA_returnB_c1_V, float* %sum_weight_c2_V, float* %ln_returnB_c2_V, float* %weight_returnSquareB_c2_V, float* %weight_returnB_c2_V, float* %weight_returnA_returnB_c2_V, i32* %number_of_days15_channel, i32* %number_of_days16_channel, i32* %number_of_indices17_channel, i32* %number_of_indices18_channel), !dbg !1753 ; [debug line = 183:2]
  %empty_43 = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @str166, i32 1, [1 x i8]* @str167, [1 x i8]* @str167, i32 1, i32 0, i32* %number_of_days15_channel, i32* %number_of_days15_channel) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %number_of_days15_channel, [8 x i8]* @str168, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str168, [8 x i8]* @str168, [8 x i8]* @str168)
  %empty_44 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @str172, i32 1, [1 x i8]* @str173, [1 x i8]* @str173, i32 1, i32 0, i32* %number_of_indices17_channel, i32* %number_of_indices17_channel) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %number_of_indices17_channel, [8 x i8]* @str174, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str174, [8 x i8]* @str174, [8 x i8]* @str174)
  call fastcc void @correlation_accel_v4_midEnd(i32* %number_of_days15_channel, i32* %number_of_indices17_channel, float* %ln_returnA_c1_V, float* %weight_returnSquareA_c1_V, float* %weight_returnA_c1_V, float* %sum_weight_c1_V, float* %ln_returnB_c1_V, float* %weight_returnSquareB_c1_V, float* %weight_returnB_c1_V, float* %weight_returnA_returnB_c1_V, float* %sum_weight_stage2_c1_V, float* %sum_return_stage2_c1_V, float* %sum_weight_returnSquare_stage2, float* %sum_weight_return_stage2_c1_V, float* %sum_weight_returnA_returnB_sta, float* %sum_returnA_stage2_c1_V, float* %sum_weight_returnSquareA_stage, float* %sum_weight_returnA_stage2_c1_V, i32* %number_of_days19_channel, i32* %number_of_indices20_channel), !dbg !1754 ; [debug line = 208:2]
  %empty_45 = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @str169, i32 1, [1 x i8]* @str170, [1 x i8]* @str170, i32 1, i32 0, i32* %number_of_days16_channel, i32* %number_of_days16_channel) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %number_of_days16_channel, [8 x i8]* @str171, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str171, [8 x i8]* @str171, [8 x i8]* @str171)
  %empty_46 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @str175, i32 1, [1 x i8]* @str176, [1 x i8]* @str176, i32 1, i32 0, i32* %number_of_indices18_channel, i32* %number_of_indices18_channel) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %number_of_indices18_channel, [8 x i8]* @str177, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str177, [8 x i8]* @str177, [8 x i8]* @str177)
  call fastcc void @correlation_accel_v4_midEnd.1(i32* %number_of_days16_channel, i32* %number_of_indices18_channel, float* %ln_returnA_c2_V, float* %weight_returnSquareA_c2_V, float* %weight_returnA_c2_V, float* %sum_weight_c2_V, float* %ln_returnB_c2_V, float* %weight_returnSquareB_c2_V, float* %weight_returnB_c2_V, float* %weight_returnA_returnB_c2_V, float* %sum_weight_stage2_c2_V, float* %sum_return_stage2_c2_V, float* %sum_weight_returnSquare_stage2_1, float* %sum_weight_return_stage2_c2_V, float* %sum_weight_returnA_returnB_sta_1, float* %sum_returnA_stage2_c2_V, float* %sum_weight_returnSquareA_stage_1, float* %sum_weight_returnA_stage2_c2_V), !dbg !1755 ; [debug line = 232:2]
  %empty_47 = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @str178, i32 1, [1 x i8]* @str179, [1 x i8]* @str179, i32 1, i32 0, i32* %number_of_days19_channel, i32* %number_of_days19_channel) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %number_of_days19_channel, [8 x i8]* @str180, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str180, [8 x i8]* @str180, [8 x i8]* @str180)
  %empty_48 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @str181, i32 1, [1 x i8]* @str182, [1 x i8]* @str182, i32 1, i32 0, i32* %number_of_indices20_channel, i32* %number_of_indices20_channel) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface(i32* %number_of_indices20_channel, [8 x i8]* @str183, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str183, [8 x i8]* @str183, [8 x i8]* @str183)
  call fastcc void @correlation_accel_v4_backEnd(i32* %number_of_days19_channel, i32* %number_of_indices20_channel, float* %sum_weight_stage2_c1_V, float* %sum_return_stage2_c1_V, float* %sum_weight_returnSquare_stage2, float* %sum_weight_return_stage2_c1_V, float* %sum_weight_returnA_returnB_sta, float* %sum_returnA_stage2_c1_V, float* %sum_weight_returnSquareA_stage, float* %sum_weight_returnA_stage2_c1_V, float* %sum_weight_stage2_c2_V, float* %sum_return_stage2_c2_V, float* %sum_weight_returnSquare_stage2_1, float* %sum_weight_return_stage2_c2_V, float* %sum_weight_returnA_returnB_sta_1, float* %sum_returnA_stage2_c2_V, float* %sum_weight_returnSquareA_stage_1, float* %sum_weight_returnA_stage2_c2_V, i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V), !dbg !1756 ; [debug line = 256:2]
  ret void, !dbg !1757                            ; [debug line = 280:1]
}

; [#uses=1]
define internal fastcc void @correlation_accel_v4_frontEnd(i32 %NUMBER_OF_DAYS, i32 %NUMBER_OF_INDICES, i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, float* %ln_returnA_out_c1_V, float* %weight_returnSquareA_out_c1_V, float* %weight_returnA_out_c1_V, float* %ln_returnA_out_c2_V, float* %weight_returnSquareA_out_c2_V, float* %weight_returnA_out_c2_V, float* %sum_weight_out_c1_V, float* %ln_returnB_out_c1_V, float* %weight_returnSquareB_out_c1_V, float* %weight_returnB_out_c1_V, float* %weight_returnA_returnB_out_c1_s, float* %sum_weight_out_c2_V, float* %ln_returnB_out_c2_V, float* %weight_returnSquareB_out_c2_V, float* %weight_returnB_out_c2_V, float* %weight_returnA_returnB_out_c2_s, i32* %NUMBER_OF_DAYS_out, i32* %NUMBER_OF_DAYS_out1, i32* %NUMBER_OF_INDICES_out, i32* %NUMBER_OF_INDICES_out2) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i1* %in_indices_dest_V, i1* %in_indices_id_V, i1* %in_indices_last_V, i1* %in_indices_user_V, i4* %in_indices_strb_V, i4* %in_indices_keep_V, i32* %in_indices_data_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES_out2, [8 x i8]* @str189, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str189, [8 x i8]* @str189, [8 x i8]* @str189)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES_out, [8 x i8]* @str188, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str188, [8 x i8]* @str188, [8 x i8]* @str188)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS_out1, [8 x i8]* @str187, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str187, [8 x i8]* @str187, [8 x i8]* @str187)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS_out, [8 x i8]* @str186, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str186, [8 x i8]* @str186, [8 x i8]* @str186)
  %NUMBER_OF_INDICES_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %NUMBER_OF_INDICES) ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %NUMBER_OF_INDICES_read}, i64 0, metadata !1758), !dbg !1762 ; [debug line = 331:9] [debug variable = NUMBER_OF_INDICES]
  %NUMBER_OF_DAYS_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %NUMBER_OF_DAYS) ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %NUMBER_OF_DAYS_read}, i64 0, metadata !1763), !dbg !1764 ; [debug line = 330:9] [debug variable = NUMBER_OF_DAYS]
  call void @llvm.dbg.value(metadata !{i32 %NUMBER_OF_DAYS_read}, i64 0, metadata !1765), !dbg !1772 ; [debug line = 308:7@391:2] [debug variable = NUMBER_OF_DAYS]
  %tmp1_keep_V_i = alloca i4, align 1             ; [#uses=4 type=i4*]
  %tmp1_strb_V_i = alloca i4, align 1             ; [#uses=4 type=i4*]
  %tmp1_user_V_i = alloca i1, align 1             ; [#uses=4 type=i1*]
  %tmp1_last_V_i = alloca i1, align 1             ; [#uses=4 type=i1*]
  %tmp1_id_V_i = alloca i1, align 1               ; [#uses=4 type=i1*]
  %tmp1_dest_V_i = alloca i1, align 1             ; [#uses=4 type=i1*]
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
  call void @llvm.dbg.value(metadata !{i32 %NUMBER_OF_DAYS}, i64 0, metadata !1763), !dbg !1764 ; [debug line = 330:9] [debug variable = NUMBER_OF_DAYS]
  call void @llvm.dbg.value(metadata !{i32 %NUMBER_OF_INDICES}, i64 0, metadata !1758), !dbg !1762 ; [debug line = 331:9] [debug variable = NUMBER_OF_INDICES]
  call void @llvm.dbg.value(metadata !{i32* %in_indices_data_V}, i64 0, metadata !1773), !dbg !1775 ; [debug line = 332:23] [debug variable = in_indices.data.V]
  call void @llvm.dbg.value(metadata !{i4* %in_indices_keep_V}, i64 0, metadata !1776), !dbg !1775 ; [debug line = 332:23] [debug variable = in_indices.keep.V]
  call void @llvm.dbg.value(metadata !{i4* %in_indices_strb_V}, i64 0, metadata !1777), !dbg !1775 ; [debug line = 332:23] [debug variable = in_indices.strb.V]
  call void @llvm.dbg.value(metadata !{i1* %in_indices_user_V}, i64 0, metadata !1778), !dbg !1775 ; [debug line = 332:23] [debug variable = in_indices.user.V]
  call void @llvm.dbg.value(metadata !{i1* %in_indices_last_V}, i64 0, metadata !1779), !dbg !1775 ; [debug line = 332:23] [debug variable = in_indices.last.V]
  call void @llvm.dbg.value(metadata !{i1* %in_indices_id_V}, i64 0, metadata !1780), !dbg !1775 ; [debug line = 332:23] [debug variable = in_indices.id.V]
  call void @llvm.dbg.value(metadata !{i1* %in_indices_dest_V}, i64 0, metadata !1781), !dbg !1775 ; [debug line = 332:23] [debug variable = in_indices.dest.V]
  call void @llvm.dbg.value(metadata !{float* %ln_returnA_out_c1_V}, i64 0, metadata !1782), !dbg !1784 ; [debug line = 334:25] [debug variable = ln_returnA_out_c1.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareA_out_c1_V}, i64 0, metadata !1785), !dbg !1787 ; [debug line = 335:25] [debug variable = weight_returnSquareA_out_c1.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_out_c1_V}, i64 0, metadata !1788), !dbg !1790 ; [debug line = 336:25] [debug variable = weight_returnA_out_c1.V]
  call void @llvm.dbg.value(metadata !{float* %ln_returnA_out_c2_V}, i64 0, metadata !1791), !dbg !1793 ; [debug line = 338:25] [debug variable = ln_returnA_out_c2.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareA_out_c2_V}, i64 0, metadata !1794), !dbg !1796 ; [debug line = 339:25] [debug variable = weight_returnSquareA_out_c2.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_out_c2_V}, i64 0, metadata !1797), !dbg !1799 ; [debug line = 340:25] [debug variable = weight_returnA_out_c2.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_out_c1_V}, i64 0, metadata !1800), !dbg !1802 ; [debug line = 342:25] [debug variable = sum_weight_out_c1.V]
  call void @llvm.dbg.value(metadata !{float* %ln_returnB_out_c1_V}, i64 0, metadata !1803), !dbg !1805 ; [debug line = 343:25] [debug variable = ln_returnB_out_c1.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareB_out_c1_V}, i64 0, metadata !1806), !dbg !1808 ; [debug line = 344:25] [debug variable = weight_returnSquareB_out_c1.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnB_out_c1_V}, i64 0, metadata !1809), !dbg !1811 ; [debug line = 345:25] [debug variable = weight_returnB_out_c1.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_returnB_out_c1_s}, i64 0, metadata !1812), !dbg !1814 ; [debug line = 346:25] [debug variable = weight_returnA_returnB_out_c1.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_out_c2_V}, i64 0, metadata !1815), !dbg !1817 ; [debug line = 348:25] [debug variable = sum_weight_out_c2.V]
  call void @llvm.dbg.value(metadata !{float* %ln_returnB_out_c2_V}, i64 0, metadata !1818), !dbg !1820 ; [debug line = 349:25] [debug variable = ln_returnB_out_c2.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareB_out_c2_V}, i64 0, metadata !1821), !dbg !1823 ; [debug line = 350:25] [debug variable = weight_returnSquareB_out_c2.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnB_out_c2_V}, i64 0, metadata !1824), !dbg !1826 ; [debug line = 351:25] [debug variable = weight_returnB_out_c2.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_returnB_out_c2_s}, i64 0, metadata !1827), !dbg !1829 ; [debug line = 352:25] [debug variable = weight_returnA_returnB_out_c2.V]
  call void @llvm.dbg.value(metadata !{i32 %NUMBER_OF_DAYS}, i64 0, metadata !1765), !dbg !1772 ; [debug line = 308:7@391:2] [debug variable = NUMBER_OF_DAYS]
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !1830 ; [debug line = 311:2@391:2]
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 1), align 4, !dbg !1832 ; [debug line = 312:2@391:2]
  br label %0, !dbg !1833                         ; [debug line = 315:15@391:2]

; <label>:0                                       ; preds = %1, %entry
  %tmp_i_i = phi float [ 1.000000e+00, %entry ], [ %tmp_i_i_49, %1 ] ; [#uses=1 type=float]
  %i_i_i = phi i8 [ 2, %entry ], [ %i, %1 ]       ; [#uses=3 type=i8]
  %exitcond_i_i = icmp eq i8 %i_i_i, -4, !dbg !1833 ; [#uses=1 type=i1] [debug line = 315:15@391:2]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 250, i64 250, i64 250) ; [#uses=0 type=i32]
  br i1 %exitcond_i_i, label %.preheader.i.i, label %1, !dbg !1833 ; [debug line = 315:15@391:2]

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str9) nounwind, !dbg !1835 ; [debug line = 315:46@391:2]
  %tmp_i_i_49 = fmul float %tmp_i_i, 0x3FEE147AE0000000, !dbg !1837 ; [#uses=2 type=float] [debug line = 316:3@391:2]
  %tmp_86_i_i = zext i8 %i_i_i to i64, !dbg !1837 ; [#uses=1 type=i64] [debug line = 316:3@391:2]
  %weight_rom_addr = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp_86_i_i, !dbg !1837 ; [#uses=1 type=float*] [debug line = 316:3@391:2]
  store float %tmp_i_i_49, float* %weight_rom_addr, align 4, !dbg !1837 ; [debug line = 316:3@391:2]
  %i = add i8 %i_i_i, 1, !dbg !1838               ; [#uses=1 type=i8] [debug line = 315:40@391:2]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !1839), !dbg !1838 ; [debug line = 315:40@391:2] [debug variable = i]
  br label %0, !dbg !1838                         ; [debug line = 315:40@391:2]

.preheader.i.i:                                   ; preds = %2, %0
  %i1_i_i = phi i31 [ %i_3, %2 ], [ 2, %0 ]       ; [#uses=3 type=i31]
  %i1_i_cast_i = zext i31 %i1_i_i to i32, !dbg !1840 ; [#uses=1 type=i32] [debug line = 320:15@391:2]
  %tmp_85_i_i = icmp slt i32 %i1_i_cast_i, %NUMBER_OF_DAYS_read, !dbg !1840 ; [#uses=1 type=i1] [debug line = 320:15@391:2]
  %empty_50 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483645, i64 0) ; [#uses=0 type=i32]
  br i1 %tmp_85_i_i, label %2, label %weight_rom_init.exit.i, !dbg !1840 ; [debug line = 320:15@391:2]

; <label>:2                                       ; preds = %.preheader.i.i
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str10) nounwind, !dbg !1842 ; [debug line = 320:42@391:2]
  %tmp_87_i_i = zext i31 %i1_i_i to i64, !dbg !1844 ; [#uses=1 type=i64] [debug line = 321:3@391:2]
  %weight_rom_addr_1 = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp_87_i_i, !dbg !1844 ; [#uses=1 type=float*] [debug line = 321:3@391:2]
  %weight_rom_load = load float* %weight_rom_addr_1, align 4, !dbg !1844 ; [#uses=1 type=float] [debug line = 321:3@391:2]
  %weight_rom_load_1 = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !1844 ; [#uses=1 type=float] [debug line = 321:3@391:2]
  %tmp_88_i_i = fadd float %weight_rom_load_1, %weight_rom_load, !dbg !1844 ; [#uses=1 type=float] [debug line = 321:3@391:2]
  store float %tmp_88_i_i, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !1844 ; [debug line = 321:3@391:2]
  %i_3 = add i31 %i1_i_i, 1, !dbg !1845           ; [#uses=1 type=i31] [debug line = 320:37@391:2]
  call void @llvm.dbg.value(metadata !{i31 %i_3}, i64 0, metadata !1846), !dbg !1845 ; [debug line = 320:37@391:2] [debug variable = i]
  br label %.preheader.i.i, !dbg !1845            ; [debug line = 320:37@391:2]

weight_rom_init.exit.i:                           ; preds = %.preheader.i.i
  %tmp_2_i = alloca float, align 4                ; [#uses=3 type=float*]
  %sum_weight = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !1847 ; [#uses=2 type=float] [debug line = 392:34]
  call void @llvm.dbg.value(metadata !{float %sum_weight}, i64 0, metadata !1848), !dbg !1847 ; [debug line = 392:34] [debug variable = sum_weight]
  %in_indices_data_V_read = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %in_indices_data_V), !dbg !1849 ; [#uses=1 type=i32] [debug line = 1654:70@412:25]
  %tmp_i = bitcast i32 %in_indices_data_V_read to float, !dbg !1853 ; [#uses=1 type=float] [debug line = 413:12]
  %tmp1_keep_V = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_keep_V), !dbg !1854 ; [#uses=1 type=i4] [debug line = 264:10@414:12]
  call void @llvm.dbg.value(metadata !{i4 %tmp1_keep_V}, i64 0, metadata !1858), !dbg !1854 ; [debug line = 264:10@414:12] [debug variable = tmp1.keep.V]
  store volatile i4 %tmp1_keep_V, i4* %tmp1_keep_V_i, align 4, !dbg !1854 ; [debug line = 264:10@414:12]
  %tmp1_strb_V = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_strb_V), !dbg !1860 ; [#uses=1 type=i4] [debug line = 264:10@415:12]
  call void @llvm.dbg.value(metadata !{i4 %tmp1_strb_V}, i64 0, metadata !1862), !dbg !1860 ; [debug line = 264:10@415:12] [debug variable = tmp1.strb.V]
  store volatile i4 %tmp1_strb_V, i4* %tmp1_strb_V_i, align 1, !dbg !1860 ; [debug line = 264:10@415:12]
  %tmp1_user_V = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_user_V), !dbg !1863 ; [#uses=1 type=i1] [debug line = 264:10@416:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_user_V}, i64 0, metadata !1867), !dbg !1863 ; [debug line = 264:10@416:12] [debug variable = tmp1.user.V]
  store volatile i1 %tmp1_user_V, i1* %tmp1_user_V_i, align 2, !dbg !1863 ; [debug line = 264:10@416:12]
  %tmp1_last_V = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_last_V), !dbg !1868 ; [#uses=1 type=i1] [debug line = 264:10@417:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_last_V}, i64 0, metadata !1870), !dbg !1868 ; [debug line = 264:10@417:12] [debug variable = tmp1.last.V]
  store volatile i1 %tmp1_last_V, i1* %tmp1_last_V_i, align 1, !dbg !1868 ; [debug line = 264:10@417:12]
  %tmp1_id_V = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_id_V), !dbg !1871 ; [#uses=1 type=i1] [debug line = 264:10@418:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_id_V}, i64 0, metadata !1873), !dbg !1871 ; [debug line = 264:10@418:12] [debug variable = tmp1.id.V]
  store volatile i1 %tmp1_id_V, i1* %tmp1_id_V_i, align 4, !dbg !1871 ; [debug line = 264:10@418:12]
  %tmp1_dest_V = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_dest_V), !dbg !1874 ; [#uses=1 type=i1] [debug line = 264:10@419:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_dest_V}, i64 0, metadata !1876), !dbg !1874 ; [debug line = 264:10@419:12] [debug variable = tmp1.dest.V]
  store volatile i1 %tmp1_dest_V, i1* %tmp1_dest_V_i, align 1, !dbg !1874 ; [debug line = 264:10@419:12]
  %tmp_1_i = add nsw i32 %NUMBER_OF_DAYS_read, -1, !dbg !1877 ; [#uses=2 type=i32] [debug line = 425:16]
  br label %3, !dbg !1877                         ; [debug line = 425:16]

; <label>:3                                       ; preds = %4, %weight_rom_init.exit.i
  %tmp_3_i = phi float [ %tmp_i, %weight_rom_init.exit.i ], [ %tmp_3_i_tmp_2_i, %4 ] ; [#uses=1 type=float]
  %i_i = phi i32 [ 1, %weight_rom_init.exit.i ], [ %i_4, %4 ] ; [#uses=4 type=i32]
  %tmp_4_i = icmp sgt i32 %i_i, %tmp_1_i, !dbg !1877 ; [#uses=1 type=i1] [debug line = 425:16]
  br i1 %tmp_4_i, label %.preheader.i.preheader, label %4, !dbg !1877 ; [debug line = 425:16]

.preheader.i.preheader:                           ; preds = %3
  %tmp_2_i_load = load float* %tmp_2_i, align 4   ; [#uses=1 type=float]
  %shift_reg_load1_i = alloca float, align 4      ; [#uses=3 type=float*]
  store float %tmp_2_i_load, float* %shift_reg_load1_i, align 4
  br label %.preheader.i, !dbg !1879              ; [debug line = 467:26]

; <label>:4                                       ; preds = %3
  %tmp_2_i_load_1 = load float* %tmp_2_i, align 4 ; [#uses=1 type=float]
  %tmp = trunc i32 %i_i to i31, !dbg !1877        ; [#uses=1 type=i31] [debug line = 425:16]
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str4) nounwind, !dbg !1881 ; [debug line = 425:48]
  %tmp_80_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str4), !dbg !1883 ; [#uses=1 type=i32] [debug line = 425:90]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !1884 ; [debug line = 427:1]
  %tmp_5_i = icmp eq i32 %i_i, 1, !dbg !1885      ; [#uses=1 type=i1] [debug line = 428:2]
  %in_indices_data_V_read_1 = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %in_indices_data_V), !dbg !1886 ; [#uses=1 type=i32] [debug line = 1654:70@429:29]
  %in_indices_keep_V_read = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_keep_V), !dbg !1889 ; [#uses=1 type=i4] [debug line = 264:10@431:16]
  store volatile i4 %in_indices_keep_V_read, i4* %tmp1_keep_V_i, align 4, !dbg !1889 ; [debug line = 264:10@431:16]
  %in_indices_strb_V_read = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_strb_V), !dbg !1891 ; [#uses=1 type=i4] [debug line = 264:10@432:16]
  store volatile i4 %in_indices_strb_V_read, i4* %tmp1_strb_V_i, align 1, !dbg !1891 ; [debug line = 264:10@432:16]
  %in_indices_user_V_read = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_user_V), !dbg !1893 ; [#uses=1 type=i1] [debug line = 264:10@433:16]
  store volatile i1 %in_indices_user_V_read, i1* %tmp1_user_V_i, align 2, !dbg !1893 ; [debug line = 264:10@433:16]
  %in_indices_last_V_read = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_last_V), !dbg !1895 ; [#uses=1 type=i1] [debug line = 264:10@434:16]
  store volatile i1 %in_indices_last_V_read, i1* %tmp1_last_V_i, align 1, !dbg !1895 ; [debug line = 264:10@434:16]
  %in_indices_id_V_read = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_id_V), !dbg !1897 ; [#uses=1 type=i1] [debug line = 264:10@435:16]
  store volatile i1 %in_indices_id_V_read, i1* %tmp1_id_V_i, align 4, !dbg !1897 ; [debug line = 264:10@435:16]
  %in_indices_dest_V_read = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_dest_V), !dbg !1899 ; [#uses=1 type=i1] [debug line = 264:10@436:16]
  store volatile i1 %in_indices_dest_V_read, i1* %tmp1_dest_V_i, align 1, !dbg !1899 ; [debug line = 264:10@436:16]
  %tmp_3_i_tmp_2_i = select i1 %tmp_5_i, float %tmp_3_i, float %tmp_2_i_load_1 ; [#uses=2 type=float]
  %tmp_14_i = bitcast i32 %in_indices_data_V_read_1 to float, !dbg !1901 ; [#uses=2 type=float] [debug line = 430:16]
  %tmp_15_i = fdiv float %tmp_3_i_tmp_2_i, %tmp_14_i, !dbg !1902 ; [#uses=1 type=float] [debug line = 460:21]
  %lnReturn = call float @llvm.log.f32(float %tmp_15_i), !dbg !1902 ; [#uses=1 type=float] [debug line = 460:21]
  call void @llvm.dbg.value(metadata !{float %lnReturn}, i64 0, metadata !1903), !dbg !1902 ; [debug line = 460:21] [debug variable = lnReturn]
  %tmp_16_i = add i31 %tmp, -1, !dbg !1904        ; [#uses=1 type=i31] [debug line = 462:4]
  %tmp_17_i = zext i31 %tmp_16_i to i64, !dbg !1904 ; [#uses=1 type=i64] [debug line = 462:4]
  %lnReturnA_addr = getelementptr inbounds [252 x float]* @lnReturnA, i64 0, i64 %tmp_17_i, !dbg !1904 ; [#uses=1 type=float*] [debug line = 462:4]
  store float %lnReturn, float* %lnReturnA_addr, align 4, !dbg !1904 ; [debug line = 462:4]
  %empty_51 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str4, i32 %tmp_80_i), !dbg !1905 ; [#uses=0 type=i32] [debug line = 463:3]
  %i_4 = add nsw i32 %i_i, 1, !dbg !1906          ; [#uses=1 type=i32] [debug line = 425:43]
  call void @llvm.dbg.value(metadata !{i32 %i_4}, i64 0, metadata !1907), !dbg !1906 ; [debug line = 425:43] [debug variable = i]
  store float %tmp_14_i, float* %tmp_2_i, align 4
  br label %3, !dbg !1906                         ; [debug line = 425:43]

.preheader.i:                                     ; preds = %11, %.preheader.i.preheader
  %column_index_i = phi i31 [ %column_index, %11 ], [ 1, %.preheader.i.preheader ] ; [#uses=3 type=i31]
  %column_index_cast_i = zext i31 %column_index_i to i32, !dbg !1879 ; [#uses=1 type=i32] [debug line = 467:26]
  %tmp_6_i = icmp slt i32 %column_index_cast_i, %NUMBER_OF_INDICES_read, !dbg !1879 ; [#uses=1 type=i1] [debug line = 467:26]
  br i1 %tmp_6_i, label %5, label %frontEnd.1.exit, !dbg !1879 ; [debug line = 467:26]

; <label>:5                                       ; preds = %.preheader.i
  %tmp_42 = trunc i31 %column_index_i to i1, !dbg !1879 ; [#uses=1 type=i1] [debug line = 467:26]
  %empty_52 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483646, i64 0) ; [#uses=0 type=i32]
  %in_indices_data_V_read_2 = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %in_indices_data_V), !dbg !1908 ; [#uses=1 type=i32] [debug line = 1654:70@471:25]
  %tmp_10_i = bitcast i32 %in_indices_data_V_read_2 to float, !dbg !1911 ; [#uses=1 type=float] [debug line = 472:12]
  %tmp1_keep_V_1 = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_keep_V), !dbg !1912 ; [#uses=1 type=i4] [debug line = 264:10@473:12]
  call void @llvm.dbg.value(metadata !{i4 %tmp1_keep_V_1}, i64 0, metadata !1858), !dbg !1912 ; [debug line = 264:10@473:12] [debug variable = tmp1.keep.V]
  store volatile i4 %tmp1_keep_V_1, i4* %tmp1_keep_V_i, align 4, !dbg !1912 ; [debug line = 264:10@473:12]
  %tmp1_strb_V_1 = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_strb_V), !dbg !1914 ; [#uses=1 type=i4] [debug line = 264:10@474:12]
  call void @llvm.dbg.value(metadata !{i4 %tmp1_strb_V_1}, i64 0, metadata !1862), !dbg !1914 ; [debug line = 264:10@474:12] [debug variable = tmp1.strb.V]
  store volatile i4 %tmp1_strb_V_1, i4* %tmp1_strb_V_i, align 1, !dbg !1914 ; [debug line = 264:10@474:12]
  %tmp1_user_V_1 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_user_V), !dbg !1916 ; [#uses=1 type=i1] [debug line = 264:10@475:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_user_V_1}, i64 0, metadata !1867), !dbg !1916 ; [debug line = 264:10@475:12] [debug variable = tmp1.user.V]
  store volatile i1 %tmp1_user_V_1, i1* %tmp1_user_V_i, align 2, !dbg !1916 ; [debug line = 264:10@475:12]
  %tmp1_last_V_1 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_last_V), !dbg !1918 ; [#uses=1 type=i1] [debug line = 264:10@476:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_last_V_1}, i64 0, metadata !1870), !dbg !1918 ; [debug line = 264:10@476:12] [debug variable = tmp1.last.V]
  store volatile i1 %tmp1_last_V_1, i1* %tmp1_last_V_i, align 1, !dbg !1918 ; [debug line = 264:10@476:12]
  %tmp1_id_V_1 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_id_V), !dbg !1920 ; [#uses=1 type=i1] [debug line = 264:10@477:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_id_V_1}, i64 0, metadata !1873), !dbg !1920 ; [debug line = 264:10@477:12] [debug variable = tmp1.id.V]
  store volatile i1 %tmp1_id_V_1, i1* %tmp1_id_V_i, align 4, !dbg !1920 ; [debug line = 264:10@477:12]
  %tmp1_dest_V_1 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_dest_V), !dbg !1922 ; [#uses=1 type=i1] [debug line = 264:10@478:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_dest_V_1}, i64 0, metadata !1876), !dbg !1922 ; [debug line = 264:10@478:12] [debug variable = tmp1.dest.V]
  store volatile i1 %tmp1_dest_V_1, i1* %tmp1_dest_V_i, align 1, !dbg !1922 ; [debug line = 264:10@478:12]
  br label %6, !dbg !1924                         ; [debug line = 484:17]

; <label>:6                                       ; preds = %10, %5
  %shift_reg_load_i = phi float [ %tmp_10_i, %5 ], [ %shift_reg_load_i_shift_reg_lo, %10 ] ; [#uses=1 type=float]
  %i1_i = phi i32 [ 1, %5 ], [ %i_5, %10 ]        ; [#uses=5 type=i32]
  %tmp_18_i = icmp sgt i32 %i1_i, %tmp_1_i, !dbg !1924 ; [#uses=1 type=i1] [debug line = 484:17]
  br i1 %tmp_18_i, label %11, label %7, !dbg !1924 ; [debug line = 484:17]

; <label>:7                                       ; preds = %6
  %shift_reg_load = load float* %shift_reg_load1_i, align 4 ; [#uses=1 type=float]
  %tmp_43 = trunc i32 %i1_i to i31, !dbg !1924    ; [#uses=1 type=i31] [debug line = 484:17]
  call void (...)* @_ssdm_op_SpecLoopName([33 x i8]* @p_str5) nounwind, !dbg !1926 ; [debug line = 484:49]
  %tmp_81_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([33 x i8]* @p_str5), !dbg !1928 ; [#uses=1 type=i32] [debug line = 484:107]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !1929 ; [debug line = 486:1]
  %tmp_19_i = icmp eq i32 %i1_i, 1, !dbg !1930    ; [#uses=1 type=i1] [debug line = 487:2]
  %in_indices_data_V_read_3 = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %in_indices_data_V), !dbg !1931 ; [#uses=1 type=i32] [debug line = 1654:70@488:30]
  %in_indices_keep_V_read_2 = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_keep_V), !dbg !1934 ; [#uses=1 type=i4] [debug line = 264:10@490:17]
  store volatile i4 %in_indices_keep_V_read_2, i4* %tmp1_keep_V_i, align 4, !dbg !1934 ; [debug line = 264:10@490:17]
  %in_indices_strb_V_read_2 = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_strb_V), !dbg !1936 ; [#uses=1 type=i4] [debug line = 264:10@491:17]
  store volatile i4 %in_indices_strb_V_read_2, i4* %tmp1_strb_V_i, align 1, !dbg !1936 ; [debug line = 264:10@491:17]
  %in_indices_user_V_read_2 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_user_V), !dbg !1938 ; [#uses=1 type=i1] [debug line = 264:10@492:17]
  store volatile i1 %in_indices_user_V_read_2, i1* %tmp1_user_V_i, align 2, !dbg !1938 ; [debug line = 264:10@492:17]
  %in_indices_last_V_read_2 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_last_V), !dbg !1940 ; [#uses=1 type=i1] [debug line = 264:10@493:17]
  store volatile i1 %in_indices_last_V_read_2, i1* %tmp1_last_V_i, align 1, !dbg !1940 ; [debug line = 264:10@493:17]
  %in_indices_id_V_read_2 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_id_V), !dbg !1942 ; [#uses=1 type=i1] [debug line = 264:10@494:17]
  store volatile i1 %in_indices_id_V_read_2, i1* %tmp1_id_V_i, align 4, !dbg !1942 ; [debug line = 264:10@494:17]
  %in_indices_dest_V_read_2 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_dest_V), !dbg !1944 ; [#uses=1 type=i1] [debug line = 264:10@495:17]
  store volatile i1 %in_indices_dest_V_read_2, i1* %tmp1_dest_V_i, align 1, !dbg !1944 ; [debug line = 264:10@495:17]
  %shift_reg_load_i_shift_reg_lo = select i1 %tmp_19_i, float %shift_reg_load_i, float %shift_reg_load ; [#uses=2 type=float]
  %tmp_26_i = bitcast i32 %in_indices_data_V_read_3 to float, !dbg !1946 ; [#uses=2 type=float] [debug line = 489:17]
  %tmp_27_i = fdiv float %shift_reg_load_i_shift_reg_lo, %tmp_26_i, !dbg !1947 ; [#uses=1 type=float] [debug line = 518:19]
  %lnReturn_2 = call float @llvm.log.f32(float %tmp_27_i), !dbg !1947 ; [#uses=6 type=float] [debug line = 518:19]
  call void @llvm.dbg.value(metadata !{float %lnReturn_2}, i64 0, metadata !1948), !dbg !1947 ; [debug line = 518:19] [debug variable = lnReturn]
  %tmp_28_i = zext i32 %i1_i to i64, !dbg !1949   ; [#uses=1 type=i64] [debug line = 519:32]
  %weight_rom_addr_2 = getelementptr inbounds [252 x float]* @weight_rom, i64 0, i64 %tmp_28_i, !dbg !1949 ; [#uses=1 type=float*] [debug line = 519:32]
  %weight = load float* %weight_rom_addr_2, align 4, !dbg !1949 ; [#uses=5 type=float] [debug line = 519:32]
  call void @llvm.dbg.value(metadata !{float %weight}, i64 0, metadata !1950), !dbg !1949 ; [debug line = 519:32] [debug variable = weight]
  %tmp_29_i = add i31 %tmp_43, -1, !dbg !1951     ; [#uses=1 type=i31] [debug line = 520:43]
  %tmp_30_i = zext i31 %tmp_29_i to i64, !dbg !1951 ; [#uses=1 type=i64] [debug line = 520:43]
  %lnReturnA_addr_1 = getelementptr inbounds [252 x float]* @lnReturnA, i64 0, i64 %tmp_30_i, !dbg !1951 ; [#uses=1 type=float*] [debug line = 520:43]
  %lnReturnA_temp = load float* %lnReturnA_addr_1, align 4, !dbg !1951 ; [#uses=6 type=float] [debug line = 520:43]
  call void @llvm.dbg.value(metadata !{float %lnReturnA_temp}, i64 0, metadata !1952), !dbg !1951 ; [debug line = 520:43] [debug variable = lnReturnA_temp]
  %weight_returnA_temp = fmul float %lnReturnA_temp, %weight, !dbg !1953 ; [#uses=2 type=float] [debug line = 521:55]
  call void @llvm.dbg.value(metadata !{float %weight_returnA_temp}, i64 0, metadata !1954), !dbg !1953 ; [debug line = 521:55] [debug variable = weight_returnA_temp]
  %tmp_31_i = fmul float %lnReturnA_temp, %lnReturnA_temp, !dbg !1955 ; [#uses=1 type=float] [debug line = 522:78]
  %weight_returnSquareA_temp = fmul float %tmp_31_i, %weight, !dbg !1955 ; [#uses=2 type=float] [debug line = 522:78]
  call void @llvm.dbg.value(metadata !{float %weight_returnSquareA_temp}, i64 0, metadata !1956), !dbg !1955 ; [debug line = 522:78] [debug variable = weight_returnSquareA_temp]
  %weight_returnB_temp = fmul float %lnReturn_2, %weight, !dbg !1957 ; [#uses=2 type=float] [debug line = 524:49]
  call void @llvm.dbg.value(metadata !{float %weight_returnB_temp}, i64 0, metadata !1958), !dbg !1957 ; [debug line = 524:49] [debug variable = weight_returnB_temp]
  %tmp_32_i = fmul float %lnReturn_2, %lnReturn_2, !dbg !1959 ; [#uses=1 type=float] [debug line = 525:66]
  %weight_returnSquareB_temp = fmul float %tmp_32_i, %weight, !dbg !1959 ; [#uses=2 type=float] [debug line = 525:66]
  call void @llvm.dbg.value(metadata !{float %weight_returnSquareB_temp}, i64 0, metadata !1960), !dbg !1959 ; [debug line = 525:66] [debug variable = weight_returnSquareB_temp]
  %tmp_33_i = fmul float %lnReturnA_temp, %lnReturn_2, !dbg !1961 ; [#uses=1 type=float] [debug line = 526:74]
  %weight_returnA_returnB_temp = fmul float %tmp_33_i, %weight, !dbg !1961 ; [#uses=2 type=float] [debug line = 526:74]
  call void @llvm.dbg.value(metadata !{float %weight_returnA_returnB_temp}, i64 0, metadata !1962), !dbg !1961 ; [debug line = 526:74] [debug variable = weight_returnA_returnB_temp]
  br i1 %tmp_42, label %8, label %9, !dbg !1963   ; [debug line = 529:4]

; <label>:8                                       ; preds = %7
  call void @llvm.dbg.value(metadata !{float* %ln_returnA_out_c1_V}, i64 0, metadata !234), !dbg !1964 ; [debug line = 105:48@530:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %ln_returnA_out_c1_V}, i64 0, metadata !239), !dbg !1967 ; [debug line = 144:48@106:9@530:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %lnReturnA_temp}, i64 0, metadata !245), !dbg !1969 ; [debug line = 145:31@106:9@530:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %ln_returnA_out_c1_V, float %lnReturnA_temp), !dbg !1970 ; [debug line = 146:9@106:9@530:5]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareA_out_c1_V}, i64 0, metadata !234), !dbg !1971 ; [debug line = 105:48@531:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareA_out_c1_V}, i64 0, metadata !239), !dbg !1973 ; [debug line = 144:48@106:9@531:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %weight_returnSquareA_temp}, i64 0, metadata !245), !dbg !1975 ; [debug line = 145:31@106:9@531:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnSquareA_out_c1_V, float %weight_returnSquareA_temp), !dbg !1976 ; [debug line = 146:9@106:9@531:5]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_out_c1_V}, i64 0, metadata !234), !dbg !1977 ; [debug line = 105:48@532:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_out_c1_V}, i64 0, metadata !239), !dbg !1979 ; [debug line = 144:48@106:9@532:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %weight_returnA_temp}, i64 0, metadata !245), !dbg !1981 ; [debug line = 145:31@106:9@532:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnA_out_c1_V, float %weight_returnA_temp), !dbg !1982 ; [debug line = 146:9@106:9@532:5]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_out_c1_V}, i64 0, metadata !234), !dbg !1983 ; [debug line = 105:48@534:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_out_c1_V}, i64 0, metadata !239), !dbg !1985 ; [debug line = 144:48@106:9@534:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %sum_weight}, i64 0, metadata !245), !dbg !1987 ; [debug line = 145:31@106:9@534:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_out_c1_V, float %sum_weight), !dbg !1988 ; [debug line = 146:9@106:9@534:5]
  call void @llvm.dbg.value(metadata !{float* %ln_returnB_out_c1_V}, i64 0, metadata !234), !dbg !1989 ; [debug line = 105:48@535:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %ln_returnB_out_c1_V}, i64 0, metadata !239), !dbg !1991 ; [debug line = 144:48@106:9@535:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %lnReturn_2}, i64 0, metadata !245), !dbg !1993 ; [debug line = 145:31@106:9@535:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %ln_returnB_out_c1_V, float %lnReturn_2), !dbg !1994 ; [debug line = 146:9@106:9@535:5]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareB_out_c1_V}, i64 0, metadata !234), !dbg !1995 ; [debug line = 105:48@536:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareB_out_c1_V}, i64 0, metadata !239), !dbg !1997 ; [debug line = 144:48@106:9@536:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %weight_returnSquareB_temp}, i64 0, metadata !245), !dbg !1999 ; [debug line = 145:31@106:9@536:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnSquareB_out_c1_V, float %weight_returnSquareB_temp), !dbg !2000 ; [debug line = 146:9@106:9@536:5]
  call void @llvm.dbg.value(metadata !{float* %weight_returnB_out_c1_V}, i64 0, metadata !234), !dbg !2001 ; [debug line = 105:48@537:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnB_out_c1_V}, i64 0, metadata !239), !dbg !2003 ; [debug line = 144:48@106:9@537:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %weight_returnB_temp}, i64 0, metadata !245), !dbg !2005 ; [debug line = 145:31@106:9@537:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnB_out_c1_V, float %weight_returnB_temp), !dbg !2006 ; [debug line = 146:9@106:9@537:5]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_returnB_out_c1_s}, i64 0, metadata !234), !dbg !2007 ; [debug line = 105:48@538:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_returnB_out_c1_s}, i64 0, metadata !239), !dbg !2009 ; [debug line = 144:48@106:9@538:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %weight_returnA_returnB_temp}, i64 0, metadata !245), !dbg !2011 ; [debug line = 145:31@106:9@538:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnA_returnB_out_c1_s, float %weight_returnA_returnB_temp), !dbg !2012 ; [debug line = 146:9@106:9@538:5]
  br label %10, !dbg !2013                        ; [debug line = 539:4]

; <label>:9                                       ; preds = %7
  call void @llvm.dbg.value(metadata !{float* %ln_returnA_out_c2_V}, i64 0, metadata !234), !dbg !2014 ; [debug line = 105:48@541:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %ln_returnA_out_c2_V}, i64 0, metadata !239), !dbg !2017 ; [debug line = 144:48@106:9@541:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %lnReturnA_temp}, i64 0, metadata !245), !dbg !2019 ; [debug line = 145:31@106:9@541:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %ln_returnA_out_c2_V, float %lnReturnA_temp), !dbg !2020 ; [debug line = 146:9@106:9@541:5]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareA_out_c2_V}, i64 0, metadata !234), !dbg !2021 ; [debug line = 105:48@542:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareA_out_c2_V}, i64 0, metadata !239), !dbg !2023 ; [debug line = 144:48@106:9@542:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %weight_returnSquareA_temp}, i64 0, metadata !245), !dbg !2025 ; [debug line = 145:31@106:9@542:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnSquareA_out_c2_V, float %weight_returnSquareA_temp), !dbg !2026 ; [debug line = 146:9@106:9@542:5]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_out_c2_V}, i64 0, metadata !234), !dbg !2027 ; [debug line = 105:48@543:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_out_c2_V}, i64 0, metadata !239), !dbg !2029 ; [debug line = 144:48@106:9@543:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %weight_returnA_temp}, i64 0, metadata !245), !dbg !2031 ; [debug line = 145:31@106:9@543:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnA_out_c2_V, float %weight_returnA_temp), !dbg !2032 ; [debug line = 146:9@106:9@543:5]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_out_c2_V}, i64 0, metadata !234), !dbg !2033 ; [debug line = 105:48@545:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_out_c2_V}, i64 0, metadata !239), !dbg !2035 ; [debug line = 144:48@106:9@545:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %sum_weight}, i64 0, metadata !245), !dbg !2037 ; [debug line = 145:31@106:9@545:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_out_c2_V, float %sum_weight), !dbg !2038 ; [debug line = 146:9@106:9@545:5]
  call void @llvm.dbg.value(metadata !{float* %ln_returnB_out_c2_V}, i64 0, metadata !234), !dbg !2039 ; [debug line = 105:48@546:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %ln_returnB_out_c2_V}, i64 0, metadata !239), !dbg !2041 ; [debug line = 144:48@106:9@546:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %lnReturn_2}, i64 0, metadata !245), !dbg !2043 ; [debug line = 145:31@106:9@546:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %ln_returnB_out_c2_V, float %lnReturn_2), !dbg !2044 ; [debug line = 146:9@106:9@546:5]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareB_out_c2_V}, i64 0, metadata !234), !dbg !2045 ; [debug line = 105:48@547:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnSquareB_out_c2_V}, i64 0, metadata !239), !dbg !2047 ; [debug line = 144:48@106:9@547:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %weight_returnSquareB_temp}, i64 0, metadata !245), !dbg !2049 ; [debug line = 145:31@106:9@547:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnSquareB_out_c2_V, float %weight_returnSquareB_temp), !dbg !2050 ; [debug line = 146:9@106:9@547:5]
  call void @llvm.dbg.value(metadata !{float* %weight_returnB_out_c2_V}, i64 0, metadata !234), !dbg !2051 ; [debug line = 105:48@548:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnB_out_c2_V}, i64 0, metadata !239), !dbg !2053 ; [debug line = 144:48@106:9@548:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %weight_returnB_temp}, i64 0, metadata !245), !dbg !2055 ; [debug line = 145:31@106:9@548:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnB_out_c2_V, float %weight_returnB_temp), !dbg !2056 ; [debug line = 146:9@106:9@548:5]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_returnB_out_c2_s}, i64 0, metadata !234), !dbg !2057 ; [debug line = 105:48@549:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %weight_returnA_returnB_out_c2_s}, i64 0, metadata !239), !dbg !2059 ; [debug line = 144:48@106:9@549:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %weight_returnA_returnB_temp}, i64 0, metadata !245), !dbg !2061 ; [debug line = 145:31@106:9@549:5] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %weight_returnA_returnB_out_c2_s, float %weight_returnA_returnB_temp), !dbg !2062 ; [debug line = 146:9@106:9@549:5]
  br label %10

; <label>:10                                      ; preds = %9, %8
  %empty_53 = call i32 (...)* @_ssdm_op_SpecRegionEnd([33 x i8]* @p_str5, i32 %tmp_81_i), !dbg !2063 ; [#uses=0 type=i32] [debug line = 577:2]
  %i_5 = add nsw i32 %i1_i, 1, !dbg !2064         ; [#uses=1 type=i32] [debug line = 484:44]
  call void @llvm.dbg.value(metadata !{i32 %i_5}, i64 0, metadata !2065), !dbg !2064 ; [debug line = 484:44] [debug variable = i]
  store float %tmp_26_i, float* %shift_reg_load1_i, align 4
  br label %6, !dbg !2064                         ; [debug line = 484:44]

; <label>:11                                      ; preds = %6
  %column_index = add i31 %column_index_i, 1, !dbg !2066 ; [#uses=1 type=i31] [debug line = 467:62]
  call void @llvm.dbg.value(metadata !{i31 %column_index}, i64 0, metadata !2067), !dbg !2066 ; [debug line = 467:62] [debug variable = column_index]
  br label %.preheader.i, !dbg !2066              ; [debug line = 467:62]

frontEnd.1.exit:                                  ; preds = %.preheader.i
  ret void
}

; [#uses=1]
define internal fastcc void @correlation_accel_v4_backEnd(i32* %NUMBER_OF_DAYS, i32* %NUMBER_OF_INDICES, float* %sum_weight_in_c1_V, float* %sum_return_in_c1_V, float* %sum_weight_returnSquare_in_c1_s, float* %sum_weight_return_in_c1_V, float* %sum_weight_returnA_returnB_in_s, float* %sum_returnA_in_c1_V, float* %sum_weight_returnSquareA_in_c1, float* %sum_weight_returnA_in_c1_V, float* %sum_weight_in_c2_V, float* %sum_return_in_c2_V, float* %sum_weight_returnSquare_in_c2_s, float* %sum_weight_return_in_c2_V, float* %sum_weight_returnA_returnB_in_2, float* %sum_returnA_in_c2_V, float* %sum_weight_returnSquareA_in_c2, float* %sum_weight_returnA_in_c2_V, i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i1* %out_correlation_dest_V, i1* %out_correlation_id_V, i1* %out_correlation_last_V, i1* %out_correlation_user_V, i4* %out_correlation_strb_V, i4* %out_correlation_keep_V, i32* %out_correlation_data_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES, [8 x i8]* @str202, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str202, [8 x i8]* @str202, [8 x i8]* @str202)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS, [8 x i8]* @str201, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str201, [8 x i8]* @str201, [8 x i8]* @str201)
  %NUMBER_OF_INDICES_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %NUMBER_OF_INDICES) ; [#uses=2 type=i32]
  %NUMBER_OF_DAYS_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %NUMBER_OF_DAYS) ; [#uses=1 type=i32]
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
  call void @llvm.dbg.value(metadata !{i32 %NUMBER_OF_DAYS_read}, i64 0, metadata !2068), !dbg !2072 ; [debug line = 786:9] [debug variable = NUMBER_OF_DAYS]
  call void @llvm.dbg.value(metadata !{i32 %NUMBER_OF_INDICES_read}, i64 0, metadata !2073), !dbg !2074 ; [debug line = 787:9] [debug variable = NUMBER_OF_INDICES]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_in_c1_V}, i64 0, metadata !2075), !dbg !2077 ; [debug line = 789:25] [debug variable = sum_weight_in_c1.V]
  call void @llvm.dbg.value(metadata !{float* %sum_return_in_c1_V}, i64 0, metadata !2078), !dbg !2080 ; [debug line = 790:25] [debug variable = sum_return_in_c1.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquare_in_c1_s}, i64 0, metadata !2081), !dbg !2083 ; [debug line = 791:25] [debug variable = sum_weight_returnSquare_in_c1.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_return_in_c1_V}, i64 0, metadata !2084), !dbg !2086 ; [debug line = 792:25] [debug variable = sum_weight_return_in_c1.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_returnB_in_s}, i64 0, metadata !2087), !dbg !2089 ; [debug line = 793:25] [debug variable = sum_weight_returnA_returnB_in_c1.V]
  call void @llvm.dbg.value(metadata !{float* %sum_returnA_in_c1_V}, i64 0, metadata !2090), !dbg !2092 ; [debug line = 794:25] [debug variable = sum_returnA_in_c1.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquareA_in_c1}, i64 0, metadata !2093), !dbg !2095 ; [debug line = 795:25] [debug variable = sum_weight_returnSquareA_in_c1.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_in_c1_V}, i64 0, metadata !2096), !dbg !2098 ; [debug line = 796:25] [debug variable = sum_weight_returnA_in_c1.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_in_c2_V}, i64 0, metadata !2099), !dbg !2101 ; [debug line = 798:25] [debug variable = sum_weight_in_c2.V]
  call void @llvm.dbg.value(metadata !{float* %sum_return_in_c2_V}, i64 0, metadata !2102), !dbg !2104 ; [debug line = 799:25] [debug variable = sum_return_in_c2.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquare_in_c2_s}, i64 0, metadata !2105), !dbg !2107 ; [debug line = 800:25] [debug variable = sum_weight_returnSquare_in_c2.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_return_in_c2_V}, i64 0, metadata !2108), !dbg !2110 ; [debug line = 801:25] [debug variable = sum_weight_return_in_c2.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_returnB_in_2}, i64 0, metadata !2111), !dbg !2113 ; [debug line = 802:25] [debug variable = sum_weight_returnA_returnB_in_c2.V]
  call void @llvm.dbg.value(metadata !{float* %sum_returnA_in_c2_V}, i64 0, metadata !2114), !dbg !2116 ; [debug line = 803:25] [debug variable = sum_returnA_in_c2.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquareA_in_c2}, i64 0, metadata !2117), !dbg !2119 ; [debug line = 804:25] [debug variable = sum_weight_returnSquareA_in_c2.V]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_in_c2_V}, i64 0, metadata !2120), !dbg !2122 ; [debug line = 805:25] [debug variable = sum_weight_returnA_in_c2.V]
  call void @llvm.dbg.value(metadata !{i32* %out_correlation_data_V}, i64 0, metadata !2123), !dbg !2125 ; [debug line = 807:23] [debug variable = out_correlation.data.V]
  call void @llvm.dbg.value(metadata !{i4* %out_correlation_keep_V}, i64 0, metadata !2126), !dbg !2125 ; [debug line = 807:23] [debug variable = out_correlation.keep.V]
  call void @llvm.dbg.value(metadata !{i4* %out_correlation_strb_V}, i64 0, metadata !2127), !dbg !2125 ; [debug line = 807:23] [debug variable = out_correlation.strb.V]
  call void @llvm.dbg.value(metadata !{i1* %out_correlation_user_V}, i64 0, metadata !2128), !dbg !2125 ; [debug line = 807:23] [debug variable = out_correlation.user.V]
  call void @llvm.dbg.value(metadata !{i1* %out_correlation_last_V}, i64 0, metadata !2129), !dbg !2125 ; [debug line = 807:23] [debug variable = out_correlation.last.V]
  call void @llvm.dbg.value(metadata !{i1* %out_correlation_id_V}, i64 0, metadata !2130), !dbg !2125 ; [debug line = 807:23] [debug variable = out_correlation.id.V]
  call void @llvm.dbg.value(metadata !{i1* %out_correlation_dest_V}, i64 0, metadata !2131), !dbg !2125 ; [debug line = 807:23] [debug variable = out_correlation.dest.V]
  %tmp_i = add nsw i32 %NUMBER_OF_DAYS_read, -1, !dbg !2132 ; [#uses=1 type=i32] [debug line = 903:62]
  %tmp_i_54 = sitofp i32 %tmp_i to float, !dbg !2132 ; [#uses=2 type=float] [debug line = 903:62]
  %tmp_44_i = add nsw i32 %NUMBER_OF_INDICES_read, -1, !dbg !2136 ; [#uses=1 type=i32] [debug line = 925:7]
  br label %0, !dbg !2137                         ; [debug line = 858:26]

; <label>:0                                       ; preds = %4, %entry
  %column_index_i = phi i31 [ 1, %entry ], [ %column_index, %4 ] ; [#uses=3 type=i31]
  %column_index_cast_i = zext i31 %column_index_i to i32, !dbg !2137 ; [#uses=2 type=i32] [debug line = 858:26]
  %tmp_45_i = icmp slt i32 %column_index_cast_i, %NUMBER_OF_INDICES_read, !dbg !2137 ; [#uses=1 type=i1] [debug line = 858:26]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483646, i64 0) ; [#uses=0 type=i32]
  br i1 %tmp_45_i, label %1, label %backEnd.1.exit, !dbg !2137 ; [debug line = 858:26]

; <label>:1                                       ; preds = %0
  %tmp = trunc i31 %column_index_i to i1, !dbg !2137 ; [#uses=1 type=i1] [debug line = 858:26]
  br i1 %tmp, label %2, label %3, !dbg !2138      ; [debug line = 859:3]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{float* %sum_weight_in_c1_V}, i64 0, metadata !162), !dbg !2139 ; [debug line = 129:56@861:18] [debug variable = stream<float>.V]
  %tmp_68 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_in_c1_V), !dbg !2142 ; [#uses=1 type=float] [debug line = 131:9@861:18]
  call void @llvm.dbg.value(metadata !{float %tmp_68}, i64 0, metadata !171), !dbg !2142 ; [debug line = 131:9@861:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_68}, i64 0, metadata !2143), !dbg !2140 ; [debug line = 861:18] [debug variable = sum_weight]
  call void @llvm.dbg.value(metadata !{float* %sum_return_in_c1_V}, i64 0, metadata !162), !dbg !2144 ; [debug line = 129:56@862:18] [debug variable = stream<float>.V]
  %tmp_69 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_return_in_c1_V), !dbg !2146 ; [#uses=1 type=float] [debug line = 131:9@862:18]
  call void @llvm.dbg.value(metadata !{float %tmp_69}, i64 0, metadata !171), !dbg !2146 ; [debug line = 131:9@862:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_69}, i64 0, metadata !2147), !dbg !2145 ; [debug line = 862:18] [debug variable = sum_return]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquare_in_c1_s}, i64 0, metadata !162), !dbg !2148 ; [debug line = 129:56@863:31] [debug variable = stream<float>.V]
  %tmp_70 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnSquare_in_c1_s), !dbg !2150 ; [#uses=1 type=float] [debug line = 131:9@863:31]
  call void @llvm.dbg.value(metadata !{float %tmp_70}, i64 0, metadata !171), !dbg !2150 ; [debug line = 131:9@863:31] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_70}, i64 0, metadata !2151), !dbg !2149 ; [debug line = 863:31] [debug variable = sum_weight_returnSquare]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_return_in_c1_V}, i64 0, metadata !162), !dbg !2152 ; [debug line = 129:56@864:25] [debug variable = stream<float>.V]
  %tmp_71 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_return_in_c1_V), !dbg !2154 ; [#uses=1 type=float] [debug line = 131:9@864:25]
  call void @llvm.dbg.value(metadata !{float %tmp_71}, i64 0, metadata !171), !dbg !2154 ; [debug line = 131:9@864:25] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_71}, i64 0, metadata !2155), !dbg !2153 ; [debug line = 864:25] [debug variable = sum_weight_return]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_returnB_in_s}, i64 0, metadata !162), !dbg !2156 ; [debug line = 129:56@865:33] [debug variable = stream<float>.V]
  %tmp_72 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnA_returnB_in_s), !dbg !2158 ; [#uses=1 type=float] [debug line = 131:9@865:33]
  call void @llvm.dbg.value(metadata !{float %tmp_72}, i64 0, metadata !171), !dbg !2158 ; [debug line = 131:9@865:33] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_72}, i64 0, metadata !2159), !dbg !2157 ; [debug line = 865:33] [debug variable = sum_weight_returnA_returnB]
  call void @llvm.dbg.value(metadata !{float* %sum_returnA_in_c1_V}, i64 0, metadata !162), !dbg !2160 ; [debug line = 129:56@866:18] [debug variable = stream<float>.V]
  %tmp_73 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_returnA_in_c1_V), !dbg !2162 ; [#uses=1 type=float] [debug line = 131:9@866:18]
  call void @llvm.dbg.value(metadata !{float %tmp_73}, i64 0, metadata !171), !dbg !2162 ; [debug line = 131:9@866:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_73}, i64 0, metadata !2163), !dbg !2161 ; [debug line = 866:18] [debug variable = sum_returnA]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquareA_in_c1}, i64 0, metadata !162), !dbg !2164 ; [debug line = 129:56@867:31] [debug variable = stream<float>.V]
  %tmp_74 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnSquareA_in_c1), !dbg !2166 ; [#uses=1 type=float] [debug line = 131:9@867:31]
  call void @llvm.dbg.value(metadata !{float %tmp_74}, i64 0, metadata !171), !dbg !2166 ; [debug line = 131:9@867:31] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_74}, i64 0, metadata !2167), !dbg !2165 ; [debug line = 867:31] [debug variable = sum_weight_returnSquareA]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_in_c1_V}, i64 0, metadata !162), !dbg !2168 ; [debug line = 129:56@868:26] [debug variable = stream<float>.V]
  %tmp_75 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnA_in_c1_V), !dbg !2170 ; [#uses=1 type=float] [debug line = 131:9@868:26]
  call void @llvm.dbg.value(metadata !{float %tmp_75}, i64 0, metadata !171), !dbg !2170 ; [debug line = 131:9@868:26] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_75}, i64 0, metadata !2171), !dbg !2169 ; [debug line = 868:26] [debug variable = sum_weight_returnA]
  br label %4, !dbg !2172                         ; [debug line = 880:2]

; <label>:3                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{float* %sum_weight_in_c2_V}, i64 0, metadata !162), !dbg !2173 ; [debug line = 129:56@882:18] [debug variable = stream<float>.V]
  %tmp_76 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_in_c2_V), !dbg !2176 ; [#uses=1 type=float] [debug line = 131:9@882:18]
  call void @llvm.dbg.value(metadata !{float %tmp_76}, i64 0, metadata !171), !dbg !2176 ; [debug line = 131:9@882:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_76}, i64 0, metadata !2143), !dbg !2174 ; [debug line = 882:18] [debug variable = sum_weight]
  call void @llvm.dbg.value(metadata !{float* %sum_return_in_c2_V}, i64 0, metadata !162), !dbg !2177 ; [debug line = 129:56@883:18] [debug variable = stream<float>.V]
  %tmp_77 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_return_in_c2_V), !dbg !2179 ; [#uses=1 type=float] [debug line = 131:9@883:18]
  call void @llvm.dbg.value(metadata !{float %tmp_77}, i64 0, metadata !171), !dbg !2179 ; [debug line = 131:9@883:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_77}, i64 0, metadata !2147), !dbg !2178 ; [debug line = 883:18] [debug variable = sum_return]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquare_in_c2_s}, i64 0, metadata !162), !dbg !2180 ; [debug line = 129:56@884:31] [debug variable = stream<float>.V]
  %tmp_78 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnSquare_in_c2_s), !dbg !2182 ; [#uses=1 type=float] [debug line = 131:9@884:31]
  call void @llvm.dbg.value(metadata !{float %tmp_78}, i64 0, metadata !171), !dbg !2182 ; [debug line = 131:9@884:31] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_78}, i64 0, metadata !2151), !dbg !2181 ; [debug line = 884:31] [debug variable = sum_weight_returnSquare]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_return_in_c2_V}, i64 0, metadata !162), !dbg !2183 ; [debug line = 129:56@885:25] [debug variable = stream<float>.V]
  %tmp_79 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_return_in_c2_V), !dbg !2185 ; [#uses=1 type=float] [debug line = 131:9@885:25]
  call void @llvm.dbg.value(metadata !{float %tmp_79}, i64 0, metadata !171), !dbg !2185 ; [debug line = 131:9@885:25] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_79}, i64 0, metadata !2155), !dbg !2184 ; [debug line = 885:25] [debug variable = sum_weight_return]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_returnB_in_2}, i64 0, metadata !162), !dbg !2186 ; [debug line = 129:56@886:33] [debug variable = stream<float>.V]
  %tmp_80 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnA_returnB_in_2), !dbg !2188 ; [#uses=1 type=float] [debug line = 131:9@886:33]
  call void @llvm.dbg.value(metadata !{float %tmp_80}, i64 0, metadata !171), !dbg !2188 ; [debug line = 131:9@886:33] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_80}, i64 0, metadata !2159), !dbg !2187 ; [debug line = 886:33] [debug variable = sum_weight_returnA_returnB]
  call void @llvm.dbg.value(metadata !{float* %sum_returnA_in_c2_V}, i64 0, metadata !162), !dbg !2189 ; [debug line = 129:56@887:18] [debug variable = stream<float>.V]
  %tmp_81 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_returnA_in_c2_V), !dbg !2191 ; [#uses=1 type=float] [debug line = 131:9@887:18]
  call void @llvm.dbg.value(metadata !{float %tmp_81}, i64 0, metadata !171), !dbg !2191 ; [debug line = 131:9@887:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_81}, i64 0, metadata !2163), !dbg !2190 ; [debug line = 887:18] [debug variable = sum_returnA]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnSquareA_in_c2}, i64 0, metadata !162), !dbg !2192 ; [debug line = 129:56@888:31] [debug variable = stream<float>.V]
  %tmp_82 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnSquareA_in_c2), !dbg !2194 ; [#uses=1 type=float] [debug line = 131:9@888:31]
  call void @llvm.dbg.value(metadata !{float %tmp_82}, i64 0, metadata !171), !dbg !2194 ; [debug line = 131:9@888:31] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_82}, i64 0, metadata !2167), !dbg !2193 ; [debug line = 888:31] [debug variable = sum_weight_returnSquareA]
  call void @llvm.dbg.value(metadata !{float* %sum_weight_returnA_in_c2_V}, i64 0, metadata !162), !dbg !2195 ; [debug line = 129:56@889:26] [debug variable = stream<float>.V]
  %tmp_83 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnA_in_c2_V), !dbg !2197 ; [#uses=1 type=float] [debug line = 131:9@889:26]
  call void @llvm.dbg.value(metadata !{float %tmp_83}, i64 0, metadata !171), !dbg !2197 ; [debug line = 131:9@889:26] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_83}, i64 0, metadata !2171), !dbg !2196 ; [debug line = 889:26] [debug variable = sum_weight_returnA]
  br label %4

; <label>:4                                       ; preds = %3, %2
  %sum_weight2_i = phi float [ %tmp_68, %2 ], [ %tmp_76, %3 ] ; [#uses=3 type=float]
  %sum_return2_i = phi float [ %tmp_69, %2 ], [ %tmp_77, %3 ] ; [#uses=1 type=float]
  %sum_weight_returnSquare2_i = phi float [ %tmp_70, %2 ], [ %tmp_78, %3 ] ; [#uses=1 type=float]
  %sum_weight_return2_i = phi float [ %tmp_71, %2 ], [ %tmp_79, %3 ] ; [#uses=2 type=float]
  %sum_weight_returnA_returnB2_i = phi float [ %tmp_72, %2 ], [ %tmp_80, %3 ] ; [#uses=1 type=float]
  %sum_returnA2_i = phi float [ %tmp_73, %2 ], [ %tmp_81, %3 ] ; [#uses=1 type=float]
  %sum_weight_returnSquareA2_i = phi float [ %tmp_74, %2 ], [ %tmp_82, %3 ] ; [#uses=1 type=float]
  %sum_weight_returnA2_i = phi float [ %tmp_75, %2 ], [ %tmp_83, %3 ] ; [#uses=2 type=float]
  %meanReturnA = fdiv float %sum_returnA2_i, %tmp_i_54, !dbg !2132 ; [#uses=5 type=float] [debug line = 903:62]
  call void @llvm.dbg.value(metadata !{float %meanReturnA}, i64 0, metadata !2198), !dbg !2132 ; [debug line = 903:62] [debug variable = meanReturnA]
  %meanReturnB = fdiv float %sum_return2_i, %tmp_i_54, !dbg !2199 ; [#uses=5 type=float] [debug line = 904:61]
  call void @llvm.dbg.value(metadata !{float %meanReturnB}, i64 0, metadata !2200), !dbg !2199 ; [debug line = 904:61] [debug variable = meanReturnB]
  %tmp_58_i = fmul float %meanReturnA, 2.000000e+00, !dbg !2201 ; [#uses=1 type=float] [debug line = 906:23]
  %tmp_59_i = fmul float %tmp_58_i, %sum_weight_returnA2_i, !dbg !2201 ; [#uses=1 type=float] [debug line = 906:23]
  %tmp_60_i = fsub float %sum_weight_returnSquareA2_i, %tmp_59_i, !dbg !2201 ; [#uses=1 type=float] [debug line = 906:23]
  %tmp_61_i = fdiv float %tmp_60_i, %sum_weight2_i, !dbg !2201 ; [#uses=1 type=float] [debug line = 906:23]
  %tmp_62_i = fmul float %meanReturnA, %meanReturnA, !dbg !2201 ; [#uses=1 type=float] [debug line = 906:23]
  %tmp_63_i = fadd float %tmp_61_i, %tmp_62_i, !dbg !2201 ; [#uses=1 type=float] [debug line = 906:23]
  %volatilityA = call float @llvm.sqrt.f32(float %tmp_63_i), !dbg !2201 ; [#uses=1 type=float] [debug line = 906:23]
  call void @llvm.dbg.value(metadata !{float %volatilityA}, i64 0, metadata !2202), !dbg !2201 ; [debug line = 906:23] [debug variable = volatilityA]
  %tmp_64_i = fmul float %meanReturnB, 2.000000e+00, !dbg !2203 ; [#uses=1 type=float] [debug line = 909:23]
  %tmp_65_i = fmul float %tmp_64_i, %sum_weight_return2_i, !dbg !2203 ; [#uses=1 type=float] [debug line = 909:23]
  %tmp_66_i = fsub float %sum_weight_returnSquare2_i, %tmp_65_i, !dbg !2203 ; [#uses=1 type=float] [debug line = 909:23]
  %tmp_67_i = fdiv float %tmp_66_i, %sum_weight2_i, !dbg !2203 ; [#uses=1 type=float] [debug line = 909:23]
  %tmp_68_i = fmul float %meanReturnB, %meanReturnB, !dbg !2203 ; [#uses=1 type=float] [debug line = 909:23]
  %tmp_69_i = fadd float %tmp_67_i, %tmp_68_i, !dbg !2203 ; [#uses=1 type=float] [debug line = 909:23]
  %volatilityB = call float @llvm.sqrt.f32(float %tmp_69_i), !dbg !2203 ; [#uses=1 type=float] [debug line = 909:23]
  call void @llvm.dbg.value(metadata !{float %volatilityB}, i64 0, metadata !2204), !dbg !2203 ; [debug line = 909:23] [debug variable = volatilityB]
  %tmp_70_i = fmul float %meanReturnA, %sum_weight_return2_i, !dbg !2205 ; [#uses=1 type=float] [debug line = 912:159]
  %tmp_71_i = fsub float %sum_weight_returnA_returnB2_i, %tmp_70_i, !dbg !2205 ; [#uses=1 type=float] [debug line = 912:159]
  %tmp_72_i = fmul float %meanReturnB, %sum_weight_returnA2_i, !dbg !2205 ; [#uses=1 type=float] [debug line = 912:159]
  %tmp_73_i = fsub float %tmp_71_i, %tmp_72_i, !dbg !2205 ; [#uses=1 type=float] [debug line = 912:159]
  %tmp_74_i = fdiv float %tmp_73_i, %sum_weight2_i, !dbg !2205 ; [#uses=1 type=float] [debug line = 912:159]
  %tmp_80_i = fmul float %meanReturnA, %meanReturnB, !dbg !2205 ; [#uses=1 type=float] [debug line = 912:159]
  %covariance = fadd float %tmp_74_i, %tmp_80_i, !dbg !2205 ; [#uses=1 type=float] [debug line = 912:159]
  call void @llvm.dbg.value(metadata !{float %covariance}, i64 0, metadata !2206), !dbg !2205 ; [debug line = 912:159] [debug variable = covariance]
  %tmp_81_i = fmul float %volatilityA, %volatilityB, !dbg !2207 ; [#uses=1 type=float] [debug line = 916:61]
  %corr_temp = fdiv float %covariance, %tmp_81_i, !dbg !2207 ; [#uses=1 type=float] [debug line = 916:61]
  call void @llvm.dbg.value(metadata !{float %corr_temp}, i64 0, metadata !2208), !dbg !2207 ; [debug line = 916:61] [debug variable = corr_temp]
  %val_assign = bitcast float %corr_temp to i32, !dbg !2209 ; [#uses=1 type=i32] [debug line = 920:7]
  call void @llvm.dbg.value(metadata !{i32 %val_assign}, i64 0, metadata !2210), !dbg !2212 ; [debug line = 250:55@921:7] [debug variable = val]
  call void @llvm.dbg.value(metadata !{i32 %val_assign}, i64 0, metadata !2214), !dbg !2216 ; [debug line = 250:55@250:77@921:7] [debug variable = val]
  call void @_ssdm_op_Write.axis.volatile.i32P(i32* %out_correlation_data_V, i32 %val_assign), !dbg !2218 ; [debug line = 277:10@921:7]
  call void @_ssdm_op_Write.axis.volatile.i4P(i4* %out_correlation_keep_V, i4 -1), !dbg !2221 ; [debug line = 277:10@922:7]
  call void @_ssdm_op_Write.axis.volatile.i4P(i4* %out_correlation_strb_V, i4 1), !dbg !2225 ; [debug line = 277:10@923:7]
  call void @_ssdm_op_Write.axis.volatile.i1P(i1* %out_correlation_user_V, i1 false), !dbg !2227 ; [debug line = 277:10@924:7]
  %tmp_84_i = icmp eq i32 %column_index_cast_i, %tmp_44_i, !dbg !2136 ; [#uses=1 type=i1] [debug line = 925:7]
  call void @_ssdm_op_Write.axis.volatile.i1P(i1* %out_correlation_last_V, i1 %tmp_84_i), !dbg !2231 ; [debug line = 277:10@925:7]
  call void @_ssdm_op_Write.axis.volatile.i1P(i1* %out_correlation_id_V, i1 false), !dbg !2232 ; [debug line = 277:10@926:7]
  call void @_ssdm_op_Write.axis.volatile.i1P(i1* %out_correlation_dest_V, i1 false), !dbg !2234 ; [debug line = 277:10@927:7]
  %column_index = add i31 %column_index_i, 1, !dbg !2236 ; [#uses=1 type=i31] [debug line = 858:62]
  call void @llvm.dbg.value(metadata !{i31 %column_index}, i64 0, metadata !2237), !dbg !2236 ; [debug line = 858:62] [debug variable = column_index]
  br label %0, !dbg !2236                         ; [debug line = 858:62]

backEnd.1.exit:                                   ; preds = %0
  ret void
}

; [#uses=4]
define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_55 = trunc i32 %empty to i31             ; [#uses=1 type=i31]
  ret i31 %empty_55
}

; [#uses=4]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=6]
define weak i32 @_ssdm_op_Read.ap_fifo.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=1]
define weak void @_ssdm_op_Write.axis.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_Write.axis.volatile.i4P(i4*, i4) {
entry:
  store i4 %1, i4* %0
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_Write.axis.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

; [#uses=32]
define weak float @_ssdm_op_Read.ap_fifo.volatile.floatP(float*) {
entry:
  %empty = call float @_autotb_FifoRead_float(float* %0) ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=32]
define weak void @_ssdm_op_Write.ap_fifo.volatile.floatP(float*, float) {
entry:
  %empty = call float @_autotb_FifoWrite_float(float* %0, float %1) ; [#uses=0 type=float]
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_Write.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1) ; [#uses=0 type=i32]
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_Read.axis.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=8]
define weak i4 @_ssdm_op_Read.axis.volatile.i4P(i4*) {
entry:
  %empty = load i4* %0                            ; [#uses=1 type=i4]
  ret i4 %empty
}

; [#uses=16]
define weak i1 @_ssdm_op_Read.axis.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0                            ; [#uses=1 type=i1]
  ret i1 %empty
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_56 = and i32 %0, %empty                  ; [#uses=1 type=i32]
  %empty_57 = icmp ne i32 %empty_56, 0            ; [#uses=1 type=i1]
  ret i1 %empty_57
}

; [#uses=1]
declare i32 @_autotb_FifoRead_i32(i32*)

; [#uses=1]
declare float @_autotb_FifoRead_float(float*)

; [#uses=1]
declare float @_autotb_FifoWrite_float(float*, float)

; [#uses=1]
declare i32 @_autotb_FifoWrite_i32(i32*, i32)

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i31.i32.i32(i31, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{i32 786688, metadata !8, metadata !"acc_returnA", metadata !12, i32 641, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!8 = metadata !{i32 786443, metadata !9, i32 639, i32 71, metadata !12, i32 16} ; [ DW_TAG_lexical_block ]
!9 = metadata !{i32 786443, metadata !10, i32 639, i32 1, metadata !12, i32 15} ; [ DW_TAG_lexical_block ]
!10 = metadata !{i32 786443, metadata !11, i32 636, i32 1, metadata !12, i32 14} ; [ DW_TAG_lexical_block ]
!11 = metadata !{i32 786478, i32 0, metadata !12, metadata !"midEnd", metadata !"midEnd", metadata !"_Z6midEndiiiRN3hls6streamIfEES2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_", metadata !12, i32 586, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 636} ; [ DW_TAG_subprogram ]
!12 = metadata !{i32 786473, metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease/_sds/vhls/src/correlation_accel_v4.cpp", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15, metadata !15, metadata !15, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16}
!15 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_reference_type ]
!17 = metadata !{i32 786434, metadata !18, metadata !"stream<float>", metadata !19, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !20, i32 0, null, metadata !69} ; [ DW_TAG_class_type ]
!18 = metadata !{i32 786489, null, metadata !"hls", metadata !19, i32 69} ; [ DW_TAG_namespace ]
!19 = metadata !{i32 786473, metadata !"/opt/Xilinx/SDSoC/2014.4/Vivado_HLS/2014.4/common/technology/autopilot/hls_stream.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!20 = metadata !{metadata !21, metadata !23, metadata !29, metadata !35, metadata !40, metadata !43, metadata !47, metadata !52, metadata !57, metadata !58, metadata !59, metadata !62, metadata !65, metadata !66}
!21 = metadata !{i32 786445, metadata !17, metadata !"V", metadata !19, i32 157, i64 32, i64 32, i64 0, i32 1, metadata !22} ; [ DW_TAG_member ]
!22 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786478, i32 0, metadata !17, metadata !"stream", metadata !"stream", metadata !"", metadata !19, i32 83, metadata !24, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 83} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{null, metadata !26}
!26 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !17} ; [ DW_TAG_pointer_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!29 = metadata !{i32 786478, i32 0, metadata !17, metadata !"stream", metadata !"stream", metadata !"", metadata !19, i32 86, metadata !30, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 86} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !26, metadata !32}
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ]
!34 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!35 = metadata !{i32 786478, i32 0, metadata !17, metadata !"stream", metadata !"stream", metadata !"", metadata !19, i32 91, metadata !36, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !27, i32 91} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !26, metadata !38}
!38 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_reference_type ]
!39 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ]
!40 = metadata !{i32 786478, i32 0, metadata !17, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !19, i32 94, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !27, i32 94} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{metadata !16, metadata !26, metadata !38}
!43 = metadata !{i32 786478, i32 0, metadata !17, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !19, i32 101, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 101} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!45 = metadata !{null, metadata !26, metadata !46}
!46 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_reference_type ]
!47 = metadata !{i32 786478, i32 0, metadata !17, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !19, i32 105, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 105} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{null, metadata !26, metadata !50}
!50 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_reference_type ]
!51 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_const_type ]
!52 = metadata !{i32 786478, i32 0, metadata !17, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !19, i32 112, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 112} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{metadata !55, metadata !56}
!55 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !39} ; [ DW_TAG_pointer_type ]
!57 = metadata !{i32 786478, i32 0, metadata !17, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !19, i32 117, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 117} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786478, i32 0, metadata !17, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !19, i32 123, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 123} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786478, i32 0, metadata !17, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !19, i32 129, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 129} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !22, metadata !26}
!62 = metadata !{i32 786478, i32 0, metadata !17, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !19, i32 136, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 136} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{metadata !55, metadata !26, metadata !46}
!65 = metadata !{i32 786478, i32 0, metadata !17, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !19, i32 144, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 144} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786478, i32 0, metadata !17, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !19, i32 150, metadata !67, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 150} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!68 = metadata !{metadata !55, metadata !26, metadata !50}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !22, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!71 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 192, i64 32, i32 0, i32 0, metadata !22, metadata !72, i32 0, i32 0} ; [ DW_TAG_array_type ]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ]
!74 = metadata !{i32 641, i32 9, metadata !8, null}
!75 = metadata !{i32 786688, metadata !8, metadata !"acc_weight_returnSquareA", metadata !12, i32 642, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 642, i32 9, metadata !8, null}
!77 = metadata !{i32 786688, metadata !8, metadata !"acc_weight_returnA", metadata !12, i32 643, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 643, i32 9, metadata !8, null}
!79 = metadata !{i32 786688, metadata !8, metadata !"acc_returnB", metadata !12, i32 645, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 645, i32 9, metadata !8, null}
!81 = metadata !{i32 786688, metadata !8, metadata !"acc_weight_returnSquareB", metadata !12, i32 646, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 646, i32 9, metadata !8, null}
!83 = metadata !{i32 786688, metadata !8, metadata !"acc_weight_returnB", metadata !12, i32 647, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 647, i32 9, metadata !8, null}
!85 = metadata !{i32 786688, metadata !8, metadata !"acc_weight_returnA_returnB", metadata !12, i32 649, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 649, i32 9, metadata !8, null}
!87 = metadata !{i32 786689, metadata !11, metadata !"NUMBER_OF_DAYS", metadata !12, i32 16777803, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 587, i32 7, metadata !11, null}
!89 = metadata !{i32 786689, metadata !11, metadata !"NUMBER_OF_INDICES", metadata !12, i32 33555020, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 588, i32 7, metadata !11, null}
!91 = metadata !{i32 790531, metadata !92, metadata !"ln_returnA_in.V", null, i32 591, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!92 = metadata !{i32 786689, metadata !11, metadata !"ln_returnA_in", metadata !12, i32 67109455, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ]
!94 = metadata !{i32 786438, metadata !18, metadata !"stream<float>", metadata !19, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !95, i32 0, null, metadata !69} ; [ DW_TAG_class_field_type ]
!95 = metadata !{metadata !21}
!96 = metadata !{i32 591, i32 23, metadata !11, null}
!97 = metadata !{i32 790531, metadata !98, metadata !"weight_returnSquareA_in.V", null, i32 592, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!98 = metadata !{i32 786689, metadata !11, metadata !"weight_returnSquareA_in", metadata !12, i32 83886672, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 592, i32 23, metadata !11, null}
!100 = metadata !{i32 790531, metadata !101, metadata !"weight_returnA_in.V", null, i32 593, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!101 = metadata !{i32 786689, metadata !11, metadata !"weight_returnA_in", metadata !12, i32 100663889, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!102 = metadata !{i32 593, i32 23, metadata !11, null}
!103 = metadata !{i32 790531, metadata !104, metadata !"sum_weight_in.V", null, i32 595, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!104 = metadata !{i32 786689, metadata !11, metadata !"sum_weight_in", metadata !12, i32 117441107, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 595, i32 23, metadata !11, null}
!106 = metadata !{i32 790531, metadata !107, metadata !"ln_returnB_in.V", null, i32 596, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!107 = metadata !{i32 786689, metadata !11, metadata !"ln_returnB_in", metadata !12, i32 134218324, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 596, i32 23, metadata !11, null}
!109 = metadata !{i32 790531, metadata !110, metadata !"weight_returnSquareB_in.V", null, i32 597, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!110 = metadata !{i32 786689, metadata !11, metadata !"weight_returnSquareB_in", metadata !12, i32 150995541, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 597, i32 23, metadata !11, null}
!112 = metadata !{i32 790531, metadata !113, metadata !"weight_returnB_in.V", null, i32 598, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!113 = metadata !{i32 786689, metadata !11, metadata !"weight_returnB_in", metadata !12, i32 167772758, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 598, i32 23, metadata !11, null}
!115 = metadata !{i32 790531, metadata !116, metadata !"weight_returnA_returnB_in.V", null, i32 599, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!116 = metadata !{i32 786689, metadata !11, metadata !"weight_returnA_returnB_in", metadata !12, i32 184549975, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 599, i32 23, metadata !11, null}
!118 = metadata !{i32 790531, metadata !119, metadata !"sum_weight_out.V", null, i32 601, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!119 = metadata !{i32 786689, metadata !11, metadata !"sum_weight_out", metadata !12, i32 201327193, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!120 = metadata !{i32 601, i32 23, metadata !11, null}
!121 = metadata !{i32 790531, metadata !122, metadata !"sum_return_out.V", null, i32 602, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!122 = metadata !{i32 786689, metadata !11, metadata !"sum_return_out", metadata !12, i32 218104410, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 602, i32 23, metadata !11, null}
!124 = metadata !{i32 790531, metadata !125, metadata !"sum_weight_returnSquare_out.V", null, i32 603, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!125 = metadata !{i32 786689, metadata !11, metadata !"sum_weight_returnSquare_out", metadata !12, i32 234881627, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 603, i32 23, metadata !11, null}
!127 = metadata !{i32 790531, metadata !128, metadata !"sum_weight_return_out.V", null, i32 604, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!128 = metadata !{i32 786689, metadata !11, metadata !"sum_weight_return_out", metadata !12, i32 251658844, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!129 = metadata !{i32 604, i32 23, metadata !11, null}
!130 = metadata !{i32 790531, metadata !131, metadata !"sum_weight_returnA_returnB_out.V", null, i32 605, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!131 = metadata !{i32 786689, metadata !11, metadata !"sum_weight_returnA_returnB_out", metadata !12, i32 268436061, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 605, i32 23, metadata !11, null}
!133 = metadata !{i32 790531, metadata !134, metadata !"sum_returnA_out.V", null, i32 606, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!134 = metadata !{i32 786689, metadata !11, metadata !"sum_returnA_out", metadata !12, i32 285213278, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 606, i32 23, metadata !11, null}
!136 = metadata !{i32 790531, metadata !137, metadata !"sum_weight_returnSquareA_out.V", null, i32 607, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!137 = metadata !{i32 786689, metadata !11, metadata !"sum_weight_returnSquareA_out", metadata !12, i32 301990495, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 607, i32 23, metadata !11, null}
!139 = metadata !{i32 790531, metadata !140, metadata !"sum_weight_returnA_out.V", null, i32 608, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!140 = metadata !{i32 786689, metadata !11, metadata !"sum_weight_returnA_out", metadata !12, i32 318767712, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!141 = metadata !{i32 608, i32 23, metadata !11, null}
!142 = metadata !{i32 638, i32 57, metadata !10, null}
!143 = metadata !{i32 786688, metadata !10, metadata !"upper_bound", metadata !12, i32 638, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 684, i32 16, metadata !145, null}
!145 = metadata !{i32 786443, metadata !8, i32 684, i32 3, metadata !12, i32 19} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 671, i32 2, metadata !147, null}
!147 = metadata !{i32 786443, metadata !148, i32 667, i32 29, metadata !12, i32 18} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786443, metadata !8, i32 667, i32 3, metadata !12, i32 17} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 672, i32 4, metadata !147, null}
!150 = metadata !{i32 673, i32 4, metadata !147, null}
!151 = metadata !{i32 675, i32 4, metadata !147, null}
!152 = metadata !{i32 677, i32 4, metadata !147, null}
!153 = metadata !{i32 678, i32 4, metadata !147, null}
!154 = metadata !{i32 679, i32 4, metadata !147, null}
!155 = metadata !{i32 639, i32 25, metadata !9, null}
!156 = metadata !{i32 684, i32 48, metadata !157, null}
!157 = metadata !{i32 786443, metadata !145, i32 684, i32 47, metadata !12, i32 20} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 684, i32 87, metadata !157, null}
!159 = metadata !{i32 696, i32 26, metadata !157, null}
!160 = metadata !{i32 786688, metadata !157, metadata !"channel_id", metadata !12, i32 696, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 699, i32 1, metadata !157, null}
!162 = metadata !{i32 790531, metadata !163, metadata !"stream<float>.V", null, i32 129, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!163 = metadata !{i32 786689, metadata !164, metadata !"this", metadata !19, i32 16777345, metadata !165, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 786478, i32 0, metadata !18, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !19, i32 129, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !59, metadata !27, i32 129} ; [ DW_TAG_subprogram ]
!165 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ]
!166 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ]
!167 = metadata !{i32 129, i32 56, metadata !164, metadata !168}
!168 = metadata !{i32 700, i32 15, metadata !157, null}
!169 = metadata !{i32 131, i32 9, metadata !170, metadata !168}
!170 = metadata !{i32 786443, metadata !164, i32 129, i32 63, metadata !19, i32 40} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 786688, metadata !170, metadata !"tmp", metadata !19, i32 130, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 786688, metadata !8, metadata !"sum_weight", metadata !12, i32 660, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 129, i32 56, metadata !164, metadata !174}
!174 = metadata !{i32 702, i32 21, metadata !157, null}
!175 = metadata !{i32 131, i32 9, metadata !170, metadata !174}
!176 = metadata !{i32 786688, metadata !157, metadata !"lnReturnA_temp", metadata !12, i32 686, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 129, i32 56, metadata !164, metadata !178}
!178 = metadata !{i32 703, i32 26, metadata !157, null}
!179 = metadata !{i32 131, i32 9, metadata !170, metadata !178}
!180 = metadata !{i32 786688, metadata !157, metadata !"weight_returnA_temp", metadata !12, i32 687, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!181 = metadata !{i32 129, i32 56, metadata !164, metadata !182}
!182 = metadata !{i32 704, i32 32, metadata !157, null}
!183 = metadata !{i32 131, i32 9, metadata !170, metadata !182}
!184 = metadata !{i32 786688, metadata !157, metadata !"weight_returnSquareA_temp", metadata !12, i32 688, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!185 = metadata !{i32 129, i32 56, metadata !164, metadata !186}
!186 = metadata !{i32 706, i32 21, metadata !157, null}
!187 = metadata !{i32 131, i32 9, metadata !170, metadata !186}
!188 = metadata !{i32 786688, metadata !157, metadata !"lnReturnB_temp", metadata !12, i32 690, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!189 = metadata !{i32 129, i32 56, metadata !164, metadata !190}
!190 = metadata !{i32 707, i32 26, metadata !157, null}
!191 = metadata !{i32 131, i32 9, metadata !170, metadata !190}
!192 = metadata !{i32 786688, metadata !157, metadata !"weight_returnB_temp", metadata !12, i32 691, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!193 = metadata !{i32 129, i32 56, metadata !164, metadata !194}
!194 = metadata !{i32 708, i32 32, metadata !157, null}
!195 = metadata !{i32 131, i32 9, metadata !170, metadata !194}
!196 = metadata !{i32 786688, metadata !157, metadata !"weight_returnSquareB_temp", metadata !12, i32 692, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 129, i32 56, metadata !164, metadata !198}
!198 = metadata !{i32 710, i32 34, metadata !157, null}
!199 = metadata !{i32 131, i32 9, metadata !170, metadata !198}
!200 = metadata !{i32 786688, metadata !157, metadata !"weight_returnA_returnB_temp", metadata !12, i32 694, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 722, i32 2, metadata !157, null}
!202 = metadata !{i32 723, i32 4, metadata !157, null}
!203 = metadata !{i32 724, i32 4, metadata !157, null}
!204 = metadata !{i32 726, i32 4, metadata !157, null}
!205 = metadata !{i32 727, i32 4, metadata !157, null}
!206 = metadata !{i32 728, i32 4, metadata !157, null}
!207 = metadata !{i32 730, i32 4, metadata !157, null}
!208 = metadata !{i32 731, i32 3, metadata !157, null}
!209 = metadata !{i32 684, i32 43, metadata !145, null}
!210 = metadata !{i32 786688, metadata !145, metadata !"i", metadata !12, i32 684, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!211 = metadata !{i32 735, i32 16, metadata !212, null}
!212 = metadata !{i32 786443, metadata !8, i32 735, i32 3, metadata !12, i32 21} ; [ DW_TAG_lexical_block ]
!213 = metadata !{i32 735, i32 25, metadata !212, null}
!214 = metadata !{i32 735, i32 30, metadata !215, null}
!215 = metadata !{i32 786443, metadata !212, i32 735, i32 29, metadata !12, i32 22} ; [ DW_TAG_lexical_block ]
!216 = metadata !{i32 735, i32 71, metadata !215, null}
!217 = metadata !{i32 737, i32 1, metadata !215, null}
!218 = metadata !{i32 739, i32 2, metadata !215, null}
!219 = metadata !{i32 786688, metadata !8, metadata !"sum_returnA", metadata !12, i32 651, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 740, i32 4, metadata !215, null}
!221 = metadata !{i32 786688, metadata !8, metadata !"sum_weight_returnSquareA", metadata !12, i32 652, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!222 = metadata !{i32 741, i32 4, metadata !215, null}
!223 = metadata !{i32 786688, metadata !8, metadata !"sum_weight_returnA", metadata !12, i32 653, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!224 = metadata !{i32 743, i32 4, metadata !215, null}
!225 = metadata !{i32 786688, metadata !8, metadata !"sum_returnB", metadata !12, i32 655, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!226 = metadata !{i32 744, i32 4, metadata !215, null}
!227 = metadata !{i32 786688, metadata !8, metadata !"sum_weight_returnSquareB", metadata !12, i32 656, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!228 = metadata !{i32 745, i32 4, metadata !215, null}
!229 = metadata !{i32 786688, metadata !8, metadata !"sum_weight_returnB", metadata !12, i32 657, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 746, i32 4, metadata !215, null}
!231 = metadata !{i32 786688, metadata !8, metadata !"sum_weight_returnA_returnB", metadata !12, i32 659, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!232 = metadata !{i32 747, i32 3, metadata !215, null}
!233 = metadata !{i32 786688, metadata !212, metadata !"i", metadata !12, i32 735, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!234 = metadata !{i32 790531, metadata !235, metadata !"stream<float>.V", null, i32 105, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!235 = metadata !{i32 786689, metadata !236, metadata !"this", metadata !19, i32 16777321, metadata !165, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!236 = metadata !{i32 786478, i32 0, metadata !18, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !19, i32 105, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !47, metadata !27, i32 105} ; [ DW_TAG_subprogram ]
!237 = metadata !{i32 105, i32 48, metadata !236, metadata !238}
!238 = metadata !{i32 750, i32 4, metadata !8, null}
!239 = metadata !{i32 790531, metadata !240, metadata !"stream<float>.V", null, i32 144, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!240 = metadata !{i32 786689, metadata !241, metadata !"this", metadata !19, i32 16777360, metadata !165, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!241 = metadata !{i32 786478, i32 0, metadata !18, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !19, i32 144, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !65, metadata !27, i32 144} ; [ DW_TAG_subprogram ]
!242 = metadata !{i32 144, i32 48, metadata !241, metadata !243}
!243 = metadata !{i32 106, i32 9, metadata !244, metadata !238}
!244 = metadata !{i32 786443, metadata !236, i32 105, i32 88, metadata !19, i32 41} ; [ DW_TAG_lexical_block ]
!245 = metadata !{i32 786688, metadata !246, metadata !"tmp", metadata !19, i32 145, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!246 = metadata !{i32 786443, metadata !241, i32 144, i32 79, metadata !19, i32 42} ; [ DW_TAG_lexical_block ]
!247 = metadata !{i32 145, i32 31, metadata !246, metadata !243}
!248 = metadata !{i32 146, i32 9, metadata !246, metadata !243}
!249 = metadata !{i32 105, i32 48, metadata !236, metadata !250}
!250 = metadata !{i32 752, i32 4, metadata !8, null}
!251 = metadata !{i32 144, i32 48, metadata !241, metadata !252}
!252 = metadata !{i32 106, i32 9, metadata !244, metadata !250}
!253 = metadata !{i32 145, i32 31, metadata !246, metadata !252}
!254 = metadata !{i32 146, i32 9, metadata !246, metadata !252}
!255 = metadata !{i32 105, i32 48, metadata !236, metadata !256}
!256 = metadata !{i32 753, i32 4, metadata !8, null}
!257 = metadata !{i32 144, i32 48, metadata !241, metadata !258}
!258 = metadata !{i32 106, i32 9, metadata !244, metadata !256}
!259 = metadata !{i32 145, i32 31, metadata !246, metadata !258}
!260 = metadata !{i32 146, i32 9, metadata !246, metadata !258}
!261 = metadata !{i32 105, i32 48, metadata !236, metadata !262}
!262 = metadata !{i32 754, i32 4, metadata !8, null}
!263 = metadata !{i32 144, i32 48, metadata !241, metadata !264}
!264 = metadata !{i32 106, i32 9, metadata !244, metadata !262}
!265 = metadata !{i32 145, i32 31, metadata !246, metadata !264}
!266 = metadata !{i32 146, i32 9, metadata !246, metadata !264}
!267 = metadata !{i32 105, i32 48, metadata !236, metadata !268}
!268 = metadata !{i32 756, i32 4, metadata !8, null}
!269 = metadata !{i32 144, i32 48, metadata !241, metadata !270}
!270 = metadata !{i32 106, i32 9, metadata !244, metadata !268}
!271 = metadata !{i32 145, i32 31, metadata !246, metadata !270}
!272 = metadata !{i32 146, i32 9, metadata !246, metadata !270}
!273 = metadata !{i32 105, i32 48, metadata !236, metadata !274}
!274 = metadata !{i32 758, i32 4, metadata !8, null}
!275 = metadata !{i32 144, i32 48, metadata !241, metadata !276}
!276 = metadata !{i32 106, i32 9, metadata !244, metadata !274}
!277 = metadata !{i32 145, i32 31, metadata !246, metadata !276}
!278 = metadata !{i32 146, i32 9, metadata !246, metadata !276}
!279 = metadata !{i32 105, i32 48, metadata !236, metadata !280}
!280 = metadata !{i32 759, i32 4, metadata !8, null}
!281 = metadata !{i32 144, i32 48, metadata !241, metadata !282}
!282 = metadata !{i32 106, i32 9, metadata !244, metadata !280}
!283 = metadata !{i32 145, i32 31, metadata !246, metadata !282}
!284 = metadata !{i32 146, i32 9, metadata !246, metadata !282}
!285 = metadata !{i32 105, i32 48, metadata !236, metadata !286}
!286 = metadata !{i32 760, i32 4, metadata !8, null}
!287 = metadata !{i32 144, i32 48, metadata !241, metadata !288}
!288 = metadata !{i32 106, i32 9, metadata !244, metadata !286}
!289 = metadata !{i32 145, i32 31, metadata !246, metadata !288}
!290 = metadata !{i32 146, i32 9, metadata !246, metadata !288}
!291 = metadata !{i32 639, i32 56, metadata !9, null}
!292 = metadata !{i32 786688, metadata !9, metadata !"column_index", metadata !12, i32 639, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!293 = metadata !{i32 786689, metadata !294, metadata !"number_of_indices", metadata !12, i32 33554467, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!294 = metadata !{i32 786478, i32 0, metadata !12, metadata !"correlation_accel_v4", metadata !"correlation_accel_v4", metadata !"_Z20correlation_accel_v4iiP7ap_axiuILi32ELi1ELi1ELi1EES1_", metadata !12, i32 34, metadata !295, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 48} ; [ DW_TAG_subprogram ]
!295 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!296 = metadata !{null, metadata !15, metadata !15, metadata !297, metadata !297}
!297 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !298} ; [ DW_TAG_pointer_type ]
!298 = metadata !{i32 786434, null, metadata !"ap_axiu<32, 1, 1, 1>", metadata !299, i32 101, i64 96, i64 32, i32 0, i32 0, null, metadata !300, i32 0, null, metadata !1518} ; [ DW_TAG_class_type ]
!299 = metadata !{i32 786473, metadata !"/opt/Xilinx/SDSoC/2014.4/Vivado_HLS/2014.4/common/technology/autopilot/ap_axi_sdata.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!300 = metadata !{metadata !301, metadata !936, metadata !1227, metadata !1228, metadata !1515, metadata !1516, metadata !1517}
!301 = metadata !{i32 786445, metadata !298, metadata !"data", metadata !299, i32 102, i64 32, i64 32, i64 0, i32 0, metadata !302} ; [ DW_TAG_member ]
!302 = metadata !{i32 786434, null, metadata !"ap_uint<32>", metadata !303, i32 180, i64 32, i64 32, i32 0, i32 0, null, metadata !304, i32 0, null, metadata !935} ; [ DW_TAG_class_type ]
!303 = metadata !{i32 786473, metadata !"/opt/Xilinx/SDSoC/2014.4/Vivado_HLS/2014.4/common/technology/autopilot/ap_int.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!304 = metadata !{metadata !305, metadata !873, metadata !877, metadata !880, metadata !883, metadata !886, metadata !889, metadata !892, metadata !895, metadata !898, metadata !901, metadata !904, metadata !907, metadata !910, metadata !913, metadata !916, metadata !919, metadata !922, metadata !929, metadata !930, metadata !934}
!305 = metadata !{i32 786460, metadata !302, null, metadata !303, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !306} ; [ DW_TAG_inheritance ]
!306 = metadata !{i32 786434, null, metadata !"ap_int_base<32, false, true>", metadata !307, i32 1398, i64 32, i64 32, i32 0, i32 0, null, metadata !308, i32 0, null, metadata !872} ; [ DW_TAG_class_type ]
!307 = metadata !{i32 786473, metadata !"/opt/Xilinx/SDSoC/2014.4/Vivado_HLS/2014.4/common/technology/autopilot/ap_int_syn.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!308 = metadata !{metadata !309, metadata !322, metadata !326, metadata !329, metadata !333, metadata !337, metadata !341, metadata !345, metadata !348, metadata !352, metadata !356, metadata !360, metadata !365, metadata !370, metadata !373, metadata !377, metadata !380, metadata !383, metadata !388, metadata !393, metadata !394, metadata !395, metadata !399, metadata !400, metadata !403, metadata !406, metadata !409, metadata !412, metadata !415, metadata !418, metadata !421, metadata !424, metadata !427, metadata !430, metadata !440, metadata !443, metadata !446, metadata !449, metadata !452, metadata !455, metadata !458, metadata !461, metadata !464, metadata !465, metadata !470, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !481, metadata !482, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !493, metadata !494, metadata !495, metadata !498, metadata !499, metadata !502, metadata !503, metadata !775, metadata !837, metadata !838, metadata !841, metadata !842, metadata !846, metadata !847, metadata !848, metadata !849, metadata !852, metadata !853, metadata !854, metadata !855, metadata !856, metadata !857, metadata !858, metadata !859, metadata !860, metadata !861, metadata !862, metadata !863, metadata !866, metadata !869}
!309 = metadata !{i32 786460, metadata !306, null, metadata !307, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !310} ; [ DW_TAG_inheritance ]
!310 = metadata !{i32 786434, null, metadata !"ssdm_int<32 + 1024 * 0, false>", metadata !311, i32 34, i64 32, i64 32, i32 0, i32 0, null, metadata !312, i32 0, null, metadata !319} ; [ DW_TAG_class_type ]
!311 = metadata !{i32 786473, metadata !"/opt/Xilinx/SDSoC/2014.4/Vivado_HLS/2014.4/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!312 = metadata !{metadata !313, metadata !315}
!313 = metadata !{i32 786445, metadata !310, metadata !"V", metadata !311, i32 34, i64 32, i64 32, i64 0, i32 0, metadata !314} ; [ DW_TAG_member ]
!314 = metadata !{i32 786468, null, metadata !"uint32", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!315 = metadata !{i32 786478, i32 0, metadata !310, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !311, i32 34, metadata !316, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 34} ; [ DW_TAG_subprogram ]
!316 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !317, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!317 = metadata !{null, metadata !318}
!318 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !310} ; [ DW_TAG_pointer_type ]
!319 = metadata !{metadata !320, metadata !321}
!320 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !15, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!321 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !55, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!322 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1439, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1439} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!324 = metadata !{null, metadata !325}
!325 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !306} ; [ DW_TAG_pointer_type ]
!326 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1461, metadata !327, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1461} ; [ DW_TAG_subprogram ]
!327 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !328, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!328 = metadata !{null, metadata !325, metadata !55}
!329 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1462, metadata !330, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1462} ; [ DW_TAG_subprogram ]
!330 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !331, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!331 = metadata !{null, metadata !325, metadata !332}
!332 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!333 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1463, metadata !334, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1463} ; [ DW_TAG_subprogram ]
!334 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !335, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!335 = metadata !{null, metadata !325, metadata !336}
!336 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!337 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1464, metadata !338, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1464} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!339 = metadata !{null, metadata !325, metadata !340}
!340 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!341 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1465, metadata !342, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1465} ; [ DW_TAG_subprogram ]
!342 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !343, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!343 = metadata !{null, metadata !325, metadata !344}
!344 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!345 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1466, metadata !346, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1466} ; [ DW_TAG_subprogram ]
!346 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !347, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!347 = metadata !{null, metadata !325, metadata !15}
!348 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1467, metadata !349, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1467} ; [ DW_TAG_subprogram ]
!349 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !350, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!350 = metadata !{null, metadata !325, metadata !351}
!351 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!352 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1468, metadata !353, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1468} ; [ DW_TAG_subprogram ]
!353 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !354, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!354 = metadata !{null, metadata !325, metadata !355}
!355 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!356 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1469, metadata !357, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1469} ; [ DW_TAG_subprogram ]
!357 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !358, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!358 = metadata !{null, metadata !325, metadata !359}
!359 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!360 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1470, metadata !361, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1470} ; [ DW_TAG_subprogram ]
!361 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !362, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!362 = metadata !{null, metadata !325, metadata !363}
!363 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !307, i32 112, i64 0, i64 0, i64 0, i32 0, metadata !364} ; [ DW_TAG_typedef ]
!364 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!365 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1471, metadata !366, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1471} ; [ DW_TAG_subprogram ]
!366 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!367 = metadata !{null, metadata !325, metadata !368}
!368 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !307, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !369} ; [ DW_TAG_typedef ]
!369 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!370 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1472, metadata !371, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1472} ; [ DW_TAG_subprogram ]
!371 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !372, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!372 = metadata !{null, metadata !325, metadata !22}
!373 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1473, metadata !374, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1473} ; [ DW_TAG_subprogram ]
!374 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !375, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!375 = metadata !{null, metadata !325, metadata !376}
!376 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!377 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1500, metadata !378, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1500} ; [ DW_TAG_subprogram ]
!378 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !379, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!379 = metadata !{null, metadata !325, metadata !32}
!380 = metadata !{i32 786478, i32 0, metadata !306, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1507, metadata !381, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1507} ; [ DW_TAG_subprogram ]
!381 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !382, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!382 = metadata !{null, metadata !325, metadata !32, metadata !332}
!383 = metadata !{i32 786478, i32 0, metadata !306, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi32ELb0ELb1EE4readEv", metadata !307, i32 1528, metadata !384, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1528} ; [ DW_TAG_subprogram ]
!384 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !385, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!385 = metadata !{metadata !306, metadata !386}
!386 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !387} ; [ DW_TAG_pointer_type ]
!387 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !306} ; [ DW_TAG_volatile_type ]
!388 = metadata !{i32 786478, i32 0, metadata !306, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi32ELb0ELb1EE5writeERKS0_", metadata !307, i32 1534, metadata !389, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1534} ; [ DW_TAG_subprogram ]
!389 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !390, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!390 = metadata !{null, metadata !386, metadata !391}
!391 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !392} ; [ DW_TAG_reference_type ]
!392 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !306} ; [ DW_TAG_const_type ]
!393 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi32ELb0ELb1EEaSERVKS0_", metadata !307, i32 1546, metadata !389, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1546} ; [ DW_TAG_subprogram ]
!394 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi32ELb0ELb1EEaSERKS0_", metadata !307, i32 1555, metadata !389, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1555} ; [ DW_TAG_subprogram ]
!395 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSERVKS0_", metadata !307, i32 1578, metadata !396, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1578} ; [ DW_TAG_subprogram ]
!396 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !397, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!397 = metadata !{metadata !398, metadata !325, metadata !391}
!398 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !306} ; [ DW_TAG_reference_type ]
!399 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSERKS0_", metadata !307, i32 1583, metadata !396, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1583} ; [ DW_TAG_subprogram ]
!400 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEPKc", metadata !307, i32 1587, metadata !401, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1587} ; [ DW_TAG_subprogram ]
!401 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !402, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!402 = metadata !{metadata !398, metadata !325, metadata !32}
!403 = metadata !{i32 786478, i32 0, metadata !306, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE3setEPKca", metadata !307, i32 1595, metadata !404, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1595} ; [ DW_TAG_subprogram ]
!404 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !405, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!405 = metadata !{metadata !398, metadata !325, metadata !32, metadata !332}
!406 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEc", metadata !307, i32 1609, metadata !407, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1609} ; [ DW_TAG_subprogram ]
!407 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !408, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!408 = metadata !{metadata !398, metadata !325, metadata !34}
!409 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEh", metadata !307, i32 1610, metadata !410, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1610} ; [ DW_TAG_subprogram ]
!410 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !411, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!411 = metadata !{metadata !398, metadata !325, metadata !336}
!412 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEs", metadata !307, i32 1611, metadata !413, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1611} ; [ DW_TAG_subprogram ]
!413 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !414, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!414 = metadata !{metadata !398, metadata !325, metadata !340}
!415 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEt", metadata !307, i32 1612, metadata !416, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1612} ; [ DW_TAG_subprogram ]
!416 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !417, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!417 = metadata !{metadata !398, metadata !325, metadata !344}
!418 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEi", metadata !307, i32 1613, metadata !419, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1613} ; [ DW_TAG_subprogram ]
!419 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !420, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!420 = metadata !{metadata !398, metadata !325, metadata !15}
!421 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEj", metadata !307, i32 1614, metadata !422, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1614} ; [ DW_TAG_subprogram ]
!422 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !423, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!423 = metadata !{metadata !398, metadata !325, metadata !351}
!424 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEx", metadata !307, i32 1615, metadata !425, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1615} ; [ DW_TAG_subprogram ]
!425 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !426, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!426 = metadata !{metadata !398, metadata !325, metadata !363}
!427 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEy", metadata !307, i32 1616, metadata !428, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1616} ; [ DW_TAG_subprogram ]
!428 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !429, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!429 = metadata !{metadata !398, metadata !325, metadata !368}
!430 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEcvjEv", metadata !307, i32 1654, metadata !431, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1654} ; [ DW_TAG_subprogram ]
!431 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !432, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!432 = metadata !{metadata !433, metadata !439}
!433 = metadata !{i32 786454, metadata !306, metadata !"RetType", metadata !307, i32 1403, i64 0, i64 0, i64 0, i32 0, metadata !434} ; [ DW_TAG_typedef ]
!434 = metadata !{i32 786454, metadata !435, metadata !"Type", metadata !307, i32 1389, i64 0, i64 0, i64 0, i32 0, metadata !351} ; [ DW_TAG_typedef ]
!435 = metadata !{i32 786434, null, metadata !"retval<4, false>", metadata !307, i32 1388, i64 8, i64 8, i32 0, i32 0, null, metadata !436, i32 0, null, metadata !437} ; [ DW_TAG_class_type ]
!436 = metadata !{i32 0}
!437 = metadata !{metadata !438, metadata !321}
!438 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !15, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!439 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !392} ; [ DW_TAG_pointer_type ]
!440 = metadata !{i32 786478, i32 0, metadata !306, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE7to_boolEv", metadata !307, i32 1660, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1660} ; [ DW_TAG_subprogram ]
!441 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !442, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!442 = metadata !{metadata !55, metadata !439}
!443 = metadata !{i32 786478, i32 0, metadata !306, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE6to_intEv", metadata !307, i32 1661, metadata !444, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1661} ; [ DW_TAG_subprogram ]
!444 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !445, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!445 = metadata !{metadata !15, metadata !439}
!446 = metadata !{i32 786478, i32 0, metadata !306, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE7to_uintEv", metadata !307, i32 1662, metadata !447, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1662} ; [ DW_TAG_subprogram ]
!447 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !448, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!448 = metadata !{metadata !351, metadata !439}
!449 = metadata !{i32 786478, i32 0, metadata !306, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE7to_longEv", metadata !307, i32 1663, metadata !450, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1663} ; [ DW_TAG_subprogram ]
!450 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !451, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!451 = metadata !{metadata !355, metadata !439}
!452 = metadata !{i32 786478, i32 0, metadata !306, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE8to_ulongEv", metadata !307, i32 1664, metadata !453, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1664} ; [ DW_TAG_subprogram ]
!453 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !454, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!454 = metadata !{metadata !359, metadata !439}
!455 = metadata !{i32 786478, i32 0, metadata !306, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE8to_int64Ev", metadata !307, i32 1665, metadata !456, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1665} ; [ DW_TAG_subprogram ]
!456 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !457, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!457 = metadata !{metadata !363, metadata !439}
!458 = metadata !{i32 786478, i32 0, metadata !306, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9to_uint64Ev", metadata !307, i32 1666, metadata !459, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1666} ; [ DW_TAG_subprogram ]
!459 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !460, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!460 = metadata !{metadata !368, metadata !439}
!461 = metadata !{i32 786478, i32 0, metadata !306, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9to_doubleEv", metadata !307, i32 1667, metadata !462, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1667} ; [ DW_TAG_subprogram ]
!462 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !463, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!463 = metadata !{metadata !376, metadata !439}
!464 = metadata !{i32 786478, i32 0, metadata !306, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE6lengthEv", metadata !307, i32 1680, metadata !444, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1680} ; [ DW_TAG_subprogram ]
!465 = metadata !{i32 786478, i32 0, metadata !306, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi32ELb0ELb1EE6lengthEv", metadata !307, i32 1681, metadata !466, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1681} ; [ DW_TAG_subprogram ]
!466 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!467 = metadata !{metadata !15, metadata !468}
!468 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !469} ; [ DW_TAG_pointer_type ]
!469 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !387} ; [ DW_TAG_const_type ]
!470 = metadata !{i32 786478, i32 0, metadata !306, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE7reverseEv", metadata !307, i32 1686, metadata !471, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1686} ; [ DW_TAG_subprogram ]
!471 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !472, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!472 = metadata !{metadata !398, metadata !325}
!473 = metadata !{i32 786478, i32 0, metadata !306, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE6iszeroEv", metadata !307, i32 1692, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1692} ; [ DW_TAG_subprogram ]
!474 = metadata !{i32 786478, i32 0, metadata !306, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE7is_zeroEv", metadata !307, i32 1697, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1697} ; [ DW_TAG_subprogram ]
!475 = metadata !{i32 786478, i32 0, metadata !306, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE4signEv", metadata !307, i32 1702, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1702} ; [ DW_TAG_subprogram ]
!476 = metadata !{i32 786478, i32 0, metadata !306, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE5clearEi", metadata !307, i32 1710, metadata !346, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1710} ; [ DW_TAG_subprogram ]
!477 = metadata !{i32 786478, i32 0, metadata !306, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE6invertEi", metadata !307, i32 1716, metadata !346, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1716} ; [ DW_TAG_subprogram ]
!478 = metadata !{i32 786478, i32 0, metadata !306, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE4testEi", metadata !307, i32 1724, metadata !479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1724} ; [ DW_TAG_subprogram ]
!479 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !480, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!480 = metadata !{metadata !55, metadata !439, metadata !15}
!481 = metadata !{i32 786478, i32 0, metadata !306, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE3setEi", metadata !307, i32 1730, metadata !346, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1730} ; [ DW_TAG_subprogram ]
!482 = metadata !{i32 786478, i32 0, metadata !306, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE3setEib", metadata !307, i32 1736, metadata !483, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1736} ; [ DW_TAG_subprogram ]
!483 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !484, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!484 = metadata !{null, metadata !325, metadata !15, metadata !55}
!485 = metadata !{i32 786478, i32 0, metadata !306, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE7lrotateEi", metadata !307, i32 1743, metadata !346, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1743} ; [ DW_TAG_subprogram ]
!486 = metadata !{i32 786478, i32 0, metadata !306, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE7rrotateEi", metadata !307, i32 1752, metadata !346, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1752} ; [ DW_TAG_subprogram ]
!487 = metadata !{i32 786478, i32 0, metadata !306, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE7set_bitEib", metadata !307, i32 1760, metadata !483, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1760} ; [ DW_TAG_subprogram ]
!488 = metadata !{i32 786478, i32 0, metadata !306, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE7get_bitEi", metadata !307, i32 1765, metadata !479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1765} ; [ DW_TAG_subprogram ]
!489 = metadata !{i32 786478, i32 0, metadata !306, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE5b_notEv", metadata !307, i32 1770, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1770} ; [ DW_TAG_subprogram ]
!490 = metadata !{i32 786478, i32 0, metadata !306, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE17countLeadingZerosEv", metadata !307, i32 1777, metadata !491, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1777} ; [ DW_TAG_subprogram ]
!491 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !492, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!492 = metadata !{metadata !15, metadata !325}
!493 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEppEv", metadata !307, i32 1834, metadata !471, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1834} ; [ DW_TAG_subprogram ]
!494 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEmmEv", metadata !307, i32 1838, metadata !471, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1838} ; [ DW_TAG_subprogram ]
!495 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEppEi", metadata !307, i32 1846, metadata !496, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1846} ; [ DW_TAG_subprogram ]
!496 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !497, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!497 = metadata !{metadata !392, metadata !325, metadata !15}
!498 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEmmEi", metadata !307, i32 1851, metadata !496, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1851} ; [ DW_TAG_subprogram ]
!499 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEpsEv", metadata !307, i32 1860, metadata !500, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1860} ; [ DW_TAG_subprogram ]
!500 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !501, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!501 = metadata !{metadata !306, metadata !439}
!502 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEntEv", metadata !307, i32 1866, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1866} ; [ DW_TAG_subprogram ]
!503 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEngEv", metadata !307, i32 1871, metadata !504, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1871} ; [ DW_TAG_subprogram ]
!504 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !505, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!505 = metadata !{metadata !506, metadata !439}
!506 = metadata !{i32 786434, null, metadata !"ap_int_base<33, true, true>", metadata !307, i32 1398, i64 64, i64 64, i32 0, i32 0, null, metadata !507, i32 0, null, metadata !773} ; [ DW_TAG_class_type ]
!507 = metadata !{metadata !508, metadata !520, metadata !524, metadata !527, metadata !530, metadata !533, metadata !536, metadata !539, metadata !542, metadata !545, metadata !548, metadata !551, metadata !554, metadata !557, metadata !560, metadata !563, metadata !566, metadata !569, metadata !574, metadata !579, metadata !580, metadata !581, metadata !585, metadata !586, metadata !589, metadata !592, metadata !595, metadata !598, metadata !601, metadata !604, metadata !607, metadata !610, metadata !613, metadata !616, metadata !625, metadata !628, metadata !631, metadata !634, metadata !637, metadata !640, metadata !643, metadata !646, metadata !649, metadata !650, metadata !655, metadata !658, metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !666, metadata !667, metadata !670, metadata !671, metadata !672, metadata !673, metadata !674, metadata !675, metadata !678, metadata !679, metadata !680, metadata !683, metadata !684, metadata !687, metadata !688, metadata !692, metadata !696, metadata !697, metadata !700, metadata !701, metadata !740, metadata !741, metadata !742, metadata !743, metadata !746, metadata !747, metadata !748, metadata !749, metadata !750, metadata !751, metadata !752, metadata !753, metadata !754, metadata !755, metadata !756, metadata !757, metadata !767, metadata !770}
!508 = metadata !{i32 786460, metadata !506, null, metadata !307, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !509} ; [ DW_TAG_inheritance ]
!509 = metadata !{i32 786434, null, metadata !"ssdm_int<33 + 1024 * 0, true>", metadata !311, i32 35, i64 64, i64 64, i32 0, i32 0, null, metadata !510, i32 0, null, metadata !517} ; [ DW_TAG_class_type ]
!510 = metadata !{metadata !511, metadata !513}
!511 = metadata !{i32 786445, metadata !509, metadata !"V", metadata !311, i32 35, i64 33, i64 64, i64 0, i32 0, metadata !512} ; [ DW_TAG_member ]
!512 = metadata !{i32 786468, null, metadata !"int33", null, i32 0, i64 33, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!513 = metadata !{i32 786478, i32 0, metadata !509, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !311, i32 35, metadata !514, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 35} ; [ DW_TAG_subprogram ]
!514 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !515, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!515 = metadata !{null, metadata !516}
!516 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !509} ; [ DW_TAG_pointer_type ]
!517 = metadata !{metadata !518, metadata !519}
!518 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !15, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!519 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !55, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!520 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1439, metadata !521, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1439} ; [ DW_TAG_subprogram ]
!521 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !522, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!522 = metadata !{null, metadata !523}
!523 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !506} ; [ DW_TAG_pointer_type ]
!524 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1461, metadata !525, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1461} ; [ DW_TAG_subprogram ]
!525 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !526, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!526 = metadata !{null, metadata !523, metadata !55}
!527 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1462, metadata !528, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1462} ; [ DW_TAG_subprogram ]
!528 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !529, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!529 = metadata !{null, metadata !523, metadata !332}
!530 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1463, metadata !531, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1463} ; [ DW_TAG_subprogram ]
!531 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !532, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!532 = metadata !{null, metadata !523, metadata !336}
!533 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1464, metadata !534, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1464} ; [ DW_TAG_subprogram ]
!534 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !535, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!535 = metadata !{null, metadata !523, metadata !340}
!536 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1465, metadata !537, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1465} ; [ DW_TAG_subprogram ]
!537 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !538, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!538 = metadata !{null, metadata !523, metadata !344}
!539 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1466, metadata !540, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1466} ; [ DW_TAG_subprogram ]
!540 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !541, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!541 = metadata !{null, metadata !523, metadata !15}
!542 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1467, metadata !543, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1467} ; [ DW_TAG_subprogram ]
!543 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !544, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!544 = metadata !{null, metadata !523, metadata !351}
!545 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1468, metadata !546, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1468} ; [ DW_TAG_subprogram ]
!546 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !547, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!547 = metadata !{null, metadata !523, metadata !355}
!548 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1469, metadata !549, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1469} ; [ DW_TAG_subprogram ]
!549 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !550, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!550 = metadata !{null, metadata !523, metadata !359}
!551 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1470, metadata !552, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1470} ; [ DW_TAG_subprogram ]
!552 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !553, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!553 = metadata !{null, metadata !523, metadata !363}
!554 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1471, metadata !555, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1471} ; [ DW_TAG_subprogram ]
!555 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !556, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!556 = metadata !{null, metadata !523, metadata !368}
!557 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1472, metadata !558, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1472} ; [ DW_TAG_subprogram ]
!558 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !559, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!559 = metadata !{null, metadata !523, metadata !22}
!560 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1473, metadata !561, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1473} ; [ DW_TAG_subprogram ]
!561 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !562, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!562 = metadata !{null, metadata !523, metadata !376}
!563 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1500, metadata !564, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1500} ; [ DW_TAG_subprogram ]
!564 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !565, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!565 = metadata !{null, metadata !523, metadata !32}
!566 = metadata !{i32 786478, i32 0, metadata !506, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1507, metadata !567, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1507} ; [ DW_TAG_subprogram ]
!567 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !568, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!568 = metadata !{null, metadata !523, metadata !32, metadata !332}
!569 = metadata !{i32 786478, i32 0, metadata !506, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EE4readEv", metadata !307, i32 1528, metadata !570, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1528} ; [ DW_TAG_subprogram ]
!570 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !571, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!571 = metadata !{metadata !506, metadata !572}
!572 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !573} ; [ DW_TAG_pointer_type ]
!573 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !506} ; [ DW_TAG_volatile_type ]
!574 = metadata !{i32 786478, i32 0, metadata !506, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EE5writeERKS0_", metadata !307, i32 1534, metadata !575, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1534} ; [ DW_TAG_subprogram ]
!575 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !576, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!576 = metadata !{null, metadata !572, metadata !577}
!577 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !578} ; [ DW_TAG_reference_type ]
!578 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !506} ; [ DW_TAG_const_type ]
!579 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EEaSERVKS0_", metadata !307, i32 1546, metadata !575, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1546} ; [ DW_TAG_subprogram ]
!580 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EEaSERKS0_", metadata !307, i32 1555, metadata !575, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1555} ; [ DW_TAG_subprogram ]
!581 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSERVKS0_", metadata !307, i32 1578, metadata !582, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1578} ; [ DW_TAG_subprogram ]
!582 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !583, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!583 = metadata !{metadata !584, metadata !523, metadata !577}
!584 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !506} ; [ DW_TAG_reference_type ]
!585 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSERKS0_", metadata !307, i32 1583, metadata !582, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1583} ; [ DW_TAG_subprogram ]
!586 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEPKc", metadata !307, i32 1587, metadata !587, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1587} ; [ DW_TAG_subprogram ]
!587 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !588, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!588 = metadata !{metadata !584, metadata !523, metadata !32}
!589 = metadata !{i32 786478, i32 0, metadata !506, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3setEPKca", metadata !307, i32 1595, metadata !590, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1595} ; [ DW_TAG_subprogram ]
!590 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !591, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!591 = metadata !{metadata !584, metadata !523, metadata !32, metadata !332}
!592 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEc", metadata !307, i32 1609, metadata !593, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1609} ; [ DW_TAG_subprogram ]
!593 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !594, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!594 = metadata !{metadata !584, metadata !523, metadata !34}
!595 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEh", metadata !307, i32 1610, metadata !596, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1610} ; [ DW_TAG_subprogram ]
!596 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !597, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!597 = metadata !{metadata !584, metadata !523, metadata !336}
!598 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEs", metadata !307, i32 1611, metadata !599, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1611} ; [ DW_TAG_subprogram ]
!599 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !600, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!600 = metadata !{metadata !584, metadata !523, metadata !340}
!601 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEt", metadata !307, i32 1612, metadata !602, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1612} ; [ DW_TAG_subprogram ]
!602 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !603, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!603 = metadata !{metadata !584, metadata !523, metadata !344}
!604 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEi", metadata !307, i32 1613, metadata !605, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1613} ; [ DW_TAG_subprogram ]
!605 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !606, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!606 = metadata !{metadata !584, metadata !523, metadata !15}
!607 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEj", metadata !307, i32 1614, metadata !608, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1614} ; [ DW_TAG_subprogram ]
!608 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !609, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!609 = metadata !{metadata !584, metadata !523, metadata !351}
!610 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEx", metadata !307, i32 1615, metadata !611, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1615} ; [ DW_TAG_subprogram ]
!611 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !612, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!612 = metadata !{metadata !584, metadata !523, metadata !363}
!613 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEy", metadata !307, i32 1616, metadata !614, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1616} ; [ DW_TAG_subprogram ]
!614 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !615, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!615 = metadata !{metadata !584, metadata !523, metadata !368}
!616 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEcvxEv", metadata !307, i32 1654, metadata !617, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1654} ; [ DW_TAG_subprogram ]
!617 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !618, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!618 = metadata !{metadata !619, metadata !624}
!619 = metadata !{i32 786454, metadata !506, metadata !"RetType", metadata !307, i32 1403, i64 0, i64 0, i64 0, i32 0, metadata !620} ; [ DW_TAG_typedef ]
!620 = metadata !{i32 786454, metadata !621, metadata !"Type", metadata !307, i32 1360, i64 0, i64 0, i64 0, i32 0, metadata !363} ; [ DW_TAG_typedef ]
!621 = metadata !{i32 786434, null, metadata !"retval<5, true>", metadata !307, i32 1359, i64 8, i64 8, i32 0, i32 0, null, metadata !436, i32 0, null, metadata !622} ; [ DW_TAG_class_type ]
!622 = metadata !{metadata !623, metadata !519}
!623 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !15, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!624 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !578} ; [ DW_TAG_pointer_type ]
!625 = metadata !{i32 786478, i32 0, metadata !506, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7to_boolEv", metadata !307, i32 1660, metadata !626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1660} ; [ DW_TAG_subprogram ]
!626 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !627, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!627 = metadata !{metadata !55, metadata !624}
!628 = metadata !{i32 786478, i32 0, metadata !506, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE6to_intEv", metadata !307, i32 1661, metadata !629, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1661} ; [ DW_TAG_subprogram ]
!629 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !630, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!630 = metadata !{metadata !15, metadata !624}
!631 = metadata !{i32 786478, i32 0, metadata !506, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7to_uintEv", metadata !307, i32 1662, metadata !632, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1662} ; [ DW_TAG_subprogram ]
!632 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !633, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!633 = metadata !{metadata !351, metadata !624}
!634 = metadata !{i32 786478, i32 0, metadata !506, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7to_longEv", metadata !307, i32 1663, metadata !635, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1663} ; [ DW_TAG_subprogram ]
!635 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !636, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!636 = metadata !{metadata !355, metadata !624}
!637 = metadata !{i32 786478, i32 0, metadata !506, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE8to_ulongEv", metadata !307, i32 1664, metadata !638, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1664} ; [ DW_TAG_subprogram ]
!638 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !639, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!639 = metadata !{metadata !359, metadata !624}
!640 = metadata !{i32 786478, i32 0, metadata !506, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE8to_int64Ev", metadata !307, i32 1665, metadata !641, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1665} ; [ DW_TAG_subprogram ]
!641 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !642, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!642 = metadata !{metadata !363, metadata !624}
!643 = metadata !{i32 786478, i32 0, metadata !506, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_uint64Ev", metadata !307, i32 1666, metadata !644, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1666} ; [ DW_TAG_subprogram ]
!644 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !645, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!645 = metadata !{metadata !368, metadata !624}
!646 = metadata !{i32 786478, i32 0, metadata !506, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_doubleEv", metadata !307, i32 1667, metadata !647, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1667} ; [ DW_TAG_subprogram ]
!647 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !648, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!648 = metadata !{metadata !376, metadata !624}
!649 = metadata !{i32 786478, i32 0, metadata !506, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE6lengthEv", metadata !307, i32 1680, metadata !629, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1680} ; [ DW_TAG_subprogram ]
!650 = metadata !{i32 786478, i32 0, metadata !506, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi33ELb1ELb1EE6lengthEv", metadata !307, i32 1681, metadata !651, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1681} ; [ DW_TAG_subprogram ]
!651 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !652, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!652 = metadata !{metadata !15, metadata !653}
!653 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !654} ; [ DW_TAG_pointer_type ]
!654 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !573} ; [ DW_TAG_const_type ]
!655 = metadata !{i32 786478, i32 0, metadata !506, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7reverseEv", metadata !307, i32 1686, metadata !656, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1686} ; [ DW_TAG_subprogram ]
!656 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !657, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!657 = metadata !{metadata !584, metadata !523}
!658 = metadata !{i32 786478, i32 0, metadata !506, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE6iszeroEv", metadata !307, i32 1692, metadata !626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1692} ; [ DW_TAG_subprogram ]
!659 = metadata !{i32 786478, i32 0, metadata !506, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7is_zeroEv", metadata !307, i32 1697, metadata !626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1697} ; [ DW_TAG_subprogram ]
!660 = metadata !{i32 786478, i32 0, metadata !506, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE4signEv", metadata !307, i32 1702, metadata !626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1702} ; [ DW_TAG_subprogram ]
!661 = metadata !{i32 786478, i32 0, metadata !506, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE5clearEi", metadata !307, i32 1710, metadata !540, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1710} ; [ DW_TAG_subprogram ]
!662 = metadata !{i32 786478, i32 0, metadata !506, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE6invertEi", metadata !307, i32 1716, metadata !540, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1716} ; [ DW_TAG_subprogram ]
!663 = metadata !{i32 786478, i32 0, metadata !506, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE4testEi", metadata !307, i32 1724, metadata !664, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1724} ; [ DW_TAG_subprogram ]
!664 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !665, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!665 = metadata !{metadata !55, metadata !624, metadata !15}
!666 = metadata !{i32 786478, i32 0, metadata !506, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3setEi", metadata !307, i32 1730, metadata !540, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1730} ; [ DW_TAG_subprogram ]
!667 = metadata !{i32 786478, i32 0, metadata !506, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3setEib", metadata !307, i32 1736, metadata !668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1736} ; [ DW_TAG_subprogram ]
!668 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !669, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!669 = metadata !{null, metadata !523, metadata !15, metadata !55}
!670 = metadata !{i32 786478, i32 0, metadata !506, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7lrotateEi", metadata !307, i32 1743, metadata !540, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1743} ; [ DW_TAG_subprogram ]
!671 = metadata !{i32 786478, i32 0, metadata !506, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7rrotateEi", metadata !307, i32 1752, metadata !540, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1752} ; [ DW_TAG_subprogram ]
!672 = metadata !{i32 786478, i32 0, metadata !506, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7set_bitEib", metadata !307, i32 1760, metadata !668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1760} ; [ DW_TAG_subprogram ]
!673 = metadata !{i32 786478, i32 0, metadata !506, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7get_bitEi", metadata !307, i32 1765, metadata !664, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1765} ; [ DW_TAG_subprogram ]
!674 = metadata !{i32 786478, i32 0, metadata !506, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE5b_notEv", metadata !307, i32 1770, metadata !521, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1770} ; [ DW_TAG_subprogram ]
!675 = metadata !{i32 786478, i32 0, metadata !506, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE17countLeadingZerosEv", metadata !307, i32 1777, metadata !676, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1777} ; [ DW_TAG_subprogram ]
!676 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !677, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!677 = metadata !{metadata !15, metadata !523}
!678 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEppEv", metadata !307, i32 1834, metadata !656, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1834} ; [ DW_TAG_subprogram ]
!679 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEmmEv", metadata !307, i32 1838, metadata !656, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1838} ; [ DW_TAG_subprogram ]
!680 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEppEi", metadata !307, i32 1846, metadata !681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1846} ; [ DW_TAG_subprogram ]
!681 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !682, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!682 = metadata !{metadata !578, metadata !523, metadata !15}
!683 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEmmEi", metadata !307, i32 1851, metadata !681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1851} ; [ DW_TAG_subprogram ]
!684 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEpsEv", metadata !307, i32 1860, metadata !685, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1860} ; [ DW_TAG_subprogram ]
!685 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !686, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!686 = metadata !{metadata !506, metadata !624}
!687 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEntEv", metadata !307, i32 1866, metadata !626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1866} ; [ DW_TAG_subprogram ]
!688 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEngEv", metadata !307, i32 1871, metadata !689, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1871} ; [ DW_TAG_subprogram ]
!689 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !690, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!690 = metadata !{metadata !691, metadata !624}
!691 = metadata !{i32 786434, null, metadata !"ap_int_base<34, true, true>", metadata !307, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!692 = metadata !{i32 786478, i32 0, metadata !506, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE5rangeEii", metadata !307, i32 2001, metadata !693, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2001} ; [ DW_TAG_subprogram ]
!693 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !694, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!694 = metadata !{metadata !695, metadata !523, metadata !15, metadata !15}
!695 = metadata !{i32 786434, null, metadata !"ap_range_ref<33, true>", metadata !307, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!696 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEclEii", metadata !307, i32 2007, metadata !693, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2007} ; [ DW_TAG_subprogram ]
!697 = metadata !{i32 786478, i32 0, metadata !506, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE5rangeEii", metadata !307, i32 2013, metadata !698, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2013} ; [ DW_TAG_subprogram ]
!698 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !699, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!699 = metadata !{metadata !695, metadata !624, metadata !15, metadata !15}
!700 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEclEii", metadata !307, i32 2019, metadata !698, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2019} ; [ DW_TAG_subprogram ]
!701 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEixEi", metadata !307, i32 2038, metadata !702, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2038} ; [ DW_TAG_subprogram ]
!702 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !703, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!703 = metadata !{metadata !704, metadata !523, metadata !15}
!704 = metadata !{i32 786434, null, metadata !"ap_bit_ref<33, true>", metadata !307, i32 1194, i64 128, i64 64, i32 0, i32 0, null, metadata !705, i32 0, null, metadata !738} ; [ DW_TAG_class_type ]
!705 = metadata !{metadata !706, metadata !707, metadata !708, metadata !714, metadata !718, metadata !722, metadata !723, metadata !727, metadata !730, metadata !731, metadata !734, metadata !735}
!706 = metadata !{i32 786445, metadata !704, metadata !"d_bv", metadata !307, i32 1195, i64 64, i64 64, i64 0, i32 0, metadata !584} ; [ DW_TAG_member ]
!707 = metadata !{i32 786445, metadata !704, metadata !"d_index", metadata !307, i32 1196, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ]
!708 = metadata !{i32 786478, i32 0, metadata !704, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !307, i32 1199, metadata !709, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1199} ; [ DW_TAG_subprogram ]
!709 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !710, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!710 = metadata !{null, metadata !711, metadata !712}
!711 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !704} ; [ DW_TAG_pointer_type ]
!712 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !713} ; [ DW_TAG_reference_type ]
!713 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !704} ; [ DW_TAG_const_type ]
!714 = metadata !{i32 786478, i32 0, metadata !704, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !307, i32 1202, metadata !715, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1202} ; [ DW_TAG_subprogram ]
!715 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !716, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!716 = metadata !{null, metadata !711, metadata !717, metadata !15}
!717 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !506} ; [ DW_TAG_pointer_type ]
!718 = metadata !{i32 786478, i32 0, metadata !704, metadata !"operator _Bool", metadata !"operator _Bool", metadata !"_ZNK10ap_bit_refILi33ELb1EEcvbEv", metadata !307, i32 1204, metadata !719, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1204} ; [ DW_TAG_subprogram ]
!719 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !720, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!720 = metadata !{metadata !55, metadata !721}
!721 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !713} ; [ DW_TAG_pointer_type ]
!722 = metadata !{i32 786478, i32 0, metadata !704, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK10ap_bit_refILi33ELb1EE7to_boolEv", metadata !307, i32 1205, metadata !719, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1205} ; [ DW_TAG_subprogram ]
!723 = metadata !{i32 786478, i32 0, metadata !704, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEy", metadata !307, i32 1207, metadata !724, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1207} ; [ DW_TAG_subprogram ]
!724 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !725, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!725 = metadata !{metadata !726, metadata !711, metadata !369}
!726 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !704} ; [ DW_TAG_reference_type ]
!727 = metadata !{i32 786478, i32 0, metadata !704, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSERKS0_", metadata !307, i32 1227, metadata !728, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1227} ; [ DW_TAG_subprogram ]
!728 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !729, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!729 = metadata !{metadata !726, metadata !711, metadata !712}
!730 = metadata !{i32 786478, i32 0, metadata !704, metadata !"get", metadata !"get", metadata !"_ZNK10ap_bit_refILi33ELb1EE3getEv", metadata !307, i32 1335, metadata !719, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1335} ; [ DW_TAG_subprogram ]
!731 = metadata !{i32 786478, i32 0, metadata !704, metadata !"get", metadata !"get", metadata !"_ZN10ap_bit_refILi33ELb1EE3getEv", metadata !307, i32 1339, metadata !732, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1339} ; [ DW_TAG_subprogram ]
!732 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !733, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!733 = metadata !{metadata !55, metadata !711}
!734 = metadata !{i32 786478, i32 0, metadata !704, metadata !"operator~", metadata !"operator~", metadata !"_ZNK10ap_bit_refILi33ELb1EEcoEv", metadata !307, i32 1348, metadata !719, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1348} ; [ DW_TAG_subprogram ]
!735 = metadata !{i32 786478, i32 0, metadata !704, metadata !"length", metadata !"length", metadata !"_ZNK10ap_bit_refILi33ELb1EE6lengthEv", metadata !307, i32 1353, metadata !736, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1353} ; [ DW_TAG_subprogram ]
!736 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !737, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!737 = metadata !{metadata !15, metadata !721}
!738 = metadata !{metadata !739, metadata !519}
!739 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !15, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!740 = metadata !{i32 786478, i32 0, metadata !506, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEixEi", metadata !307, i32 2052, metadata !664, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2052} ; [ DW_TAG_subprogram ]
!741 = metadata !{i32 786478, i32 0, metadata !506, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3bitEi", metadata !307, i32 2066, metadata !702, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2066} ; [ DW_TAG_subprogram ]
!742 = metadata !{i32 786478, i32 0, metadata !506, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE3bitEi", metadata !307, i32 2080, metadata !664, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2080} ; [ DW_TAG_subprogram ]
!743 = metadata !{i32 786478, i32 0, metadata !506, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE10and_reduceEv", metadata !307, i32 2260, metadata !744, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2260} ; [ DW_TAG_subprogram ]
!744 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !745, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!745 = metadata !{metadata !55, metadata !523}
!746 = metadata !{i32 786478, i32 0, metadata !506, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE11nand_reduceEv", metadata !307, i32 2263, metadata !744, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2263} ; [ DW_TAG_subprogram ]
!747 = metadata !{i32 786478, i32 0, metadata !506, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE9or_reduceEv", metadata !307, i32 2266, metadata !744, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2266} ; [ DW_TAG_subprogram ]
!748 = metadata !{i32 786478, i32 0, metadata !506, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE10nor_reduceEv", metadata !307, i32 2269, metadata !744, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2269} ; [ DW_TAG_subprogram ]
!749 = metadata !{i32 786478, i32 0, metadata !506, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE10xor_reduceEv", metadata !307, i32 2272, metadata !744, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2272} ; [ DW_TAG_subprogram ]
!750 = metadata !{i32 786478, i32 0, metadata !506, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE11xnor_reduceEv", metadata !307, i32 2275, metadata !744, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2275} ; [ DW_TAG_subprogram ]
!751 = metadata !{i32 786478, i32 0, metadata !506, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE10and_reduceEv", metadata !307, i32 2279, metadata !626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2279} ; [ DW_TAG_subprogram ]
!752 = metadata !{i32 786478, i32 0, metadata !506, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE11nand_reduceEv", metadata !307, i32 2282, metadata !626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2282} ; [ DW_TAG_subprogram ]
!753 = metadata !{i32 786478, i32 0, metadata !506, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9or_reduceEv", metadata !307, i32 2285, metadata !626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2285} ; [ DW_TAG_subprogram ]
!754 = metadata !{i32 786478, i32 0, metadata !506, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE10nor_reduceEv", metadata !307, i32 2288, metadata !626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2288} ; [ DW_TAG_subprogram ]
!755 = metadata !{i32 786478, i32 0, metadata !506, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE10xor_reduceEv", metadata !307, i32 2291, metadata !626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2291} ; [ DW_TAG_subprogram ]
!756 = metadata !{i32 786478, i32 0, metadata !506, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE11xnor_reduceEv", metadata !307, i32 2294, metadata !626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2294} ; [ DW_TAG_subprogram ]
!757 = metadata !{i32 786478, i32 0, metadata !506, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_stringEPci8BaseModeb", metadata !307, i32 2301, metadata !758, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2301} ; [ DW_TAG_subprogram ]
!758 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !759, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!759 = metadata !{null, metadata !624, metadata !760, metadata !15, metadata !761, metadata !55}
!760 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ]
!761 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !307, i32 603, i64 5, i64 8, i32 0, i32 0, null, metadata !762, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!762 = metadata !{metadata !763, metadata !764, metadata !765, metadata !766}
!763 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!764 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!765 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!766 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!767 = metadata !{i32 786478, i32 0, metadata !506, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_stringE8BaseModeb", metadata !307, i32 2328, metadata !768, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2328} ; [ DW_TAG_subprogram ]
!768 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !769, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!769 = metadata !{metadata !760, metadata !624, metadata !761, metadata !55}
!770 = metadata !{i32 786478, i32 0, metadata !506, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_stringEab", metadata !307, i32 2332, metadata !771, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2332} ; [ DW_TAG_subprogram ]
!771 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !772, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!772 = metadata !{metadata !760, metadata !624, metadata !332, metadata !55}
!773 = metadata !{metadata !739, metadata !519, metadata !774}
!774 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !55, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!775 = metadata !{i32 786478, i32 0, metadata !306, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE5rangeEii", metadata !307, i32 2001, metadata !776, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2001} ; [ DW_TAG_subprogram ]
!776 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !777, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!777 = metadata !{metadata !778, metadata !325, metadata !15, metadata !15}
!778 = metadata !{i32 786434, null, metadata !"ap_range_ref<32, false>", metadata !307, i32 924, i64 128, i64 64, i32 0, i32 0, null, metadata !779, i32 0, null, metadata !835} ; [ DW_TAG_class_type ]
!779 = metadata !{metadata !780, metadata !781, metadata !782, metadata !783, metadata !789, metadata !793, metadata !797, metadata !800, metadata !804, metadata !807, metadata !811, metadata !814, metadata !815, metadata !818, metadata !821, metadata !824, metadata !827, metadata !830, metadata !833, metadata !834}
!780 = metadata !{i32 786445, metadata !778, metadata !"d_bv", metadata !307, i32 925, i64 64, i64 64, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ]
!781 = metadata !{i32 786445, metadata !778, metadata !"l_index", metadata !307, i32 926, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ]
!782 = metadata !{i32 786445, metadata !778, metadata !"h_index", metadata !307, i32 927, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ]
!783 = metadata !{i32 786478, i32 0, metadata !778, metadata !"ap_range_ref", metadata !"ap_range_ref", metadata !"", metadata !307, i32 930, metadata !784, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 930} ; [ DW_TAG_subprogram ]
!784 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !785, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!785 = metadata !{null, metadata !786, metadata !787}
!786 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !778} ; [ DW_TAG_pointer_type ]
!787 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !788} ; [ DW_TAG_reference_type ]
!788 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !778} ; [ DW_TAG_const_type ]
!789 = metadata !{i32 786478, i32 0, metadata !778, metadata !"ap_range_ref", metadata !"ap_range_ref", metadata !"", metadata !307, i32 933, metadata !790, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 933} ; [ DW_TAG_subprogram ]
!790 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !791, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!791 = metadata !{null, metadata !786, metadata !792, metadata !15, metadata !15}
!792 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !306} ; [ DW_TAG_pointer_type ]
!793 = metadata !{i32 786478, i32 0, metadata !778, metadata !"operator ap_int_base", metadata !"operator ap_int_base", metadata !"_ZNK12ap_range_refILi32ELb0EEcv11ap_int_baseILi32ELb0ELb1EEEv", metadata !307, i32 938, metadata !794, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 938} ; [ DW_TAG_subprogram ]
!794 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !795, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!795 = metadata !{metadata !306, metadata !796}
!796 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !788} ; [ DW_TAG_pointer_type ]
!797 = metadata !{i32 786478, i32 0, metadata !778, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK12ap_range_refILi32ELb0EEcvyEv", metadata !307, i32 944, metadata !798, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 944} ; [ DW_TAG_subprogram ]
!798 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !799, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!799 = metadata !{metadata !369, metadata !796}
!800 = metadata !{i32 786478, i32 0, metadata !778, metadata !"operator=", metadata !"operator=", metadata !"_ZN12ap_range_refILi32ELb0EEaSEy", metadata !307, i32 948, metadata !801, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 948} ; [ DW_TAG_subprogram ]
!801 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !802, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!802 = metadata !{metadata !803, metadata !786, metadata !369}
!803 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !778} ; [ DW_TAG_reference_type ]
!804 = metadata !{i32 786478, i32 0, metadata !778, metadata !"operator=", metadata !"operator=", metadata !"_ZN12ap_range_refILi32ELb0EEaSERKS0_", metadata !307, i32 966, metadata !805, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 966} ; [ DW_TAG_subprogram ]
!805 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !806, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!806 = metadata !{metadata !803, metadata !786, metadata !787}
!807 = metadata !{i32 786478, i32 0, metadata !778, metadata !"operator,", metadata !"operator,", metadata !"_ZN12ap_range_refILi32ELb0EEcmER11ap_int_baseILi32ELb0ELb1EE", metadata !307, i32 1021, metadata !808, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1021} ; [ DW_TAG_subprogram ]
!808 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !809, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!809 = metadata !{metadata !810, metadata !786, metadata !398}
!810 = metadata !{i32 786434, null, metadata !"ap_concat_ref<32, ap_range_ref<32, false>, 32, ap_int_base<32, false, true> >", metadata !307, i32 687, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!811 = metadata !{i32 786478, i32 0, metadata !778, metadata !"length", metadata !"length", metadata !"_ZNK12ap_range_refILi32ELb0EE6lengthEv", metadata !307, i32 1132, metadata !812, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1132} ; [ DW_TAG_subprogram ]
!812 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !813, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!813 = metadata !{metadata !15, metadata !796}
!814 = metadata !{i32 786478, i32 0, metadata !778, metadata !"to_int", metadata !"to_int", metadata !"_ZNK12ap_range_refILi32ELb0EE6to_intEv", metadata !307, i32 1136, metadata !812, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1136} ; [ DW_TAG_subprogram ]
!815 = metadata !{i32 786478, i32 0, metadata !778, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK12ap_range_refILi32ELb0EE7to_uintEv", metadata !307, i32 1139, metadata !816, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1139} ; [ DW_TAG_subprogram ]
!816 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !817, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!817 = metadata !{metadata !351, metadata !796}
!818 = metadata !{i32 786478, i32 0, metadata !778, metadata !"to_long", metadata !"to_long", metadata !"_ZNK12ap_range_refILi32ELb0EE7to_longEv", metadata !307, i32 1142, metadata !819, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1142} ; [ DW_TAG_subprogram ]
!819 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !820, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!820 = metadata !{metadata !355, metadata !796}
!821 = metadata !{i32 786478, i32 0, metadata !778, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK12ap_range_refILi32ELb0EE8to_ulongEv", metadata !307, i32 1145, metadata !822, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1145} ; [ DW_TAG_subprogram ]
!822 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !823, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!823 = metadata !{metadata !359, metadata !796}
!824 = metadata !{i32 786478, i32 0, metadata !778, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK12ap_range_refILi32ELb0EE8to_int64Ev", metadata !307, i32 1148, metadata !825, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1148} ; [ DW_TAG_subprogram ]
!825 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !826, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!826 = metadata !{metadata !363, metadata !796}
!827 = metadata !{i32 786478, i32 0, metadata !778, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK12ap_range_refILi32ELb0EE9to_uint64Ev", metadata !307, i32 1151, metadata !828, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1151} ; [ DW_TAG_subprogram ]
!828 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !829, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!829 = metadata !{metadata !368, metadata !796}
!830 = metadata !{i32 786478, i32 0, metadata !778, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK12ap_range_refILi32ELb0EE10and_reduceEv", metadata !307, i32 1154, metadata !831, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1154} ; [ DW_TAG_subprogram ]
!831 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !832, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!832 = metadata !{metadata !55, metadata !796}
!833 = metadata !{i32 786478, i32 0, metadata !778, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK12ap_range_refILi32ELb0EE9or_reduceEv", metadata !307, i32 1165, metadata !831, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1165} ; [ DW_TAG_subprogram ]
!834 = metadata !{i32 786478, i32 0, metadata !778, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK12ap_range_refILi32ELb0EE10xor_reduceEv", metadata !307, i32 1176, metadata !831, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1176} ; [ DW_TAG_subprogram ]
!835 = metadata !{metadata !836, metadata !321}
!836 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !15, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!837 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEclEii", metadata !307, i32 2007, metadata !776, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2007} ; [ DW_TAG_subprogram ]
!838 = metadata !{i32 786478, i32 0, metadata !306, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE5rangeEii", metadata !307, i32 2013, metadata !839, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2013} ; [ DW_TAG_subprogram ]
!839 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !840, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!840 = metadata !{metadata !778, metadata !439, metadata !15, metadata !15}
!841 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEclEii", metadata !307, i32 2019, metadata !839, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2019} ; [ DW_TAG_subprogram ]
!842 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEixEi", metadata !307, i32 2038, metadata !843, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2038} ; [ DW_TAG_subprogram ]
!843 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !844, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!844 = metadata !{metadata !845, metadata !325, metadata !15}
!845 = metadata !{i32 786434, null, metadata !"ap_bit_ref<32, false>", metadata !307, i32 1194, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!846 = metadata !{i32 786478, i32 0, metadata !306, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEixEi", metadata !307, i32 2052, metadata !479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2052} ; [ DW_TAG_subprogram ]
!847 = metadata !{i32 786478, i32 0, metadata !306, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE3bitEi", metadata !307, i32 2066, metadata !843, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2066} ; [ DW_TAG_subprogram ]
!848 = metadata !{i32 786478, i32 0, metadata !306, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE3bitEi", metadata !307, i32 2080, metadata !479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2080} ; [ DW_TAG_subprogram ]
!849 = metadata !{i32 786478, i32 0, metadata !306, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE10and_reduceEv", metadata !307, i32 2260, metadata !850, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2260} ; [ DW_TAG_subprogram ]
!850 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !851, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!851 = metadata !{metadata !55, metadata !325}
!852 = metadata !{i32 786478, i32 0, metadata !306, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE11nand_reduceEv", metadata !307, i32 2263, metadata !850, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2263} ; [ DW_TAG_subprogram ]
!853 = metadata !{i32 786478, i32 0, metadata !306, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE9or_reduceEv", metadata !307, i32 2266, metadata !850, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2266} ; [ DW_TAG_subprogram ]
!854 = metadata !{i32 786478, i32 0, metadata !306, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE10nor_reduceEv", metadata !307, i32 2269, metadata !850, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2269} ; [ DW_TAG_subprogram ]
!855 = metadata !{i32 786478, i32 0, metadata !306, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE10xor_reduceEv", metadata !307, i32 2272, metadata !850, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2272} ; [ DW_TAG_subprogram ]
!856 = metadata !{i32 786478, i32 0, metadata !306, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE11xnor_reduceEv", metadata !307, i32 2275, metadata !850, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2275} ; [ DW_TAG_subprogram ]
!857 = metadata !{i32 786478, i32 0, metadata !306, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE10and_reduceEv", metadata !307, i32 2279, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2279} ; [ DW_TAG_subprogram ]
!858 = metadata !{i32 786478, i32 0, metadata !306, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE11nand_reduceEv", metadata !307, i32 2282, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2282} ; [ DW_TAG_subprogram ]
!859 = metadata !{i32 786478, i32 0, metadata !306, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9or_reduceEv", metadata !307, i32 2285, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2285} ; [ DW_TAG_subprogram ]
!860 = metadata !{i32 786478, i32 0, metadata !306, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE10nor_reduceEv", metadata !307, i32 2288, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2288} ; [ DW_TAG_subprogram ]
!861 = metadata !{i32 786478, i32 0, metadata !306, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE10xor_reduceEv", metadata !307, i32 2291, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2291} ; [ DW_TAG_subprogram ]
!862 = metadata !{i32 786478, i32 0, metadata !306, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE11xnor_reduceEv", metadata !307, i32 2294, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2294} ; [ DW_TAG_subprogram ]
!863 = metadata !{i32 786478, i32 0, metadata !306, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !307, i32 2301, metadata !864, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2301} ; [ DW_TAG_subprogram ]
!864 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !865, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!865 = metadata !{null, metadata !439, metadata !760, metadata !15, metadata !761, metadata !55}
!866 = metadata !{i32 786478, i32 0, metadata !306, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9to_stringE8BaseModeb", metadata !307, i32 2328, metadata !867, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2328} ; [ DW_TAG_subprogram ]
!867 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !868, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!868 = metadata !{metadata !760, metadata !439, metadata !761, metadata !55}
!869 = metadata !{i32 786478, i32 0, metadata !306, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9to_stringEab", metadata !307, i32 2332, metadata !870, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2332} ; [ DW_TAG_subprogram ]
!870 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !871, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!871 = metadata !{metadata !760, metadata !439, metadata !332, metadata !55}
!872 = metadata !{metadata !836, metadata !321, metadata !774}
!873 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 183, metadata !874, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 183} ; [ DW_TAG_subprogram ]
!874 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !875, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!875 = metadata !{null, metadata !876}
!876 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !302} ; [ DW_TAG_pointer_type ]
!877 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 245, metadata !878, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 245} ; [ DW_TAG_subprogram ]
!878 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !879, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!879 = metadata !{null, metadata !876, metadata !55}
!880 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 246, metadata !881, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 246} ; [ DW_TAG_subprogram ]
!881 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !882, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!882 = metadata !{null, metadata !876, metadata !332}
!883 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 247, metadata !884, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 247} ; [ DW_TAG_subprogram ]
!884 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !885, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!885 = metadata !{null, metadata !876, metadata !336}
!886 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 248, metadata !887, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 248} ; [ DW_TAG_subprogram ]
!887 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !888, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!888 = metadata !{null, metadata !876, metadata !340}
!889 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 249, metadata !890, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 249} ; [ DW_TAG_subprogram ]
!890 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !891, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!891 = metadata !{null, metadata !876, metadata !344}
!892 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 250, metadata !893, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 250} ; [ DW_TAG_subprogram ]
!893 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !894, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!894 = metadata !{null, metadata !876, metadata !15}
!895 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 251, metadata !896, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 251} ; [ DW_TAG_subprogram ]
!896 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !897, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!897 = metadata !{null, metadata !876, metadata !351}
!898 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 252, metadata !899, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 252} ; [ DW_TAG_subprogram ]
!899 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !900, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!900 = metadata !{null, metadata !876, metadata !355}
!901 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 253, metadata !902, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 253} ; [ DW_TAG_subprogram ]
!902 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !903, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!903 = metadata !{null, metadata !876, metadata !359}
!904 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 254, metadata !905, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 254} ; [ DW_TAG_subprogram ]
!905 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !906, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!906 = metadata !{null, metadata !876, metadata !369}
!907 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 255, metadata !908, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 255} ; [ DW_TAG_subprogram ]
!908 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !909, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!909 = metadata !{null, metadata !876, metadata !364}
!910 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 256, metadata !911, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 256} ; [ DW_TAG_subprogram ]
!911 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !912, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!912 = metadata !{null, metadata !876, metadata !22}
!913 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 257, metadata !914, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 257} ; [ DW_TAG_subprogram ]
!914 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !915, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!915 = metadata !{null, metadata !876, metadata !376}
!916 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 259, metadata !917, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 259} ; [ DW_TAG_subprogram ]
!917 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !918, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!918 = metadata !{null, metadata !876, metadata !32}
!919 = metadata !{i32 786478, i32 0, metadata !302, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 260, metadata !920, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 260} ; [ DW_TAG_subprogram ]
!920 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !921, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!921 = metadata !{null, metadata !876, metadata !32, metadata !332}
!922 = metadata !{i32 786478, i32 0, metadata !302, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi32EEaSERKS0_", metadata !303, i32 263, metadata !923, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 263} ; [ DW_TAG_subprogram ]
!923 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !924, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!924 = metadata !{null, metadata !925, metadata !927}
!925 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !926} ; [ DW_TAG_pointer_type ]
!926 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !302} ; [ DW_TAG_volatile_type ]
!927 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !928} ; [ DW_TAG_reference_type ]
!928 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !302} ; [ DW_TAG_const_type ]
!929 = metadata !{i32 786478, i32 0, metadata !302, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi32EEaSERVKS0_", metadata !303, i32 267, metadata !923, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 267} ; [ DW_TAG_subprogram ]
!930 = metadata !{i32 786478, i32 0, metadata !302, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi32EEaSERVKS0_", metadata !303, i32 271, metadata !931, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 271} ; [ DW_TAG_subprogram ]
!931 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !932, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!932 = metadata !{metadata !933, metadata !876, metadata !927}
!933 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !302} ; [ DW_TAG_reference_type ]
!934 = metadata !{i32 786478, i32 0, metadata !302, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi32EEaSERKS0_", metadata !303, i32 276, metadata !931, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 276} ; [ DW_TAG_subprogram ]
!935 = metadata !{metadata !836}
!936 = metadata !{i32 786445, metadata !298, metadata !"keep", metadata !299, i32 103, i64 8, i64 8, i64 32, i32 0, metadata !937} ; [ DW_TAG_member ]
!937 = metadata !{i32 786434, null, metadata !"ap_uint<4>", metadata !303, i32 180, i64 8, i64 8, i32 0, i32 0, null, metadata !938, i32 0, null, metadata !1226} ; [ DW_TAG_class_type ]
!938 = metadata !{metadata !939, metadata !1164, metadata !1168, metadata !1171, metadata !1174, metadata !1177, metadata !1180, metadata !1183, metadata !1186, metadata !1189, metadata !1192, metadata !1195, metadata !1198, metadata !1201, metadata !1204, metadata !1207, metadata !1210, metadata !1213, metadata !1220, metadata !1221, metadata !1225}
!939 = metadata !{i32 786460, metadata !937, null, metadata !303, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !940} ; [ DW_TAG_inheritance ]
!940 = metadata !{i32 786434, null, metadata !"ap_int_base<4, false, true>", metadata !307, i32 1398, i64 8, i64 8, i32 0, i32 0, null, metadata !941, i32 0, null, metadata !1162} ; [ DW_TAG_class_type ]
!941 = metadata !{metadata !942, metadata !951, metadata !955, metadata !958, metadata !961, metadata !964, metadata !967, metadata !970, metadata !973, metadata !976, metadata !979, metadata !982, metadata !985, metadata !988, metadata !991, metadata !994, metadata !997, metadata !1000, metadata !1005, metadata !1010, metadata !1011, metadata !1012, metadata !1016, metadata !1017, metadata !1020, metadata !1023, metadata !1026, metadata !1029, metadata !1032, metadata !1035, metadata !1038, metadata !1041, metadata !1044, metadata !1047, metadata !1056, metadata !1059, metadata !1062, metadata !1065, metadata !1068, metadata !1071, metadata !1074, metadata !1077, metadata !1080, metadata !1081, metadata !1086, metadata !1089, metadata !1090, metadata !1091, metadata !1092, metadata !1093, metadata !1094, metadata !1097, metadata !1098, metadata !1101, metadata !1102, metadata !1103, metadata !1104, metadata !1105, metadata !1106, metadata !1109, metadata !1110, metadata !1111, metadata !1114, metadata !1115, metadata !1118, metadata !1119, metadata !1123, metadata !1127, metadata !1128, metadata !1131, metadata !1132, metadata !1136, metadata !1137, metadata !1138, metadata !1139, metadata !1142, metadata !1143, metadata !1144, metadata !1145, metadata !1146, metadata !1147, metadata !1148, metadata !1149, metadata !1150, metadata !1151, metadata !1152, metadata !1153, metadata !1156, metadata !1159}
!942 = metadata !{i32 786460, metadata !940, null, metadata !307, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !943} ; [ DW_TAG_inheritance ]
!943 = metadata !{i32 786434, null, metadata !"ssdm_int<4 + 1024 * 0, false>", metadata !311, i32 6, i64 8, i64 8, i32 0, i32 0, null, metadata !944, i32 0, null, metadata !437} ; [ DW_TAG_class_type ]
!944 = metadata !{metadata !945, metadata !947}
!945 = metadata !{i32 786445, metadata !943, metadata !"V", metadata !311, i32 6, i64 4, i64 4, i64 0, i32 0, metadata !946} ; [ DW_TAG_member ]
!946 = metadata !{i32 786468, null, metadata !"uint4", null, i32 0, i64 4, i64 4, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!947 = metadata !{i32 786478, i32 0, metadata !943, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !311, i32 6, metadata !948, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 6} ; [ DW_TAG_subprogram ]
!948 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !949, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!949 = metadata !{null, metadata !950}
!950 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !943} ; [ DW_TAG_pointer_type ]
!951 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1439, metadata !952, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1439} ; [ DW_TAG_subprogram ]
!952 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !953, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!953 = metadata !{null, metadata !954}
!954 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !940} ; [ DW_TAG_pointer_type ]
!955 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1461, metadata !956, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1461} ; [ DW_TAG_subprogram ]
!956 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !957, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!957 = metadata !{null, metadata !954, metadata !55}
!958 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1462, metadata !959, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1462} ; [ DW_TAG_subprogram ]
!959 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !960, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!960 = metadata !{null, metadata !954, metadata !332}
!961 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1463, metadata !962, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1463} ; [ DW_TAG_subprogram ]
!962 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !963, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!963 = metadata !{null, metadata !954, metadata !336}
!964 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1464, metadata !965, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1464} ; [ DW_TAG_subprogram ]
!965 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !966, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!966 = metadata !{null, metadata !954, metadata !340}
!967 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1465, metadata !968, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1465} ; [ DW_TAG_subprogram ]
!968 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !969, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!969 = metadata !{null, metadata !954, metadata !344}
!970 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1466, metadata !971, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1466} ; [ DW_TAG_subprogram ]
!971 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !972, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!972 = metadata !{null, metadata !954, metadata !15}
!973 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1467, metadata !974, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1467} ; [ DW_TAG_subprogram ]
!974 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !975, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!975 = metadata !{null, metadata !954, metadata !351}
!976 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1468, metadata !977, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1468} ; [ DW_TAG_subprogram ]
!977 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !978, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!978 = metadata !{null, metadata !954, metadata !355}
!979 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1469, metadata !980, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1469} ; [ DW_TAG_subprogram ]
!980 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !981, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!981 = metadata !{null, metadata !954, metadata !359}
!982 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1470, metadata !983, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1470} ; [ DW_TAG_subprogram ]
!983 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !984, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!984 = metadata !{null, metadata !954, metadata !363}
!985 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1471, metadata !986, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1471} ; [ DW_TAG_subprogram ]
!986 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !987, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!987 = metadata !{null, metadata !954, metadata !368}
!988 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1472, metadata !989, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1472} ; [ DW_TAG_subprogram ]
!989 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !990, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!990 = metadata !{null, metadata !954, metadata !22}
!991 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1473, metadata !992, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1473} ; [ DW_TAG_subprogram ]
!992 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !993, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!993 = metadata !{null, metadata !954, metadata !376}
!994 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1500, metadata !995, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1500} ; [ DW_TAG_subprogram ]
!995 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !996, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!996 = metadata !{null, metadata !954, metadata !32}
!997 = metadata !{i32 786478, i32 0, metadata !940, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1507, metadata !998, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1507} ; [ DW_TAG_subprogram ]
!998 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !999, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!999 = metadata !{null, metadata !954, metadata !32, metadata !332}
!1000 = metadata !{i32 786478, i32 0, metadata !940, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi4ELb0ELb1EE4readEv", metadata !307, i32 1528, metadata !1001, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1528} ; [ DW_TAG_subprogram ]
!1001 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1002, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1002 = metadata !{metadata !940, metadata !1003}
!1003 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1004} ; [ DW_TAG_pointer_type ]
!1004 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !940} ; [ DW_TAG_volatile_type ]
!1005 = metadata !{i32 786478, i32 0, metadata !940, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi4ELb0ELb1EE5writeERKS0_", metadata !307, i32 1534, metadata !1006, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1534} ; [ DW_TAG_subprogram ]
!1006 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1007, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1007 = metadata !{null, metadata !1003, metadata !1008}
!1008 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1009} ; [ DW_TAG_reference_type ]
!1009 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !940} ; [ DW_TAG_const_type ]
!1010 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi4ELb0ELb1EEaSERVKS0_", metadata !307, i32 1546, metadata !1006, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1546} ; [ DW_TAG_subprogram ]
!1011 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi4ELb0ELb1EEaSERKS0_", metadata !307, i32 1555, metadata !1006, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1555} ; [ DW_TAG_subprogram ]
!1012 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSERVKS0_", metadata !307, i32 1578, metadata !1013, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1578} ; [ DW_TAG_subprogram ]
!1013 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1014, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1014 = metadata !{metadata !1015, metadata !954, metadata !1008}
!1015 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !940} ; [ DW_TAG_reference_type ]
!1016 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSERKS0_", metadata !307, i32 1583, metadata !1013, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1583} ; [ DW_TAG_subprogram ]
!1017 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEPKc", metadata !307, i32 1587, metadata !1018, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1587} ; [ DW_TAG_subprogram ]
!1018 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1019, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1019 = metadata !{metadata !1015, metadata !954, metadata !32}
!1020 = metadata !{i32 786478, i32 0, metadata !940, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE3setEPKca", metadata !307, i32 1595, metadata !1021, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1595} ; [ DW_TAG_subprogram ]
!1021 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1022, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1022 = metadata !{metadata !1015, metadata !954, metadata !32, metadata !332}
!1023 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEc", metadata !307, i32 1609, metadata !1024, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1609} ; [ DW_TAG_subprogram ]
!1024 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1025, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1025 = metadata !{metadata !1015, metadata !954, metadata !34}
!1026 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEh", metadata !307, i32 1610, metadata !1027, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1610} ; [ DW_TAG_subprogram ]
!1027 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1028, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1028 = metadata !{metadata !1015, metadata !954, metadata !336}
!1029 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEs", metadata !307, i32 1611, metadata !1030, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1611} ; [ DW_TAG_subprogram ]
!1030 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1031, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1031 = metadata !{metadata !1015, metadata !954, metadata !340}
!1032 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEt", metadata !307, i32 1612, metadata !1033, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1612} ; [ DW_TAG_subprogram ]
!1033 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1034, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1034 = metadata !{metadata !1015, metadata !954, metadata !344}
!1035 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEi", metadata !307, i32 1613, metadata !1036, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1613} ; [ DW_TAG_subprogram ]
!1036 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1037, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1037 = metadata !{metadata !1015, metadata !954, metadata !15}
!1038 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEj", metadata !307, i32 1614, metadata !1039, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1614} ; [ DW_TAG_subprogram ]
!1039 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1040, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1040 = metadata !{metadata !1015, metadata !954, metadata !351}
!1041 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEx", metadata !307, i32 1615, metadata !1042, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1615} ; [ DW_TAG_subprogram ]
!1042 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1043, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1043 = metadata !{metadata !1015, metadata !954, metadata !363}
!1044 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEy", metadata !307, i32 1616, metadata !1045, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1616} ; [ DW_TAG_subprogram ]
!1045 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1046, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1046 = metadata !{metadata !1015, metadata !954, metadata !368}
!1047 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EEcvhEv", metadata !307, i32 1654, metadata !1048, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1654} ; [ DW_TAG_subprogram ]
!1048 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1049, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1049 = metadata !{metadata !1050, metadata !1055}
!1050 = metadata !{i32 786454, metadata !940, metadata !"RetType", metadata !307, i32 1403, i64 0, i64 0, i64 0, i32 0, metadata !1051} ; [ DW_TAG_typedef ]
!1051 = metadata !{i32 786454, metadata !1052, metadata !"Type", metadata !307, i32 1371, i64 0, i64 0, i64 0, i32 0, metadata !336} ; [ DW_TAG_typedef ]
!1052 = metadata !{i32 786434, null, metadata !"retval<1, false>", metadata !307, i32 1370, i64 8, i64 8, i32 0, i32 0, null, metadata !436, i32 0, null, metadata !1053} ; [ DW_TAG_class_type ]
!1053 = metadata !{metadata !1054, metadata !321}
!1054 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !15, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1055 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1009} ; [ DW_TAG_pointer_type ]
!1056 = metadata !{i32 786478, i32 0, metadata !940, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE7to_boolEv", metadata !307, i32 1660, metadata !1057, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1660} ; [ DW_TAG_subprogram ]
!1057 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1058, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1058 = metadata !{metadata !55, metadata !1055}
!1059 = metadata !{i32 786478, i32 0, metadata !940, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE6to_intEv", metadata !307, i32 1661, metadata !1060, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1661} ; [ DW_TAG_subprogram ]
!1060 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1061, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1061 = metadata !{metadata !15, metadata !1055}
!1062 = metadata !{i32 786478, i32 0, metadata !940, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE7to_uintEv", metadata !307, i32 1662, metadata !1063, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1662} ; [ DW_TAG_subprogram ]
!1063 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1064, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1064 = metadata !{metadata !351, metadata !1055}
!1065 = metadata !{i32 786478, i32 0, metadata !940, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE7to_longEv", metadata !307, i32 1663, metadata !1066, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1663} ; [ DW_TAG_subprogram ]
!1066 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1067, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1067 = metadata !{metadata !355, metadata !1055}
!1068 = metadata !{i32 786478, i32 0, metadata !940, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE8to_ulongEv", metadata !307, i32 1664, metadata !1069, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1664} ; [ DW_TAG_subprogram ]
!1069 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1070, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1070 = metadata !{metadata !359, metadata !1055}
!1071 = metadata !{i32 786478, i32 0, metadata !940, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE8to_int64Ev", metadata !307, i32 1665, metadata !1072, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1665} ; [ DW_TAG_subprogram ]
!1072 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1073, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1073 = metadata !{metadata !363, metadata !1055}
!1074 = metadata !{i32 786478, i32 0, metadata !940, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE9to_uint64Ev", metadata !307, i32 1666, metadata !1075, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1666} ; [ DW_TAG_subprogram ]
!1075 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1076, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1076 = metadata !{metadata !368, metadata !1055}
!1077 = metadata !{i32 786478, i32 0, metadata !940, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE9to_doubleEv", metadata !307, i32 1667, metadata !1078, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1667} ; [ DW_TAG_subprogram ]
!1078 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1079, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1079 = metadata !{metadata !376, metadata !1055}
!1080 = metadata !{i32 786478, i32 0, metadata !940, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE6lengthEv", metadata !307, i32 1680, metadata !1060, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1680} ; [ DW_TAG_subprogram ]
!1081 = metadata !{i32 786478, i32 0, metadata !940, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi4ELb0ELb1EE6lengthEv", metadata !307, i32 1681, metadata !1082, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1681} ; [ DW_TAG_subprogram ]
!1082 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1083, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1083 = metadata !{metadata !15, metadata !1084}
!1084 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1085} ; [ DW_TAG_pointer_type ]
!1085 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1004} ; [ DW_TAG_const_type ]
!1086 = metadata !{i32 786478, i32 0, metadata !940, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE7reverseEv", metadata !307, i32 1686, metadata !1087, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1686} ; [ DW_TAG_subprogram ]
!1087 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1088, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1088 = metadata !{metadata !1015, metadata !954}
!1089 = metadata !{i32 786478, i32 0, metadata !940, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE6iszeroEv", metadata !307, i32 1692, metadata !1057, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1692} ; [ DW_TAG_subprogram ]
!1090 = metadata !{i32 786478, i32 0, metadata !940, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE7is_zeroEv", metadata !307, i32 1697, metadata !1057, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1697} ; [ DW_TAG_subprogram ]
!1091 = metadata !{i32 786478, i32 0, metadata !940, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE4signEv", metadata !307, i32 1702, metadata !1057, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1702} ; [ DW_TAG_subprogram ]
!1092 = metadata !{i32 786478, i32 0, metadata !940, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE5clearEi", metadata !307, i32 1710, metadata !971, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1710} ; [ DW_TAG_subprogram ]
!1093 = metadata !{i32 786478, i32 0, metadata !940, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE6invertEi", metadata !307, i32 1716, metadata !971, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1716} ; [ DW_TAG_subprogram ]
!1094 = metadata !{i32 786478, i32 0, metadata !940, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE4testEi", metadata !307, i32 1724, metadata !1095, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1724} ; [ DW_TAG_subprogram ]
!1095 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1096, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1096 = metadata !{metadata !55, metadata !1055, metadata !15}
!1097 = metadata !{i32 786478, i32 0, metadata !940, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE3setEi", metadata !307, i32 1730, metadata !971, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1730} ; [ DW_TAG_subprogram ]
!1098 = metadata !{i32 786478, i32 0, metadata !940, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE3setEib", metadata !307, i32 1736, metadata !1099, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1736} ; [ DW_TAG_subprogram ]
!1099 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1100 = metadata !{null, metadata !954, metadata !15, metadata !55}
!1101 = metadata !{i32 786478, i32 0, metadata !940, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE7lrotateEi", metadata !307, i32 1743, metadata !971, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1743} ; [ DW_TAG_subprogram ]
!1102 = metadata !{i32 786478, i32 0, metadata !940, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE7rrotateEi", metadata !307, i32 1752, metadata !971, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1752} ; [ DW_TAG_subprogram ]
!1103 = metadata !{i32 786478, i32 0, metadata !940, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE7set_bitEib", metadata !307, i32 1760, metadata !1099, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1760} ; [ DW_TAG_subprogram ]
!1104 = metadata !{i32 786478, i32 0, metadata !940, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE7get_bitEi", metadata !307, i32 1765, metadata !1095, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1765} ; [ DW_TAG_subprogram ]
!1105 = metadata !{i32 786478, i32 0, metadata !940, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE5b_notEv", metadata !307, i32 1770, metadata !952, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1770} ; [ DW_TAG_subprogram ]
!1106 = metadata !{i32 786478, i32 0, metadata !940, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE17countLeadingZerosEv", metadata !307, i32 1777, metadata !1107, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1777} ; [ DW_TAG_subprogram ]
!1107 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1108 = metadata !{metadata !15, metadata !954}
!1109 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEppEv", metadata !307, i32 1834, metadata !1087, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1834} ; [ DW_TAG_subprogram ]
!1110 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEmmEv", metadata !307, i32 1838, metadata !1087, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1838} ; [ DW_TAG_subprogram ]
!1111 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEppEi", metadata !307, i32 1846, metadata !1112, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1846} ; [ DW_TAG_subprogram ]
!1112 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1113 = metadata !{metadata !1009, metadata !954, metadata !15}
!1114 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEmmEi", metadata !307, i32 1851, metadata !1112, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1851} ; [ DW_TAG_subprogram ]
!1115 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EEpsEv", metadata !307, i32 1860, metadata !1116, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1860} ; [ DW_TAG_subprogram ]
!1116 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1117 = metadata !{metadata !940, metadata !1055}
!1118 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EEntEv", metadata !307, i32 1866, metadata !1057, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1866} ; [ DW_TAG_subprogram ]
!1119 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EEngEv", metadata !307, i32 1871, metadata !1120, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1871} ; [ DW_TAG_subprogram ]
!1120 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1121 = metadata !{metadata !1122, metadata !1055}
!1122 = metadata !{i32 786434, null, metadata !"ap_int_base<5, true, true>", metadata !307, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1123 = metadata !{i32 786478, i32 0, metadata !940, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE5rangeEii", metadata !307, i32 2001, metadata !1124, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2001} ; [ DW_TAG_subprogram ]
!1124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1125 = metadata !{metadata !1126, metadata !954, metadata !15, metadata !15}
!1126 = metadata !{i32 786434, null, metadata !"ap_range_ref<4, false>", metadata !307, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1127 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEclEii", metadata !307, i32 2007, metadata !1124, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2007} ; [ DW_TAG_subprogram ]
!1128 = metadata !{i32 786478, i32 0, metadata !940, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE5rangeEii", metadata !307, i32 2013, metadata !1129, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2013} ; [ DW_TAG_subprogram ]
!1129 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1130 = metadata !{metadata !1126, metadata !1055, metadata !15, metadata !15}
!1131 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EEclEii", metadata !307, i32 2019, metadata !1129, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2019} ; [ DW_TAG_subprogram ]
!1132 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEixEi", metadata !307, i32 2038, metadata !1133, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2038} ; [ DW_TAG_subprogram ]
!1133 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1134 = metadata !{metadata !1135, metadata !954, metadata !15}
!1135 = metadata !{i32 786434, null, metadata !"ap_bit_ref<4, false>", metadata !307, i32 1194, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1136 = metadata !{i32 786478, i32 0, metadata !940, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EEixEi", metadata !307, i32 2052, metadata !1095, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2052} ; [ DW_TAG_subprogram ]
!1137 = metadata !{i32 786478, i32 0, metadata !940, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE3bitEi", metadata !307, i32 2066, metadata !1133, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2066} ; [ DW_TAG_subprogram ]
!1138 = metadata !{i32 786478, i32 0, metadata !940, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE3bitEi", metadata !307, i32 2080, metadata !1095, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2080} ; [ DW_TAG_subprogram ]
!1139 = metadata !{i32 786478, i32 0, metadata !940, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE10and_reduceEv", metadata !307, i32 2260, metadata !1140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2260} ; [ DW_TAG_subprogram ]
!1140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1141 = metadata !{metadata !55, metadata !954}
!1142 = metadata !{i32 786478, i32 0, metadata !940, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE11nand_reduceEv", metadata !307, i32 2263, metadata !1140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2263} ; [ DW_TAG_subprogram ]
!1143 = metadata !{i32 786478, i32 0, metadata !940, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE9or_reduceEv", metadata !307, i32 2266, metadata !1140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2266} ; [ DW_TAG_subprogram ]
!1144 = metadata !{i32 786478, i32 0, metadata !940, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE10nor_reduceEv", metadata !307, i32 2269, metadata !1140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2269} ; [ DW_TAG_subprogram ]
!1145 = metadata !{i32 786478, i32 0, metadata !940, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE10xor_reduceEv", metadata !307, i32 2272, metadata !1140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2272} ; [ DW_TAG_subprogram ]
!1146 = metadata !{i32 786478, i32 0, metadata !940, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE11xnor_reduceEv", metadata !307, i32 2275, metadata !1140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2275} ; [ DW_TAG_subprogram ]
!1147 = metadata !{i32 786478, i32 0, metadata !940, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE10and_reduceEv", metadata !307, i32 2279, metadata !1057, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2279} ; [ DW_TAG_subprogram ]
!1148 = metadata !{i32 786478, i32 0, metadata !940, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE11nand_reduceEv", metadata !307, i32 2282, metadata !1057, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2282} ; [ DW_TAG_subprogram ]
!1149 = metadata !{i32 786478, i32 0, metadata !940, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE9or_reduceEv", metadata !307, i32 2285, metadata !1057, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2285} ; [ DW_TAG_subprogram ]
!1150 = metadata !{i32 786478, i32 0, metadata !940, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE10nor_reduceEv", metadata !307, i32 2288, metadata !1057, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2288} ; [ DW_TAG_subprogram ]
!1151 = metadata !{i32 786478, i32 0, metadata !940, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE10xor_reduceEv", metadata !307, i32 2291, metadata !1057, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2291} ; [ DW_TAG_subprogram ]
!1152 = metadata !{i32 786478, i32 0, metadata !940, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE11xnor_reduceEv", metadata !307, i32 2294, metadata !1057, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2294} ; [ DW_TAG_subprogram ]
!1153 = metadata !{i32 786478, i32 0, metadata !940, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !307, i32 2301, metadata !1154, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2301} ; [ DW_TAG_subprogram ]
!1154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1155 = metadata !{null, metadata !1055, metadata !760, metadata !15, metadata !761, metadata !55}
!1156 = metadata !{i32 786478, i32 0, metadata !940, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE9to_stringE8BaseModeb", metadata !307, i32 2328, metadata !1157, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2328} ; [ DW_TAG_subprogram ]
!1157 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1158 = metadata !{metadata !760, metadata !1055, metadata !761, metadata !55}
!1159 = metadata !{i32 786478, i32 0, metadata !940, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE9to_stringEab", metadata !307, i32 2332, metadata !1160, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2332} ; [ DW_TAG_subprogram ]
!1160 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1161 = metadata !{metadata !760, metadata !1055, metadata !332, metadata !55}
!1162 = metadata !{metadata !1163, metadata !321, metadata !774}
!1163 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !15, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1164 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 183, metadata !1165, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 183} ; [ DW_TAG_subprogram ]
!1165 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1166 = metadata !{null, metadata !1167}
!1167 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !937} ; [ DW_TAG_pointer_type ]
!1168 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 245, metadata !1169, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 245} ; [ DW_TAG_subprogram ]
!1169 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1170 = metadata !{null, metadata !1167, metadata !55}
!1171 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 246, metadata !1172, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 246} ; [ DW_TAG_subprogram ]
!1172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1173 = metadata !{null, metadata !1167, metadata !332}
!1174 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 247, metadata !1175, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 247} ; [ DW_TAG_subprogram ]
!1175 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1176 = metadata !{null, metadata !1167, metadata !336}
!1177 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 248, metadata !1178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 248} ; [ DW_TAG_subprogram ]
!1178 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1179 = metadata !{null, metadata !1167, metadata !340}
!1180 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 249, metadata !1181, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 249} ; [ DW_TAG_subprogram ]
!1181 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1182 = metadata !{null, metadata !1167, metadata !344}
!1183 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 250, metadata !1184, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 250} ; [ DW_TAG_subprogram ]
!1184 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1185 = metadata !{null, metadata !1167, metadata !15}
!1186 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 251, metadata !1187, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 251} ; [ DW_TAG_subprogram ]
!1187 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1188, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1188 = metadata !{null, metadata !1167, metadata !351}
!1189 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 252, metadata !1190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 252} ; [ DW_TAG_subprogram ]
!1190 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1191 = metadata !{null, metadata !1167, metadata !355}
!1192 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 253, metadata !1193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 253} ; [ DW_TAG_subprogram ]
!1193 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1194 = metadata !{null, metadata !1167, metadata !359}
!1195 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 254, metadata !1196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 254} ; [ DW_TAG_subprogram ]
!1196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1197 = metadata !{null, metadata !1167, metadata !369}
!1198 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 255, metadata !1199, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 255} ; [ DW_TAG_subprogram ]
!1199 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1200 = metadata !{null, metadata !1167, metadata !364}
!1201 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 256, metadata !1202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 256} ; [ DW_TAG_subprogram ]
!1202 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1203 = metadata !{null, metadata !1167, metadata !22}
!1204 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 257, metadata !1205, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 257} ; [ DW_TAG_subprogram ]
!1205 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1206 = metadata !{null, metadata !1167, metadata !376}
!1207 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 259, metadata !1208, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 259} ; [ DW_TAG_subprogram ]
!1208 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1209 = metadata !{null, metadata !1167, metadata !32}
!1210 = metadata !{i32 786478, i32 0, metadata !937, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 260, metadata !1211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 260} ; [ DW_TAG_subprogram ]
!1211 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1212, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1212 = metadata !{null, metadata !1167, metadata !32, metadata !332}
!1213 = metadata !{i32 786478, i32 0, metadata !937, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi4EEaSERKS0_", metadata !303, i32 263, metadata !1214, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 263} ; [ DW_TAG_subprogram ]
!1214 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1215 = metadata !{null, metadata !1216, metadata !1218}
!1216 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1217} ; [ DW_TAG_pointer_type ]
!1217 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !937} ; [ DW_TAG_volatile_type ]
!1218 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1219} ; [ DW_TAG_reference_type ]
!1219 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !937} ; [ DW_TAG_const_type ]
!1220 = metadata !{i32 786478, i32 0, metadata !937, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi4EEaSERVKS0_", metadata !303, i32 267, metadata !1214, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 267} ; [ DW_TAG_subprogram ]
!1221 = metadata !{i32 786478, i32 0, metadata !937, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi4EEaSERVKS0_", metadata !303, i32 271, metadata !1222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 271} ; [ DW_TAG_subprogram ]
!1222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1223 = metadata !{metadata !1224, metadata !1167, metadata !1218}
!1224 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !937} ; [ DW_TAG_reference_type ]
!1225 = metadata !{i32 786478, i32 0, metadata !937, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi4EEaSERKS0_", metadata !303, i32 276, metadata !1222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 276} ; [ DW_TAG_subprogram ]
!1226 = metadata !{metadata !1163}
!1227 = metadata !{i32 786445, metadata !298, metadata !"strb", metadata !299, i32 104, i64 8, i64 8, i64 40, i32 0, metadata !937} ; [ DW_TAG_member ]
!1228 = metadata !{i32 786445, metadata !298, metadata !"user", metadata !299, i32 105, i64 8, i64 8, i64 48, i32 0, metadata !1229} ; [ DW_TAG_member ]
!1229 = metadata !{i32 786434, null, metadata !"ap_uint<1>", metadata !303, i32 180, i64 8, i64 8, i32 0, i32 0, null, metadata !1230, i32 0, null, metadata !1514} ; [ DW_TAG_class_type ]
!1230 = metadata !{metadata !1231, metadata !1452, metadata !1456, metadata !1459, metadata !1462, metadata !1465, metadata !1468, metadata !1471, metadata !1474, metadata !1477, metadata !1480, metadata !1483, metadata !1486, metadata !1489, metadata !1492, metadata !1495, metadata !1498, metadata !1501, metadata !1508, metadata !1509, metadata !1513}
!1231 = metadata !{i32 786460, metadata !1229, null, metadata !303, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1232} ; [ DW_TAG_inheritance ]
!1232 = metadata !{i32 786434, null, metadata !"ap_int_base<1, false, true>", metadata !307, i32 1398, i64 8, i64 8, i32 0, i32 0, null, metadata !1233, i32 0, null, metadata !1450} ; [ DW_TAG_class_type ]
!1233 = metadata !{metadata !1234, metadata !1243, metadata !1247, metadata !1250, metadata !1253, metadata !1256, metadata !1259, metadata !1262, metadata !1265, metadata !1268, metadata !1271, metadata !1274, metadata !1277, metadata !1280, metadata !1283, metadata !1286, metadata !1289, metadata !1292, metadata !1297, metadata !1302, metadata !1303, metadata !1304, metadata !1308, metadata !1309, metadata !1312, metadata !1315, metadata !1318, metadata !1321, metadata !1324, metadata !1327, metadata !1330, metadata !1333, metadata !1336, metadata !1339, metadata !1344, metadata !1347, metadata !1350, metadata !1353, metadata !1356, metadata !1359, metadata !1362, metadata !1365, metadata !1368, metadata !1369, metadata !1374, metadata !1377, metadata !1378, metadata !1379, metadata !1380, metadata !1381, metadata !1382, metadata !1385, metadata !1386, metadata !1389, metadata !1390, metadata !1391, metadata !1392, metadata !1393, metadata !1394, metadata !1397, metadata !1398, metadata !1399, metadata !1402, metadata !1403, metadata !1406, metadata !1407, metadata !1411, metadata !1415, metadata !1416, metadata !1419, metadata !1420, metadata !1424, metadata !1425, metadata !1426, metadata !1427, metadata !1430, metadata !1431, metadata !1432, metadata !1433, metadata !1434, metadata !1435, metadata !1436, metadata !1437, metadata !1438, metadata !1439, metadata !1440, metadata !1441, metadata !1444, metadata !1447}
!1234 = metadata !{i32 786460, metadata !1232, null, metadata !307, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1235} ; [ DW_TAG_inheritance ]
!1235 = metadata !{i32 786434, null, metadata !"ssdm_int<1 + 1024 * 0, false>", metadata !311, i32 3, i64 8, i64 8, i32 0, i32 0, null, metadata !1236, i32 0, null, metadata !1053} ; [ DW_TAG_class_type ]
!1236 = metadata !{metadata !1237, metadata !1239}
!1237 = metadata !{i32 786445, metadata !1235, metadata !"V", metadata !311, i32 3, i64 1, i64 1, i64 0, i32 0, metadata !1238} ; [ DW_TAG_member ]
!1238 = metadata !{i32 786468, null, metadata !"uint1", null, i32 0, i64 1, i64 1, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!1239 = metadata !{i32 786478, i32 0, metadata !1235, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !311, i32 3, metadata !1240, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 3} ; [ DW_TAG_subprogram ]
!1240 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1241 = metadata !{null, metadata !1242}
!1242 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1235} ; [ DW_TAG_pointer_type ]
!1243 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1439, metadata !1244, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1439} ; [ DW_TAG_subprogram ]
!1244 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1245, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1245 = metadata !{null, metadata !1246}
!1246 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1232} ; [ DW_TAG_pointer_type ]
!1247 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1461, metadata !1248, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1461} ; [ DW_TAG_subprogram ]
!1248 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1249, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1249 = metadata !{null, metadata !1246, metadata !55}
!1250 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1462, metadata !1251, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1462} ; [ DW_TAG_subprogram ]
!1251 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1252 = metadata !{null, metadata !1246, metadata !332}
!1253 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1463, metadata !1254, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1463} ; [ DW_TAG_subprogram ]
!1254 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1255 = metadata !{null, metadata !1246, metadata !336}
!1256 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1464, metadata !1257, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1464} ; [ DW_TAG_subprogram ]
!1257 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1258 = metadata !{null, metadata !1246, metadata !340}
!1259 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1465, metadata !1260, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1465} ; [ DW_TAG_subprogram ]
!1260 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1261, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1261 = metadata !{null, metadata !1246, metadata !344}
!1262 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1466, metadata !1263, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1466} ; [ DW_TAG_subprogram ]
!1263 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1264 = metadata !{null, metadata !1246, metadata !15}
!1265 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1467, metadata !1266, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1467} ; [ DW_TAG_subprogram ]
!1266 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1267, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1267 = metadata !{null, metadata !1246, metadata !351}
!1268 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1468, metadata !1269, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1468} ; [ DW_TAG_subprogram ]
!1269 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1270 = metadata !{null, metadata !1246, metadata !355}
!1271 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1469, metadata !1272, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1469} ; [ DW_TAG_subprogram ]
!1272 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1273 = metadata !{null, metadata !1246, metadata !359}
!1274 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1470, metadata !1275, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1470} ; [ DW_TAG_subprogram ]
!1275 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1276 = metadata !{null, metadata !1246, metadata !363}
!1277 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1471, metadata !1278, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1471} ; [ DW_TAG_subprogram ]
!1278 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1279, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1279 = metadata !{null, metadata !1246, metadata !368}
!1280 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1472, metadata !1281, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1472} ; [ DW_TAG_subprogram ]
!1281 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1282, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1282 = metadata !{null, metadata !1246, metadata !22}
!1283 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1473, metadata !1284, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1473} ; [ DW_TAG_subprogram ]
!1284 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1285, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1285 = metadata !{null, metadata !1246, metadata !376}
!1286 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1500, metadata !1287, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1500} ; [ DW_TAG_subprogram ]
!1287 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1288, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1288 = metadata !{null, metadata !1246, metadata !32}
!1289 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !307, i32 1507, metadata !1290, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1507} ; [ DW_TAG_subprogram ]
!1290 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1291, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1291 = metadata !{null, metadata !1246, metadata !32, metadata !332}
!1292 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EE4readEv", metadata !307, i32 1528, metadata !1293, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1528} ; [ DW_TAG_subprogram ]
!1293 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1294, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1294 = metadata !{metadata !1232, metadata !1295}
!1295 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1296} ; [ DW_TAG_pointer_type ]
!1296 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1232} ; [ DW_TAG_volatile_type ]
!1297 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EE5writeERKS0_", metadata !307, i32 1534, metadata !1298, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1534} ; [ DW_TAG_subprogram ]
!1298 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1299, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1299 = metadata !{null, metadata !1295, metadata !1300}
!1300 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1301} ; [ DW_TAG_reference_type ]
!1301 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1232} ; [ DW_TAG_const_type ]
!1302 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EEaSERVKS0_", metadata !307, i32 1546, metadata !1298, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1546} ; [ DW_TAG_subprogram ]
!1303 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EEaSERKS0_", metadata !307, i32 1555, metadata !1298, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1555} ; [ DW_TAG_subprogram ]
!1304 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSERVKS0_", metadata !307, i32 1578, metadata !1305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1578} ; [ DW_TAG_subprogram ]
!1305 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1306 = metadata !{metadata !1307, metadata !1246, metadata !1300}
!1307 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1232} ; [ DW_TAG_reference_type ]
!1308 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSERKS0_", metadata !307, i32 1583, metadata !1305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1583} ; [ DW_TAG_subprogram ]
!1309 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEPKc", metadata !307, i32 1587, metadata !1310, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1587} ; [ DW_TAG_subprogram ]
!1310 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1311, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1311 = metadata !{metadata !1307, metadata !1246, metadata !32}
!1312 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEPKca", metadata !307, i32 1595, metadata !1313, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1595} ; [ DW_TAG_subprogram ]
!1313 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1314, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1314 = metadata !{metadata !1307, metadata !1246, metadata !32, metadata !332}
!1315 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEc", metadata !307, i32 1609, metadata !1316, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1609} ; [ DW_TAG_subprogram ]
!1316 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1317, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1317 = metadata !{metadata !1307, metadata !1246, metadata !34}
!1318 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEh", metadata !307, i32 1610, metadata !1319, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1610} ; [ DW_TAG_subprogram ]
!1319 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1320, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1320 = metadata !{metadata !1307, metadata !1246, metadata !336}
!1321 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEs", metadata !307, i32 1611, metadata !1322, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1611} ; [ DW_TAG_subprogram ]
!1322 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1323, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1323 = metadata !{metadata !1307, metadata !1246, metadata !340}
!1324 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEt", metadata !307, i32 1612, metadata !1325, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1612} ; [ DW_TAG_subprogram ]
!1325 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1326, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1326 = metadata !{metadata !1307, metadata !1246, metadata !344}
!1327 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEi", metadata !307, i32 1613, metadata !1328, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1613} ; [ DW_TAG_subprogram ]
!1328 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1329, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1329 = metadata !{metadata !1307, metadata !1246, metadata !15}
!1330 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEj", metadata !307, i32 1614, metadata !1331, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1614} ; [ DW_TAG_subprogram ]
!1331 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1332, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1332 = metadata !{metadata !1307, metadata !1246, metadata !351}
!1333 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEx", metadata !307, i32 1615, metadata !1334, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1615} ; [ DW_TAG_subprogram ]
!1334 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1335, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1335 = metadata !{metadata !1307, metadata !1246, metadata !363}
!1336 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEy", metadata !307, i32 1616, metadata !1337, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1616} ; [ DW_TAG_subprogram ]
!1337 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1338, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1338 = metadata !{metadata !1307, metadata !1246, metadata !368}
!1339 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEcvhEv", metadata !307, i32 1654, metadata !1340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1654} ; [ DW_TAG_subprogram ]
!1340 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1341, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1341 = metadata !{metadata !1342, metadata !1343}
!1342 = metadata !{i32 786454, metadata !1232, metadata !"RetType", metadata !307, i32 1403, i64 0, i64 0, i64 0, i32 0, metadata !1051} ; [ DW_TAG_typedef ]
!1343 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1301} ; [ DW_TAG_pointer_type ]
!1344 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_boolEv", metadata !307, i32 1660, metadata !1345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1660} ; [ DW_TAG_subprogram ]
!1345 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1346, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1346 = metadata !{metadata !55, metadata !1343}
!1347 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6to_intEv", metadata !307, i32 1661, metadata !1348, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1661} ; [ DW_TAG_subprogram ]
!1348 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1349, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1349 = metadata !{metadata !15, metadata !1343}
!1350 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_uintEv", metadata !307, i32 1662, metadata !1351, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1662} ; [ DW_TAG_subprogram ]
!1351 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1352, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1352 = metadata !{metadata !351, metadata !1343}
!1353 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_longEv", metadata !307, i32 1663, metadata !1354, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1663} ; [ DW_TAG_subprogram ]
!1354 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1355, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1355 = metadata !{metadata !355, metadata !1343}
!1356 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_ulongEv", metadata !307, i32 1664, metadata !1357, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1664} ; [ DW_TAG_subprogram ]
!1357 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1358, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1358 = metadata !{metadata !359, metadata !1343}
!1359 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_int64Ev", metadata !307, i32 1665, metadata !1360, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1665} ; [ DW_TAG_subprogram ]
!1360 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1361, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1361 = metadata !{metadata !363, metadata !1343}
!1362 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_uint64Ev", metadata !307, i32 1666, metadata !1363, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1666} ; [ DW_TAG_subprogram ]
!1363 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1364, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1364 = metadata !{metadata !368, metadata !1343}
!1365 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_doubleEv", metadata !307, i32 1667, metadata !1366, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1667} ; [ DW_TAG_subprogram ]
!1366 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1367, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1367 = metadata !{metadata !376, metadata !1343}
!1368 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6lengthEv", metadata !307, i32 1680, metadata !1348, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1680} ; [ DW_TAG_subprogram ]
!1369 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi1ELb0ELb1EE6lengthEv", metadata !307, i32 1681, metadata !1370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1681} ; [ DW_TAG_subprogram ]
!1370 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1371, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1371 = metadata !{metadata !15, metadata !1372}
!1372 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1373} ; [ DW_TAG_pointer_type ]
!1373 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1296} ; [ DW_TAG_const_type ]
!1374 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7reverseEv", metadata !307, i32 1686, metadata !1375, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1686} ; [ DW_TAG_subprogram ]
!1375 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1376, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1376 = metadata !{metadata !1307, metadata !1246}
!1377 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6iszeroEv", metadata !307, i32 1692, metadata !1345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1692} ; [ DW_TAG_subprogram ]
!1378 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7is_zeroEv", metadata !307, i32 1697, metadata !1345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1697} ; [ DW_TAG_subprogram ]
!1379 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE4signEv", metadata !307, i32 1702, metadata !1345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1702} ; [ DW_TAG_subprogram ]
!1380 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5clearEi", metadata !307, i32 1710, metadata !1263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1710} ; [ DW_TAG_subprogram ]
!1381 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE6invertEi", metadata !307, i32 1716, metadata !1263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1716} ; [ DW_TAG_subprogram ]
!1382 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE4testEi", metadata !307, i32 1724, metadata !1383, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1724} ; [ DW_TAG_subprogram ]
!1383 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1384, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1384 = metadata !{metadata !55, metadata !1343, metadata !15}
!1385 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEi", metadata !307, i32 1730, metadata !1263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1730} ; [ DW_TAG_subprogram ]
!1386 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEib", metadata !307, i32 1736, metadata !1387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1736} ; [ DW_TAG_subprogram ]
!1387 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1388, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1388 = metadata !{null, metadata !1246, metadata !15, metadata !55}
!1389 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7lrotateEi", metadata !307, i32 1743, metadata !1263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1743} ; [ DW_TAG_subprogram ]
!1390 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7rrotateEi", metadata !307, i32 1752, metadata !1263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1752} ; [ DW_TAG_subprogram ]
!1391 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7set_bitEib", metadata !307, i32 1760, metadata !1387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1760} ; [ DW_TAG_subprogram ]
!1392 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7get_bitEi", metadata !307, i32 1765, metadata !1383, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1765} ; [ DW_TAG_subprogram ]
!1393 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5b_notEv", metadata !307, i32 1770, metadata !1244, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1770} ; [ DW_TAG_subprogram ]
!1394 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE17countLeadingZerosEv", metadata !307, i32 1777, metadata !1395, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1777} ; [ DW_TAG_subprogram ]
!1395 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1396, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1396 = metadata !{metadata !15, metadata !1246}
!1397 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEppEv", metadata !307, i32 1834, metadata !1375, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1834} ; [ DW_TAG_subprogram ]
!1398 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEmmEv", metadata !307, i32 1838, metadata !1375, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1838} ; [ DW_TAG_subprogram ]
!1399 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEppEi", metadata !307, i32 1846, metadata !1400, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1846} ; [ DW_TAG_subprogram ]
!1400 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1401, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1401 = metadata !{metadata !1301, metadata !1246, metadata !15}
!1402 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEmmEi", metadata !307, i32 1851, metadata !1400, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1851} ; [ DW_TAG_subprogram ]
!1403 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEpsEv", metadata !307, i32 1860, metadata !1404, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1860} ; [ DW_TAG_subprogram ]
!1404 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1405, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1405 = metadata !{metadata !1232, metadata !1343}
!1406 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEntEv", metadata !307, i32 1866, metadata !1345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1866} ; [ DW_TAG_subprogram ]
!1407 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEngEv", metadata !307, i32 1871, metadata !1408, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1871} ; [ DW_TAG_subprogram ]
!1408 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1409, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1409 = metadata !{metadata !1410, metadata !1343}
!1410 = metadata !{i32 786434, null, metadata !"ap_int_base<2, true, true>", metadata !307, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1411 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5rangeEii", metadata !307, i32 2001, metadata !1412, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2001} ; [ DW_TAG_subprogram ]
!1412 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1413, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1413 = metadata !{metadata !1414, metadata !1246, metadata !15, metadata !15}
!1414 = metadata !{i32 786434, null, metadata !"ap_range_ref<1, false>", metadata !307, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1415 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEclEii", metadata !307, i32 2007, metadata !1412, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2007} ; [ DW_TAG_subprogram ]
!1416 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE5rangeEii", metadata !307, i32 2013, metadata !1417, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2013} ; [ DW_TAG_subprogram ]
!1417 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1418, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1418 = metadata !{metadata !1414, metadata !1343, metadata !15, metadata !15}
!1419 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEclEii", metadata !307, i32 2019, metadata !1417, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2019} ; [ DW_TAG_subprogram ]
!1420 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEixEi", metadata !307, i32 2038, metadata !1421, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2038} ; [ DW_TAG_subprogram ]
!1421 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1422, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1422 = metadata !{metadata !1423, metadata !1246, metadata !15}
!1423 = metadata !{i32 786434, null, metadata !"ap_bit_ref<1, false>", metadata !307, i32 1194, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1424 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEixEi", metadata !307, i32 2052, metadata !1383, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2052} ; [ DW_TAG_subprogram ]
!1425 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3bitEi", metadata !307, i32 2066, metadata !1421, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2066} ; [ DW_TAG_subprogram ]
!1426 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE3bitEi", metadata !307, i32 2080, metadata !1383, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2080} ; [ DW_TAG_subprogram ]
!1427 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10and_reduceEv", metadata !307, i32 2260, metadata !1428, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2260} ; [ DW_TAG_subprogram ]
!1428 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1429, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1429 = metadata !{metadata !55, metadata !1246}
!1430 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE11nand_reduceEv", metadata !307, i32 2263, metadata !1428, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2263} ; [ DW_TAG_subprogram ]
!1431 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE9or_reduceEv", metadata !307, i32 2266, metadata !1428, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2266} ; [ DW_TAG_subprogram ]
!1432 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10nor_reduceEv", metadata !307, i32 2269, metadata !1428, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2269} ; [ DW_TAG_subprogram ]
!1433 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10xor_reduceEv", metadata !307, i32 2272, metadata !1428, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2272} ; [ DW_TAG_subprogram ]
!1434 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE11xnor_reduceEv", metadata !307, i32 2275, metadata !1428, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2275} ; [ DW_TAG_subprogram ]
!1435 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10and_reduceEv", metadata !307, i32 2279, metadata !1345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2279} ; [ DW_TAG_subprogram ]
!1436 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE11nand_reduceEv", metadata !307, i32 2282, metadata !1345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2282} ; [ DW_TAG_subprogram ]
!1437 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9or_reduceEv", metadata !307, i32 2285, metadata !1345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2285} ; [ DW_TAG_subprogram ]
!1438 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10nor_reduceEv", metadata !307, i32 2288, metadata !1345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2288} ; [ DW_TAG_subprogram ]
!1439 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10xor_reduceEv", metadata !307, i32 2291, metadata !1345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2291} ; [ DW_TAG_subprogram ]
!1440 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE11xnor_reduceEv", metadata !307, i32 2294, metadata !1345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2294} ; [ DW_TAG_subprogram ]
!1441 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !307, i32 2301, metadata !1442, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2301} ; [ DW_TAG_subprogram ]
!1442 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1443, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1443 = metadata !{null, metadata !1343, metadata !760, metadata !15, metadata !761, metadata !55}
!1444 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringE8BaseModeb", metadata !307, i32 2328, metadata !1445, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2328} ; [ DW_TAG_subprogram ]
!1445 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1446, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1446 = metadata !{metadata !760, metadata !1343, metadata !761, metadata !55}
!1447 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringEab", metadata !307, i32 2332, metadata !1448, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2332} ; [ DW_TAG_subprogram ]
!1448 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1449, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1449 = metadata !{metadata !760, metadata !1343, metadata !332, metadata !55}
!1450 = metadata !{metadata !1451, metadata !321, metadata !774}
!1451 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !15, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1452 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 183, metadata !1453, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 183} ; [ DW_TAG_subprogram ]
!1453 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1454, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1454 = metadata !{null, metadata !1455}
!1455 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1229} ; [ DW_TAG_pointer_type ]
!1456 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 245, metadata !1457, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 245} ; [ DW_TAG_subprogram ]
!1457 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1458, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1458 = metadata !{null, metadata !1455, metadata !55}
!1459 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 246, metadata !1460, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 246} ; [ DW_TAG_subprogram ]
!1460 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1461, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1461 = metadata !{null, metadata !1455, metadata !332}
!1462 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 247, metadata !1463, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 247} ; [ DW_TAG_subprogram ]
!1463 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1464, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1464 = metadata !{null, metadata !1455, metadata !336}
!1465 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 248, metadata !1466, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 248} ; [ DW_TAG_subprogram ]
!1466 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1467, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1467 = metadata !{null, metadata !1455, metadata !340}
!1468 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 249, metadata !1469, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 249} ; [ DW_TAG_subprogram ]
!1469 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1470, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1470 = metadata !{null, metadata !1455, metadata !344}
!1471 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 250, metadata !1472, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 250} ; [ DW_TAG_subprogram ]
!1472 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1473, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1473 = metadata !{null, metadata !1455, metadata !15}
!1474 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 251, metadata !1475, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 251} ; [ DW_TAG_subprogram ]
!1475 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1476, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1476 = metadata !{null, metadata !1455, metadata !351}
!1477 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 252, metadata !1478, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 252} ; [ DW_TAG_subprogram ]
!1478 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1479, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1479 = metadata !{null, metadata !1455, metadata !355}
!1480 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 253, metadata !1481, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 253} ; [ DW_TAG_subprogram ]
!1481 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1482, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1482 = metadata !{null, metadata !1455, metadata !359}
!1483 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 254, metadata !1484, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 254} ; [ DW_TAG_subprogram ]
!1484 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1485, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1485 = metadata !{null, metadata !1455, metadata !369}
!1486 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 255, metadata !1487, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 255} ; [ DW_TAG_subprogram ]
!1487 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1488, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1488 = metadata !{null, metadata !1455, metadata !364}
!1489 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 256, metadata !1490, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 256} ; [ DW_TAG_subprogram ]
!1490 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1491, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1491 = metadata !{null, metadata !1455, metadata !22}
!1492 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 257, metadata !1493, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 257} ; [ DW_TAG_subprogram ]
!1493 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1494, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1494 = metadata !{null, metadata !1455, metadata !376}
!1495 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 259, metadata !1496, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 259} ; [ DW_TAG_subprogram ]
!1496 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1497, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1497 = metadata !{null, metadata !1455, metadata !32}
!1498 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !303, i32 260, metadata !1499, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 260} ; [ DW_TAG_subprogram ]
!1499 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1500, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1500 = metadata !{null, metadata !1455, metadata !32, metadata !332}
!1501 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi1EEaSERKS0_", metadata !303, i32 263, metadata !1502, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 263} ; [ DW_TAG_subprogram ]
!1502 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1503, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1503 = metadata !{null, metadata !1504, metadata !1506}
!1504 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1505} ; [ DW_TAG_pointer_type ]
!1505 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1229} ; [ DW_TAG_volatile_type ]
!1506 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1507} ; [ DW_TAG_reference_type ]
!1507 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1229} ; [ DW_TAG_const_type ]
!1508 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi1EEaSERVKS0_", metadata !303, i32 267, metadata !1502, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 267} ; [ DW_TAG_subprogram ]
!1509 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi1EEaSERVKS0_", metadata !303, i32 271, metadata !1510, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 271} ; [ DW_TAG_subprogram ]
!1510 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1511, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1511 = metadata !{metadata !1512, metadata !1455, metadata !1506}
!1512 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1229} ; [ DW_TAG_reference_type ]
!1513 = metadata !{i32 786478, i32 0, metadata !1229, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi1EEaSERKS0_", metadata !303, i32 276, metadata !1510, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 276} ; [ DW_TAG_subprogram ]
!1514 = metadata !{metadata !1451}
!1515 = metadata !{i32 786445, metadata !298, metadata !"last", metadata !299, i32 106, i64 8, i64 8, i64 56, i32 0, metadata !1229} ; [ DW_TAG_member ]
!1516 = metadata !{i32 786445, metadata !298, metadata !"id", metadata !299, i32 107, i64 8, i64 8, i64 64, i32 0, metadata !1229} ; [ DW_TAG_member ]
!1517 = metadata !{i32 786445, metadata !298, metadata !"dest", metadata !299, i32 108, i64 8, i64 8, i64 72, i32 0, metadata !1229} ; [ DW_TAG_member ]
!1518 = metadata !{metadata !1519, metadata !1520, metadata !1521, metadata !1522}
!1519 = metadata !{i32 786480, null, metadata !"D", metadata !15, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1520 = metadata !{i32 786480, null, metadata !"U", metadata !15, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1521 = metadata !{i32 786480, null, metadata !"TI", metadata !15, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1522 = metadata !{i32 786480, null, metadata !"TD", metadata !15, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1523 = metadata !{i32 35, i32 13, metadata !294, null}
!1524 = metadata !{i32 786689, metadata !294, metadata !"number_of_days", metadata !12, i32 16777250, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1525 = metadata !{i32 34, i32 32, metadata !294, null}
!1526 = metadata !{i32 57, i32 1, metadata !1527, null}
!1527 = metadata !{i32 786443, metadata !294, i32 48, i32 1, metadata !12, i32 0} ; [ DW_TAG_lexical_block ]
!1528 = metadata !{metadata !1529}
!1529 = metadata !{i32 0, i32 31, metadata !1530}
!1530 = metadata !{metadata !1531}
!1531 = metadata !{metadata !"number_of_days", metadata !1532, metadata !"int", i32 0, i32 31}
!1532 = metadata !{metadata !1533}
!1533 = metadata !{i32 0, i32 0, i32 0}
!1534 = metadata !{metadata !1535}
!1535 = metadata !{i32 0, i32 31, metadata !1536}
!1536 = metadata !{metadata !1537}
!1537 = metadata !{metadata !"number_of_indices", metadata !1532, metadata !"int", i32 0, i32 31}
!1538 = metadata !{metadata !1539}
!1539 = metadata !{i32 0, i32 31, metadata !1540}
!1540 = metadata !{metadata !1541}
!1541 = metadata !{metadata !"in_indices.data.V", metadata !1542, metadata !"uint32", i32 0, i32 31}
!1542 = metadata !{metadata !1543}
!1543 = metadata !{i32 0, i32 2519999, i32 1}
!1544 = metadata !{metadata !1545}
!1545 = metadata !{i32 0, i32 3, metadata !1546}
!1546 = metadata !{metadata !1547}
!1547 = metadata !{metadata !"in_indices.keep.V", metadata !1542, metadata !"uint4", i32 0, i32 3}
!1548 = metadata !{metadata !1549}
!1549 = metadata !{i32 0, i32 3, metadata !1550}
!1550 = metadata !{metadata !1551}
!1551 = metadata !{metadata !"in_indices.strb.V", metadata !1542, metadata !"uint4", i32 0, i32 3}
!1552 = metadata !{metadata !1553}
!1553 = metadata !{i32 0, i32 0, metadata !1554}
!1554 = metadata !{metadata !1555}
!1555 = metadata !{metadata !"in_indices.user.V", metadata !1542, metadata !"uint1", i32 0, i32 0}
!1556 = metadata !{metadata !1557}
!1557 = metadata !{i32 0, i32 0, metadata !1558}
!1558 = metadata !{metadata !1559}
!1559 = metadata !{metadata !"in_indices.last.V", metadata !1542, metadata !"uint1", i32 0, i32 0}
!1560 = metadata !{metadata !1561}
!1561 = metadata !{i32 0, i32 0, metadata !1562}
!1562 = metadata !{metadata !1563}
!1563 = metadata !{metadata !"in_indices.id.V", metadata !1542, metadata !"uint1", i32 0, i32 0}
!1564 = metadata !{metadata !1565}
!1565 = metadata !{i32 0, i32 0, metadata !1566}
!1566 = metadata !{metadata !1567}
!1567 = metadata !{metadata !"in_indices.dest.V", metadata !1542, metadata !"uint1", i32 0, i32 0}
!1568 = metadata !{metadata !1569}
!1569 = metadata !{i32 0, i32 31, metadata !1570}
!1570 = metadata !{metadata !1571}
!1571 = metadata !{metadata !"out_correlation.data.V", metadata !1572, metadata !"uint32", i32 0, i32 31}
!1572 = metadata !{metadata !1573}
!1573 = metadata !{i32 0, i32 49994999, i32 1}
!1574 = metadata !{metadata !1575}
!1575 = metadata !{i32 0, i32 3, metadata !1576}
!1576 = metadata !{metadata !1577}
!1577 = metadata !{metadata !"out_correlation.keep.V", metadata !1572, metadata !"uint4", i32 0, i32 3}
!1578 = metadata !{metadata !1579}
!1579 = metadata !{i32 0, i32 3, metadata !1580}
!1580 = metadata !{metadata !1581}
!1581 = metadata !{metadata !"out_correlation.strb.V", metadata !1572, metadata !"uint4", i32 0, i32 3}
!1582 = metadata !{metadata !1583}
!1583 = metadata !{i32 0, i32 0, metadata !1584}
!1584 = metadata !{metadata !1585}
!1585 = metadata !{metadata !"out_correlation.user.V", metadata !1572, metadata !"uint1", i32 0, i32 0}
!1586 = metadata !{metadata !1587}
!1587 = metadata !{i32 0, i32 0, metadata !1588}
!1588 = metadata !{metadata !1589}
!1589 = metadata !{metadata !"out_correlation.last.V", metadata !1572, metadata !"uint1", i32 0, i32 0}
!1590 = metadata !{metadata !1591}
!1591 = metadata !{i32 0, i32 0, metadata !1592}
!1592 = metadata !{metadata !1593}
!1593 = metadata !{metadata !"out_correlation.id.V", metadata !1572, metadata !"uint1", i32 0, i32 0}
!1594 = metadata !{metadata !1595}
!1595 = metadata !{i32 0, i32 0, metadata !1596}
!1596 = metadata !{metadata !1597}
!1597 = metadata !{metadata !"out_correlation.dest.V", metadata !1572, metadata !"uint1", i32 0, i32 0}
!1598 = metadata !{i32 50, i32 1, metadata !1527, null}
!1599 = metadata !{i32 56, i32 1, metadata !1527, null}
!1600 = metadata !{i32 790531, metadata !1601, metadata !"in_indices.data.V", null, i32 37, metadata !1602, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1601 = metadata !{i32 786689, metadata !294, metadata !"in_indices", metadata !12, i32 50331685, metadata !297, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1602 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 80640000, i64 32, i32 0, i32 0, metadata !1603, metadata !1611, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1603 = metadata !{i32 786438, null, metadata !"ap_axiu<32, 1, 1, 1>", metadata !299, i32 101, i64 32, i64 32, i32 0, i32 0, null, metadata !1604, i32 0, null, metadata !1518} ; [ DW_TAG_class_field_type ]
!1604 = metadata !{metadata !1605}
!1605 = metadata !{i32 786438, null, metadata !"ap_uint<32>", metadata !303, i32 180, i64 32, i64 32, i32 0, i32 0, null, metadata !1606, i32 0, null, metadata !935} ; [ DW_TAG_class_field_type ]
!1606 = metadata !{metadata !1607}
!1607 = metadata !{i32 786438, null, metadata !"ap_int_base<32, false, true>", metadata !307, i32 1398, i64 32, i64 32, i32 0, i32 0, null, metadata !1608, i32 0, null, metadata !872} ; [ DW_TAG_class_field_type ]
!1608 = metadata !{metadata !1609}
!1609 = metadata !{i32 786438, null, metadata !"ssdm_int<32 + 1024 * 0, false>", metadata !311, i32 34, i64 32, i64 32, i32 0, i32 0, null, metadata !1610, i32 0, null, metadata !319} ; [ DW_TAG_class_field_type ]
!1610 = metadata !{metadata !313}
!1611 = metadata !{metadata !1612}
!1612 = metadata !{i32 786465, i64 0, i64 2519999} ; [ DW_TAG_subrange_type ]
!1613 = metadata !{i32 37, i32 27, metadata !294, null}
!1614 = metadata !{i32 790531, metadata !1601, metadata !"in_indices.keep.V", null, i32 37, metadata !1615, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1615 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 10080000, i64 32, i32 0, i32 0, metadata !1616, metadata !1611, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1616 = metadata !{i32 786438, null, metadata !"ap_axiu<32, 1, 1, 1>", metadata !299, i32 101, i64 4, i64 32, i32 0, i32 0, null, metadata !1617, i32 0, null, metadata !1518} ; [ DW_TAG_class_field_type ]
!1617 = metadata !{metadata !1618}
!1618 = metadata !{i32 786438, null, metadata !"ap_uint<4>", metadata !303, i32 180, i64 4, i64 8, i32 0, i32 0, null, metadata !1619, i32 0, null, metadata !1226} ; [ DW_TAG_class_field_type ]
!1619 = metadata !{metadata !1620}
!1620 = metadata !{i32 786438, null, metadata !"ap_int_base<4, false, true>", metadata !307, i32 1398, i64 4, i64 8, i32 0, i32 0, null, metadata !1621, i32 0, null, metadata !1162} ; [ DW_TAG_class_field_type ]
!1621 = metadata !{metadata !1622}
!1622 = metadata !{i32 786438, null, metadata !"ssdm_int<4 + 1024 * 0, false>", metadata !311, i32 6, i64 4, i64 8, i32 0, i32 0, null, metadata !1623, i32 0, null, metadata !437} ; [ DW_TAG_class_field_type ]
!1623 = metadata !{metadata !945}
!1624 = metadata !{i32 790531, metadata !1601, metadata !"in_indices.strb.V", null, i32 37, metadata !1615, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1625 = metadata !{i32 790531, metadata !1601, metadata !"in_indices.user.V", null, i32 37, metadata !1626, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1626 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2520000, i64 32, i32 0, i32 0, metadata !1627, metadata !1611, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1627 = metadata !{i32 786438, null, metadata !"ap_axiu<32, 1, 1, 1>", metadata !299, i32 101, i64 1, i64 32, i32 0, i32 0, null, metadata !1628, i32 0, null, metadata !1518} ; [ DW_TAG_class_field_type ]
!1628 = metadata !{metadata !1629}
!1629 = metadata !{i32 786438, null, metadata !"ap_uint<1>", metadata !303, i32 180, i64 1, i64 8, i32 0, i32 0, null, metadata !1630, i32 0, null, metadata !1514} ; [ DW_TAG_class_field_type ]
!1630 = metadata !{metadata !1631}
!1631 = metadata !{i32 786438, null, metadata !"ap_int_base<1, false, true>", metadata !307, i32 1398, i64 1, i64 8, i32 0, i32 0, null, metadata !1632, i32 0, null, metadata !1450} ; [ DW_TAG_class_field_type ]
!1632 = metadata !{metadata !1633}
!1633 = metadata !{i32 786438, null, metadata !"ssdm_int<1 + 1024 * 0, false>", metadata !311, i32 3, i64 1, i64 8, i32 0, i32 0, null, metadata !1634, i32 0, null, metadata !1053} ; [ DW_TAG_class_field_type ]
!1634 = metadata !{metadata !1237}
!1635 = metadata !{i32 790531, metadata !1601, metadata !"in_indices.last.V", null, i32 37, metadata !1626, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1636 = metadata !{i32 790531, metadata !1601, metadata !"in_indices.id.V", null, i32 37, metadata !1626, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1637 = metadata !{i32 790531, metadata !1601, metadata !"in_indices.dest.V", null, i32 37, metadata !1626, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1638 = metadata !{i32 790531, metadata !1639, metadata !"out_correlation.data.V", null, i32 38, metadata !1640, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1639 = metadata !{i32 786689, metadata !294, metadata !"out_correlation", metadata !12, i32 67108902, metadata !297, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1640 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1599840000, i64 32, i32 0, i32 0, metadata !1603, metadata !1641, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1641 = metadata !{metadata !1642}
!1642 = metadata !{i32 786465, i64 0, i64 49994999} ; [ DW_TAG_subrange_type ]
!1643 = metadata !{i32 38, i32 36, metadata !294, null}
!1644 = metadata !{i32 790531, metadata !1639, metadata !"out_correlation.keep.V", null, i32 38, metadata !1645, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1645 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 199980000, i64 32, i32 0, i32 0, metadata !1616, metadata !1641, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1646 = metadata !{i32 790531, metadata !1639, metadata !"out_correlation.strb.V", null, i32 38, metadata !1645, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1647 = metadata !{i32 790531, metadata !1639, metadata !"out_correlation.user.V", null, i32 38, metadata !1648, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1648 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 49995000, i64 32, i32 0, i32 0, metadata !1627, metadata !1641, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1649 = metadata !{i32 790531, metadata !1639, metadata !"out_correlation.last.V", null, i32 38, metadata !1648, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1650 = metadata !{i32 790531, metadata !1639, metadata !"out_correlation.id.V", null, i32 38, metadata !1648, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1651 = metadata !{i32 790531, metadata !1639, metadata !"out_correlation.dest.V", null, i32 38, metadata !1648, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1652 = metadata !{i32 786688, metadata !1527, metadata !"NUMBER_OF_DAYS", metadata !12, i32 60, metadata !1653, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1653 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ]
!1654 = metadata !{i32 60, i32 43, metadata !1527, null}
!1655 = metadata !{i32 786688, metadata !1527, metadata !"NUMBER_OF_INDICES", metadata !12, i32 61, metadata !1653, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1656 = metadata !{i32 61, i32 49, metadata !1527, null}
!1657 = metadata !{i32 790529, metadata !1658, metadata !"ln_returnA_c1.V", null, i32 64, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1658 = metadata !{i32 786688, metadata !1527, metadata !"ln_returnA_c1", metadata !12, i32 64, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1659 = metadata !{i32 64, i32 21, metadata !1527, null}
!1660 = metadata !{i32 790529, metadata !1661, metadata !"weight_returnSquareA_c1.V", null, i32 65, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1661 = metadata !{i32 786688, metadata !1527, metadata !"weight_returnSquareA_c1", metadata !12, i32 65, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1662 = metadata !{i32 65, i32 21, metadata !1527, null}
!1663 = metadata !{i32 790529, metadata !1664, metadata !"weight_returnA_c1.V", null, i32 66, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1664 = metadata !{i32 786688, metadata !1527, metadata !"weight_returnA_c1", metadata !12, i32 66, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1665 = metadata !{i32 66, i32 21, metadata !1527, null}
!1666 = metadata !{i32 790529, metadata !1667, metadata !"ln_returnA_c2.V", null, i32 68, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1667 = metadata !{i32 786688, metadata !1527, metadata !"ln_returnA_c2", metadata !12, i32 68, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1668 = metadata !{i32 68, i32 21, metadata !1527, null}
!1669 = metadata !{i32 790529, metadata !1670, metadata !"weight_returnSquareA_c2.V", null, i32 69, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1670 = metadata !{i32 786688, metadata !1527, metadata !"weight_returnSquareA_c2", metadata !12, i32 69, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1671 = metadata !{i32 69, i32 21, metadata !1527, null}
!1672 = metadata !{i32 790529, metadata !1673, metadata !"weight_returnA_c2.V", null, i32 70, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1673 = metadata !{i32 786688, metadata !1527, metadata !"weight_returnA_c2", metadata !12, i32 70, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1674 = metadata !{i32 70, i32 21, metadata !1527, null}
!1675 = metadata !{i32 790529, metadata !1676, metadata !"sum_weight_c1.V", null, i32 72, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1676 = metadata !{i32 786688, metadata !1527, metadata !"sum_weight_c1", metadata !12, i32 72, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1677 = metadata !{i32 72, i32 21, metadata !1527, null}
!1678 = metadata !{i32 790529, metadata !1679, metadata !"ln_returnB_c1.V", null, i32 73, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1679 = metadata !{i32 786688, metadata !1527, metadata !"ln_returnB_c1", metadata !12, i32 73, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1680 = metadata !{i32 73, i32 21, metadata !1527, null}
!1681 = metadata !{i32 790529, metadata !1682, metadata !"weight_returnSquareB_c1.V", null, i32 74, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1682 = metadata !{i32 786688, metadata !1527, metadata !"weight_returnSquareB_c1", metadata !12, i32 74, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1683 = metadata !{i32 74, i32 21, metadata !1527, null}
!1684 = metadata !{i32 790529, metadata !1685, metadata !"weight_returnB_c1.V", null, i32 75, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1685 = metadata !{i32 786688, metadata !1527, metadata !"weight_returnB_c1", metadata !12, i32 75, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1686 = metadata !{i32 75, i32 21, metadata !1527, null}
!1687 = metadata !{i32 790529, metadata !1688, metadata !"weight_returnA_returnB_c1.V", null, i32 76, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1688 = metadata !{i32 786688, metadata !1527, metadata !"weight_returnA_returnB_c1", metadata !12, i32 76, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1689 = metadata !{i32 76, i32 21, metadata !1527, null}
!1690 = metadata !{i32 790529, metadata !1691, metadata !"sum_weight_c2.V", null, i32 78, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1691 = metadata !{i32 786688, metadata !1527, metadata !"sum_weight_c2", metadata !12, i32 78, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1692 = metadata !{i32 78, i32 21, metadata !1527, null}
!1693 = metadata !{i32 790529, metadata !1694, metadata !"ln_returnB_c2.V", null, i32 79, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1694 = metadata !{i32 786688, metadata !1527, metadata !"ln_returnB_c2", metadata !12, i32 79, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1695 = metadata !{i32 79, i32 21, metadata !1527, null}
!1696 = metadata !{i32 790529, metadata !1697, metadata !"weight_returnSquareB_c2.V", null, i32 80, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1697 = metadata !{i32 786688, metadata !1527, metadata !"weight_returnSquareB_c2", metadata !12, i32 80, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1698 = metadata !{i32 80, i32 21, metadata !1527, null}
!1699 = metadata !{i32 790529, metadata !1700, metadata !"weight_returnB_c2.V", null, i32 81, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1700 = metadata !{i32 786688, metadata !1527, metadata !"weight_returnB_c2", metadata !12, i32 81, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1701 = metadata !{i32 81, i32 21, metadata !1527, null}
!1702 = metadata !{i32 790529, metadata !1703, metadata !"weight_returnA_returnB_c2.V", null, i32 82, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1703 = metadata !{i32 786688, metadata !1527, metadata !"weight_returnA_returnB_c2", metadata !12, i32 82, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1704 = metadata !{i32 82, i32 21, metadata !1527, null}
!1705 = metadata !{i32 790529, metadata !1706, metadata !"sum_weight_stage2_c1.V", null, i32 104, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1706 = metadata !{i32 786688, metadata !1527, metadata !"sum_weight_stage2_c1", metadata !12, i32 104, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1707 = metadata !{i32 104, i32 21, metadata !1527, null}
!1708 = metadata !{i32 790529, metadata !1709, metadata !"sum_return_stage2_c1.V", null, i32 105, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1709 = metadata !{i32 786688, metadata !1527, metadata !"sum_return_stage2_c1", metadata !12, i32 105, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1710 = metadata !{i32 105, i32 21, metadata !1527, null}
!1711 = metadata !{i32 790529, metadata !1712, metadata !"sum_weight_returnSquare_stage2_c1.V", null, i32 106, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1712 = metadata !{i32 786688, metadata !1527, metadata !"sum_weight_returnSquare_stage2_c1", metadata !12, i32 106, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1713 = metadata !{i32 106, i32 21, metadata !1527, null}
!1714 = metadata !{i32 790529, metadata !1715, metadata !"sum_weight_return_stage2_c1.V", null, i32 107, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1715 = metadata !{i32 786688, metadata !1527, metadata !"sum_weight_return_stage2_c1", metadata !12, i32 107, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1716 = metadata !{i32 107, i32 21, metadata !1527, null}
!1717 = metadata !{i32 790529, metadata !1718, metadata !"sum_weight_returnA_returnB_stage2_c1.V", null, i32 108, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1718 = metadata !{i32 786688, metadata !1527, metadata !"sum_weight_returnA_returnB_stage2_c1", metadata !12, i32 108, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1719 = metadata !{i32 108, i32 21, metadata !1527, null}
!1720 = metadata !{i32 790529, metadata !1721, metadata !"sum_returnA_stage2_c1.V", null, i32 109, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1721 = metadata !{i32 786688, metadata !1527, metadata !"sum_returnA_stage2_c1", metadata !12, i32 109, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1722 = metadata !{i32 109, i32 21, metadata !1527, null}
!1723 = metadata !{i32 790529, metadata !1724, metadata !"sum_weight_returnSquareA_stage2_c1.V", null, i32 110, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1724 = metadata !{i32 786688, metadata !1527, metadata !"sum_weight_returnSquareA_stage2_c1", metadata !12, i32 110, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1725 = metadata !{i32 110, i32 21, metadata !1527, null}
!1726 = metadata !{i32 790529, metadata !1727, metadata !"sum_weight_returnA_stage2_c1.V", null, i32 111, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1727 = metadata !{i32 786688, metadata !1527, metadata !"sum_weight_returnA_stage2_c1", metadata !12, i32 111, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1728 = metadata !{i32 111, i32 21, metadata !1527, null}
!1729 = metadata !{i32 790529, metadata !1730, metadata !"sum_weight_stage2_c2.V", null, i32 113, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1730 = metadata !{i32 786688, metadata !1527, metadata !"sum_weight_stage2_c2", metadata !12, i32 113, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1731 = metadata !{i32 113, i32 21, metadata !1527, null}
!1732 = metadata !{i32 790529, metadata !1733, metadata !"sum_return_stage2_c2.V", null, i32 114, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1733 = metadata !{i32 786688, metadata !1527, metadata !"sum_return_stage2_c2", metadata !12, i32 114, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1734 = metadata !{i32 114, i32 21, metadata !1527, null}
!1735 = metadata !{i32 790529, metadata !1736, metadata !"sum_weight_returnSquare_stage2_c2.V", null, i32 115, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1736 = metadata !{i32 786688, metadata !1527, metadata !"sum_weight_returnSquare_stage2_c2", metadata !12, i32 115, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1737 = metadata !{i32 115, i32 21, metadata !1527, null}
!1738 = metadata !{i32 790529, metadata !1739, metadata !"sum_weight_return_stage2_c2.V", null, i32 116, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1739 = metadata !{i32 786688, metadata !1527, metadata !"sum_weight_return_stage2_c2", metadata !12, i32 116, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1740 = metadata !{i32 116, i32 21, metadata !1527, null}
!1741 = metadata !{i32 790529, metadata !1742, metadata !"sum_weight_returnA_returnB_stage2_c2.V", null, i32 117, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1742 = metadata !{i32 786688, metadata !1527, metadata !"sum_weight_returnA_returnB_stage2_c2", metadata !12, i32 117, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1743 = metadata !{i32 117, i32 21, metadata !1527, null}
!1744 = metadata !{i32 790529, metadata !1745, metadata !"sum_returnA_stage2_c2.V", null, i32 118, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1745 = metadata !{i32 786688, metadata !1527, metadata !"sum_returnA_stage2_c2", metadata !12, i32 118, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1746 = metadata !{i32 118, i32 21, metadata !1527, null}
!1747 = metadata !{i32 790529, metadata !1748, metadata !"sum_weight_returnSquareA_stage2_c2.V", null, i32 119, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1748 = metadata !{i32 786688, metadata !1527, metadata !"sum_weight_returnSquareA_stage2_c2", metadata !12, i32 119, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1749 = metadata !{i32 119, i32 21, metadata !1527, null}
!1750 = metadata !{i32 790529, metadata !1751, metadata !"sum_weight_returnA_stage2_c2.V", null, i32 120, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1751 = metadata !{i32 786688, metadata !1527, metadata !"sum_weight_returnA_stage2_c2", metadata !12, i32 120, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1752 = metadata !{i32 120, i32 21, metadata !1527, null}
!1753 = metadata !{i32 183, i32 2, metadata !1527, null}
!1754 = metadata !{i32 208, i32 2, metadata !1527, null}
!1755 = metadata !{i32 232, i32 2, metadata !1527, null}
!1756 = metadata !{i32 256, i32 2, metadata !1527, null}
!1757 = metadata !{i32 280, i32 1, metadata !1527, null}
!1758 = metadata !{i32 786689, metadata !1759, metadata !"NUMBER_OF_INDICES", metadata !12, i32 33554763, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1759 = metadata !{i32 786478, i32 0, metadata !12, metadata !"frontEnd", metadata !"frontEnd", metadata !"_Z8frontEndiiP7ap_axiuILi32ELi1ELi1ELi1EERN3hls6streamIfEES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_", metadata !12, i32 329, metadata !1760, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 379} ; [ DW_TAG_subprogram ]
!1760 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1761, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1761 = metadata !{null, metadata !15, metadata !15, metadata !297, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16}
!1762 = metadata !{i32 331, i32 9, metadata !1759, null}
!1763 = metadata !{i32 786689, metadata !1759, metadata !"NUMBER_OF_DAYS", metadata !12, i32 16777546, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1764 = metadata !{i32 330, i32 9, metadata !1759, null}
!1765 = metadata !{i32 786689, metadata !1766, metadata !"NUMBER_OF_DAYS", metadata !12, i32 33554740, metadata !15, i32 0, metadata !1770} ; [ DW_TAG_arg_variable ]
!1766 = metadata !{i32 786478, i32 0, metadata !12, metadata !"weight_rom_init", metadata !"weight_rom_init", metadata !"_ZL15weight_rom_initPfi", metadata !12, i32 306, metadata !1767, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 309} ; [ DW_TAG_subprogram ]
!1767 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1768, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1768 = metadata !{null, metadata !1769, metadata !15}
!1769 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ]
!1770 = metadata !{i32 391, i32 2, metadata !1771, null}
!1771 = metadata !{i32 786443, metadata !1759, i32 379, i32 1, metadata !12, i32 1} ; [ DW_TAG_lexical_block ]
!1772 = metadata !{i32 308, i32 7, metadata !1766, metadata !1770}
!1773 = metadata !{i32 790531, metadata !1774, metadata !"in_indices.data.V", null, i32 332, metadata !1602, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1774 = metadata !{i32 786689, metadata !1759, metadata !"in_indices", metadata !12, i32 50331980, metadata !297, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1775 = metadata !{i32 332, i32 23, metadata !1759, null}
!1776 = metadata !{i32 790531, metadata !1774, metadata !"in_indices.keep.V", null, i32 332, metadata !1615, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1777 = metadata !{i32 790531, metadata !1774, metadata !"in_indices.strb.V", null, i32 332, metadata !1615, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1778 = metadata !{i32 790531, metadata !1774, metadata !"in_indices.user.V", null, i32 332, metadata !1626, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1779 = metadata !{i32 790531, metadata !1774, metadata !"in_indices.last.V", null, i32 332, metadata !1626, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1780 = metadata !{i32 790531, metadata !1774, metadata !"in_indices.id.V", null, i32 332, metadata !1626, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1781 = metadata !{i32 790531, metadata !1774, metadata !"in_indices.dest.V", null, i32 332, metadata !1626, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1782 = metadata !{i32 790531, metadata !1783, metadata !"ln_returnA_out_c1.V", null, i32 334, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1783 = metadata !{i32 786689, metadata !1759, metadata !"ln_returnA_out_c1", metadata !12, i32 67109198, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1784 = metadata !{i32 334, i32 25, metadata !1759, null}
!1785 = metadata !{i32 790531, metadata !1786, metadata !"weight_returnSquareA_out_c1.V", null, i32 335, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1786 = metadata !{i32 786689, metadata !1759, metadata !"weight_returnSquareA_out_c1", metadata !12, i32 83886415, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1787 = metadata !{i32 335, i32 25, metadata !1759, null}
!1788 = metadata !{i32 790531, metadata !1789, metadata !"weight_returnA_out_c1.V", null, i32 336, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1789 = metadata !{i32 786689, metadata !1759, metadata !"weight_returnA_out_c1", metadata !12, i32 100663632, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1790 = metadata !{i32 336, i32 25, metadata !1759, null}
!1791 = metadata !{i32 790531, metadata !1792, metadata !"ln_returnA_out_c2.V", null, i32 338, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1792 = metadata !{i32 786689, metadata !1759, metadata !"ln_returnA_out_c2", metadata !12, i32 117440850, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1793 = metadata !{i32 338, i32 25, metadata !1759, null}
!1794 = metadata !{i32 790531, metadata !1795, metadata !"weight_returnSquareA_out_c2.V", null, i32 339, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1795 = metadata !{i32 786689, metadata !1759, metadata !"weight_returnSquareA_out_c2", metadata !12, i32 134218067, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1796 = metadata !{i32 339, i32 25, metadata !1759, null}
!1797 = metadata !{i32 790531, metadata !1798, metadata !"weight_returnA_out_c2.V", null, i32 340, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1798 = metadata !{i32 786689, metadata !1759, metadata !"weight_returnA_out_c2", metadata !12, i32 150995284, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1799 = metadata !{i32 340, i32 25, metadata !1759, null}
!1800 = metadata !{i32 790531, metadata !1801, metadata !"sum_weight_out_c1.V", null, i32 342, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1801 = metadata !{i32 786689, metadata !1759, metadata !"sum_weight_out_c1", metadata !12, i32 167772502, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1802 = metadata !{i32 342, i32 25, metadata !1759, null}
!1803 = metadata !{i32 790531, metadata !1804, metadata !"ln_returnB_out_c1.V", null, i32 343, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1804 = metadata !{i32 786689, metadata !1759, metadata !"ln_returnB_out_c1", metadata !12, i32 184549719, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1805 = metadata !{i32 343, i32 25, metadata !1759, null}
!1806 = metadata !{i32 790531, metadata !1807, metadata !"weight_returnSquareB_out_c1.V", null, i32 344, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1807 = metadata !{i32 786689, metadata !1759, metadata !"weight_returnSquareB_out_c1", metadata !12, i32 201326936, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1808 = metadata !{i32 344, i32 25, metadata !1759, null}
!1809 = metadata !{i32 790531, metadata !1810, metadata !"weight_returnB_out_c1.V", null, i32 345, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1810 = metadata !{i32 786689, metadata !1759, metadata !"weight_returnB_out_c1", metadata !12, i32 218104153, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1811 = metadata !{i32 345, i32 25, metadata !1759, null}
!1812 = metadata !{i32 790531, metadata !1813, metadata !"weight_returnA_returnB_out_c1.V", null, i32 346, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1813 = metadata !{i32 786689, metadata !1759, metadata !"weight_returnA_returnB_out_c1", metadata !12, i32 234881370, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1814 = metadata !{i32 346, i32 25, metadata !1759, null}
!1815 = metadata !{i32 790531, metadata !1816, metadata !"sum_weight_out_c2.V", null, i32 348, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1816 = metadata !{i32 786689, metadata !1759, metadata !"sum_weight_out_c2", metadata !12, i32 251658588, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1817 = metadata !{i32 348, i32 25, metadata !1759, null}
!1818 = metadata !{i32 790531, metadata !1819, metadata !"ln_returnB_out_c2.V", null, i32 349, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1819 = metadata !{i32 786689, metadata !1759, metadata !"ln_returnB_out_c2", metadata !12, i32 268435805, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1820 = metadata !{i32 349, i32 25, metadata !1759, null}
!1821 = metadata !{i32 790531, metadata !1822, metadata !"weight_returnSquareB_out_c2.V", null, i32 350, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1822 = metadata !{i32 786689, metadata !1759, metadata !"weight_returnSquareB_out_c2", metadata !12, i32 285213022, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1823 = metadata !{i32 350, i32 25, metadata !1759, null}
!1824 = metadata !{i32 790531, metadata !1825, metadata !"weight_returnB_out_c2.V", null, i32 351, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1825 = metadata !{i32 786689, metadata !1759, metadata !"weight_returnB_out_c2", metadata !12, i32 301990239, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1826 = metadata !{i32 351, i32 25, metadata !1759, null}
!1827 = metadata !{i32 790531, metadata !1828, metadata !"weight_returnA_returnB_out_c2.V", null, i32 352, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1828 = metadata !{i32 786689, metadata !1759, metadata !"weight_returnA_returnB_out_c2", metadata !12, i32 318767456, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1829 = metadata !{i32 352, i32 25, metadata !1759, null}
!1830 = metadata !{i32 311, i32 2, metadata !1831, metadata !1770}
!1831 = metadata !{i32 786443, metadata !1766, i32 309, i32 1, metadata !12, i32 47} ; [ DW_TAG_lexical_block ]
!1832 = metadata !{i32 312, i32 2, metadata !1831, metadata !1770}
!1833 = metadata !{i32 315, i32 15, metadata !1834, metadata !1770}
!1834 = metadata !{i32 786443, metadata !1831, i32 315, i32 2, metadata !12, i32 48} ; [ DW_TAG_lexical_block ]
!1835 = metadata !{i32 315, i32 46, metadata !1836, metadata !1770}
!1836 = metadata !{i32 786443, metadata !1834, i32 315, i32 45, metadata !12, i32 49} ; [ DW_TAG_lexical_block ]
!1837 = metadata !{i32 316, i32 3, metadata !1836, metadata !1770}
!1838 = metadata !{i32 315, i32 40, metadata !1834, metadata !1770}
!1839 = metadata !{i32 786688, metadata !1834, metadata !"i", metadata !12, i32 315, metadata !15, i32 0, metadata !1770} ; [ DW_TAG_auto_variable ]
!1840 = metadata !{i32 320, i32 15, metadata !1841, metadata !1770}
!1841 = metadata !{i32 786443, metadata !1831, i32 320, i32 2, metadata !12, i32 50} ; [ DW_TAG_lexical_block ]
!1842 = metadata !{i32 320, i32 42, metadata !1843, metadata !1770}
!1843 = metadata !{i32 786443, metadata !1841, i32 320, i32 41, metadata !12, i32 51} ; [ DW_TAG_lexical_block ]
!1844 = metadata !{i32 321, i32 3, metadata !1843, metadata !1770}
!1845 = metadata !{i32 320, i32 37, metadata !1841, metadata !1770}
!1846 = metadata !{i32 786688, metadata !1841, metadata !"i", metadata !12, i32 320, metadata !15, i32 0, metadata !1770} ; [ DW_TAG_auto_variable ]
!1847 = metadata !{i32 392, i32 34, metadata !1771, null}
!1848 = metadata !{i32 786688, metadata !1771, metadata !"sum_weight", metadata !12, i32 392, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1849 = metadata !{i32 1654, i32 70, metadata !1850, metadata !1852}
!1850 = metadata !{i32 786443, metadata !1851, i32 1654, i32 68, metadata !307, i32 45} ; [ DW_TAG_lexical_block ]
!1851 = metadata !{i32 786478, i32 0, null, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEcvjEv", metadata !307, i32 1654, metadata !431, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !430, metadata !27, i32 1654} ; [ DW_TAG_subprogram ]
!1852 = metadata !{i32 412, i32 25, metadata !1771, null}
!1853 = metadata !{i32 413, i32 12, metadata !1771, null}
!1854 = metadata !{i32 264, i32 10, metadata !1855, metadata !1857}
!1855 = metadata !{i32 786443, metadata !1856, i32 263, i32 97, metadata !303, i32 44} ; [ DW_TAG_lexical_block ]
!1856 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi4EEaSERKS0_", metadata !303, i32 263, metadata !1214, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1213, metadata !27, i32 263} ; [ DW_TAG_subprogram ]
!1857 = metadata !{i32 414, i32 12, metadata !1771, null}
!1858 = metadata !{i32 790529, metadata !1859, metadata !"tmp1.keep.V", null, i32 381, metadata !1616, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1859 = metadata !{i32 786688, metadata !1771, metadata !"tmp1", metadata !12, i32 381, metadata !298, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1860 = metadata !{i32 264, i32 10, metadata !1855, metadata !1861}
!1861 = metadata !{i32 415, i32 12, metadata !1771, null}
!1862 = metadata !{i32 790529, metadata !1859, metadata !"tmp1.strb.V", null, i32 381, metadata !1616, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1863 = metadata !{i32 264, i32 10, metadata !1864, metadata !1866}
!1864 = metadata !{i32 786443, metadata !1865, i32 263, i32 97, metadata !303, i32 43} ; [ DW_TAG_lexical_block ]
!1865 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi1EEaSERKS0_", metadata !303, i32 263, metadata !1502, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1501, metadata !27, i32 263} ; [ DW_TAG_subprogram ]
!1866 = metadata !{i32 416, i32 12, metadata !1771, null}
!1867 = metadata !{i32 790529, metadata !1859, metadata !"tmp1.user.V", null, i32 381, metadata !1627, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1868 = metadata !{i32 264, i32 10, metadata !1864, metadata !1869}
!1869 = metadata !{i32 417, i32 12, metadata !1771, null}
!1870 = metadata !{i32 790529, metadata !1859, metadata !"tmp1.last.V", null, i32 381, metadata !1627, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1871 = metadata !{i32 264, i32 10, metadata !1864, metadata !1872}
!1872 = metadata !{i32 418, i32 12, metadata !1771, null}
!1873 = metadata !{i32 790529, metadata !1859, metadata !"tmp1.id.V", null, i32 381, metadata !1627, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1874 = metadata !{i32 264, i32 10, metadata !1864, metadata !1875}
!1875 = metadata !{i32 419, i32 12, metadata !1771, null}
!1876 = metadata !{i32 790529, metadata !1859, metadata !"tmp1.dest.V", null, i32 381, metadata !1627, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1877 = metadata !{i32 425, i32 16, metadata !1878, null}
!1878 = metadata !{i32 786443, metadata !1771, i32 425, i32 3, metadata !12, i32 2} ; [ DW_TAG_lexical_block ]
!1879 = metadata !{i32 467, i32 26, metadata !1880, null}
!1880 = metadata !{i32 786443, metadata !1771, i32 467, i32 2, metadata !12, i32 6} ; [ DW_TAG_lexical_block ]
!1881 = metadata !{i32 425, i32 48, metadata !1882, null}
!1882 = metadata !{i32 786443, metadata !1878, i32 425, i32 47, metadata !12, i32 3} ; [ DW_TAG_lexical_block ]
!1883 = metadata !{i32 425, i32 90, metadata !1882, null}
!1884 = metadata !{i32 427, i32 1, metadata !1882, null}
!1885 = metadata !{i32 428, i32 2, metadata !1882, null}
!1886 = metadata !{i32 1654, i32 70, metadata !1850, metadata !1887}
!1887 = metadata !{i32 429, i32 29, metadata !1888, null}
!1888 = metadata !{i32 786443, metadata !1882, i32 428, i32 12, metadata !12, i32 4} ; [ DW_TAG_lexical_block ]
!1889 = metadata !{i32 264, i32 10, metadata !1855, metadata !1890}
!1890 = metadata !{i32 431, i32 16, metadata !1888, null}
!1891 = metadata !{i32 264, i32 10, metadata !1855, metadata !1892}
!1892 = metadata !{i32 432, i32 16, metadata !1888, null}
!1893 = metadata !{i32 264, i32 10, metadata !1864, metadata !1894}
!1894 = metadata !{i32 433, i32 16, metadata !1888, null}
!1895 = metadata !{i32 264, i32 10, metadata !1864, metadata !1896}
!1896 = metadata !{i32 434, i32 16, metadata !1888, null}
!1897 = metadata !{i32 264, i32 10, metadata !1864, metadata !1898}
!1898 = metadata !{i32 435, i32 16, metadata !1888, null}
!1899 = metadata !{i32 264, i32 10, metadata !1864, metadata !1900}
!1900 = metadata !{i32 436, i32 16, metadata !1888, null}
!1901 = metadata !{i32 430, i32 16, metadata !1888, null}
!1902 = metadata !{i32 460, i32 21, metadata !1882, null}
!1903 = metadata !{i32 786688, metadata !1882, metadata !"lnReturn", metadata !12, i32 460, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1904 = metadata !{i32 462, i32 4, metadata !1882, null}
!1905 = metadata !{i32 463, i32 3, metadata !1882, null}
!1906 = metadata !{i32 425, i32 43, metadata !1878, null}
!1907 = metadata !{i32 786688, metadata !1878, metadata !"i", metadata !12, i32 425, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1908 = metadata !{i32 1654, i32 70, metadata !1850, metadata !1909}
!1909 = metadata !{i32 471, i32 25, metadata !1910, null}
!1910 = metadata !{i32 786443, metadata !1880, i32 467, i32 78, metadata !12, i32 7} ; [ DW_TAG_lexical_block ]
!1911 = metadata !{i32 472, i32 12, metadata !1910, null}
!1912 = metadata !{i32 264, i32 10, metadata !1855, metadata !1913}
!1913 = metadata !{i32 473, i32 12, metadata !1910, null}
!1914 = metadata !{i32 264, i32 10, metadata !1855, metadata !1915}
!1915 = metadata !{i32 474, i32 12, metadata !1910, null}
!1916 = metadata !{i32 264, i32 10, metadata !1864, metadata !1917}
!1917 = metadata !{i32 475, i32 12, metadata !1910, null}
!1918 = metadata !{i32 264, i32 10, metadata !1864, metadata !1919}
!1919 = metadata !{i32 476, i32 12, metadata !1910, null}
!1920 = metadata !{i32 264, i32 10, metadata !1864, metadata !1921}
!1921 = metadata !{i32 477, i32 12, metadata !1910, null}
!1922 = metadata !{i32 264, i32 10, metadata !1864, metadata !1923}
!1923 = metadata !{i32 478, i32 12, metadata !1910, null}
!1924 = metadata !{i32 484, i32 17, metadata !1925, null}
!1925 = metadata !{i32 786443, metadata !1910, i32 484, i32 4, metadata !12, i32 8} ; [ DW_TAG_lexical_block ]
!1926 = metadata !{i32 484, i32 49, metadata !1927, null}
!1927 = metadata !{i32 786443, metadata !1925, i32 484, i32 48, metadata !12, i32 9} ; [ DW_TAG_lexical_block ]
!1928 = metadata !{i32 484, i32 107, metadata !1927, null}
!1929 = metadata !{i32 486, i32 1, metadata !1927, null}
!1930 = metadata !{i32 487, i32 2, metadata !1927, null}
!1931 = metadata !{i32 1654, i32 70, metadata !1850, metadata !1932}
!1932 = metadata !{i32 488, i32 30, metadata !1933, null}
!1933 = metadata !{i32 786443, metadata !1927, i32 487, i32 12, metadata !12, i32 10} ; [ DW_TAG_lexical_block ]
!1934 = metadata !{i32 264, i32 10, metadata !1855, metadata !1935}
!1935 = metadata !{i32 490, i32 17, metadata !1933, null}
!1936 = metadata !{i32 264, i32 10, metadata !1855, metadata !1937}
!1937 = metadata !{i32 491, i32 17, metadata !1933, null}
!1938 = metadata !{i32 264, i32 10, metadata !1864, metadata !1939}
!1939 = metadata !{i32 492, i32 17, metadata !1933, null}
!1940 = metadata !{i32 264, i32 10, metadata !1864, metadata !1941}
!1941 = metadata !{i32 493, i32 17, metadata !1933, null}
!1942 = metadata !{i32 264, i32 10, metadata !1864, metadata !1943}
!1943 = metadata !{i32 494, i32 17, metadata !1933, null}
!1944 = metadata !{i32 264, i32 10, metadata !1864, metadata !1945}
!1945 = metadata !{i32 495, i32 17, metadata !1933, null}
!1946 = metadata !{i32 489, i32 17, metadata !1933, null}
!1947 = metadata !{i32 518, i32 19, metadata !1927, null}
!1948 = metadata !{i32 786688, metadata !1927, metadata !"lnReturn", metadata !12, i32 518, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1949 = metadata !{i32 519, i32 32, metadata !1927, null}
!1950 = metadata !{i32 786688, metadata !1927, metadata !"weight", metadata !12, i32 519, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1951 = metadata !{i32 520, i32 43, metadata !1927, null}
!1952 = metadata !{i32 786688, metadata !1927, metadata !"lnReturnA_temp", metadata !12, i32 520, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1953 = metadata !{i32 521, i32 55, metadata !1927, null}
!1954 = metadata !{i32 786688, metadata !1927, metadata !"weight_returnA_temp", metadata !12, i32 521, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1955 = metadata !{i32 522, i32 78, metadata !1927, null}
!1956 = metadata !{i32 786688, metadata !1927, metadata !"weight_returnSquareA_temp", metadata !12, i32 522, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1957 = metadata !{i32 524, i32 49, metadata !1927, null}
!1958 = metadata !{i32 786688, metadata !1927, metadata !"weight_returnB_temp", metadata !12, i32 524, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1959 = metadata !{i32 525, i32 66, metadata !1927, null}
!1960 = metadata !{i32 786688, metadata !1927, metadata !"weight_returnSquareB_temp", metadata !12, i32 525, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1961 = metadata !{i32 526, i32 74, metadata !1927, null}
!1962 = metadata !{i32 786688, metadata !1927, metadata !"weight_returnA_returnB_temp", metadata !12, i32 526, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1963 = metadata !{i32 529, i32 4, metadata !1927, null}
!1964 = metadata !{i32 105, i32 48, metadata !236, metadata !1965}
!1965 = metadata !{i32 530, i32 5, metadata !1966, null}
!1966 = metadata !{i32 786443, metadata !1927, i32 529, i32 30, metadata !12, i32 12} ; [ DW_TAG_lexical_block ]
!1967 = metadata !{i32 144, i32 48, metadata !241, metadata !1968}
!1968 = metadata !{i32 106, i32 9, metadata !244, metadata !1965}
!1969 = metadata !{i32 145, i32 31, metadata !246, metadata !1968}
!1970 = metadata !{i32 146, i32 9, metadata !246, metadata !1968}
!1971 = metadata !{i32 105, i32 48, metadata !236, metadata !1972}
!1972 = metadata !{i32 531, i32 5, metadata !1966, null}
!1973 = metadata !{i32 144, i32 48, metadata !241, metadata !1974}
!1974 = metadata !{i32 106, i32 9, metadata !244, metadata !1972}
!1975 = metadata !{i32 145, i32 31, metadata !246, metadata !1974}
!1976 = metadata !{i32 146, i32 9, metadata !246, metadata !1974}
!1977 = metadata !{i32 105, i32 48, metadata !236, metadata !1978}
!1978 = metadata !{i32 532, i32 5, metadata !1966, null}
!1979 = metadata !{i32 144, i32 48, metadata !241, metadata !1980}
!1980 = metadata !{i32 106, i32 9, metadata !244, metadata !1978}
!1981 = metadata !{i32 145, i32 31, metadata !246, metadata !1980}
!1982 = metadata !{i32 146, i32 9, metadata !246, metadata !1980}
!1983 = metadata !{i32 105, i32 48, metadata !236, metadata !1984}
!1984 = metadata !{i32 534, i32 5, metadata !1966, null}
!1985 = metadata !{i32 144, i32 48, metadata !241, metadata !1986}
!1986 = metadata !{i32 106, i32 9, metadata !244, metadata !1984}
!1987 = metadata !{i32 145, i32 31, metadata !246, metadata !1986}
!1988 = metadata !{i32 146, i32 9, metadata !246, metadata !1986}
!1989 = metadata !{i32 105, i32 48, metadata !236, metadata !1990}
!1990 = metadata !{i32 535, i32 5, metadata !1966, null}
!1991 = metadata !{i32 144, i32 48, metadata !241, metadata !1992}
!1992 = metadata !{i32 106, i32 9, metadata !244, metadata !1990}
!1993 = metadata !{i32 145, i32 31, metadata !246, metadata !1992}
!1994 = metadata !{i32 146, i32 9, metadata !246, metadata !1992}
!1995 = metadata !{i32 105, i32 48, metadata !236, metadata !1996}
!1996 = metadata !{i32 536, i32 5, metadata !1966, null}
!1997 = metadata !{i32 144, i32 48, metadata !241, metadata !1998}
!1998 = metadata !{i32 106, i32 9, metadata !244, metadata !1996}
!1999 = metadata !{i32 145, i32 31, metadata !246, metadata !1998}
!2000 = metadata !{i32 146, i32 9, metadata !246, metadata !1998}
!2001 = metadata !{i32 105, i32 48, metadata !236, metadata !2002}
!2002 = metadata !{i32 537, i32 5, metadata !1966, null}
!2003 = metadata !{i32 144, i32 48, metadata !241, metadata !2004}
!2004 = metadata !{i32 106, i32 9, metadata !244, metadata !2002}
!2005 = metadata !{i32 145, i32 31, metadata !246, metadata !2004}
!2006 = metadata !{i32 146, i32 9, metadata !246, metadata !2004}
!2007 = metadata !{i32 105, i32 48, metadata !236, metadata !2008}
!2008 = metadata !{i32 538, i32 5, metadata !1966, null}
!2009 = metadata !{i32 144, i32 48, metadata !241, metadata !2010}
!2010 = metadata !{i32 106, i32 9, metadata !244, metadata !2008}
!2011 = metadata !{i32 145, i32 31, metadata !246, metadata !2010}
!2012 = metadata !{i32 146, i32 9, metadata !246, metadata !2010}
!2013 = metadata !{i32 539, i32 4, metadata !1966, null}
!2014 = metadata !{i32 105, i32 48, metadata !236, metadata !2015}
!2015 = metadata !{i32 541, i32 5, metadata !2016, null}
!2016 = metadata !{i32 786443, metadata !1927, i32 540, i32 9, metadata !12, i32 13} ; [ DW_TAG_lexical_block ]
!2017 = metadata !{i32 144, i32 48, metadata !241, metadata !2018}
!2018 = metadata !{i32 106, i32 9, metadata !244, metadata !2015}
!2019 = metadata !{i32 145, i32 31, metadata !246, metadata !2018}
!2020 = metadata !{i32 146, i32 9, metadata !246, metadata !2018}
!2021 = metadata !{i32 105, i32 48, metadata !236, metadata !2022}
!2022 = metadata !{i32 542, i32 5, metadata !2016, null}
!2023 = metadata !{i32 144, i32 48, metadata !241, metadata !2024}
!2024 = metadata !{i32 106, i32 9, metadata !244, metadata !2022}
!2025 = metadata !{i32 145, i32 31, metadata !246, metadata !2024}
!2026 = metadata !{i32 146, i32 9, metadata !246, metadata !2024}
!2027 = metadata !{i32 105, i32 48, metadata !236, metadata !2028}
!2028 = metadata !{i32 543, i32 5, metadata !2016, null}
!2029 = metadata !{i32 144, i32 48, metadata !241, metadata !2030}
!2030 = metadata !{i32 106, i32 9, metadata !244, metadata !2028}
!2031 = metadata !{i32 145, i32 31, metadata !246, metadata !2030}
!2032 = metadata !{i32 146, i32 9, metadata !246, metadata !2030}
!2033 = metadata !{i32 105, i32 48, metadata !236, metadata !2034}
!2034 = metadata !{i32 545, i32 5, metadata !2016, null}
!2035 = metadata !{i32 144, i32 48, metadata !241, metadata !2036}
!2036 = metadata !{i32 106, i32 9, metadata !244, metadata !2034}
!2037 = metadata !{i32 145, i32 31, metadata !246, metadata !2036}
!2038 = metadata !{i32 146, i32 9, metadata !246, metadata !2036}
!2039 = metadata !{i32 105, i32 48, metadata !236, metadata !2040}
!2040 = metadata !{i32 546, i32 5, metadata !2016, null}
!2041 = metadata !{i32 144, i32 48, metadata !241, metadata !2042}
!2042 = metadata !{i32 106, i32 9, metadata !244, metadata !2040}
!2043 = metadata !{i32 145, i32 31, metadata !246, metadata !2042}
!2044 = metadata !{i32 146, i32 9, metadata !246, metadata !2042}
!2045 = metadata !{i32 105, i32 48, metadata !236, metadata !2046}
!2046 = metadata !{i32 547, i32 5, metadata !2016, null}
!2047 = metadata !{i32 144, i32 48, metadata !241, metadata !2048}
!2048 = metadata !{i32 106, i32 9, metadata !244, metadata !2046}
!2049 = metadata !{i32 145, i32 31, metadata !246, metadata !2048}
!2050 = metadata !{i32 146, i32 9, metadata !246, metadata !2048}
!2051 = metadata !{i32 105, i32 48, metadata !236, metadata !2052}
!2052 = metadata !{i32 548, i32 5, metadata !2016, null}
!2053 = metadata !{i32 144, i32 48, metadata !241, metadata !2054}
!2054 = metadata !{i32 106, i32 9, metadata !244, metadata !2052}
!2055 = metadata !{i32 145, i32 31, metadata !246, metadata !2054}
!2056 = metadata !{i32 146, i32 9, metadata !246, metadata !2054}
!2057 = metadata !{i32 105, i32 48, metadata !236, metadata !2058}
!2058 = metadata !{i32 549, i32 5, metadata !2016, null}
!2059 = metadata !{i32 144, i32 48, metadata !241, metadata !2060}
!2060 = metadata !{i32 106, i32 9, metadata !244, metadata !2058}
!2061 = metadata !{i32 145, i32 31, metadata !246, metadata !2060}
!2062 = metadata !{i32 146, i32 9, metadata !246, metadata !2060}
!2063 = metadata !{i32 577, i32 2, metadata !1927, null}
!2064 = metadata !{i32 484, i32 44, metadata !1925, null}
!2065 = metadata !{i32 786688, metadata !1925, metadata !"i", metadata !12, i32 484, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2066 = metadata !{i32 467, i32 62, metadata !1880, null}
!2067 = metadata !{i32 786688, metadata !1880, metadata !"column_index", metadata !12, i32 467, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2068 = metadata !{i32 786689, metadata !2069, metadata !"NUMBER_OF_DAYS", metadata !12, i32 16778002, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2069 = metadata !{i32 786478, i32 0, metadata !12, metadata !"backEnd", metadata !"backEnd", metadata !"_Z7backEndiiRN3hls6streamIfEES2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_S2_P7ap_axiuILi32ELi1ELi1ELi1EE", metadata !12, i32 785, metadata !2070, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 835} ; [ DW_TAG_subprogram ]
!2070 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2071, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2071 = metadata !{null, metadata !15, metadata !15, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16, metadata !297}
!2072 = metadata !{i32 786, i32 9, metadata !2069, null}
!2073 = metadata !{i32 786689, metadata !2069, metadata !"NUMBER_OF_INDICES", metadata !12, i32 33555219, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2074 = metadata !{i32 787, i32 9, metadata !2069, null}
!2075 = metadata !{i32 790531, metadata !2076, metadata !"sum_weight_in_c1.V", null, i32 789, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2076 = metadata !{i32 786689, metadata !2069, metadata !"sum_weight_in_c1", metadata !12, i32 50332437, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2077 = metadata !{i32 789, i32 25, metadata !2069, null}
!2078 = metadata !{i32 790531, metadata !2079, metadata !"sum_return_in_c1.V", null, i32 790, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2079 = metadata !{i32 786689, metadata !2069, metadata !"sum_return_in_c1", metadata !12, i32 67109654, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2080 = metadata !{i32 790, i32 25, metadata !2069, null}
!2081 = metadata !{i32 790531, metadata !2082, metadata !"sum_weight_returnSquare_in_c1.V", null, i32 791, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2082 = metadata !{i32 786689, metadata !2069, metadata !"sum_weight_returnSquare_in_c1", metadata !12, i32 83886871, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2083 = metadata !{i32 791, i32 25, metadata !2069, null}
!2084 = metadata !{i32 790531, metadata !2085, metadata !"sum_weight_return_in_c1.V", null, i32 792, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2085 = metadata !{i32 786689, metadata !2069, metadata !"sum_weight_return_in_c1", metadata !12, i32 100664088, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2086 = metadata !{i32 792, i32 25, metadata !2069, null}
!2087 = metadata !{i32 790531, metadata !2088, metadata !"sum_weight_returnA_returnB_in_c1.V", null, i32 793, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2088 = metadata !{i32 786689, metadata !2069, metadata !"sum_weight_returnA_returnB_in_c1", metadata !12, i32 117441305, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2089 = metadata !{i32 793, i32 25, metadata !2069, null}
!2090 = metadata !{i32 790531, metadata !2091, metadata !"sum_returnA_in_c1.V", null, i32 794, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2091 = metadata !{i32 786689, metadata !2069, metadata !"sum_returnA_in_c1", metadata !12, i32 134218522, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2092 = metadata !{i32 794, i32 25, metadata !2069, null}
!2093 = metadata !{i32 790531, metadata !2094, metadata !"sum_weight_returnSquareA_in_c1.V", null, i32 795, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2094 = metadata !{i32 786689, metadata !2069, metadata !"sum_weight_returnSquareA_in_c1", metadata !12, i32 150995739, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2095 = metadata !{i32 795, i32 25, metadata !2069, null}
!2096 = metadata !{i32 790531, metadata !2097, metadata !"sum_weight_returnA_in_c1.V", null, i32 796, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2097 = metadata !{i32 786689, metadata !2069, metadata !"sum_weight_returnA_in_c1", metadata !12, i32 167772956, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2098 = metadata !{i32 796, i32 25, metadata !2069, null}
!2099 = metadata !{i32 790531, metadata !2100, metadata !"sum_weight_in_c2.V", null, i32 798, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2100 = metadata !{i32 786689, metadata !2069, metadata !"sum_weight_in_c2", metadata !12, i32 184550174, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2101 = metadata !{i32 798, i32 25, metadata !2069, null}
!2102 = metadata !{i32 790531, metadata !2103, metadata !"sum_return_in_c2.V", null, i32 799, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2103 = metadata !{i32 786689, metadata !2069, metadata !"sum_return_in_c2", metadata !12, i32 201327391, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2104 = metadata !{i32 799, i32 25, metadata !2069, null}
!2105 = metadata !{i32 790531, metadata !2106, metadata !"sum_weight_returnSquare_in_c2.V", null, i32 800, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2106 = metadata !{i32 786689, metadata !2069, metadata !"sum_weight_returnSquare_in_c2", metadata !12, i32 218104608, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2107 = metadata !{i32 800, i32 25, metadata !2069, null}
!2108 = metadata !{i32 790531, metadata !2109, metadata !"sum_weight_return_in_c2.V", null, i32 801, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2109 = metadata !{i32 786689, metadata !2069, metadata !"sum_weight_return_in_c2", metadata !12, i32 234881825, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2110 = metadata !{i32 801, i32 25, metadata !2069, null}
!2111 = metadata !{i32 790531, metadata !2112, metadata !"sum_weight_returnA_returnB_in_c2.V", null, i32 802, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2112 = metadata !{i32 786689, metadata !2069, metadata !"sum_weight_returnA_returnB_in_c2", metadata !12, i32 251659042, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2113 = metadata !{i32 802, i32 25, metadata !2069, null}
!2114 = metadata !{i32 790531, metadata !2115, metadata !"sum_returnA_in_c2.V", null, i32 803, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2115 = metadata !{i32 786689, metadata !2069, metadata !"sum_returnA_in_c2", metadata !12, i32 268436259, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2116 = metadata !{i32 803, i32 25, metadata !2069, null}
!2117 = metadata !{i32 790531, metadata !2118, metadata !"sum_weight_returnSquareA_in_c2.V", null, i32 804, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2118 = metadata !{i32 786689, metadata !2069, metadata !"sum_weight_returnSquareA_in_c2", metadata !12, i32 285213476, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2119 = metadata !{i32 804, i32 25, metadata !2069, null}
!2120 = metadata !{i32 790531, metadata !2121, metadata !"sum_weight_returnA_in_c2.V", null, i32 805, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2121 = metadata !{i32 786689, metadata !2069, metadata !"sum_weight_returnA_in_c2", metadata !12, i32 301990693, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2122 = metadata !{i32 805, i32 25, metadata !2069, null}
!2123 = metadata !{i32 790531, metadata !2124, metadata !"out_correlation.data.V", null, i32 807, metadata !1640, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2124 = metadata !{i32 786689, metadata !2069, metadata !"out_correlation", metadata !12, i32 318767911, metadata !297, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2125 = metadata !{i32 807, i32 23, metadata !2069, null}
!2126 = metadata !{i32 790531, metadata !2124, metadata !"out_correlation.keep.V", null, i32 807, metadata !1645, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2127 = metadata !{i32 790531, metadata !2124, metadata !"out_correlation.strb.V", null, i32 807, metadata !1645, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2128 = metadata !{i32 790531, metadata !2124, metadata !"out_correlation.user.V", null, i32 807, metadata !1648, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2129 = metadata !{i32 790531, metadata !2124, metadata !"out_correlation.last.V", null, i32 807, metadata !1648, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2130 = metadata !{i32 790531, metadata !2124, metadata !"out_correlation.id.V", null, i32 807, metadata !1648, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2131 = metadata !{i32 790531, metadata !2124, metadata !"out_correlation.dest.V", null, i32 807, metadata !1648, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2132 = metadata !{i32 903, i32 62, metadata !2133, null}
!2133 = metadata !{i32 786443, metadata !2134, i32 858, i32 77, metadata !12, i32 25} ; [ DW_TAG_lexical_block ]
!2134 = metadata !{i32 786443, metadata !2135, i32 858, i32 2, metadata !12, i32 24} ; [ DW_TAG_lexical_block ]
!2135 = metadata !{i32 786443, metadata !2069, i32 835, i32 1, metadata !12, i32 23} ; [ DW_TAG_lexical_block ]
!2136 = metadata !{i32 925, i32 7, metadata !2133, null}
!2137 = metadata !{i32 858, i32 26, metadata !2134, null}
!2138 = metadata !{i32 859, i32 3, metadata !2133, null}
!2139 = metadata !{i32 129, i32 56, metadata !164, metadata !2140}
!2140 = metadata !{i32 861, i32 18, metadata !2141, null}
!2141 = metadata !{i32 786443, metadata !2133, i32 859, i32 28, metadata !12, i32 26} ; [ DW_TAG_lexical_block ]
!2142 = metadata !{i32 131, i32 9, metadata !170, metadata !2140}
!2143 = metadata !{i32 786688, metadata !2135, metadata !"sum_weight", metadata !12, i32 847, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2144 = metadata !{i32 129, i32 56, metadata !164, metadata !2145}
!2145 = metadata !{i32 862, i32 18, metadata !2141, null}
!2146 = metadata !{i32 131, i32 9, metadata !170, metadata !2145}
!2147 = metadata !{i32 786688, metadata !2135, metadata !"sum_return", metadata !12, i32 848, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2148 = metadata !{i32 129, i32 56, metadata !164, metadata !2149}
!2149 = metadata !{i32 863, i32 31, metadata !2141, null}
!2150 = metadata !{i32 131, i32 9, metadata !170, metadata !2149}
!2151 = metadata !{i32 786688, metadata !2135, metadata !"sum_weight_returnSquare", metadata !12, i32 849, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2152 = metadata !{i32 129, i32 56, metadata !164, metadata !2153}
!2153 = metadata !{i32 864, i32 25, metadata !2141, null}
!2154 = metadata !{i32 131, i32 9, metadata !170, metadata !2153}
!2155 = metadata !{i32 786688, metadata !2135, metadata !"sum_weight_return", metadata !12, i32 850, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2156 = metadata !{i32 129, i32 56, metadata !164, metadata !2157}
!2157 = metadata !{i32 865, i32 33, metadata !2141, null}
!2158 = metadata !{i32 131, i32 9, metadata !170, metadata !2157}
!2159 = metadata !{i32 786688, metadata !2135, metadata !"sum_weight_returnA_returnB", metadata !12, i32 852, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2160 = metadata !{i32 129, i32 56, metadata !164, metadata !2161}
!2161 = metadata !{i32 866, i32 18, metadata !2141, null}
!2162 = metadata !{i32 131, i32 9, metadata !170, metadata !2161}
!2163 = metadata !{i32 786688, metadata !2135, metadata !"sum_returnA", metadata !12, i32 854, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2164 = metadata !{i32 129, i32 56, metadata !164, metadata !2165}
!2165 = metadata !{i32 867, i32 31, metadata !2141, null}
!2166 = metadata !{i32 131, i32 9, metadata !170, metadata !2165}
!2167 = metadata !{i32 786688, metadata !2135, metadata !"sum_weight_returnSquareA", metadata !12, i32 855, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2168 = metadata !{i32 129, i32 56, metadata !164, metadata !2169}
!2169 = metadata !{i32 868, i32 26, metadata !2141, null}
!2170 = metadata !{i32 131, i32 9, metadata !170, metadata !2169}
!2171 = metadata !{i32 786688, metadata !2135, metadata !"sum_weight_returnA", metadata !12, i32 856, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2172 = metadata !{i32 880, i32 2, metadata !2141, null}
!2173 = metadata !{i32 129, i32 56, metadata !164, metadata !2174}
!2174 = metadata !{i32 882, i32 18, metadata !2175, null}
!2175 = metadata !{i32 786443, metadata !2133, i32 880, i32 9, metadata !12, i32 27} ; [ DW_TAG_lexical_block ]
!2176 = metadata !{i32 131, i32 9, metadata !170, metadata !2174}
!2177 = metadata !{i32 129, i32 56, metadata !164, metadata !2178}
!2178 = metadata !{i32 883, i32 18, metadata !2175, null}
!2179 = metadata !{i32 131, i32 9, metadata !170, metadata !2178}
!2180 = metadata !{i32 129, i32 56, metadata !164, metadata !2181}
!2181 = metadata !{i32 884, i32 31, metadata !2175, null}
!2182 = metadata !{i32 131, i32 9, metadata !170, metadata !2181}
!2183 = metadata !{i32 129, i32 56, metadata !164, metadata !2184}
!2184 = metadata !{i32 885, i32 25, metadata !2175, null}
!2185 = metadata !{i32 131, i32 9, metadata !170, metadata !2184}
!2186 = metadata !{i32 129, i32 56, metadata !164, metadata !2187}
!2187 = metadata !{i32 886, i32 33, metadata !2175, null}
!2188 = metadata !{i32 131, i32 9, metadata !170, metadata !2187}
!2189 = metadata !{i32 129, i32 56, metadata !164, metadata !2190}
!2190 = metadata !{i32 887, i32 18, metadata !2175, null}
!2191 = metadata !{i32 131, i32 9, metadata !170, metadata !2190}
!2192 = metadata !{i32 129, i32 56, metadata !164, metadata !2193}
!2193 = metadata !{i32 888, i32 31, metadata !2175, null}
!2194 = metadata !{i32 131, i32 9, metadata !170, metadata !2193}
!2195 = metadata !{i32 129, i32 56, metadata !164, metadata !2196}
!2196 = metadata !{i32 889, i32 26, metadata !2175, null}
!2197 = metadata !{i32 131, i32 9, metadata !170, metadata !2196}
!2198 = metadata !{i32 786688, metadata !2133, metadata !"meanReturnA", metadata !12, i32 903, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2199 = metadata !{i32 904, i32 61, metadata !2133, null}
!2200 = metadata !{i32 786688, metadata !2133, metadata !"meanReturnB", metadata !12, i32 904, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2201 = metadata !{i32 906, i32 23, metadata !2133, null}
!2202 = metadata !{i32 786688, metadata !2133, metadata !"volatilityA", metadata !12, i32 906, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2203 = metadata !{i32 909, i32 23, metadata !2133, null}
!2204 = metadata !{i32 786688, metadata !2133, metadata !"volatilityB", metadata !12, i32 909, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2205 = metadata !{i32 912, i32 159, metadata !2133, null}
!2206 = metadata !{i32 786688, metadata !2133, metadata !"covariance", metadata !12, i32 912, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2207 = metadata !{i32 916, i32 61, metadata !2133, null}
!2208 = metadata !{i32 786688, metadata !2133, metadata !"corr_temp", metadata !12, i32 916, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2209 = metadata !{i32 920, i32 7, metadata !2133, null}
!2210 = metadata !{i32 786689, metadata !2211, metadata !"val", metadata !303, i32 33554682, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2211 = metadata !{i32 786478, i32 0, null, metadata !"ap_uint", metadata !"ap_uint", metadata !"_ZN7ap_uintILi32EEC1Ei", metadata !303, i32 250, metadata !893, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !892, metadata !27, i32 250} ; [ DW_TAG_subprogram ]
!2212 = metadata !{i32 250, i32 55, metadata !2211, metadata !2213}
!2213 = metadata !{i32 921, i32 7, metadata !2133, null}
!2214 = metadata !{i32 786689, metadata !2215, metadata !"val", metadata !303, i32 33554682, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2215 = metadata !{i32 786478, i32 0, null, metadata !"ap_uint", metadata !"ap_uint", metadata !"_ZN7ap_uintILi32EEC2Ei", metadata !303, i32 250, metadata !893, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !892, metadata !27, i32 250} ; [ DW_TAG_subprogram ]
!2216 = metadata !{i32 250, i32 55, metadata !2215, metadata !2217}
!2217 = metadata !{i32 250, i32 77, metadata !2211, metadata !2213}
!2218 = metadata !{i32 277, i32 10, metadata !2219, metadata !2213}
!2219 = metadata !{i32 786443, metadata !2220, i32 276, i32 92, metadata !303, i32 39} ; [ DW_TAG_lexical_block ]
!2220 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi32EEaSERKS0_", metadata !303, i32 276, metadata !931, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !934, metadata !27, i32 276} ; [ DW_TAG_subprogram ]
!2221 = metadata !{i32 277, i32 10, metadata !2222, metadata !2224}
!2222 = metadata !{i32 786443, metadata !2223, i32 276, i32 92, metadata !303, i32 35} ; [ DW_TAG_lexical_block ]
!2223 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi4EEaSERKS0_", metadata !303, i32 276, metadata !1222, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1225, metadata !27, i32 276} ; [ DW_TAG_subprogram ]
!2224 = metadata !{i32 922, i32 7, metadata !2133, null}
!2225 = metadata !{i32 277, i32 10, metadata !2222, metadata !2226}
!2226 = metadata !{i32 923, i32 7, metadata !2133, null}
!2227 = metadata !{i32 277, i32 10, metadata !2228, metadata !2230}
!2228 = metadata !{i32 786443, metadata !2229, i32 276, i32 92, metadata !303, i32 31} ; [ DW_TAG_lexical_block ]
!2229 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi1EEaSERKS0_", metadata !303, i32 276, metadata !1510, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1513, metadata !27, i32 276} ; [ DW_TAG_subprogram ]
!2230 = metadata !{i32 924, i32 7, metadata !2133, null}
!2231 = metadata !{i32 277, i32 10, metadata !2228, metadata !2136}
!2232 = metadata !{i32 277, i32 10, metadata !2228, metadata !2233}
!2233 = metadata !{i32 926, i32 7, metadata !2133, null}
!2234 = metadata !{i32 277, i32 10, metadata !2228, metadata !2235}
!2235 = metadata !{i32 927, i32 7, metadata !2133, null}
!2236 = metadata !{i32 858, i32 62, metadata !2134, null}
!2237 = metadata !{i32 786688, metadata !2134, metadata !"column_index", metadata !12, i32 858, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
