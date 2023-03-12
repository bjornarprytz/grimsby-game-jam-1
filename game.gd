extends Node3D

@export var GROUND_SPEED : float = 10.0

func _physics_process(delta):
	$Ground.rotate(Vector3.UP, delta * GROUND_SPEED)
	$Camera.position.y = $Player.position.y / 10.0
