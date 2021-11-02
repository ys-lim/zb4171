##################################################################################
# TDP43 DELETION IN SKELETAL MUSCLE JEONG 2017 PAPER, 2 controls 2 tdp43 deletion
##################################################################################

# Get transcriptome and build kallisto index
# use transcriptome here already built: /mnt/gtklab01/yongshan/project/21sept_scn/Mus_musculus.GRCm39.cdna.all.fa.gz.kali


# controls samples
# SRR5074051
# SRR5074077
# knockout samples
# SRR5074186
# SRR5074121

# kallisto quant
# control 1
kallisto quant -i /mnt/gtklab01/yongshan/project/21sept_scn/Mus_musculus.GRCm39.cdna.all.fa.gz.kali -t 8 -o /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074051 /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074051/SRR5074051_1.fastq.gz /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074051/SRR5074051_2.fastq.gz  --pseudobam

[quant] fragment length distribution will be estimated from the data
[index] k-mer length: 31
[index] number of targets: 117,486
[index] number of k-mers: 100,957,825
[index] number of equivalence classes: 431,916
[quant] running in paired-end mode
[quant] will process pair 1: /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074051/SRR5074051_1.fastq.gz
                             /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074051/SRR5074051_2.fastq.gz
[quant] finding pseudoalignments for the reads ... done
[quant] processed 27,097,166 reads, 24,312,059 reads pseudoaligned
[quant] estimated average fragment length: 317.796
[   em] quantifying the abundances ... done
[   em] the Expectation-Maximization algorithm ran for 1,181 rounds
[  bam] writing pseudoalignments to BAM format .. done

# control 2
kallisto quant -i /mnt/gtklab01/yongshan/project/21sept_scn/Mus_musculus.GRCm39.cdna.all.fa.gz.kali -t 8 -o /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074077 /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074077/SRR5074077_1.fastq.gz /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074077/SRR5074077_2.fastq.gz  --pseudobam

[quant] fragment length distribution will be estimated from the data
[index] k-mer length: 31
[index] number of targets: 117,486
[index] number of k-mers: 100,957,825
[index] number of equivalence classes: 431,916
[quant] running in paired-end mode
[quant] will process pair 1: /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074077/SRR5074077_1.fastq.gz
                             /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074077/SRR5074077_2.fastq.gz
[quant] finding pseudoalignments for the reads ... done
[quant] processed 30,156,590 reads, 27,807,441 reads pseudoaligned
[quant] estimated average fragment length: 308.191
[   em] quantifying the abundances ... done
[   em] the Expectation-Maximization algorithm ran for 1,316 rounds
[  bam] writing pseudoalignments to BAM format .. done

# knockout 1
kallisto quant -i /mnt/gtklab01/yongshan/project/21sept_scn/Mus_musculus.GRCm39.cdna.all.fa.gz.kali -t 8 -o /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074186 /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074186/SRR5074186_1.fastq.gz /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074186/SRR5074186_2.fastq.gz  --pseudobam

[quant] fragment length distribution will be estimated from the data
[index] k-mer length: 31
[index] number of targets: 117,486
[index] number of k-mers: 100,957,825
[index] number of equivalence classes: 431,916
[quant] running in paired-end mode
[quant] will process pair 1: /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074186/SRR5074186_1.fastq.gz
                             /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074186/SRR5074186_2.fastq.gz
[quant] finding pseudoalignments for the reads ... done
[quant] processed 39,641,752 reads, 34,711,003 reads pseudoaligned
[quant] estimated average fragment length: 325.846
[   em] quantifying the abundances ... done
[   em] the Expectation-Maximization algorithm ran for 1,603 rounds
[  bam] writing pseudoalignments to BAM format .. done

# knockout 2
kallisto quant -i /mnt/gtklab01/yongshan/project/21sept_scn/Mus_musculus.GRCm39.cdna.all.fa.gz.kali -t 8 -o /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074121 /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074121/SRR5074121_1.fastq.gz /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074121/SRR5074121_2.fastq.gz  --pseudobam

[quant] fragment length distribution will be estimated from the data
[index] k-mer length: 31
[index] number of targets: 117,486
[index] number of k-mers: 100,957,825
[index] number of equivalence classes: 431,916
[quant] running in paired-end mode
[quant] will process pair 1: /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074121/SRR5074121_1.fastq.gz
                             /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074121/SRR5074121_2.fastq.gz
