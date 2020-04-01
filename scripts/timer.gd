extends PanelContainer

enum timer{real_time =0,count_down =1}
export(timer) var type =0
var seconds =0.0
var minute=0.0

func _ready():
	$Timer.start()



func _process(delta):
	if type ==0:
		#change to server time
		$timer_text.text="%s:%s"%["00","00"]
	elif type==1:
		if seconds >= 60:
			seconds = 0
			minute+=1
		if minute>=60:
			minute=0
		$timer_text.text ="%s:%s" %[int(minute),int(seconds)]


func _on_Timer_timeout():
	seconds +=1
