extends Node2D


@export var gameLevels : Array[PackedScene] = []
@onready var transition := $Transition/AnimationPlayer
enum {LOGO, TITLE, OPTIONS, LEVEL1, LEVEL2, LEVEL3, LEVEL4} 
var indexLevel : int = LOGO
var currentLevel : Node


func _ready():
	LoadLevel(indexLevel)

func LoadLevel(indexLevel):
	transition.play("transition_OUT")
	currentLevel = gameLevels[indexLevel].instantiate()
	add_child(currentLevel)


func GoToLevel(indexLevel):
	transition.play("transition_IN")
	await transition.animation_finished
	currentLevel.queue_free()
	await get_tree().process_frame
	LoadLevel(indexLevel)


func PreviousLevel():
	indexLevel -= 1
	if indexLevel > LEVEL4:
		indexLevel = LEVEL1
	if indexLevel < LEVEL1:
		indexLevel = LEVEL4
	GoToLevel(indexLevel)


func NextLevel():
	indexLevel += 1
	if indexLevel > LEVEL4:
		indexLevel = LEVEL1
	if indexLevel < LEVEL1:
		indexLevel = LEVEL4
	GoToLevel(indexLevel)
