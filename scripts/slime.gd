class_name Slime
extends Node2D

const SPEED: int = 60

@onready var raycast_left: RayCast2D = $RayCastLeft
@onready var raycast_right: RayCast2D = $RayCastRight
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

var direction: int = 1


func _process(delta: float) -> void:
	if raycast_right.is_colliding():
		direction = -1
		sprite.flip_h = true
	if raycast_left.is_colliding():
		direction = 1
		sprite.flip_h = false

	position.x += direction * SPEED * delta
