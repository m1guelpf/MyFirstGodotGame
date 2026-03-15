class_name GameManager
extends Node

@export var scoreLabel: Label

var score: int = 0


func add_point() -> void:
	score += 1
	scoreLabel.text = "You collected " + str(score) + " coins."
