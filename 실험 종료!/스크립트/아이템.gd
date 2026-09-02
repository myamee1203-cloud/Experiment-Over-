extends Area2D


func _on_body_entered(body: Node2D) -> void:
	print("오 마이 갓! 부서진 눈금 실린더잖아?")
	queue_free()
