## Test Runs



Kallisto with intronic transcriptome index
```bash
kallisto index -i nfasc.kali ./data/nfasc_ref.fq
kallisto quant -i nfasc.kali -t 4 -o kal_nfasc_ko SRR2096920_1.fastq.gz SRR2096920_2.fastq.gz
kallisto quant -i nfasc.kali -t 4 -o kal_nfasc_ctrl SRR12616323_1.fastq.gz SRR12616323_2.fastq.gz
python3 comp_kallisto_quant.py data/kal_nfasc_ko/abundance.tsv data/kal_nfasc_ctrl/abundance.tsv kal_nfasc_abundance.tsv
```
Results: [Link](kal_nfasc_abundance.tsv)

