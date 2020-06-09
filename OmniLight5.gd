extends OmniLight

func _ready():
	pass

func _input (event):
	if Input.is_key_pressed(KEY_C):
		show()
	elif Input.is_key_pressed(KEY_V):
		hide()
