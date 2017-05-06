extends StaticBody2D

var timeElapsed = 0

func _ready():
	set_fixed_process(true)
	
func _fixed_process(delta):
	#animations
	
	if(timeElapsed > 0.3):
		if(get_frame() == self.get_sprite_frames().get_frame_count() - 1):
			set_frame(0)
		else:
			self.set_frame(get_frame() + 1)
	
	timeElapsed = 0
	
	
	
