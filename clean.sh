#!/bin/bash

rm -rf Binaries
rm -rf DerivedDataCache
rm -rf Intermediate
rm -rf Saved
rm -f CMakeLists.txt
rm -f Makefile
rm -f *.workspace
rm -f *.pri
rm -f *.kdev4
rm -f *.pro
rm -f *CodeCompletionFolders.txt
rm -f *CodeLitePreProcessor.txt

for d in ./Plugins/*; do
  if [ -d "$d" ]; then
    rm -rf $d"/Binaries"
    rm -rf $d"/DerivedDataCache"
    rm -rf $d"/Intermediate"
    rm -rf $d"/Saved"
  fi
done



