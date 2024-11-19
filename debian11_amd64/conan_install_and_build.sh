conan install . --deployer-folder build --build=missing -s build_type=Debug
cd build/Debug/generators/
cmake ../../../ -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Debug
cmake --build . --config Debug