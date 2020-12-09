@ECHO OFF

set vsversion="Visual Studio 14 2015 Win64"
set ocl_inc_dir="%INTELFPGAOCLSDKROOT%\host\include"
set ocl_lib_dir="%INTELFPGAOCLSDKROOT%\host\windows64\lib"
set vcpkg=-DCMAKE_TOOLCHAIN_FILE=D:/myWorkspace/GitLab/vcpkg/scripts/buildsystems/vcpkg.cmake
set msvc=-DMSVC=TRUE

@ECHO ------------------------------------------------------------------------
@ECHO Install instructions:
@ECHO ------------------------------------------------------------------------
@ECHO 1- Pull linked repos: git submodule update --init --recursive
@ECHO 2- Install vcpkg and then use it to install: boost-filesystem:x64-windows boost-lockfree:x64-windows boost-format:x64-windows boost-process:x64-windows boost-dll:x64-windows boost-asio:x64-windows boost-thread:x64-windows boost-multiprecision:x64-windows jsoncpp:x64-windows openssl:x64-windows cli11:x64-windows
@ECHO 3- Install (ethash) next to ethminer_fpga using VS command line terminal: git clone https://github.com/chfast/ethash; md build; cd build; cmake .. -G %vsversion%; cmake --build . --config Release; [as Admin:] cmake --install . 
@ECHO    Ethash it will be installed in C:\Program Files (x86)\ethash\
@ECHO 4- Run this BAT file inside the VS Command Line terminal.
@ECHO ------------------------------------------------------------------------
SET /P AREYOUSURE=Did you do all of the above and ready to start (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END


mkdir ..\build
rd /S /Q ..\build
mkdir ..\build
cd ..\build
set triplet=-DVCPKG_TARGET_TRIPLET=x64-windows

cmake.exe .. -DCMAKE_BUILD_TYPE=Release %vcpkg% %msvc% %triplet% -G %vsversion% -DHUNTER_ENABLED=OFF -DETHASHCL=ON -DETHASHCUDA=OFF -DAPICORE=OFF -DBINKERN=ON -DETHDBUS=OFF -DUSE_SYS_OPENCL=OFF -DOPENCL_INC_DIR=%ocl_inc_dir% -DOPENCL_LIB_DIR=%ocl_lib_dir%
cmake --build . --config Release

cd ..\scripts

:END
