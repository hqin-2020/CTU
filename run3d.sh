#! /bin/bash

epsilonarray=(0.1)
fractionarray=(0.1)

actiontime=1

python_name="twocap3d.py"

maxiter=500000

rhoarray=(1.00001 1.1)

gammaarray=(8.0)
for epsilon in ${epsilonarray[@]}; do
    for fraction in "${fractionarray[@]}"; do
        for rho in "${rhoarray[@]}"; do
            for gamma in "${gammaarray[@]}"; do
                count=0

                action_name="TwoCapital_small_grid"

                dataname="${action_name}_${epsilon}_frac_${fraction}"

                mkdir -p ./job-outs/${action_name}/eps_${epsilon}_frac_${fraction}/

                if [ -f ./bash/${action_name}/eps_${epsilon}_frac_${fraction}/rho_${rho}_gamma_${gamma}.sh ]; then
                    rm ./bash/${action_name}/eps_${epsilon}_frac_${fraction}/rho_${rho}_gamma_${gamma}.sh
                fi

                mkdir -p ./bash/${action_name}/eps_${epsilon}_frac_${fraction}/

                touch ./bash/${action_name}/eps_${epsilon}_frac_${fraction}/rho_${rho}_gamma_${gamma}.sh

                tee -a ./bash/${action_name}/eps_${epsilon}_frac_${fraction}/rho_${rho}_gamma_${gamma}.sh <<EOF
#! /bin/bash

######## login
#SBATCH --job-name=${rho}_${gamma}
#SBATCH --output=./job-outs/${action_name}/eps_${epsilon}_frac_${fraction}/rho_${rho}_gamma_${gamma}.out
#SBATCH --error=./job-outs/${action_name}/eps_${epsilon}_frac_${fraction}/rho_${rho}_gamma_${gamma}.err

#SBATCH --account=pi-lhansen
#SBATCH --partition=caslake
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=12:00:00

####### load modules
module load python  gcc

echo "\$SLURM_JOB_NAME"

echo "Program starts \$(date)"
start_time=\$(date +%s)
# perform a task

python3 -u /project/lhansen/CTU/$python_name  --rho ${rho} --gamma ${gamma} --epsilon ${epsilon}  --fraction ${fraction}   --maxiter ${maxiter} --dataname ${dataname} --figname ${dataname}
echo "Program ends \$(date)"
end_time=\$(date +%s)

# elapsed time with second resolution
elapsed=\$((end_time - start_time))

eval "echo Elapsed time: \$(date -ud "@\$elapsed" +'\$((%s/3600/24)) days %H hr %M min %S sec')"

EOF
                count=$(($count + 1))
                sbatch ./bash/${action_name}/eps_${epsilon}_frac_${fraction}/rho_${rho}_gamma_${gamma}.sh
            done
        done
    done
done
