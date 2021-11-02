# Usage: python3 extract_transcripts_with_counts.py ./quant.sf ./outputTPM ./outputCounts

import sys
import os

TPM_threshold = 30
readCount_threshold = 20

def sort_transcripts(col, transcripts, file):
	file.write("Name"+"\t"+"Length"+"\t"+"EffectiveLength"+"\t"+"TPM"+"\t"+"NumReads"+"\n")
	for line in sorted(transcripts, key = lambda line: float(line.split("\t")[col]), reverse=True):
		file.write(line)
	file.close()

inFile = sys.argv[1]
outFile1 = sys.argv[2]
outFile2 = sys.argv[3]

temp = open("temp","w")
output1 = open(outFile1, "w")
output2 = open(outFile2, "w")

with open(inFile, "r") as input:
	next(input)
	for entry in input:
		entry = entry.split("\t")
		if float(entry[3]) >= TPM_threshold and float(entry[4]) >= readCount_threshold:
			temp.write("\t".join(entry))
			
temp.close()

lines = open("temp", 'r').readlines()

sort_transcripts(3, lines, output1)
sort_transcripts(4, lines, output2)
os.system("rm temp")