extends Spatial

var sit: int=0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _input (event):
	if sit&1: show()
	else:
		hide()
		sit=0
	if Input.is_key_pressed(KEY_1):
		sit = sit+1
	print(sit)



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
