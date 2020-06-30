extends Spatial
var player = AudioStreamPlayer.new()
var quarto: int=0

func _ready():
	pass # Replace with function body.
func _input (event):
	if Input.is_key_pressed(KEY_1) or Input.is_key_pressed(KEY_2) or Input.is_key_pressed(KEY_3) or Input.is_key_pressed(KEY_4) or Input.is_key_pressed(KEY_5) or Input.is_key_pressed(KEY_6) or Input.is_key_pressed(KEY_7) or Input.is_key_pressed(KEY_T) or Input.is_key_pressed(KEY_U) or Input.is_key_pressed(KEY_Y) or Input.is_key_pressed(KEY_G) or Input.is_key_pressed(KEY_H) or Input.is_key_pressed(KEY_J) or Input.is_key_pressed(KEY_V):
		quarto = quarto+1
		if quarto==51: 
			self.add_child(player)
			player.stream=load("res://wind01.wav")
			player.play()
			$AudioStreamPlayer3D.play()
		if quarto==52:
			player.stop()
			$AudioStreamPlayer3D.stop()
			quarto=1

