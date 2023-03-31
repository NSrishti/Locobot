#!/bin/bash
echo "exp2.sh"
export LC_NUMERIC="en_US.UTF-8"
export EXP2="0"

gnome-terminal -- roslaunch interbotix_xslocobot_moveit_interface xslocobot_moveit_interface.launch robot_model:=locobot_wx250s use_fake:=true dof:=6 use_python_interface:=true
nohup ./monitor2.sh >>/home/locobot/Documents/results/experiment.log & pid=$!

sleep 80 
ps -ef | grep rosmaster | grep -v grep | awk '{print $2}' | xargs kill
kill $pid
