#!/bin/bash -l
#SBATCH --job-name=testDRAC
#SBATCH --account=def-sblain # adjust this to match the accounting group you are using to submit jobs
#SBATCH --time=0-00:10:00        # adjust this to match the walltime of your job (D-HH:MM:SS)
#SBATCH --nodes=1     
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1      # adjust this if you are using parallel commands
#SBATCH --mem=100         # adjust this according to the memory requirement per node you need (this is MegaByte)
#SBATCH --mail-user=bibrahim@mun.ca
#SBATCH --mail-type=ALL

# Choose a version of MATLAB by loading a module:
module load python/3.9
module load scipy-stack
source aperiodic_env/bin/activate

python python_test.py
