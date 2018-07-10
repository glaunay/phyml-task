phyml -i $inputF --r_seed 1 -d nt -b 0 -m GTR -f e -c 4 -a e -s SPR --n_rand_starts 1 -o tlr -p --run_id ID > phyml_result.info 2>phyml.err
mv inputF.inp_phyml_tree_ID.txt outputphyml.nhx

content=$(cat outputphyml.nhx)

echo "{\"data\" : \"$content\" }"

