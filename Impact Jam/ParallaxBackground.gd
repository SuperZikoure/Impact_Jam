extends ParallaxBackground

var sky_speed = 100

var offset_sky = 0

func _ready():
	set_process(true)

func _process(delta):
	offset_sky -= sky_speed * delta
	set_scroll_offset(Vector2(offset_sky, 0))