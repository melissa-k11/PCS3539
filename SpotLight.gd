extends SpotLight

func _ready():
	pass

func _input (event):
	if Input.is_key_pressed(KEY_M):
		show()
	elif Input.is_key_pressed(KEY_N):
		hide()

