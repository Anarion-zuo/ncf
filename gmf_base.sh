set -xe
cd $(dirname $0)

python GMF.py --dataset ml-1m --epochs 256 --batch_size 256 --num_factors64 --regs [0.005,0.005] --num_neg 8 --lr 0.002 --learner adam --verbose 1 --out 1 2>&1 | tee gmf_base.log
