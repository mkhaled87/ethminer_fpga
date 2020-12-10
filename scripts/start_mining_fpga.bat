set ACCOUNT=14551935EDf4aF06909336084412dd805aE14b26
set WORKER=FPGAs
set MINING_POOL=eu1.ethermine.org
set POOL_PORT=4444
set TARGET_DEVICE_ID=1
set GLOBAL_WG_SIZE=1024
set LOCAL_WG_SIZE=128
set BINARY_FILE="D:\myWorkspace\GitLab\ethminer_fpga\libethash-cl\kernels\cl\custom\s10_sh2e1_4Gx2\build\ethash_lws128.aocx"

cd ..
.\build\ethminer\Release\ethminer.exe -G -P stratum://%ACCOUNT%.%WORKER%@%MINING_POOL%:%POOL_PORT% --cl-global-work=%GLOBAL_WG_SIZE% --cl-local-work=%LOCAL_WG_SIZE% --opencl-device=%TARGET_DEVICE_ID% --cl-binary-file=%BINARY_FILE%
