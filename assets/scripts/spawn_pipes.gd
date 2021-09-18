extends Node2D

onready var pipe = preload("res://assets/prefabs/pipes.tscn")
var start_pos_x = 400

func _ready():
	randomize()

func _on_timer_timeout():
	create_pipe()

func create_pipe():
	var clone_pipe = pipe.instance()
	clone_pipe.position = Vector2(start_pos_x, rand_range(15, 250))
	add_child(clone_pipe)
