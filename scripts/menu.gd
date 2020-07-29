extends Control

var selected_item = 0
var menus:Node
var items

onready var tweening= $Tween

func _ready():
	menus=$panle
	pass 

func _input(event):
	if event is InputEventJoypadButton:
		pass
	if event is InputEvent:
		if event.is_action_pressed("L") :
			if selected_item> 0:
				selected_item-=1
				return
			selected_item= menus.get_children().size()-1
		if event.is_action_pressed("R"):
			if selected_item < menus.get_children().size()-1:
				selected_item+=1
				return
			selected_item=0

		items = menus.get_child(selected_item)
		if items!=null:
			items.grab_focus()

func _on_Panel3_pressed():
	pass # Replace with function body.
