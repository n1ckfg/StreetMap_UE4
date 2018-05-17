#!/bin/bash

UE_ROOT=$HOME"/UnrealEngine"

PROJECT=$(basename $PWD)

# removing this line from the .uproject forces a rebuild
sed -i '/EngineAssociation/d' ./$PROJECT.uproject

$UE_ROOT"/Engine/Binaries/Linux/UE4Editor" $PWD"/"$PROJECT".uproject" -game -editor

