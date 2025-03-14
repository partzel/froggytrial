extends Area2D

@onready var game_manager = %GameManager

func _on_body_entered(body: Node2D) -> void:
	game_manager.update_score(1)
	queue_free()
