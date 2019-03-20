extends StaticBody2D

var DEFAULT_PATH = "res://assets/interact/doors/door_metal_0.png"
var HIGHLIGHT_PATH = "res://assets/interact/doors/door_metal_1.png"

var IMAGE_DEFAULT = preload(DEFAULT_PATH)
var HIGHLIGHT_DEFAULT = preload(HIGHLIGHT_PATH)

var texture_default = ImageTexture.new()
var texture_highlight = ImageTexture.new()

onready var TARGET_SPRITE = get_node("Sprite")


func _ready():
	texture_default.create_from_image(DEFAULT_PATH)
	texture_highlight.create_from_image(HIGHLIGHT_PATH)
	
	stop_highlight()

func open():
	pass;
	
func start_highlight():
	TARGET_SPRITE.texture = texture_highlight
	
func stop_highlight():
	TARGET_SPRITE.texture = texture_default
