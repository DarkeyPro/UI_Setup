extends TextureRect

export (float,0,3)var blur = 0.0

func _process(delta):
	material.set_shader_param("blur",blur)
