extends Node

var items=[]
var inventory
var selected =null
enum types{}
func _ready():
	if get_tree().get_nodes_in_group("player"):
		inventory =get_tree().get_nodes_in_group("player")[0].get_node("inventory")
	pass

func _on_buy_pressed():
	if selected != null:
		inventory.money-= selected.priece
		inventory.add_item(selected)
	pass # Replace with function body.


func _on_cancel_pressed():
	if get_parent().has_meta("recource"):
		get_parent().recource = null
	if get_tree().root.get_node_or_null("Input_Templete"):
		get_tree().root.get_node_or_null("Input_Templete").emit_signal("interact",false)
	queue_free()
