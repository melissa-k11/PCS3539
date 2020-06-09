extends OmniLight

func _ready():
	pass

func _input (event):
	if Input.is_key_pressed(KEY_L):
		show()
	elif Input.is_key_pressed(KEY_K):
		hide()
