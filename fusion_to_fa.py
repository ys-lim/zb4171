import argparse
import sys

def format_seq(desc, seq):
    """Formats a pair of description and sequence into FASTA format
    """
    seqlines = [">" + desc + "\n"]
    while seq:
        seqlines.append(seq[:80] + "\n")
        seq = seq[80:]
    return seqlines


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Converts fusion.txt file from Kallisto into a pair of FASTA files"
    )

    # Separate parser for merge
    parser.add_argument(
        "fusion", 
        help="fusion.txt file from the output of Kallisto", 
        type=str
    )
    parser.add_argument(
        "-o",
        help="prefix of the output FASTA files. Will be joined with 1.fa / 2.fa",
        type=str,
        default="",
    )
    
    args = parser.parse_args(args=None if sys.argv[1:] else ["--help"])
    
    out1 = open(args.o + "1.fa", "w")
    out2 = open(args.o + "2.fa", "w")
    with open(args.fusion, "r") as f:
        header = f.readline().split()
        for line in f:
            line = line.split()
            out1.writelines(format_seq(line[1], line[2]))
            out2.writelines(format_seq(line[4], line[5]))
    out1.close()
    out2.close()
