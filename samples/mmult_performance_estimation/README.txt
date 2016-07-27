Performance estimation flow:

The estimation flow works in two passes. The first pass generates software
performance data (step 1 to 3 below) and the second pass which provides an
estimate of performance based on selected accelerators. To run the second pass
directly, the supplied sw_perf_data.xml can be used by going to step 5.

Note: By default, the Makefile runs the second pass, i.e. step 5 below.
To generate the full design to test on the board, please call "make full"

Step 1: make prepass 
        This creates an sd_card image that you should use to boot linux and run
        the executable on hardware
Step 2: Run the mmult.elf executable on hardware to produce a file called
        sw_perf_data.xml on the sd card
Step 3: Copy the file sw_perf_data.xml from the sd_card to the same directory
        as this file and the makefile
Step 4: make ultraclean
Step 5: make estimate

A subset of the estimation flow can be called, which only provides hardware
latency and resource usage estimates in isolation, without comparison with
any baseline. This subset can be invoked by running "make hwestimate"
