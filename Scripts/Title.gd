extends Node2D

@onready var gameManager = get_parent()

func _process(delta):
	var offset = sin(Time.get_ticks_msec() / 100.0) * 2.0
	$Title.position.y = 50.0 + offset


func _on_btn_new_game_pressed():
	gameManager.GoToLevel(gameManager.LEVEL1)


func _on_btn_options_pressed():
	gameManager.GoToLevel(gameManager.OPTIONS)
