extends Node2D

var score = 0
enum game_state {PLAYING, STOPED}
var state = game_state.PLAYING

func _ready():
	$hud/Label.text = str(score)
	state = game_state.PLAYING
	$music.play()

func count_score():
	score += 1
	$hud/Label.text = str(score)
	$score_fx.play()

func game_over():
	state = game_state.STOPED
	save_data.last_score = score
	
	if score > save_data.best_score:
		save_data.best_score = score
		
	$spawn_pipes/timer.stop()
	$music.stop()
	$mario.die()
