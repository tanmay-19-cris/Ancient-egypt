extends Area2D

@onready var game_maneger: Node = %GameManeger
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(_body: Node2D) -> void:
	game_maneger.add_point()
	animation_player.play("pickup")
