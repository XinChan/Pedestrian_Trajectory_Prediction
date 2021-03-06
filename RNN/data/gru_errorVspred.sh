#!/bin/bash
echo "beginning to train the network... press ctrl+C to exit"

# num_epochs=100
trap "exit" INT
# learn_rates=(0.0017)
# batch_size=5
for pred_len in $(seq 2 1 12)
do
	echo "***running learning rate of $lr with $num_epochs epochs and $pred_len pred_len***"
	python visualize.py --pred_len $pred_len 
	
done


echo "all done!"