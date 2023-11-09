extends Node2D

@onready var gameManager = get_parent()

func _on_btn_previous_pressed():
	gameManager.PreviousLevel()
#	gameManager.GoToLevel(gameManager.LEVEL4)
	pass # Replace with function body.


func _on_btn_next_pressed():
	gameManager.NextLevel()
#	gameManager.GoToLevel(gameManager.LEVEL2)
	pass # Replace with function body.
