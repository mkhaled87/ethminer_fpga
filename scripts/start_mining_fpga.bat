set PROJ_ROOT=..
set ACCOUNT=14551935EDf4aF06909336084412dd805aE14b26
set WORKER=FPGAs
set MINING_POOL=eu1.ethermine.org
set POOL_PORT=4444
set TARGET_DEVICE_ID=1
set LOCAL_WG_SIZE=256
rem set /a GLOBAL_WG_SIZE=65536*LOCAL_WG_SIZE
set GLOBAL_WG_SIZE=524288
set BINARY_FILE="%PROJ_ROOT%\libethash-cl\kernels\bin\s10_sh2e1_4Gx2_cu4\ethash_lws%LOCAL_WG_SIZE%.aocx"

%PROJ_ROOT%\build\ethminer\Release\ethminer.exe -G -P stratum://%ACCOUNT%.%WORKER%@%MINING_POOL%:%POOL_PORT% --cl-global-work=%GLOBAL_WG_SIZE% --cl-local-work=%LOCAL_WG_SIZE% --opencl-device=%TARGET_DEVICE_ID% --cl-binary-file=%BINARY_FILE%
