#!/usr/bin/env bash
# This is a script that will visualize all the results
export CUDA_VISIBLE_DEVICES=5
echo "Visualize Motifnet"
python models/_visualize.py -m sgdet -model motifnet -order leftright -nl_obj 2 -nl_edge 4 -b 6 -clip 5 -p 100 -hidden_dim 512 -pooling_dim 4096 -lr 1e-3 -ngpu 1 -test -ckpt checkpoints/motifnet-sgdet/vgrel-17.tar -nepoch 50 -use_bias -cache motifnet_sgdet.pkl
