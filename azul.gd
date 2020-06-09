extends OmniLight

func _ready():
	pass

func _input (event):
	if Input.is_key_pressed(KEY_Z):
		show()
	elif Input.is_key_pressed(KEY_X):
		hide()
