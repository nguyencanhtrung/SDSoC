APFCC samples Folder                               September 30, 2013

The APFCC samples folder contains several sample applications,
including Make files required to create SD card images to boot
PetaLinux and run the application. In addition, each application
includes an sd_card_prebuilt folder containing a boot image 
generated for you.

samples
|-- file_io_manr_sobel
|-- mmult_aximm_all
|-- mmult_cascade
|-- mmult_datasize
|-- mmult_hw
|-- mmult_optimized
|-- mmult_optimized_apf
|-- mmult_optimized_axififo
|-- mmult_pipelined
|-- mmult_sw
`-- zc702_hdmi_apps
    |-- colorflip
    |-- manr_sobel
    |-- motion_demo
    `-- simple_sobel

Within the samples folder, most applications at the top level are
targeted for the ZC702 platform. The zc702_hdmi_apps folder
contains applications targeted for the ZC702 HDMI platform, which
is derived from the ZC702 Base TRD.

See the "Introduction to the APFCC Compiler" document in the docs
folder of the APFCC installation for descriptions of these applications.
