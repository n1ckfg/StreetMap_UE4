@echo off

cd %~dp0
git submodule init
git submodule update

@pause