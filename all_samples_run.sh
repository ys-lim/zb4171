kallisto index -k 31 -i ~/zb4171_project/21sept/Mus_musculus.GRCm39.cdna.all.fa.gz.kali ~/zb4171_project/Mus_musculus.GRCm39.cdna.all.fa.gz

#[build] loading fasta file /mnt/cbis/home/yongshan/zb4171_project/Mus_musculus.GRCm39.cdna.all.fa.gz
#[build] k-mer length: 31
#[build] warning: clipped off poly-A tail (longer than 10)
#        from 647 target sequences
#[build] counting k-mers ... done.
#[build] building target de Bruijn graph ...  done
#[build] creating equivalence classes ...  done
#[build] target de Bruijn graph has 736005 contigs and contains 100957825 k-mers

# controls
# 2743 ctr1
kallisto quant -i ~/zb4171_project/21sept/Mus_musculus.GRCm39.cdna.all.fa.gz.kali -t 8 -o ~/zb4171_project/21sept/2743_ctr1 /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2743_1.fq.gz /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2743_2.fq.gz  --pseudobam

#[quant] fragment length distribution will be estimated from the data
#[index] k-mer length: 31
#[index] number of targets: 117,486
#[index] number of k-mers: 100,957,825
#[index] number of equivalence classes: 431,916
#[quant] running in paired-end mode
#[quant] will process pair 1: /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2743_1.fq.gz
#                             /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2743_2.fq.gz
#[quant] finding pseudoalignments for the reads ... done
#[quant] processed 39,083,807 reads, 33,546,465 reads pseudoaligned
#[quant] estimated average fragment length: 249.694
#[   em] quantifying the abundances ... done
#[   em] the Expectation-Maximization algorithm ran for 1,305 rounds
#[  bam] writing pseudoalignments to BAM format .. done

# 2746 ctr2
kallisto quant -i ~/zb4171_project/21sept/Mus_musculus.GRCm39.cdna.all.fa.gz.kali -t 8 -o ~/zb4171_project/21sept/2746_ctr2 /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2746_1.fq.gz /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2746_2.fq.gz  --pseudobam

#[quant] fragment length distribution will be estimated from the data
#[index] k-mer length: 31
#[index] number of targets: 117,486
#[index] number of k-mers: 100,957,825
#[index] number of equivalence classes: 431,916
#[quant] running in paired-end mode
#[quant] will process pair 1: /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2746_1.fq.gz
#                             /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2746_2.fq.gz
#[quant] finding pseudoalignments for the reads ... done
#[quant] processed 34,005,588 reads, 29,349,446 reads pseudoaligned
#[quant] estimated average fragment length: 262.14
#[   em] quantifying the abundances ... done
#[   em] the Expectation-Maximization algorithm ran for 1,200 rounds
#[  bam] writing pseudoalignments to BAM format .. done

# 2754 ctr3
kallisto quant -i ~/zb4171_project/21sept/Mus_musculus.GRCm39.cdna.all.fa.gz.kali -t 8 -o ~/zb4171_project/21sept/2754_ctr3 /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2754_1.fq.gz /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2754_2.fq.gz  --pseudobam

#[quant] fragment length distribution will be estimated from the data
#[index] k-mer length: 31
#[index] number of targets: 117,486
#[index] number of k-mers: 100,957,825
#[index] number of equivalence classes: 431,916
#[quant] running in paired-end mode
#[quant] will process pair 1: /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2754_1.fq.gz
#                             /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2754_2.fq.gz
#[quant] finding pseudoalignments for the reads ... done
#[quant] processed 41,731,348 reads, 35,866,901 reads pseudoaligned
#[quant] estimated average fragment length: 245.39
#[   em] quantifying the abundances ... done
#[   em] the Expectation-Maximization algorithm ran for 1,319 rounds
#[  bam] writing pseudoalignments to BAM format .. done

# cKO
# 2744 cko1
kallisto quant -i ~/zb4171_project/21sept/Mus_musculus.GRCm39.cdna.all.fa.gz.kali -t 8 -o ~/zb4171_project/21sept/2744_cko1 /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2744_1.fq.gz /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2744_2.fq.gz  --pseudobam

