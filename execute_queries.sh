dir="/home/pei/Project/benchmarks/JCC-H/out/skinner_explained"
iteration=10

rm -f result/*
mkdir -p result/

for i in $(eval echo {1.."${iteration}"}); do
  for sql in "${dir}"/*; do
    echo "execute ${sql}" 2>&1|tee -a skinner_explained_jcch-1_${i}.txt;
    psql -f "${sql}" 2>&1|tee -a skinner_explained_jcch-1_${i}.txt;
    #psql -f "${sql}";
  done
done

mv skinner_explained_jcch-1_* result/.