[quant] finding pseudoalignments for the reads ... done
[quant] processed 43,586,449 reads, 39,516,382 reads pseudoaligned
[quant] estimated average fragment length: 289.856
[   em] quantifying the abundances ... done
[   em] the Expectation-Maximization algorithm ran for 1,266 rounds
[  bam] writing pseudoalignments to BAM format .. done

# pseudobams are transcript identifiers

# collect unmapped reads from pseudobam and convert to fastq

# control 1
samtools collate --threads 8 -u -O /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074051/pseudoalignments.bam | samtools fastq -f 5 -f 9 -1 /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074051/SRR5074051_unmapped_pair1.fq.gz -2 /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074051/SRR5074051_unmapped_pair2.fq.gz

[M::bam2fq_mainloop] discarded 0 singletons
[M::bam2fq_mainloop] processed 5570214 reads

# control 2
samtools collate --threads 8 -u -O /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074077/pseudoalignments.bam | samtools fastq -f 5 -f 9 -1 /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074077/SRR5074077_unmapped_pair1.fq.gz -2 /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074077/SRR5074077_unmapped_pair2.fq.gz

[M::bam2fq_mainloop] discarded 0 singletons
[M::bam2fq_mainloop] processed 4698298 reads

# knockout 1

samtools collate --threads 8 -u -O /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074186/pseudoalignments.bam | samtools fastq -f 5 -f 9 -1 /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074186/SRR5074186_unmapped_pair1.fq.gz -2 /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074186/SRR5074186_unmapped_pair2.fq.gz

[M::bam2fq_mainloop] discarded 0 singletons
[M::bam2fq_mainloop] processed 9861498 reads

# knockout 2

samtools collate --threads 8 -u -O /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074121/pseudoalignments.bam | samtools fastq -f 5 -f 9 -1 /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074121/SRR5074121_unmapped_pair1.fq.gz -2 /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074121/SRR5074121_unmapped_pair2.fq.gz

[M::bam2fq_mainloop] discarded 0 singletons
[M::bam2fq_mainloop] processed 8140134 reads

# check unmapped traditional alignment for all samples and visualise on IGV (paper uses mm9/grcm37)

# control 1
~/STAR-2.7.9a/bin/Linux_x86_64/STAR --runThreadN 12 --genomeDir /mnt/gtklab01/linglab/mmusculus_annotation_files/STARv2.7.9a_index_mmusculus_gencode.vM27 --readFilesIn /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074051/SRR5074051_unmapped_pair1.fq.gz /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074051/SRR5074051_unmapped_pair2.fq.gz --readFilesCommand zcat --outFileNamePrefix /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074051/SRR5074051_ctr1_unmapped_aligned_ --outSAMtype BAM SortedByCoordinate --outSAMattributes Standard --outSAMunmapped Within

# control 2
~/STAR-2.7.9a/bin/Linux_x86_64/STAR --runThreadN 12 --genomeDir /mnt/gtklab01/linglab/mmusculus_annotation_files/STARv2.7.9a_index_mmusculus_gencode.vM27 --readFilesIn /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074077/SRR5074077_unmapped_pair1.fq.gz /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074077/SRR5074077_unmapped_pair2.fq.gz --readFilesCommand zcat --outFileNamePrefix /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074077/SRR5074077_ctr2_unmapped_aligned_ --outSAMtype BAM SortedByCoordinate --outSAMattributes Standard --outSAMunmapped Within

# knockout 1
~/STAR-2.7.9a/bin/Linux_x86_64/STAR --runThreadN 12 --genomeDir /mnt/gtklab01/linglab/mmusculus_annotation_files/STARv2.7.9a_index_mmusculus_gencode.vM27 --readFilesIn /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074186/SRR5074186_unmapped_pair1.fq.gz /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074186/SRR5074186_unmapped_pair2.fq.gz --readFilesCommand zcat --outFileNamePrefix /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074186/SRR5074186_cko1_unmapped_aligned_ --outSAMtype BAM SortedByCoordinate --outSAMattributes Standard --outSAMunmapped Within

