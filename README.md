# RNA-seq Analysis of Breast Cancer Transcriptomes

## Overview
This project replicates an RNA-seq study on **breast cancer** (*Accession: PRJNA76246*), analyzing **tumor vs. normal gene expression** to identify cytotoxicity-related genes involved in cancer progression. The dataset includes **60 paired-end RNA-seq samples** retrieved from the **Sequence Read Archive (SRA)**. 

## Dataset Information
- **Project Accession:** [PRJNA76246](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA76246)
- **Run Data & Metadata:** [SRA Study Link](https://www.ncbi.nlm.nih.gov/Traces/study/?acc=SRP336638&o=acc_s%3Aa)
- **Experimental Design:**
  - 30 pairs of normal and cancerous breast tissue samples
  - Sequenced using **Illumina HiSeq 2000**
  - Read format: **Paired-end**

## Workflow
### 1. Data Acquisition
- Automated downloading of SRA files using SRA toolkit 
- Extraction of paired-end FASTQ files

### 2. Quality Control
- Initial quality assessment using FastQC
- Comprehensive visualization of quality metrics
- Read trimming and filtering using fastp
- Post-trimming quality validation

### 3. Quantification
- Transcript quantification using `Salmon`
- **Reference Genome:** GRCh38 human reference transcriptome (From NCBI FTP website - https://ftp.ncbi.nlm.nih.gov/refseq/H_sapiens/annotation/GRCh38_latest/refseq_identifiers/.)

**Specs:**

    Assembly name: GRCh38.p14 - GRCh38, patch 14
    Assembly accession: GCF_000001405.40
    https://ftp.ncbi.nlm.nih.gov/refseq/H_sapiens/annotation/GRCh38_latest/refseq_identifiers/README.txt

### 4. Differential Expression Analysis
- Statistical testing with `DESeq2`
- Identification of significantly differentially expressed genes

### 5. Results & Visualization
- **Volcano Plots**, **Heatmaps**

## Acknowledgements
This project was developed as part of the BIOL 6150 course. Special thanks to the course instructors, the PACE-ICE HPC support team for their guidance and resources, and my team members Anagha Mohana Krishna and Hina Gaur.
