extends Node2D

@onready var gameManager = get_parent()

#enum res {"FULLSCREEN", "WIDOWED"} 
#var windowMode : int = 2
#	OS.window_fullscreen = properties["display/window/size/fullscreen"]
#	OS.window_borderless = properties["display/window/size/borderless"]
#enum widow {"1920x1080", "960x540", "640x360", "320x180"} 
#var resolutionMode : int = 4
#	OS.window_size = Vector2(
#		properties["display/window/size/test_width"], properties["display/window/size/test_height"]
#	)
#	OS.center_window()

func _on_btn_back_pressed():
	gameManager.GoToLevel(gameManager.TITLE)
