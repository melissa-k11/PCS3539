extends MeshInstance

var sit: int=0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

	

func _input (event):
	if Input.is_key_pressed(KEY_5):
		if sit==0:
			show()
			sit = 1
		else:
			hide()
			sit =0
