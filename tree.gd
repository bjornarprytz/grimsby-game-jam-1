extends Sprite3D

@onready var t1 = preload("res://assets/tree1.png")
@onready var t2 = preload("res://assets/tree1.png")
@onready var t3 = preload("res://assets/tree1.png")

func _ready() -> void:
	texture = [t1, t2, t3].pick_random()

