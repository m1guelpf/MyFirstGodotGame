class_name Slime
extends Node2D

const SPEED: int = 60

@onready var raycastLeft: RayCast2D = $RayCastLeft
@onready var raycastRight: RayCast2D = $RayCastRight
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

var direction: int = 1

func _process(delta: float) -> void:
	if raycastRight.is_colliding():
		direction = -1
		sprite.flip_h = true
	if raycastLeft.is_colliding():
		direction = 1
		sprite.flip_h = false
		
	position.x += direction * SPEED * delta
