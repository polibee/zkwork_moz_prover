# use your own Lumoz reward_address
reward_address=0x9edba4dff69d23546be7dc0ac79575f2cbaa80ea

# set your own custom name
custom_name="coinowo"

pids=$(ps -ef | grep moz_prover | grep -v grep | awk '{print $2}')
if [ -n "$pids" ]; then
    echo "$pids" | xargs kill
    sleep 5
fi

while true; do
    target=`ps aux | grep moz_prover | grep -v grep`
    if [ -z "$target" ]; then
        ./moz_prover --address $reward_address --pool moz.asia.zk.work:10010 --custom_name $custom_name
        sleep 5
    fi
    sleep 60
done

