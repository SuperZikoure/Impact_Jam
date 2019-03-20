extends ParallaxBackground

var bg_speed = 150

var offset_bg = 0

func _ready():
	set_process(true)

func _process(delta):
	offset_bg -= bg_speed * delta
	set_scroll_offset(Vector2(offset_bg, 0))