#! /bin/bash

epsilonarray=(0.1)
fractionarray=(0.1)

actiontime=1

python_name="twocap3d.py"

maxiter=500000

rhoarray=(1.00001)

gammaarray=(8.0)
Acaparray=(0.1 0.2 0.3 0.4 0.5 0.55 0.6 0.65 0.7 0.75 0.8)
A1caparray=(0.5 0.6 0.7)
A2caparray=(0.5 0.6 0.7)


for epsilon in ${epsilonarray[@]}; do
    for fraction in "${fractionarray[@]}"; do
        for rho in "${rhoarray[@]}"; do
            for gamma in "${gammaarray[@]}"; do
                for A1cap in "${Acaparray[@]}"; do
                    # for A2cap in "${Acaparray[@]}"; do
                        count=0

                        action_name="TwoCapital_small_grid_Acap"

                        dataname="${action_name}_${epsilon}_frac_${fraction}"

                        mkdir -p ./job-outs/${action_name}/eps_${epsilon}_frac_${fraction}/

                        if [ -f ./bash/${action_name}/eps_${epsilon}_frac_${fraction}/rho_${rho}_gamma_${gamma}_Acap_${A1cap}.sh ]; then
                            rm ./bash/${action_name}/eps_${epsilon}_frac_${fraction}/rho_${rho}_gamma_${gamma}_Acap_${A1cap}.sh
                        fi

                        mkdir -p ./bash/${action_name}/eps_${epsilon}_frac_${fraction}/

                        touch ./bash/${action_name}/eps_${epsilon}_frac_${fraction}/rho_${rho}_gamma_${gamma}_Acap_${A1cap}.sh

                        tee -a ./bash/${action_name}/eps_${epsilon}_frac_${fraction}/rho_${rho}_gamma_${gamma}_Acap_${A1cap}.sh <<EOF
#! /bin/bash

######## login
#SBATCH --job-name=${A1cap}_${rho}_${gamma}
#SBATCH --output=./job-outs/${action_name}/eps_${epsilon}_frac_${fraction}/rho_${rho}_gamma_${gamma}_Acap_${A1cap}.out
#SBATCH --error=./job-outs/${action_name}/eps_${epsilon}_frac_${fraction}/rho_${rho}_gamma_${gamma}_Acap_${A1cap}.err

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

python3 -u /project/lhansen/CTU/$python_name  --rho ${rho} --gamma ${gamma}  --epsilon ${epsilon}  --fraction ${fraction}   --maxiter ${maxiter} --dataname ${dataname} --figname ${dataname}
echo "Program ends \$(date)"
end_time=\$(date +%s)

# elapsed time with second resolution
elapsed=\$((end_time - start_time))

eval "echo Elapsed time: \$(date -ud "@\$elapsed" +'\$((%s/3600/24)) days %H hr %M min %S sec')"

EOF
                        count=$(($count + 1))
                        sbatch ./bash/${action_name}/eps_${epsilon}_frac_${fraction}/rho_${rho}_gamma_${gamma}_Acap_${A1cap}.sh
                    # done
                done
            done
        done
    done
done
