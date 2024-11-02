extends Control

@onready var current_scene : Node = get_child(0)

func change_scene(node : NodePath):
	current_scene.z_index = -2
	current_scene.set_visible(false)
	current_scene = get_node(NodePath(node.get_name(2)))
	current_scene.set_visible(true)
	current_scene.z_index = 0
	
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for item in get_children().slice(1):
		item.set_visible(false)
		item.z_index = -2
