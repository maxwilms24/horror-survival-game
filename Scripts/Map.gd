extends Node3D

@onready var player = $Player
@onready var hud = $HUD

func _ready():
	if player and hud:
		player.health_changed.connect(hud.set_health)
