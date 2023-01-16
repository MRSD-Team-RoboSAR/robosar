# robosar
Main repo container for all other repos
### Command to update all submodules
* git submodule update --init --recursive
* git submodule foreach git pull origin main

### Commands to run the system
* roslaunch robosar_agent_bringup robosar_agent_bringup_node.launch
* roslaunch slam_toolbox robosar_mapping.launch
* roslaunch robosar_navigation mission_executive.launch
* rosrun robosar_controller robosar_traffic_controller_node
* roslaunch robosar_task_generator task_generator.launch
* rosrun robosar_task_allocator mission_commander.py -t="high"
* python3 src/robosar_gui/src/robosar_gui.py
* Click on start mission on the GUI

