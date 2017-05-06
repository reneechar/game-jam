extends StaticBody2D

var WormAnimNode
var anim = ""
var animNew = ""

func _ready():
	set_fixed_process(true)
	
	WormAnimNode = get_node("AnimatedSprite")
	
func _fixed_process(delta):
	
	#animations
	
	anim = "idle_l"
	
	if anim != animNew:
		animNew = anim
		WormAnimNode.play(anim)
	
	
	
