extends OmniLight
var sit: int=0
var player = AudioStreamPlayer.new()
func _ready():
	pass
	

func _input (event):
	if Input.is_key_pressed(KEY_Y):
		if sit==0:
			self.add_child(player)
			player.stream=load("res://luz_on.wav")
			player.play()
			show()
			sit = 1
		else:
			player.stream=load("res://luz_off.wav")
			player.play()
			hide()
			sit =0
	print(sit)
