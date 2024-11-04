extends Control

@onready var score = $Label


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	score.text = "점수 : " + str(Global.score)
