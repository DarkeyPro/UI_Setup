extends Control
enum type{misson = 0,menu_main = 1,menu_sub = 2}

export(type) var state =1
export var element_group =""
var list
func _ready():
	for i in get_children():
		if i.is_in_group(element_group):
			list.append(i)
