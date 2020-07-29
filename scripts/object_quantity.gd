extends PanelContainer
tool


export (Texture) var icon 
var quantity = 100000


func _draw():
	get_node("custom_Container/TextureRect").texture = icon
	get_node("custom_Container/Label").text = str(quantity)
