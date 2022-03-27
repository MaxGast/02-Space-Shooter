extends Node2D

onready var Enemy_1 = load("res://Enemy/Enemy_1.tscn")
onready var Enemy_2 = load("res://Enemy/Enemy_2.tscn")

func _physics_process(_delta):
	if get_child_count() == 0:
		var enemy_1 = Enemy_1.instance()
		var enemy_2 = Enemy_2.instance()
		enemy_1.position = Vector2(Global.VP.x/2,Global.VP.y/2)
		add_child(enemy_1)
		enemy_2.position = Vector2(Global.VP.x/2,Global.VP.y/2)
		add_child(enemy_2)
