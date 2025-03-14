extends Node2D

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

var direction = 1
@export var speed = 150.0

func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
	
	if ray_cast_left.is_colliding():
		direction = 1
		
	position.x += speed * delta * direction
	animated_sprite.flip_h = (direction == 1)
