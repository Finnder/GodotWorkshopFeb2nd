extends Node

@onready var obstacleScene : PackedScene = preload("res://Scenes/obstacles.tscn")
@onready var obstacle_spawn_position : Node2D = $ObstacleSpawnPosition

func _on_timer_timeout():
	SpawnObstacle()


func SpawnObstacle():
	var newObstacle = obstacleScene.instantiate()
	obstacle_spawn_position.add_child(newObstacle)
	newObstacle.position = obstacle_spawn_position.position

	randomize()
	newObstacle.position.y = randi_range(newObstacle.position.y, newObstacle.position.y + 100)
