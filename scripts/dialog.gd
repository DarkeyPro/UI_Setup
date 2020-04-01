extends PanelContainer



var dialog_timer = 0.0
var dialog ={}
export var text_view_speed=5
export (float)var fade=0.0
var background
var is_load =false

func _ready():
	
	dialog["name"] =get_node("VBoxContainer/name")
	dialog["talk"] =get_node("VBoxContainer/talk")

func _process(delta):
	if is_load:
		dialog_timer+=delta
	else:
		dialog_timer =0.0
	if dialog_timer >fade:
		dialog.name.visible_characters=0
		dialog.talk.visible_characters=0
		CustomFunctions.tweening(self,"self_modulate",Color(1,1,1,0),1.0,true)
		is_load = false
		pass
func load_dialog(value):
	is_load = true
	CustomFunctions.tweening(self,"self_modulate",Color(1,1,1,1),3.0,true)
	get_node("Timer").start(0.01*text_view_speed)
	dialog.name.text = value.name
	dialog.talk.bbcode_text =value.talk
	dialog.name.visible_characters=dialog.name.bbcode_text.length()
	dialog.talk.visible_characters=0


func _on_Timer_timeout():
	dialog.talk.visible_characters +=1
	if dialog.talk.visible_characters == dialog.talk.bbcode_text.length():
		get_node("Timer").stop()
