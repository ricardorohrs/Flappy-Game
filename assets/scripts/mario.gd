extends RigidBody2D

var is_alive = true

func _ready():
	$anim.play("run")
	linear_velocity = Vector2(0,0)

func _process(delta):
	if is_alive:
		if linear_velocity.y == 0:
			$anim.play("run")
		elif linear_velocity.y < -0.1:
			$anim.play("fly")
		elif linear_velocity.y > 0.1:
			$anim.play("fall")

func flap():
	linear_velocity = Vector2(0, -450)
	$flap_fx.play()

func _input(event):
	if is_alive:
		if event.is_action_pressed("ui_touch") || event.is_action_pressed("ui_select"):
			flap()

func die():
	if is_alive:
		is_alive = false
		$anim.play("died")
		$die_fx.play()
		linear_velocity = Vector2(0, -350)


func _on_die_fx_finished():
	get_tree().change_scene("res://assets/scenes/game_over.tscn")
