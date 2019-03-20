extends ParallaxBackground

var fg_speed = 200

var offset_fg = 0

func _ready():
	set_process(true)

func _process(delta):
	offset_fg -= fg_speed * delta
	set_scroll_offset(Vector2(offset_fg, 0))