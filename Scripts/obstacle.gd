extends StaticBody2D

var speedOfObstacle = 100

func _process(delta):
	move_left(delta)

func move_left(delta):
	$".".position.x -= speedOfObstacle * delta;
