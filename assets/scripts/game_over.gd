extends Node2D

func _ready():
	$music.play()

# exibir as pontuaçoes de best e last

func _on_btn_restart_pressed():
	get_tree().change_scene("res://assets/scenes/game.tscn")
	# fazer um botao para voltar para o menu
