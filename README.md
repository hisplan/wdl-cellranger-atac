# wdl-cellranger-atac

WDLized Cell Ranger ATAC Pipeline

## License

The code is available to everyone under the standard [MIT license](./LICENSE). However, the code internally uses 10x software, so please make sure that you read and agree to [10x End User Software License](https://www.10xgenomics.com/end-user-software-license-agreement).

## Setup

The pipeline is a part of SCING (Single-Cell pIpeliNe Garden; pronounced as "sing" /siŋ/). For setup, please refer to [this page](https://github.com/hisplan/scing). All the instructions below is given under the assumption that you have already configured SCING in your environment.

## Create Job Files

You need two files for processing a V(D)J sample - one inputs file and one labels file. Use the following example files to help you create your configuration file:

- `configs/template.inputs.json`
- `configs/template.labels.json`

### Reference

Use one of the URLs below for the reference genome:

Type       | `CellRangerATAC.reference`
---------- | ---------------------------------------------------------------------------------------------
GRCh38     | `https://cf.10xgenomics.com/supp/cell-atac/refdata-cellranger-arc-GRCh38-2020-A-2.0.0.tar.gz`
mm10       | `https://cf.10xgenomics.com/supp/cell-atac/refdata-cellranger-arc-mm10-2020-A-2.0.0.tar.gz`

### Multiome

If you want to process the ATAC product of the multiome using Cell Ranger ATAC v2 (i.e. without GEX), you must set the following in the job config file:

```json
"CellRangerATAC.chemistry": "ARC-v1"
```

## Submit Your Job

```bash
conda activate scing

./submit.sh \
    -k ~/keys/cromwell-secrets.json \
    -i configs/your-sample.inputs.json \
    -l configs/your-sample.labels.json \
    -o CellRangerATAC.options.aws.json
```
