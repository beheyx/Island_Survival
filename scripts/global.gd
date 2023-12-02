extends Node

var player_current_attack = false

var current_scene = "world"
var transition_scene = false

var found_slimes_item = false
var given_slimes_teim = false

var boss_dead = false

var game_first_loadin = true

var player_start_posx = 41
var player_start_posy = 85

var player_exit_posx = 524
var player_exit_posy = 831

var time = 0
var finish_time = 0

func update_finish_time():
	finish_time = time

func return_finish_time():
	return finish_time

func finish_changescenes():
	if transition_scene == true:
		transition_scene = false
		if current_scene == "world":
			current_scene = "cave"
		else:
			current_scene = "world"
