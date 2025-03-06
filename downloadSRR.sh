#!/bin/bash

for SRR in $(cat SRRIDs.txt)
do
	prefetch $SRR -O /home/hice1/akrishna311/biol6150/ProjectSubmissions/Group18-AloHA/Project5\&6
	fasterq-dump $SRR -O /home/hice1/akrishna311/biol6150/ProjectSubmissions/Group18-AloHA/Project5\&6/fastq_files --split-files -e 32
done