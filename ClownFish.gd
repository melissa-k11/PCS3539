extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
float time = TIME * time_scale;
VERTEX.x += cos(time) * side_to_side;
float twist_angle = cos(time + body) * 0.3 * twist;
mat2 twist_matrix = mat2(vec2(cos(twist_angle), -sin(twist_angle)), vec2(sin(twist_angle), cos(twist_angle)));
VERTEX.xy = twist_matrix * VERTEX.xy;
float mask = smoothstep(mask_black, mask_white, 1.0 - body);
VERTEX.x += cos(time + body) * mask * wave;
VERTEX.xy = mix(VERTEX.xy, twist_matrix * VERTEX.xy, mask);

for i in range($School.multimesh.instance_count):
  var position = Transform()
  position = position.translated(Vector3(randf() * 100 - 50, randf() * 50 - 25, randf() * 50 - 25))
  $School.multimesh.set_instance_transform(i, position)


float time = (TIME * time_scale) + (6.28318 * INSTANCE_CUSTOM.x);

$School.multimesh.set_instance_custom_data(i, Color(randf(), randf(), randf(), randf()))

float time = (TIME * (0.5 + INSTANCE_CUSTOM.y) * time_scale) + (6.28318 * INSTANCE_CUSTOM.x);

shader_type particles
  int k;
  int s = int(seed);
  if (s == 0)
	s = 305420679;
  k = s / 127773;
  s = 16807 * (s - k * 127773) - 2836 * k;
  if (s < 0)
	s += 2147483647;
  seed = uint(s);
  return float(seed % uint(65536)) / 65535.0;
}

uint hash(uint x) {
  x = ((x >> uint(16)) ^ x) * uint(73244475);
  x = ((x >> uint(16)) ^ x) * uint(73244475);
  x = (x >> uint(16)) ^ x;
  return x;
}

void vertex() {
  if (RESTART) {
	//Initialization code goes here
  } else {
	//per-frame code goes here
  }
}

uint alt_seed1 = hash(NUMBER + uint(1) + RANDOM_SEED);
uint alt_seed2 = hash(NUMBER + uint(27) + RANDOM_SEED);
uint alt_seed3 = hash(NUMBER + uint(43) + RANDOM_SEED);
uint alt_seed4 = hash(NUMBER + uint(111) + RANDOM_SEED);

CUSTOM.x = rand_from_seed(alt_seed1);
vec3 position = vec3(rand_from_seed(alt_seed2) * 2.0 - 1.0,
					 rand_from_seed(alt_seed3) * 2.0 - 1.0,
					 rand_from_seed(alt_seed4) * 2.0 - 1.0);
					
					TRANSFORM[3].xyz = position * 20.0;
					VELOCITY.z = 10.0;
					VELOCITY.z = cos(TIME + CUSTOM.x * 6.28) * 4.0 + 6.0;
					CUSTOM.y = VELOCITY.z * 0.1;
