#!/bin/bash

# Setting environment variables
NB_USER=$USER XDG_CACHE_HOME=$HOME/.cache
LSF_DOCKER_VOLUMES="/storage1/fs1/ghaller/Active/lloydt/:/storage1/fs1/ghaller/Active/lloydt/"
export LSF_DOCKER_VOLUMES

# Error log location
ERROR_LOG_LOC="/storage1/fs1/ghaller/Active/lloydt/LT2_Protein-Modeling/LSF_logs"
cd $ERROR_LOG_LOC

# Script location
JOB_SCRIPT_LOC="/storage1/fs1/ghaller/Active/lloydt/LT2_Protein-Modeling/scripts/LSF_RF2_job.bsub"

# Manifest Location
MANIFEST_LOC="/storage1/fs1/ghaller/Active/lloydt/LT2_Protein-Modeling/proteinFolds/SCGB_RF2_Manifest_rand.txt"
export MANIFEST_LOC

# Job ID range (i.e. 1-100)
#JOB_ID_RANGE="1-2"
JOB_ID_RANGE="101-200"

bsub -J RF2[$JOB_ID_RANGE] < $JOB_SCRIPT_LOC
