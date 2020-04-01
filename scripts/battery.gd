extends TextureProgress


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var power_state
var battery_value =0.0
var colors= {red=Color.red,green=Color.green}
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	
#	modulate =clamp(Color( 0.75, 0.75, 0.75, 1 ),colors.red,colors.green)
	power_state =OS.get_power_state()
	battery_value =OS.get_power_percent_left()
	if battery_value<20:
		tint_progress=colors.red
	else:
		tint_progress=colors.green
	value = battery_value
	pass
