SAMPLES, = glob_wildcards('reads/{sample}.fastq.gz')
print(SAMPLES)

rule all:
    input: expand("output/{sample}_fastqc.html", sample=SAMPLES)

rule make_fastqc:
    input: "reads/{sample}.fastq.gz"
    output: "output/{sample}_fastqc.html"
    shell: "fastqc {input} -o output"
