extends Area2D

var entered := false

func _on_body_entered(body):
	if body is CharacterBody2D:
		entered = true
		print("ENTERED")

func _on_body_exited(body):
	if body is CharacterBody2D:
		entered = false

func _physics_process(_delta):
	if entered:
		print("INSIDE AREA")
		if Input.is_action_just_pressed("ui_accept"):
			print("ENTER PRESSED")
			get_tree().change_scene_to_file("res://scene/SecondDimension.tscn")
