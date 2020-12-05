ECHO Please install vcpkg and then inside it install: boost-filessystem:x64-windows, boost-lockfree:x64-windows, boost-format:x64-windows, boost-process:x64-windows, boost-dll:x64-windows, boost-asio:x64-windows, boost-thread:x64-windows, boost-multiprrecision:x64-windows, jsoncpp:x64-windows, openssl:x64-windows, cli11:x64-windows,  
ECHO Please install (ethash) first: clone https://github.com/chfast/ethash, md build, cd build, cmake .., cmake --build . --config Release, [as Admin:] cmake --install . 
ECHO After installing ethhas, it will be installed in C:\Program Files (x86)\ethash\
ECHO The next is supposed to run inside the Command Line terminal of Visual Studio

set ocl_inc_dir="C:\Program Files (x86)\AMD APP SDK\3.0\include"
set ocl_lib_dir="C:\Program Files (x86)\AMD APP SDK\3.0\lib\x86_64"
set vcpkg=-DCMAKE_TOOLCHAIN_FILE=C:/Users/engmk/Workspace/Gitlab/vcpkg/scripts/buildsystems/vcpkg.cmake
set msvc=-DMSVC=TRUE

mkdir ..\build
rd /S /Q ..\build
mkdir ..\build
cd ..\build
set triplet=-DVCPKG_TARGET_TRIPLET=x64-windows

cmake.exe .. -DCMAKE_BUILD_TYPE=Release %vcpkg% %msvc% %triplet% -G "Visual Studio 16 2019" -DHUNTER_ENABLED=OFF -DETHASHCL=ON -DETHASHCUDA=OFF -DAPICORE=OFF -DBINKERN=ON -DETHDBUS=OFF -DUSE_SYS_OPENCL=OFF -DOPENCL_INC_DIR=%ocl_inc_dir% -DOPENCL_LIB_DIR=%ocl_lib_dir%
cmake --build . --config Release

cd ..\scripts
