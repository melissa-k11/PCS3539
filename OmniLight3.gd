extends OmniLight
var sit: int=0
func _ready():
	pass
	

func _input (event):
	if sit&1: show()
	else:
		hide()
		sit=0
	if Input.is_key_pressed(KEY_Y):
		sit = sit+1
	print(sit)
