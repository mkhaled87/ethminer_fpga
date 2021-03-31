# ethminer_fpga

Modified version of the OpenCL-ready Ethereum miner (etminer) with support for FPGAs (HW Accelerators).


## Quick-start Guide

- Make sure your FPGA supports OpenCL.
- Build this miner from its source using CMake. You can benifit from the special build scripts (e.g., [scripts/build_windows.bat](scripts/build_windows.bat) for Windows) or follow the original instructions from the forked Ethminer (here [docs/BUILD.md](docs/BUILD.md)).
- FPGAs dont build the OpenCL Kernels online and the kernels need to be built apriori. Each vendor (e.g., Intel Altera or Xilinx) provides its own toolchain (OpenCL High-Level Synthesis Compiler). You can benifit from the example build script I made for Intel Altera toolchain for the Terasic DE10-Pro card in ([libethash-cl/kernels/cl/custom/s10_sh2e1_4Gx2/build.bat](libethash-cl/kernels/cl/custom/s10_sh2e1_4Gx2/build.bat)). Notice that you may need to slightly modify the OpenCL kernel to make it compatible with the requirements of the toolchain and its level-of-support for OpenCL standard. See my [modified OpenCL kernel](libethash-cl/kernels/cl/custom/s10_sh2e1_4Gx2/ethash.cl) for Intel Aaltera / Terasic DE10-Pro card. 
- Once the kernel is compiled, run the miner and pass the kernel binary to it. You may here also benifit from [my launch script](scripts/start_mining_fpga.bat) that runs on Intel Aaltera / Terasic DE10-Pro card.
- If things work for you, dont forget to donate ;)


## Usage of the miner software

The **ethminer** is a command line program. This means you launch it either
from a Windows command prompt or Linux console, or create shortcuts to
predefined command lines using a Linux Bash script or Windows batch/cmd file.
For a full list of available command, please run:

```sh
ethminer --help
```


## Maintainers / Donations

The list of current and past maintainers, authors and contributors to the ethminer_fpga project.

| Name                  | Contact                   |                                                              |
| --------------------- | ------------------------- | ------------------------------------------------------------ |
| M. Khaled     | [@mkhaled87](https://github.com/mkhaled87)     | ETH: 0x14551935EDf4aF06909336084412dd805aE14b26,<br />BTC: 1MKHALEDqXhBzqa86hj8FbDGW5HvDdA5Tq|


## Tested Devices
| Device                | Details                                                       | Hashrates                           |
| --------------------- | ------------------------------------------------------------- | ----------------------------------- |
| Terasic DE10-Pro<br /><img src="https://www.terasic.com.tw/attachment/archive/1144/image/RevB_45.jpg" width="100">| Type: Accelerator/FPGA<br />FPGA: Stratix 10 GX/SX<br />RAM: 8 GB DDR4<br />More details: [Terasic website](https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=13&No=1144&PartNo=1) | s10_sh2e1_4Gx2 (2 CU)/LWS_256: 1.44 Mh/s. <br /> s10_sh2e1_8Gx4 (4CU)/LWS_256: Soon.|

## License

Licensed under the [GNU General Public License, Version 3](LICENSE).
