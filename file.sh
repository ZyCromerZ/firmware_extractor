#!/usr/bin/env bash
git clone --recurse-submodules https://github.com/erfanoabdi/Firmware_extractor.git
cd Firmware_extractor
wget https://hugeota.d.miui.com/20.6.15/miui_BEGONIA_20.6.15_c85e084b31_10.0.zip && \
./extractor.sh miui_BEGONIA_20.6.15_c85e084b31_10.0.zip && \
cd out && \
git init && \
git add . && git commit -s -m "miui_BEGONIA_20.6.15_c85e084b31_10.0" && \
git checkout -b miui_BEGONIA_20.6.15_c85e084b31_10.0 && \
git branch -D master && \
git remote add origin $githubKey@github.com:ZyCromerZ/begonia_files.git && \
git push --all origin -f