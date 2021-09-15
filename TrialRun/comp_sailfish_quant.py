import sys

def comp_quants(q1, q2, file):
    """Compares TPM of each transcript in two sailfish quant outputs q1 and q2
    Assumes the same transcriptome ref is used, as such col i of both files 
    point to the same transcript. 
    """
    header = "Name\tLength\tEffectiveLength\tTPMKO\tNumReadKO\tTPMCtrl\tNumReadsCtrl\tDiff\n"
    eff_quants = []

    with open(q1, "r") as q1:
        with open(q2, "r") as q2:
            next(q1)
            next(q2)
            for q1_line in q1:
                q2_line = next(q2).strip().split("\t")
                q1_line = q1_line.strip().split("\t")

                # Assert same transcript
                assert q1_line[0] == q2_line[0], "Different transcripts"

                if float(q1_line[3]) > 0 or float(q2_line[3]) > 0:
                    dif = float(q1_line[3]) - float(q2_line[3])
                    eff_quants.append(q1_line + q2_line[3:] + [dif])
    eff_quants.sort(key=lambda x:x[-1], reverse=True)
    with open(file, "w") as f:
        f.write(header)
        for line in eff_quants:
            f.write("\t".join(list(map(str, line))) + "\n")
    print("Done...")


if __name__ == "__main__":
    q1 = sys.argv[1]
    q2 = sys.argv[2]
    file_name = sys.argv[3]
    comp_quants(q1, q2, file_name)