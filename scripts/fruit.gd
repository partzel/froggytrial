extends Area2D

@onready var game_manager = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	game_manager.update_score(1)
	animation_player.play("pickup")
