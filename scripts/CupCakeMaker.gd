extends Node

var cup_cake_scene = preload("res://scene/CupCake.tscn")

func _on_timer_timeout():
	var instance = cup_cake_scene.instantiate()
	instance.position = Vector2(380 + randi() % 270, 0)
	add_child(instance)
	
