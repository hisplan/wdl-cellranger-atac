# wdl-cellranger-atac

WDLized Cell Ranger ATAC

## Reference Package

- GRCh38 Reference - 2020-A-2.0.0 (May 3, 2021): https://cf.10xgenomics.com/supp/cell-atac/refdata-cellranger-arc-GRCh38-2020-A-2.0.0.tar.gz
- mm10 Reference - 2020-A-2.0.0 (May 3, 2021): https://cf.10xgenomics.com/supp/cell-atac/refdata-cellranger-arc-mm10-2020-A-2.0.0.tar.gz

## How to Submit a Job

```bash
./submit.sh \
    -k ~/keys/cromwell-secrets-aws-nvirginia.json \
    -i configs/atac_pbmc_500_v1.inputs.json \
    -l configs/atac_pbmc_500_v1.labels.json \
    -o CellRangerATAC.options.aws.json
```

## Multiome

If you want to process the ATAC product of the multiome using Cell Ranger ATAC v2 (i.e. without GEX), you must set the following in the job config file:

```json
"CellRangerATAC.chemistry": "ARC-v1"
```
