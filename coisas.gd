extends Spatial
var quarto: int=0

func _ready():
	pass # Replace with function body.
func _input (event):
	if Input.is_key_pressed(KEY_1):
		quarto = quarto+1
		if quarto==51: 
			hide()
		if quarto==52:
			show()
			quarto=1
	print(quarto)
