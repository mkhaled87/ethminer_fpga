@ECHO OFF
@ECHO Building Intel FPGA Ethash Kernels (board=s10_sh2e1_4Gx2, a.k.a Terasic DE10-pro)
@ECHO Run this as administrator !


mkdir build
cd build 

@ECHO Building the kernels for workgroup size = 64
aoc ..\ethash_lws64.cl -o ethash_lws64.aocx -board=s10_sh2e1_4Gx2 -v

@ECHO Building the kernels for workgroup size = 128
aoc ..\ethash_lws128.cl -o ethash_lws128.aocx -board=s10_sh2e1_4Gx2 -v

@ECHO Building the kernels for workgroup size = 256
aoc ..\ethash_lws256.cl -o ethash_lws256.aocx -board=s10_sh2e1_4Gx2 -v

cd build ..