extends Spatial
var sit: int=0
func _ready():
	pass
	

func _input (event):
	if Input.is_key_pressed(KEY_3):
		if sit==0:
			hide()
			sit = 1
		else:
			show()
			sit =0
