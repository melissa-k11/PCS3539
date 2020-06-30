extends OmniLight
var sit: int=0
var player = AudioStreamPlayer.new()
func _ready():
	self.add_child(player)
	

func _input (event):
	
	if Input.is_key_pressed(KEY_T):
		if sit==0:
			player.stream=load("res://luz_on.wav")
			player.play()
			show()
			sit = 1
		else:
			player.stream=load("res://luz_off.wav")
			player.play()
			hide()
			sit =0
