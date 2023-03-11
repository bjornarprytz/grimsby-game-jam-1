extends Sprite3D

@export var speed : float = 10.0

func _physics_process(delta: float) -> void:
	if Input.is_key_pressed(KEY_A):
		print("RIGHT")
		translate(Vector3.LEFT * speed * delta)
	if Input.is_key_pressed(KEY_D):
		print("RIGHT")
		translate(Vector3.RIGHT * speed * delta)
