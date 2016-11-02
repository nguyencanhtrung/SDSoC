#include "correlation_accel_v2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void correlation_accel_v2::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"number_of_days\" :  \"" << number_of_days.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"number_of_indices\" :  \"" << number_of_indices.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_indices_TDATA\" :  \"" << in_indices_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_indices_TVALID\" :  \"" << in_indices_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in_indices_TREADY\" :  \"" << in_indices_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_indices_TKEEP\" :  \"" << in_indices_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_indices_TSTRB\" :  \"" << in_indices_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_indices_TUSER\" :  \"" << in_indices_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_indices_TLAST\" :  \"" << in_indices_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_indices_TID\" :  \"" << in_indices_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_indices_TDEST\" :  \"" << in_indices_TDEST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_correlation_TDATA\" :  \"" << out_correlation_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_correlation_TVALID\" :  \"" << out_correlation_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"out_correlation_TREADY\" :  \"" << out_correlation_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_correlation_TKEEP\" :  \"" << out_correlation_TKEEP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_correlation_TSTRB\" :  \"" << out_correlation_TSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_correlation_TUSER\" :  \"" << out_correlation_TUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_correlation_TLAST\" :  \"" << out_correlation_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_correlation_TID\" :  \"" << out_correlation_TID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_correlation_TDEST\" :  \"" << out_correlation_TDEST.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

