extends Control
# Decoracion del expositor de mejoras: se muestra solo cuando el SkillTree es visible.

func _ready() -> void:
	var tree: Control = get_node("../SkillTree")
	visible = tree.visible
	tree.visibility_changed.connect(func(): visible = tree.visible)
