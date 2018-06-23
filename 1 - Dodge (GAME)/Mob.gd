extends RigidBody2D

# class member variables go here, for example:
export (int) var MIN_SPEED
export (int) var MAX_SPEED

var mob_types = ["walk", "swim", "fly"]

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Visibility_screen_exited():
	queue_free()
	pass # replace with function body
