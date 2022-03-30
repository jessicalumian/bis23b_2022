SAMPLES, = glob_wildcards('input/{sample}.fastq.gz')
print(SAMPLES)

rule all:
    input: expand("output/{sample}_fastqc.html", sample=SAMPLES)

rule make_fastqc:
    conda: "envs/fastqc.yml"
    input: "input/{sample}.fastq.gz"
    output: "output/{sample}_fastqc.html"
    shell: "fastqc {input} -o output"
