extends Area2D

@onready var game_maneger: Node = %GameManeger


func _on_body_entered(body: Node2D) -> void:
	game_maneger.add_point()
	queue_free()
