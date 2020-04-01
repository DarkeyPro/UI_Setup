extends PanelContainer


var items=[]
func _ready():
	items=[]
func add_item(value):
	items.append(value)
func _process(delta):
	get_node("HBoxContainer/Label").text = "X%s" % items.size()
