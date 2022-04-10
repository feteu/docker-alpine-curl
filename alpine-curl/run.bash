for iteration in {1..100}
do
    date=$(date +%s)
    seq 1 100 | xargs -n 1 -P 100 curl -s -o /dev/null -w "${iteration} ${date} %{http_code} %{time_total}\n" "http://nginx:8888/"
    sleep 1
done