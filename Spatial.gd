extends Spatial
var player = AudioStreamPlayer.new()
var quarto: int=0

func _ready():
	pass # Replace with function body.
func _input (event):
	if Input.is_key_pressed(KEY_1):
		quarto = quarto+1
		if quarto==51: 
			self.add_child(player)
			player.stream=load("res://wind01.wav")
			player.play()
		if quarto==52:
			player.stop()
			quarto=1

