extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var selected_item = 0
var grid_selected_item ={column=0,row=0}
var menu =0
enum UI_input{H_input=0,V_input=1,G_input=2}
# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.
func _process(delta):
	var item 
	if UI_input.G_input == menu:

		pass
	else:
		item = get_child(selected_item)
	if item!=null:
		item.grab_focus()
	pass
func _input(event):
	if event is InputEventJoypadButton:
		pass
	if event is InputEvent:
		if UI_input.H_input ==menu:
			if event.is_action_pressed("ui_left") :
				print(get_children().size(),5)
				if get_children().size() > 0:
					selected_item-=1
				pass
			if event.is_action_pressed("ui_right"):
				if selected_item < get_children().size():
					selected_item+=1
				pass
		elif UI_input.V_input == menu:
			if Input.is_action_pressed("ui_up") :
				
				pass
			if Input.is_action_pressed("ui_down"):
				pass
		elif UI_input.G_input ==menu:

			pass