#[quant] fragment length distribution will be estimated from the data
#[index] k-mer length: 31
#[index] number of targets: 117,486
#[index] number of k-mers: 100,957,825
#[index] number of equivalence classes: 431,916
#[quant] running in paired-end mode
#[quant] will process pair 1: /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2744_1.fq.gz
#                             /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2744_2.fq.gz
#[quant] finding pseudoalignments for the reads ... done
#[quant] processed 41,882,349 reads, 35,690,242 reads pseudoaligned
#[quant] estimated average fragment length: 243.721
#[   em] quantifying the abundances ... done
#[   em] the Expectation-Maximization algorithm ran for 1,162 rounds
#[  bam] writing pseudoalignments to BAM format .. done

# 2747 cko2
kallisto quant -i ~/zb4171_project/21sept/Mus_musculus.GRCm39.cdna.all.fa.gz.kali -t 8 -o ~/zb4171_project/21sept/2747_cko2 /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2747_1.fq.gz /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2747_2.fq.gz  --pseudobam

#[quant] fragment length distribution will be estimated from the data
#[index] k-mer length: 31
#[index] number of targets: 117,486
#[index] number of k-mers: 100,957,825
#[index] number of equivalence classes: 431,916
#[quant] running in paired-end mode
#[quant] will process pair 1: /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2747_1.fq.gz
#                             /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2747_2.fq.gz
#[quant] finding pseudoalignments for the reads ... done
#[quant] processed 42,451,181 reads, 36,774,567 reads pseudoaligned
#[quant] estimated average fragment length: 268.013
#[   em] quantifying the abundances ... done
#[   em] the Expectation-Maximization algorithm ran for 1,281 rounds
#[  bam] writing pseudoalignments to BAM format .. done

# 2748 cko3
kallisto quant -i ~/zb4171_project/21sept/Mus_musculus.GRCm39.cdna.all.fa.gz.kali -t 8 -o ~/zb4171_project/21sept/2748_cko3 /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2748_1.fq.gz /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2748_2.fq.gz  --pseudobam

#[quant] fragment length distribution will be estimated from the data
#[index] k-mer length: 31
#[index] number of targets: 117,486
#[index] number of k-mers: 100,957,825
#[index] number of equivalence classes: 431,916
#[quant] running in paired-end mode
#[quant] will process pair 1: /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2748_1.fq.gz
#                             /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2748_2.fq.gz
#[quant] finding pseudoalignments for the reads ... done
#[quant] processed 35,522,755 reads, 30,545,937 reads pseudoaligned
#[quant] estimated average fragment length: 246.902
#[   em] quantifying the abundances ... done
#[   em] the Expectation-Maximization algorithm ran for 1,081 rounds
#[  bam] writing pseudoalignments to BAM format .. done


# Filter unmapped reads and BAM to fastq conversion
# 5: 
# 9: 
# 69: 
# 133:
# 73:
# 137:

# 2743 ctr1: 5 and 9 includes all the bigger numbers too. eg 5 and 9 includes 77 and 141
samtools collate -u -O pseudoalignments.bam | samtools fastq -f 5 -f 9 -1 2743_pair1.fq.gz -2 2743_pair2.fq.gz

#[M::bam2fq_mainloop] discarded 0 singletons
#[M::bam2fq_mainloop] processed 11074684 reads

# 2746 ctr2
samtools collate --threads 4 -u -O ~/zb4171_project/21sept/2746_ctr2/pseudoalignments.bam | samtools fastq -f 5 -f 9 -1 ~/zb4171_project/21sept/2746_ctr2/2746_pair1.fq.gz -2 ~/zb4171_project/21sept/2746_ctr2/2746_pair2.fq.gz
# 2754 ctr3
samtools collate --threads 4 -u -O ~/zb4171_project/21sept/2754_ctr3/pseudoalignments.bam | samtools fastq -f 5 -f 9 -1 ~/zb4171_project/21sept/2754_ctr3/2754_pair1.fq.gz -2 ~/zb4171_project/21sept/2754_ctr3/2754_pair2.fq.gz

