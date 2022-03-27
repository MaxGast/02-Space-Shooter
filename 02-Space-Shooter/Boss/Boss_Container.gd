extends Node2D

onready var Boss = load("res://Boss/Boss.tscn")

func _physics_process(_delta):
	if get_child_count() == 0:
		var boss = Boss.instance()
		boss.position = Vector2(Global.VP.x/2,Global.VP.y/2)
		add_child(boss)
