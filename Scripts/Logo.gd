extends Node2D

@onready var gameManager = get_parent()

func _on_timer_timeout():
	gameManager.GoToLevel(gameManager.TITLE)
