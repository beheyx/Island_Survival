extends Node

var player_current_attack = false

var current_scene = "world"
var transition_scene = false

var found_slimes_item = false
var given_slimes_teim = false

var boss_dead = false

var game_first_loadin = true

var player_start_posx = -401
var player_start_posy = 580

var player_exit_posx = 1291
var player_exit_posy = 256

var secTimeIncrement = 0

func setTimeVars():
	JavaScriptBridge.eval("var time = 0;", true)
	JavaScriptBridge.eval("var finish_time = 0;", true)
	secTimeIncrement = 0

func _process(delta):
	secTimeIncrement += delta
	while secTimeIncrement >= 1:
		JavaScriptBridge.eval("time += 1;", true)
		secTimeIncrement -= 1

func update_finish_time():
	JavaScriptBridge.eval("finish_time = time;", true)

func finish_changescenes():
	if transition_scene == true:
		transition_scene = false
		if current_scene == "world":
			current_scene = "cave"
		else:
			current_scene = "world"