# 2744 cko1
samtools collate --threads 4 -u -O ~/zb4171_project/21sept/2744_cko1/pseudoalignments.bam | samtools fastq -f 5 -f 9 -1 ~/zb4171_project/21sept/2744_cko1/2744_pair1.fq.gz -2 ~/zb4171_project/21sept/2744_cko1/2744_pair2.fq.gz

# 2747 cko2
samtools collate --threads 4 -u -O ~/zb4171_project/21sept/2747_cko2/pseudoalignments.bam | samtools fastq -f 5 -f 9 -1 ~/zb4171_project/21sept/2747_cko2/2747_pair1.fq.gz -2 ~/zb4171_project/21sept/2747_cko2/2747_pair2.fq.gz

# 2748 cko3
samtools collate --threads 4 -u -O ~/zb4171_project/21sept/2748_cko3/pseudoalignments.bam | samtools fastq -f 5 -f 9 -1 ~/zb4171_project/21sept/2748_cko3/2748_pair1.fq.gz -2 ~/zb4171_project/21sept/2748_cko3/2748_pair2.fq.gz

#[M::bam2fq_mainloop] discarded 0 singletons
#[M::bam2fq_mainloop] processed 9953636 read

# sailfish index
~/zb4171_project/SailfishBeta-0.10.0_CentOS5/bin/sailfish index -p 12 -t <(gunzip -c ~/zb4171_project/Mus_musculus.GRCm39.cdna.all.fa.gz) -o ~/zb4171_project/21sept/sailfish_idx -k 31

Version Info: Could not resolve upgrade information in the alotted time.
Check for upgrades manually at www.cs.cmu.edu/~ckingsf/sailfish.
writing log to /mnt/cbis/home/yongshan/zb4171_project/21sept/sailfish_idx/logs/sailfish_index.log
RapMap Indexer

[Step 1 of 4] : counting k-mers
counted k-mers for 110000 transcriptsElapsed time: 4.46679s

Replaced 0 non-ATCG nucleotides
Clipped poly-A tails from 647 transcripts
Building rank-select dictionary and saving to disk done
Elapsed time: 0.0282141s
Writing sequence data to file . . . done
Elapsed time: 0.233766s
[info] Building 32-bit suffix array (length of generalized text is 215801764)
Building suffix array . . . success
saving to disk . . . done
Elapsed time: 0.816996s
done
Elapsed time: 33.1048s
processed 215000000 positions
khash had 101781271 keys
saving hash to disk . . . done
Elapsed time: 7.04669s

# 2743 ctr1
~/zb4171_project/SailfishBeta-0.10.0_CentOS5/bin/sailfish quant -l ISR -i ~/zb4171_project/21sept/sailfish_idx -1 <(gunzip -c ~/zb4171_project/21sept/2743_ctr1/2743_pair1.fq.gz) -2 <(gunzip -c ~/zb4171_project/21sept/2743_ctr1/2743_pair2.fq.gz) -o ~/zb4171_project/21sept/sailfish_out/2743_ctr1

# 2746 ctr2
~/zb4171_project/SailfishBeta-0.10.0_CentOS5/bin/sailfish quant -l ISR -i ~/zb4171_project/21sept/sailfish_idx -1 <(gunzip -c ~/zb4171_project/21sept/2746_ctr2/2746_pair1.fq.gz) -2 <(gunzip -c ~/zb4171_project/21sept/2746_ctr2/2746_pair2.fq.gz) -o ~/zb4171_project/21sept/sailfish_out/2746_ctr2

# 2754 ctr3
~/zb4171_project/SailfishBeta-0.10.0_CentOS5/bin/sailfish quant -l ISR -i ~/zb4171_project/21sept/sailfish_idx -1 <(gunzip -c ~/zb4171_project/21sept/2754_ctr3/2754_pair1.fq.gz) -2 <(gunzip -c ~/zb4171_project/21sept/2754_ctr3/2754_pair2.fq.gz) -o ~/zb4171_project/21sept/sailfish_out/2754_ctr3

