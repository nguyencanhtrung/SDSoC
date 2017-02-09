
set TopModule "correlation_accel_v4"
set ClockPeriod "8.500000"
set ClockList {ap_clk}
set multiClockList {}
set PortClockMap {}
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag  1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NewDSPMapping 0
set ResetLevelFlag 0
set ResetStyle "control"
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set fsmEncStyle "onehot"
set maxFanout "0"
set RtlPrefix ""
set ExtraCCFlags ""
set ExtraCLdFlags ""
set SynCheckOptions ""
set PresynOptions ""
set PreprocOptions ""
set SchedOptions ""
set BindOptions ""
set RtlGenOptions ""
set RtlWriterOptions ""
set CbcGenFlag ""
set CasGenFlag ""
set CasMonitorFlag ""
set AutoSimOptions {}
set ExportMCPathFlag "0"
set SCTraceFileName "mytrace"
set SCTraceFileFormat "vcd"
set SCTraceOption "all"
set TargetInfo "xc7z020:clg484:-1"
set SourceFiles {sc {} c /home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease/_sds/vhls/src/correlation_accel_v4.cpp}
set SourceFlags {sc {} c {{-I/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src -Wall -O3 -fmessage-length=0 -MMD -MP -D__SDSCC__ -I/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src -D__SDSVHLS__ -I/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease -w}}}
set DirectiveFile {/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease/_sds/vhls/correlation_accel_v4/solution/solution.directive}
set TBFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set SpecLanguage "C"
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set TBInstNames {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set DefaultPlatform "DefaultPlatform"
set TBTVFileNotFound ""
set AppFile "../vivado_hls.app"
set ApsFile "solution.aps"
set AvePath "../.."
