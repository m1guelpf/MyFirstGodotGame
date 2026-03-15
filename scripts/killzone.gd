class_name KillZone
extends Area2D

@onready var timer: Timer = $Timer
@onready var audio_player: AudioStreamPlayer2D = $AudioStreamPlayer2D

@export var play_hurt_sound = false


func _on_body_entered(body: Node2D) -> void:
	if play_hurt_sound:
		audio_player.play()

	Engine.time_scale = 0.5

	if body is Player:
		body.ragdoll()

	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
