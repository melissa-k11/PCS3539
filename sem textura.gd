extends Spatial
var sit: int=0
func _ready():
	pass
	

func _input (event):
	if Input.is_key_pressed(KEY_3):
		if sit==0:
			show()
			sit = 1
		else:
			hide()
			sit =0
