#! /bin/bash

######## login
#SBATCH --job-name=1.500_0.111
#SBATCH --output=./job-outs/OneCapital_small_grid/eps_0.1_frac_0.1/rho_1.500_ell_0.111.out
#SBATCH --error=./job-outs/OneCapital_small_grid/eps_0.1_frac_0.1/rho_1.500_ell_0.111.err

#SBATCH --account=pi-lhansen
#SBATCH --partition=caslake
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=12:00:00

####### load modules
module load python  gcc

echo "$SLURM_JOB_NAME"

echo "Program starts $(date)"
start_time=$(date +%s)
# perform a task

python3 -u /project/lhansen/CTU/singlecap.py  --rho 1.500 --ell 0.111 --epsilon 0.1  --fraction 0.1   --maxiter 3000000 --dataname OneCapital_small_grid_0.1_frac_0.1 --figname OneCapital_small_grid_0.1_frac_0.1
echo "Program ends $(date)"
end_time=$(date +%s)

# elapsed time with second resolution
elapsed=$((end_time - start_time))

eval "echo Elapsed time: $(date -ud "@$elapsed" +'$((%s/3600/24)) days %H hr %M min %S sec')"

