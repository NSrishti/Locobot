from EventManager.Models.RobotRunnerEvents import RobotRunnerEvents
from EventManager.EventSubscriptionController import EventSubscriptionController
from ConfigValidator.Config.Models.RunTableModel import RunTableModel
from ConfigValidator.Config.Models.FactorModel import FactorModel
from ConfigValidator.Config.Models.RobotRunnerContext import RobotRunnerContext
from ConfigValidator.Config.Models.OperationType import OperationType

import os
import time
import signal
import subprocess
import shutil
from typing import Dict, List
from pathlib import Path

class RobotRunnerConfig:
    # =================================================USER SPECIFIC NECESSARY CONFIG=================================================
    # Name for this experiment
    name:                       str             = "locobot_test"
    # Required ROS version for this experiment to be ran with 
    # NOTE: (e.g. ROS2 foxy or eloquent)
    # NOTE: version: 2
    # NOTE: distro: "foxy"
    required_ros_version:       int             = 1
    required_ros_distro:        str             = "noetic"
    # Experiment operation types
    operation_type:             OperationType   = OperationType.AUTO
    # Run settings
    time_between_runs_in_ms:    int             = 1000
    # Path to store results at
    # NOTE: Path does not need to exist, will be appended with 'name' as specified in this config and created on runtime
    results_output_path:        Path            = Path("~/Documents/experiments")
    # =================================================USER SPECIFIC UNNECESSARY CONFIG===============================================

    exp_proc = None

    # Dynamic configurations can be one-time satisfied here before the program takes the config as-is
    # NOTE: Setting some variable based on some criteria
    def __init__(self):
        """Executes immediately after program start, on config load"""

        EventSubscriptionController.subscribe_to_multiple_events([ 
            (RobotRunnerEvents.START_RUN,           self.start_run),
            (RobotRunnerEvents.LAUNCH_MISSION,      self.launch_mission),
            (RobotRunnerEvents.STOP_RUN,            self.stop_run),
        ])

    def create_run_table(self) -> List[Dict]:
        """Create and return the run_table here. A run_table is a List (rows) of tuples (columns), 
        representing each run robot-runner must perform"""
        run_table = RunTableModel(
            factors = [
                FactorModel("example_factor", ['example_treatment1', 'example_treatment2']),
                FactorModel("nr_of_runs", range(0, 15))
            ],
            #data_columns=['%usr','%sys','%IOwait','%Idle']
        )
        run_table.create_experiment_run_table()
        return run_table.get_experiment_run_table()

    def before_experiment(self, context: RobotRunnerContext):
        print("\n\n ---> NOTE: This mission will only work if the package:  ros-noetic-gazebo-ros-pkgs  (foxy can be your ROS2 distro like eloquent) is installed using apt-get.")

    def start_run(self, context: RobotRunnerContext) -> None:
        """Perform any activity required for starting the run here. 
        Activities before and after starting the run should also be performed here."""
        
        variation = context.run_variation
        operation = variation['example_factor']
        
        if operation == 'example_treatment1':
        	cmd = "(cd /home/locobot; ./exp1.sh)" 
       
        	
        if operation == 'example_treatment2':
        	cmd = "(cd /home/locobot; ./exp2.sh)" 
        
        self.exp_proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, 
                            shell=True, preexec_fn=os.setsid)

    def launch_mission(self, context: RobotRunnerContext):
        time.sleep(100)

    def stop_run(self, context: RobotRunnerContext) -> None:
        """Perform any activity required for stopping the run here.
        Activities before and after stopping the run should also be performed here."""
        
        os.killpg(os.getpgid(self.exp_proc.pid), signal.SIGINT)
        




    # ===============================================DO NOT ALTER BELOW THIS LINE=================================================
    # NOTE: Do not alter these values
    experiment_path:            Path             = None
