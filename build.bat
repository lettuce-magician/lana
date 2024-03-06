@echo off
set output=anney
set entry=init

cd src
darklua process %entry%.luau %output%.luau
lune build %output%.luau -o ../build/%output%.exe
del /q %output%.luau
cd ..