#!/usr/bin/env Rscript --vanilla
# usage: Rscript transcript_to_gene.r <path_to_cDNA_file> <path_to_outputTPM> <path_to_outputCounts> <path_to_outputTPM_withgenes> <path_to_outputCounts_withgenes> <path_to_outputTPM_genes_only> <path_to_outputCounts_genes_only>


args <- commandArgs(trailingOnly=TRUE)

cDNA_file <- args[1]
sailfish_file_TPM <- args[2]
sailfish_file_Counts <- args[3]
output_TPM <- args[4]
output_Counts <- args[5]
output_TPM_only_genes <- args[6]
output_Counts_only_genes <- args[7]

library(BUSpaRse)

transcript_to_gene <- function(sailfish_file, tr2g_df) {
	transcripts <- read.table(sailfish_file,header=TRUE)
	transcripts_with_genes <- merge(transcripts, tr2g_df, by.x = "Name", by.y = "transcript",sort=FALSE)
	return(transcripts_with_genes)
}

tr2g_fa <- tr2g_fasta(file = cDNA_file, write_tr2g = FALSE, save_filtered = FALSE)

write.table(transcript_to_gene(sailfish_file_TPM, tr2g_fa), file = output_TPM, row.names=FALSE, quote=FALSE, sep="\t")
write.table(transcript_to_gene(sailfish_file_Counts, tr2g_fa), file = output_Counts, row.names=FALSE, quote=FALSE, sep="\t")

get_genes <- function(outputfile) {
    transcripts <- read.table(outputfile,header=TRUE)
	genes <- transcripts$gene_name
	return(genes)
}

write.table(get_genes(output_TPM), file = args[6], row.names=FALSE, quote=FALSE, col.names=FALSE,sep="\t")
write.table(get_genes(output_Counts), file = args[7], row.names=FALSE, quote=FALSE,col.names=FALSE, sep="\t")