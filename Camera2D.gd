extends Camera2D

onready var player = get_node("/root/MainScene/Scene1/Player")
var camSpeed = 200

func _physics_process(delta):
	position.x =  player.position.x
	position.y =  move_to(position.y, player.position.y, camSpeed*delta)

func move_to(current, to, step):
	var new = current
	if new < to:
		new = clamp(new + step,current,to)
	else:
		new = clamp(new - step,to,current)
		
	return new
