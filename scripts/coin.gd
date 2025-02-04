#extends AnimatedSprite2D
#
#@onready var game_manager: Node = %GameManager
#
#
#func _on_coin_body_entered(body: Node2D) -> void:
	##print("+1 coin cause entering body")
	#game_manager.add_point()
	#queue_free()
	#
extends AnimatedSprite2D

@onready var game_manager: Node = get_tree().get_root().find_child("GameManager", true, false)

func _ready():
	if game_manager == null:
		push_error("GameManager not found!")

func _on_coin_body_entered(_body: Node2D) -> void:
	if game_manager:
		game_manager.add_point()
		queue_free()
