extends CanvasLayer
signal start_game

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func show_message(text):
	$MessageLabel.text = text
	$MessageLabel.show()
	$MessageTimer.start()
	
func show_gameover():
	show_message("Game Over")
	yield($MessageTimer , "timeout")
	$StartButton.show()
	$MessageLabel.text = "Dodge the Creeps!"
	$MessageLabel.show()
	
func update_score(score):
	$ScoreLabel.text = str(score)
	

func _on_MessageTimer_timeout():
	$MessageLabel.hide()


func _on_StartButton_pressed():
	$StartButton.hide()
	emit_signal("start_game")

