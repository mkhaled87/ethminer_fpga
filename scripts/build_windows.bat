set vcpkg=-DCMAKE_TOOLCHAIN_FILE=C:/Users/engmk/Workspace/Gitlab/vcpkg/scripts/buildsystems/vcpkg.cmake
set msvc=-DMSVC=TRUE
rd /S /Q ..\build
cd ..\build
set triplet=-DVCPKG_TARGET_TRIPLET=x64-windows
cmake.exe .. %vcpkg% %msvc% %triplet% -G "Visual Studio 16 2019" -DHUNTER_ENABLED=OFF -DETHASHCL=ON -DETHASHCUDA=OFF -DAPICORE=OFF -DBINKERN=ON -DETHDBUS=OFF -DUSE_SYS_OPENCL=ON
cd ..\scripts
