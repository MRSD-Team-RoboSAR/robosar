#!/bin/bash

declare -A cmds=(["agent_bringup"]="rosrun robosar_agent_bringup robosar_agent_bringup_node" ["simulation"]="roslaunch robosar_sim_bringup robosar_sim.launch" ["mission_executive"]="roslaunch robosar_navigation mission_executive.launch" ["task_generation"]="rosrun robosar_ragvg robosar_ragvg_Exploration" ["mission_commander"]="rosrun robosar_task_allocator mission_commander.py" ["GUI"]="python3 src/robosar/robosar_gui/src/robosar_gui.py")

for cmd in "${!cmds[@]}"
do
	gnome-terminal --tab --title=$cmd -- sh -c "bash -c \"source devel/setup.bash && ${cmds[$cmd]}; exec bash\""
done

