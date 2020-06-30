extends Spatial
var sit: int=0
func _ready():
	pass
	

func _input (event):
	if Input.is_key_pressed(KEY_7):
		if sit==0:
			$AudioStreamPlayer3D.play()
			show()
			sit = 1
		else:
			$AudioStreamPlayer3D.stop()
			hide()
			sit =0


