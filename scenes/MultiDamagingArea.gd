extends Weapon
class_name MultiDamagingArea

@export var amount : int = 1
@export var area : float = 3

@export var delay : float = 0.2
var counter : float = 0

var projectile_reference = []

func add_to_world(source, tree):
	var projectile = projectile_node.instantiate()
	projectile.speed = 0
	projectile.damage = damage
	projectile.source = source
	projectile.scale = Vector2(area,area)
	projectile.z_index = 0
	
	projectile.find_child("Sprite2D").texture = texture
	projectile.find_child("CollisionShape2D").shape.radius = 12
	projectile.hide()
	projectile.knockback = -40
	projectile_reference.append(projectile)
	
	tree.current_scene.call_deferred("add_child", projectile)

func reset():
	for i in range(projectile_reference.size()):
		var temp = projectile_reference.pop_front()
		if is_instance_valid(temp):
			temp.queue_free()
