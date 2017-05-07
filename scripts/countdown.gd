extends Label

var countdown_time = 60
var rounded_time = 0
var count_elements = 5

func _ready():
	set_process(true)

func _process(delta):
	countdown_time -= delta
	rounded_time  = round(countdown_time)

	set_text("- "+ String(rounded_time))
	
	if rounded_time <= 0:
		get_tree().change_scene("res://scenes/loose.tscn")
		
		# queue_free()
