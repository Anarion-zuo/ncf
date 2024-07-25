set -xe
cd $(dirname $0)

python NeuMF.py --dataset ml-1m --epochs 256 --batch_size 256 --num_factors 8 --layers [64,32,16,8] --reg_mf 0 --reg_layers [0,0,0,0] --num_neg 8 --lr 0.002 --learner adam --verbose 1 --out 1 2>&1 | tee neumf_base.log
