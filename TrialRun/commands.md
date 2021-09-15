# Trial Run


## Steps:

1. kallisto pseudoalign

```bash 
kallisto index -k 31 -i Mus_musculus.GRCm39.cdna.all.fa.gz.kali Mus_musculus.GRCm39.cdna.all.fa.gz

# KO sample
kallisto quant -i Mus_musculus.GRCm39.cdna.all.fa.gz.kali -t 4 -o kal_pseudobam_ko SRR2096920_1.fastq.gz SRR2096920_2.fastq.gz  --pseudobam

# CTRL sample
kallisto quant -i Mus_musculus.GRCm39.cdna.all.fa.gz.kali -t 4 -o kal_pseudobam_ctrl SRR12616323_1.fastq.gz SRR12616323_2.fastq.gz --pseudobam

```

2. Filter unmapped reads and BAM to fastq conversion

```bash 
# For each sample
samtools collate -u -O pseudoalignments.bam | samtools fastq -f 12 -1 paired1.fq.gz -2 paired2.fq.gz
```

3. Sailfish quant

```bash
sailfish index -t <(gunzip -c Mus_musculus.GRCm39.cdna.all.fa.gz) -o sailfish_index/ -k 15

# KO sample
sailfish quant -l IU -i sailfish_index_15/ -1 <(gunzip -c data/kal_pseudobam_ko/paired1.fq.gz) -2 <(gunzip -c data/kal_pseudobam_ko/paired2.fq.gz) -o sailfish_out_15_ko/

# CTRL sample
sailfish quant -l IU -i sailfish_index_15/ -1 <(gunzip -c data/kal_pseudobam_ctrl/paired1.fq.gz) -2 <(gunzip -c data/kal_pseudobam_ctrl/paired2.fq.gz) -o sailfish_out_15_ctrl/

```

4. Comparison of quantification between ko and ctrl sample

```bash
comp_sailfish_quant.py sailfish_out_15_ko/quant.sf sailfish_out_15_ctrl/quant.sf comp.tsv
```