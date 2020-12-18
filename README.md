# ethminer_fpga

Modified version of the OpenCL-ready Ethereum miner (etminer) with support for FPGAs (HW Accelerators).


## Usage

The **ethminer** is a command line program. This means you launch it either
from a Windows command prompt or Linux console, or create shortcuts to
predefined command lines using a Linux Bash script or Windows batch/cmd file.
For a full list of available command, please run:

```sh
ethminer --help
```

### Examples connecting to pools

Check our [samples](docs/POOL_EXAMPLES_ETH.md) to see how to connect to different pools.

## Build and Install

See [docs/BUILD.md](docs/BUILD.md) for build/compilation details.

## Maintainers / Donations

The list of current and past maintainers, authors and contributors to the ethminer_fpga project.

| Name                  | Contact                   |                                                              |
| --------------------- | ------------------------- | ------------------------------------------------------------ |
| M. Khaled     | [@mkhaled87](https://github.com/mkhaled87)     | ETH: 0x14551935EDf4aF06909336084412dd805aE14b26,<br />BTC: 1MKHALEDqXhBzqa86hj8FbDGW5HvDdA5Tq|


## Tested Devices
| Device                | Details                                                       | Hashrates                           |
| --------------------- | ------------------------------------------------------------- | ----------------------------------- |
| Terasic DE10-Pro<br /><img src="https://www.terasic.com.tw/attachment/archive/1144/image/RevB_45.jpg" width="100">| Type: Accelerator/FPGA<br />FPGA: Stratix 10 GX/SX<br />RAM: 8 GB DDR4<br />More details: [Terasic website](https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=13&No=1144&PartNo=1) | s10_sh2e1_4Gx2 (2 CU)/LWS_256: 1.44 Mh/s. <br /> s10_sh2e1_4Gx2 (4CU)/LWS_256: Soon. <br /> s10_sh2e1_4Gx2 (8 CU)/LWS_256: Soon. |

## License

Licensed under the [GNU General Public License, Version 3](LICENSE).
