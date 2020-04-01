
extends Control


var os
var joystick 
var button_list
var player
var pause
var dialog
signal input

# Called when the node enters the scene tree for the first time.
func _ready():
#	dialog = get_node("HBoxContainer/control/HBoxContainer/statues/dialog")
#	pause =get_node("HBoxContainer/nav/HBoxContainer/pause")
#	button_list =$"HBoxContainer/control/HBoxContainer/buttons".get_children()
#	joystick = $"HBoxContainer/control/HBoxContainer/joystick container/Control/Sprite".get_node("joystick")
#	if get_tree().get_nodes_in_group("player")[0] != null:
#		player = get_tree().get_nodes_in_group("player")[0]
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

#	if get_tree().get_nodes_in_group("player")[0] != null:
#		set_statues(player.statues)
	pass
func set_statues(statues):
#	get_node("HBoxContainer/control/HBoxContainer/statues/status/health_bar/ProgressBar").max_value = int(statues.max_health)
#	$HBoxContainer/control/HBoxContainer/statues/status/health_bar/ProgressBar.value = int(statues.health)
#	$HBoxContainer/control/HBoxContainer/statues/status/MP_bar/ProgressBar.max_value = statues.max_mana
#	$HBoxContainer/control/HBoxContainer/statues/status/MP_bar/ProgressBar.value = statues.mana
#	$HBoxContainer/control/HBoxContainer/statues/status/health_bar/NinePatchRect/Label2.text = "%s / %s" % [int(statues.health),int(statues.max_health)]
#	$HBoxContainer/control/HBoxContainer/statues/status/MP_bar/NinePatchRect/Label2.text = "%s / %s" % [int(statues.mana),int(statues.max_mana)]
	pass
#func set_os(Os):
#	if Os == "phone":
#		pause.show()
#		joystick.get_parent().show()
#		for i in button_list:
#			i.show()
#	if Os == "console" :
#		pause.hide()
#		joystick.get_parent().hide()
#		for i in button_list:
#			i.hide()
#	if Os == "pc" :
#		pause.hide()
#		joystick.get_parent().hide()
#		for i in button_list:
#			i.hide()
#
