#!/bin/bash

UE_ROOT=$HOME"/UnrealEngine"

PROJECT=$(basename $PWD)

# removing this line from the .uproject forces a rebuild
#sed -i '/EngineAssociation/d' ./$PROJECT.uproject

mkdir $PWD"/Build"

$UE_ROOT"/Engine/Build/BatchFiles/RunUAT.sh" BuildCookRun -nop4 \
-project=\""$PWD"/"$PROJECT".uproject\" \
-cook -compressed -allmaps -stage -archive \
-archivedirectory=\""$PWD"/Build/\""/" \
-package -LinuxNoEditor -clientconfig=Development -ue4exe=UE4Editor -clean \
-pak -targetplatform=Linux -utf8output