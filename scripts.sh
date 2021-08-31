# sciatic nerve cKO sample pseudoalignment
# transcriptome: ~/zb4171_project/Mus_musculus.GRCm39.cdna.all.fa.gz

wget http://ftp.ensembl.org/pub/release-104/fasta/mus_musculus/cdna/Mus_musculus.GRCm39.cdna.all.fa.gz

# Build kallisto index

kallisto index -k 31 -i Mus_musculus.GRCm39.cdna.all.fa.gz.kali ~/zb4171_project/Mus_musculus.GRCm39.cdna.all.fa.gz
# [build] target de Bruijn graph has 736005 contigs and contains 100957825 k-mers

# Kallisto quant on sciatic nerve cKO sample 2744
kallisto quant -i ~/zb4171_project/Mus_musculus.GRCm39.cdna.all.fa.gz.kali -o ~/zb4171_project/Floxed_TDP43_2744_kallisto.out --fusion /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2744_1.fq.gz /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2744_2.fq.gz

#[index] k-mer length: 31
#[index] number of targets: 117,486
#[index] number of k-mers: 100,957,825

## 250,582 reads in fusion text file

####### IGNORE THIS PART ABOUT SALMON ##############
# salmon index
~/zb4171_project/salmon-1.5.2_linux_x86_64/bin/salmon index -t ~/zb4171_project/Mus_musculus.GRCm39.cdna.all.fa.gz -i ~/zb4171_project/salmon/index

#python3 faSomeRecords.py --fasta /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2744_1.fq.gz --list sequences.list

# fq.gz to fa
gunzip -c /mnt/gtklab01/ira/tdp43_cnp_scn_21d/raw_reads/Floxed_TDP43_2744_1.fq.gz | awk '{if(NR%4==1) {printf(">%s\n",substr($0,2));} else if(NR%4==2) print;}' > ~/zb4171_project/Floxed_TDP43_2744_1.fa

@ST-E00192:1021:H7KHCCCX2:7:1101:28869:1573 1:N:0:NAGTTCCT
@ST-E00192:1021:H7KHCCCX2:7:1101:22242:1590 1:N:0:NAGTTCCT
@ST-E00192:1021:H7KHCCCX2:7:1101:23328:1678 1:N:0:NAGTTCCT
@ST-E00192:1021:H7KHCCCX2:7:1101:20638:1731 1:N:0:NAGTTCCT
@ST-E00192:1021:H7KHCCCX2:7:1101:24150:1731 1:N:0:NAGTTCCT
@ST-E00192:1021:H7KHCCCX2:7:1101:15371:1749 1:N:0:NAGTTCCT
####################################################

# Trying sailfish
https://github.com/kingsfordgroup/sailfish/releases/tag/v0.10.0 #centos one
#tar -xvzf sailfish-0.10.0.tar.gz

# using fifo pipe
./sailfish index -t <(gunzip -c ~/zb4171_project/Mus_musculus.GRCm39.cdna.all.fa.gz) -o ~/zb4171_project/sailfish_output/

# sailfish quant
./sailfish -i ~/zb4171_project/sailfish_output/sailfish_index