# knockout 2
~/STAR-2.7.9a/bin/Linux_x86_64/STAR --runThreadN 12 --genomeDir /mnt/gtklab01/linglab/mmusculus_annotation_files/STARv2.7.9a_index_mmusculus_gencode.vM27 --readFilesIn /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074121/SRR5074121_unmapped_pair1.fq.gz /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074121/SRR5074121_unmapped_pair2.fq.gz --readFilesCommand zcat --outFileNamePrefix /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074121/SRR5074121_cko1_unmapped_aligned_ --outSAMtype BAM SortedByCoordinate --outSAMattributes Standard --outSAMunmapped Within

# check library preparation strand
# https://github.com/betsig/how_are_we_stranded_here
check_strandedness --gtf /mnt/gtklab01/linglab/mmusculus_annotation_files/gencode.vM27.primary_assembly.annotation.gtf --transcripts /mnt/gtklab01/linglab/mmusculus_annotation_files/gencode.vM27.transcripts.fa --reads_1 /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074051/SRR5074051_1.fastq.gz --reads_2 /mnt/gtklab01/yongshan/project/12oct_jeong/SRR5074051/SRR5074051_2.fastq.gz

checking strandedness
Reading reference gene model stranded_test_SRR5074051_1/gencode.vM27.primary_assembly.annotation.bed ... Done
Loading SAM/BAM file ...  Total 200000 usable reads were sampled
This is PairEnd Data
Fraction of reads failed to determine: 0.1411
Fraction of reads explained by "1++,1--,2+-,2-+": 0.4267 (49.7% of explainable reads)
Fraction of reads explained by "1+-,1-+,2++,2--": 0.4321 (50.3% of explainable reads)
Under 60% of reads explained by one direction
Data is likely unstranded

# sailfish quant
# possible unstranded protocols: IU, OU, MU (https://sailfish.readthedocs.io/_/downloads/en/develop/pdf/)

/mnt/gtklab01/yongshan/project/SailfishBeta-0.10.0_CentOS5/bin/sailfish quant -l IU -i /mnt/gtklab01/yongshan/project/21sept_scn/sailfish_idx -1 <(gunzip -c /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074051/SRR5074051_unmapped_pair1.fq.gz) -2 <(gunzip -c /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074051/SRR5074051_unmapped_pair2.fq.gz) -o /mnt/gtklab01/yongshan/project/12oct_jeong/results/sailfish_out/SRR5074051

/mnt/gtklab01/yongshan/project/SailfishBeta-0.10.0_CentOS5/bin/sailfish quant -l IU -i /mnt/gtklab01/yongshan/project/21sept_scn/sailfish_idx -1 <(gunzip -c /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074077/SRR5074077_unmapped_pair1.fq.gz) -2 <(gunzip -c /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074077/SRR5074077_unmapped_pair2.fq.gz) -o /mnt/gtklab01/yongshan/project/12oct_jeong/results/sailfish_out/SRR5074077

/mnt/gtklab01/yongshan/project/SailfishBeta-0.10.0_CentOS5/bin/sailfish quant -l IU -i /mnt/gtklab01/yongshan/project/21sept_scn/sailfish_idx -1 <(gunzip -c /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074121/SRR5074121_unmapped_pair1.fq.gz) -2 <(gunzip -c /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074121/SRR5074121_unmapped_pair2.fq.gz) -o /mnt/gtklab01/yongshan/project/12oct_jeong/results/sailfish_out/SRR5074121

/mnt/gtklab01/yongshan/project/SailfishBeta-0.10.0_CentOS5/bin/sailfish quant -l IU -i /mnt/gtklab01/yongshan/project/21sept_scn/sailfish_idx -1 <(gunzip -c /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074186/SRR5074186_unmapped_pair1.fq.gz) -2 <(gunzip -c /mnt/gtklab01/yongshan/project/12oct_jeong/results/SRR5074186/SRR5074186_unmapped_pair2.fq.gz) -o /mnt/gtklab01/yongshan/project/12oct_jeong/results/sailfish_out/SRR5074186

# run python script (extract_transcripts_with_counts.py) that takes in a quant.sf file and extracts all transcripts with counts > 0, then sorts them in descending order according to TPM or Readcounts
python3 extract_transcripts_with_counts.py ./quant.sf ./outputTPM ./outputCounts
