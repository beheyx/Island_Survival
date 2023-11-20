extends Area2D


var enter = false

func _on_body_entered(body: PhysicsBody2D):
	enter = true



func _on_body_exited(body: PhysicsBody2D):
	enter = false
	
	
func _process(delta):
	if enter == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://scenes/cave.tscn")

			
			
