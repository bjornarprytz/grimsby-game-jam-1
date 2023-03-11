extends Node3D

@export var SKY_SPEED : float = 10.0
@export var GROUND_SPEED : float = 10.0

func _physics_process(delta):
	$Ground.rotate(Vector3.UP, delta * GROUND_SPEED)
	$Sky.rotate(Vector3.UP, delta * SKY_SPEED)
