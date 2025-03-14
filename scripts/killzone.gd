extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	Engine.set_time_scale(0.25)
	body.get_node("CollisionShape2D").queue_free()
	timer.start(0.5)

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
	Engine.set_time_scale(1)
