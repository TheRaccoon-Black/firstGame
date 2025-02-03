extends AnimatedSprite2D





func _on_coin_body_entered(body: Node2D) -> void:
	print("+1 coin cause entering body")
	queue_free()
	
