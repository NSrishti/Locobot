#!/bin/bash
echo "exp1.sh"
#export LC_NUMERIC="en_US.UTF-8"

gnome-terminal -- roslaunch interbotix_xslocobot_perception xslocobot_perception.launch robot_model:=locobot_wx250s use_pointcloud_tuner_gui:=true
nohup ./stress1.sh >> /home/locobot/Documents/results/experiment.log & pid1=$!
nohup ./monitor1.sh >>/home/locobot/Documents/results/experiment.log & pid2=$!

wait $pid1
ps -ef | grep roslaunch | grep -v grep | awk '{print $2}' | xargs kill
kill $pid2