# 2744 cko1
~/zb4171_project/SailfishBeta-0.10.0_CentOS5/bin/sailfish quant -l ISR -i ~/zb4171_project/21sept/sailfish_idx -1 <(gunzip -c ~/zb4171_project/21sept/2744_cko1/2744_pair1.fq.gz) -2 <(gunzip -c ~/zb4171_project/21sept/2744_cko1/2744_pair2.fq.gz) -o ~/zb4171_project/21sept/sailfish_out/2744_cko1

# 2747 cko2
~/zb4171_project/SailfishBeta-0.10.0_CentOS5/bin/sailfish quant -l ISR -i ~/zb4171_project/21sept/sailfish_idx -1 <(gunzip -c ~/zb4171_project/21sept/2747_cko2/2747_pair1.fq.gz) -2 <(gunzip -c ~/zb4171_project/21sept/2747_cko2/2747_pair2.fq.gz) -o ~/zb4171_project/21sept/sailfish_out/2747_cko2

# 2748 cko3
~/zb4171_project/SailfishBeta-0.10.0_CentOS5/bin/sailfish quant -l ISR -i ~/zb4171_project/21sept/sailfish_idx -1 <(gunzip -c ~/zb4171_project/21sept/2748_cko3/2748_pair1.fq.gz) -2 <(gunzip -c ~/zb4171_project/21sept/2748_cko3/2748_pair2.fq.gz) -o ~/zb4171_project/21sept/sailfish_out/2748_cko3


cat ~/zb4171_project/21sept/sailfish_out/2743_ctr1/quant.sf | grep -e ENSMUST00000094569.11 -e ENSMUST00000043189.14 -e ENSMUST00000163770.8 -e ENSMUST00000187861.7 -e ENSMUST00000186389.7 -e ENSMUST00000188307.2 -e ENSMUST00000189219.2 -e ENSMUST00000186330.2 -e ENSMUST00000191294.2 -e ENSMUST00000186539.2

ENSMUST00000094569.11   9739    9483.83 113.122 35
ENSMUST00000043189.14   5072    4816.83 0       0
ENSMUST00000187861.7    4927    4671.83 0       0
ENSMUST00000163770.8    3903    3647.83 0       0
ENSMUST00000186389.7    3476    3220.83 0       0
ENSMUST00000186330.2    172     172     0       0
ENSMUST00000188307.2    3049    2793.83 0       0
ENSMUST00000186539.2    750     494.828 0       0
ENSMUST00000191294.2    3314    3058.83 0       0
ENSMUST00000189219.2    326     74.2305 0       0


cat ~/zb4171_project/21sept/sailfish_out/2746_ctr2/quant.sf | grep -e ENSMUST00000094569.11 -e ENSMUST00000043189.14 -e ENSMUST00000163770.8 -e ENSMUST00000187861.7 -e ENSMUST00000186389.7 -e ENSMUST00000188307.2 -e ENSMUST00000189219.2 -e ENSMUST00000186330.2 -e ENSMUST00000191294.2 -e ENSMUST00000186539.2

ENSMUST00000094569.11   9739    9470.59 147.6   41
ENSMUST00000043189.14   5072    4803.59 0       0
ENSMUST00000187861.7    4927    4658.59 0       0
ENSMUST00000163770.8    3903    3634.59 0       0
ENSMUST00000186389.7    3476    3207.59 0       0
ENSMUST00000186330.2    172     172     0       0
ENSMUST00000188307.2    3049    2780.59 0       0
ENSMUST00000186539.2    750     481.651 0       0
ENSMUST00000191294.2    3314    3045.59 0       0
ENSMUST00000189219.2    326     63.2052 0       0

cat ~/zb4171_project/21sept/sailfish_out/2754_ctr3/quant.sf | grep -e ENSMUST00000094569.11 -e ENSMUST00000043189.14 -e ENSMUST00000163770.8 -e ENSMUST00000187861.7 -e ENSMUST00000186389.7 -e ENSMUST00000188307.2 -e ENSMUST00000189219.2 -e ENSMUST00000186330.2 -e ENSMUST00000191294.2 -e ENSMUST00000186539.2

