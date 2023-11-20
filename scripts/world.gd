extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if global.game_first_loadin == true:
		$player.position.x = global.player_start_posx
		$player.position.y = global.player_start_posy
	else:
		$player.positiono.x = global.player_exit_posx
		$player.positiono.y = global.player_exit_posy


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
