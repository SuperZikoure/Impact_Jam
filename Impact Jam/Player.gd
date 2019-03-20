extends Node2D

onready var character = get_node("Character")
var camera

func init(cam):
	camera = cam

func set_active():
	character.is_active = true
	
func set_inactive():
	character.is_active = false

func _process(delta):
	if character.is_active:
		print("cam position : ", camera.position, ", player pos : " , position + character.position)
		camera.position = position + character.position
		pass