extends Node

onready var CAMERA = get_node("Camera2D")
onready var PLAYERS = [
		get_node("Tetraplegic"),
		get_node("BlindDude")
	]
	
var idx = 0
	
func _ready():
	for p in PLAYERS:
		p.init(CAMERA)
	
	PLAYERS.front().set_active()

func _process(delta):
	if Input.is_action_just_pressed("character_switch"):
		PLAYERS[idx].set_inactive()
		
		idx += 1
		if idx == PLAYERS.size():
			idx = 0
			
		PLAYERS[idx].set_active()
		