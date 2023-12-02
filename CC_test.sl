#!/bin/bash -l
#SBATCH --job-name=testDRAC
#SBATCH --account=def-sblain # adjust this to match the accounting group you are using to submit jobs
#SBATCH --time=0-00:10:00        # adjust this to match the walltime of your job (D-HH:MM:SS)
#SBATCH --nodes=1     
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4      # adjust this if you are using parallel commands
#SBATCH --mem=1000         # adjust this according to the memory requirement per node you need (this is MegaByte)
#SBATCH --mail-user=bibrahim@mun.ca
#SBATCH --mail-type=ALL

# Explain what to do
# Choose a version of MATLAB by loading a module:
module load matlab

# Create temporary job info location (this is not necessary for the test job but can be really helpful in other ocations)
mkdir -p /scratch/$USER/$SLURM_JOB_ID

# Run your script
srun matlab -nodisplay -r "CC_test"

# Cleanup (only needed when scratch directory was created earlier). Remove temporary scratch folder.
rm -rf /scratch/$USER/$SLURM_JOB_ID
