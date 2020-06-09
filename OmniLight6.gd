extends OmniLight

func _ready():
	pass

func _input (event):
	if Input.is_key_pressed(KEY_B):
		show()
	elif Input.is_key_pressed(KEY_N):
		hide()
