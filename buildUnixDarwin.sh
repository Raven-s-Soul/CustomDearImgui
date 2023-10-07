#! /bin/sh

cd .\build\
cmake ..
cd ..
cmake --build .\build\
.\build\Debug\project.exe