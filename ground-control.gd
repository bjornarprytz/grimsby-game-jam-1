extends CSGCylinder3D


@onready var tree_spawner = preload("res://tree.tscn")

@onready var t1 = preload("res://assets/tree1.png")
@onready var t2 = preload("res://assets/tree2.png")
@onready var t3 = preload("res://assets/tree3.png")

var _trees : Array[PineTree] = []
const PIXEL_TO_METER_RATIO = 200

func _ready() -> void:
	for i in 69:
		spawn_tree()


func spawn_tree():
	var tree = tree_spawner.instantiate() as PineTree
	
	add_child(tree)
	_trees.push_back(tree)

	# get the tree to the surface
	tree.tree_sprite.position.x = radius
	tree.position.y = randf_range(-10, 10)
	
	tree.rotation_degrees.y = randf_range(0, 360)
	tree.tree_sprite.scale = Vector3.ONE * randf_range(0.2, 0.6)
	tree.tree_sprite.texture = [t1, t2, t3].pick_random()
	
	
	
	