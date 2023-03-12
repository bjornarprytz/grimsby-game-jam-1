extends Node3D

@export var GROUND_SPEED : float = 10.0

@onready var timer : Timer = $Camera/Timer
@onready var timer_label : Label = $Camera/ColorRect/TimeLabel

func _physics_process(delta):
	$Ground.rotate(Vector3.UP, delta * GROUND_SPEED)
	$Camera.position.y = $Player.position.y / 10.0
	
	timer_label.text = "%.1f" % timer.time_left
	
	if (timer.time_left < 2.0):
		timer_label.modulate = Color.DARK_RED
	elif (timer.time_left < 5.0):
		timer_label.modulate = Color.YELLOW
	else:
		timer_label.modulate = Color.DARK_GREEN
		
