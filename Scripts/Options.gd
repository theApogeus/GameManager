extends Node2D

@onready var gameManager = get_parent()

func _on_btn_back_pressed():
	gameManager.GoToLevel(gameManager.TITLE)
