#include "mmult_accel.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void mmult_accel::thread_hdltv_gen() {
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
        mHdltvinHandle << " , " <<  " \"in_A_dout\" :  \"" << in_A_dout.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_A_empty_n\" :  \"" << in_A_empty_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in_A_read\" :  \"" << in_A_read.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_B_dout\" :  \"" << in_B_dout.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_B_empty_n\" :  \"" << in_B_empty_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in_B_read\" :  \"" << in_B_read.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_C_din\" :  \"" << out_C_din.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"out_C_full_n\" :  \"" << out_C_full_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_C_write\" :  \"" << out_C_write.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

