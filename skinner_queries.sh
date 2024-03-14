mkdir -p out/skinner_pure_queries

for i in {1..22}; do
  ./qgen -v -c -s 1 ${i} -k > out/skinner_pure_queries/${i}.sql
done

