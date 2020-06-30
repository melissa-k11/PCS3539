extends CSGMesh
var sit: int=0
var quarto: int=0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

	

func _input (event):
	if Input.is_key_pressed(KEY_1):
		if sit==0:
			show()
			$"AudioStreamPlayer3D dia".play()
			sit = 1
		else:
			$"AudioStreamPlayer3D dia".stop()
			hide()
			sit =0
	if Input.is_key_pressed(KEY_2):
		$"AudioStreamPlayer3D dia".stop()
		hide()
		sit=1

	if Input.is_key_pressed(KEY_1) or Input.is_key_pressed(KEY_2) or Input.is_key_pressed(KEY_3) or Input.is_key_pressed(KEY_4) or Input.is_key_pressed(KEY_5) or Input.is_key_pressed(KEY_6) or Input.is_key_pressed(KEY_7) or Input.is_key_pressed(KEY_T) or Input.is_key_pressed(KEY_U) or Input.is_key_pressed(KEY_Y) or Input.is_key_pressed(KEY_G) or Input.is_key_pressed(KEY_H) or Input.is_key_pressed(KEY_J) or Input.is_key_pressed(KEY_V):
		quarto = quarto+1
		if quarto==51: 
			$"AudioStreamPlayer3D dia".stop()
		if quarto==52:
			sit=1
			$"AudioStreamPlayer3D dia".play()
			quarto=1
