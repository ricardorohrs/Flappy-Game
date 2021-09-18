extends Node2D

func _ready():
	$music.play()

func _on_btn_play_pressed():
	get_tree().change_scene("res://assets/scenes/game.tscn")
