set -xe
cd $(dirname $0)

python GMF.py --dataset ml-1m --epochs 20 --batch_size 256 --num_factors 8 --regs [0,0] --num_neg 4 --lr 0.001 --learner adam --verbose 1 --out 1 2>&1 | tee gmf_base.log
