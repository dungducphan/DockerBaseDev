# # Open xhost por
# export IP=$(ip -h -c address show dev wlp2s0 | grep inet | awk '$1=="inet" {print $2}' | sed 's~/[[:digit:]]\+~~g')
# sudo xhost +$IP

# Run
docker run --privileged --rm -it --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" --mount type=bind,src=`pwd`/workspace,dst=/home/workspace dungphan90/scibase:eoan
