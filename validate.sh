#!/usr/bin/env bash

java -jar ~/Applications/womtool.jar \
    validate \
    CellRangerATAC.wdl \
    --inputs ./configs/template.inputs.json
