#! /bin/bash

epsilonarray=(0.1) 
fractionarray=(0.1)
actiontime=1

python_name="plot.py"

maxiter=400000

rhoarray=(0.650 0.700 0.750 0.800 0.850 0.900 0.950 1.00001 1.050 1.100 1.150 1.200 1.250 1.300 1.350 1.400 1.450 1.500)
ellarray=(0.111)
for epsilon in ${epsilonarray[@]}; do
    for fraction in "${fractionarray[@]}"; do
        for rho in "${rhoarray[@]}"; do
            for ell in "${ellarray[@]}"; do
                count=0

                action_name="OneCapital_small_grid"

                dataname="${action_name}_${epsilon}_frac_${fraction}"
                
                mkdir -p ./job-outs/${action_name}/p_eps_${epsilon}_frac_${fraction}/

                if [ -f ./bash/${action_name}/p_eps_${epsilon}_frac_${fraction}/rho_${rho}_ell_${ell}.sh ]; then
                    rm ./bash/${action_name}/p_eps_${epsilon}_frac_${fraction}/rho_${rho}_ell_${ell}.sh
                fi

                mkdir -p ./bash/${action_name}/p_eps_${epsilon}_frac_${fraction}/

                touch ./bash/${action_name}/p_eps_${epsilon}_frac_${fraction}/rho_${rho}_ell_${ell}.sh

                tee -a ./bash/${action_name}/p_eps_${epsilon}_frac_${fraction}/rho_${rho}_ell_${ell}.sh <<EOF
#! /bin/bash

######## login
#SBATCH --job-name=${rho}_${ell}
#SBATCH --output=./job-outs/${action_name}/p_eps_${epsilon}_frac_${fraction}/rho_${rho}_ell_${ell}.out
#SBATCH --error=./job-outs/${action_name}/p_eps_${epsilon}_frac_${fraction}/rho_${rho}_ell_${ell}.err

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

python3 -u /project/lhansen/CTU/$python_name  --rho ${rho} --ell ${ell} --epsilon ${epsilon}  --fraction ${fraction}   --maxiter ${maxiter}  --dataname ${dataname} --figname ${dataname}
echo "Program ends \$(date)"
end_time=\$(date +%s)

# elapsed time with second resolution
elapsed=\$((end_time - start_time))

eval "echo Elapsed time: \$(date -ud "@\$elapsed" +'\$((%s/3600/24)) days %H hr %M min %S sec')"

EOF
                count=$(($count + 1))
                sbatch ./bash/${action_name}/p_eps_${epsilon}_frac_${fraction}/rho_${rho}_ell_${ell}.sh
            done
        done
    done
done
