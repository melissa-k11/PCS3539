extends WorldEnvironment
var quarto: int=0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _input (event):
	if Input.is_key_pressed(KEY_1):
		quarto = quarto+1
		if quarto==51: $AudioStreamPlayer3D.play()
		if quarto==52:
			$AudioStreamPlayer3D.stop()
			quarto=1
print(quarto)
