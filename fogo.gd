
var sit: int=0
func _ready():
	pass

	

func _input (event):
	if Input.is_key_pressed(KEY_9):
		if sit==0:
			$AudioStreamPlayer3D.play()
			show()
			sit = 1
		else:
			hide()
			sit =0
	print(sit)
