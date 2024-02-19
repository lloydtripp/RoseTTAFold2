# Previous Code
NB_USER=$USER XDG_CACHE_HOME=$HOME/.cache LSF_DOCKER_VOLUMES="/storage1/fs1/ghaller/Active/lloydt/:/storage1/fs1/ghaller/Active/lloydt/" bsub -G compute-ghaller -Is -R 'gpuhost rusage[mem=64GB]' -n 3 -gpu "num=1:gmodel=TeslaV100_SXM2_32GB" -q general-interactive -a "docker(lloydtripp/rf2:latest)" /bin/bash
# Activate environment
source activate RF2

# Running example codes
cd /storage1/fs1/ghaller/Active/lloydt/LT2_Protein-Modeling/proteinFolds/RF2_examples
# First example
../../RosettaFold2/run_RF2.sh rcsb_pdb_7UGF.fasta -o 7UGF
