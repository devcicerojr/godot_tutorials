extends Node

# class member variables go here, for example:
export (PackedScene) var Mob
var score

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	$Player.hide()
	#$StartTimer.start()
	#score = 0
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func game_over():
	$Music.stop()
	$Player.hide()
	$ScoreTimer.stop()
	$MobTimer.stop()
	$StartTimer.stop()
	$HUD.show_gameover()
	$DeathSound.play()
	

func new_game():
	score = 0
	$Music.play()
	$Player.show()
	$Player.start($StartPosition.position)
	$HUD.update_score(score)
	$HUD.show_message("Get Ready!")
	$StartTimer.start()


func _on_StartTimer_timeout():
	$MobTimer.start()
	$ScoreTimer.start()
	

func _on_ScoreTimer_timeout():
	score += 1
	$HUD.update_score(score)


func _on_MobTimer_timeout():
	$MobPath/MobSpawnLocation.set_offset(randi())
	var mob = Mob.instance()
	add_child(mob)
	var direction = $MobPath/MobSpawnLocation.rotation + PI/2
	mob.position = $MobPath/MobSpawnLocation.position
	direction += rand_range(-PI/4, PI/4)
	mob.rotation = direction
	mob.set_linear_velocity(Vector2(rand_range(mob.MIN_SPEED, mob.MAX_SPEED), 0).rotated(direction))
	