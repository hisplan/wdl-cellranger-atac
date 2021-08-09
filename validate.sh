#!/usr/bin/env bash

java -jar ~/Applications/womtool.jar \
    validate \
    CellRangerATAC.wdl \
    --inputs ./configs/atac_pbmc_500_v1.inputs.json