ENSMUST00000094569.11   9739    9483.56 155.067 45
ENSMUST00000043189.14   5072    4816.56 0       0
ENSMUST00000187861.7    4927    4671.56 0       0
ENSMUST00000163770.8    3903    3647.56 0       0
ENSMUST00000186389.7    3476    3220.56 0       0
ENSMUST00000186330.2    172     172     379.997 2
ENSMUST00000188307.2    3049    2793.56 0       0
ENSMUST00000186539.2    750     494.637 0       0
ENSMUST00000191294.2    3314    3058.56 0       0
ENSMUST00000189219.2    326     74.7715 0       0

cat ~/zb4171_project/21sept/sailfish_out/2744_cko1/quant.sf | grep -e ENSMUST00000094569.11 -e ENSMUST00000043189.14 -e ENSMUST00000163770.8 -e ENSMUST00000187861.7 -e ENSMUST00000186389.7 -e ENSMUST00000188307.2 -e ENSMUST00000189219.2 -e ENSMUST00000186330.2 -e ENSMUST00000191294.2 -e ENSMUST00000186539.2

ENSMUST00000094569.11   9739    9488.51 146.344 48.2226
ENSMUST00000043189.14   5072    4821.51 0       0
ENSMUST00000187861.7    4927    4676.51 0       0
ENSMUST00000163770.8    3903    3652.51 0       0
ENSMUST00000186389.7    3476    3225.51 0       0
ENSMUST00000186330.2    172     172     0       0
ENSMUST00000188307.2    3049    2798.51 18.2883 1.77737
ENSMUST00000186539.2    750     499.543 0       0
ENSMUST00000191294.2    3314    3063.51 0       0
ENSMUST00000189219.2    326     78.385  0       0

cat ~/zb4171_project/21sept/sailfish_out/2747_cko2/quant.sf | grep -e ENSMUST00000094569.11 -e ENSMUST00000043189.14 -e ENSMUST00000163770.8 -e ENSMUST00000187861.7 -e ENSMUST00000186389.7 -e ENSMUST00000188307.2 -e ENSMUST00000189219.2 -e ENSMUST00000186330.2 -e ENSMUST00000191294.2 -e ENSMUST00000186539.2

ENSMUST00000094569.11   9739    9465.7  95.2015 37.7055
ENSMUST00000043189.14   5072    4798.7  0       0
ENSMUST00000187861.7    4927    4653.7  0       0
ENSMUST00000163770.8    3903    3629.7  0       0
ENSMUST00000186389.7    3476    3202.7  0       0
ENSMUST00000186330.2    172     172     0       0
ENSMUST00000188307.2    3049    2775.7  0       0
ENSMUST00000186539.2    750     476.707 0       0
ENSMUST00000191294.2    3314    3040.7  7.85992 1
ENSMUST00000189219.2    326     59.1178 0       0


cat ~/zb4171_project/21sept/sailfish_out/2748_cko3/quant.sf | grep -e ENSMUST00000094569.11 -e ENSMUST00000043189.14 -e ENSMUST00000163770.8 -e ENSMUST00000187861.7 -e ENSMUST00000186389.7 -e ENSMUST00000188307.2 -e ENSMUST00000189219.2 -e ENSMUST00000186330.2 -e ENSMUST00000191294.2 -e ENSMUST00000186539.2

ENSMUST00000094569.11   9739    9486.2  90.6579 28.8072
ENSMUST00000043189.14   5072    4819.2  0       0
ENSMUST00000187861.7    4927    4674.2  0       0
ENSMUST00000163770.8    3903    3650.2  0       0
ENSMUST00000186389.7    3476    3223.2  0       0
ENSMUST00000186330.2    172     172     0       0
ENSMUST00000188307.2    3049    2796.2  0       0
ENSMUST00000186539.2    750     497.263 0       0
ENSMUST00000191294.2    3314    3061.2  0       0
ENSMUST00000189219.2    326     76.2062 0       0


