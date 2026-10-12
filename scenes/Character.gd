extends Resource
class_name Character

@export var title: String
@export var icon: Texture2D
@export var animation_name: String

# Vista previa animada en el menu de seleccion (hoja horizontal de frames)
@export var preview_sheet: Texture2D
@export var preview_frames: int = 4

# Hojas de caminata (frames en horizontal). Si falta alguna direccion
# (por ejemplo "back" en Megumin) se usa la de frente.
@export_group("Walk sprites")
@export var walk_front: Texture2D
@export var walk_back: Texture2D
@export var walk_left: Texture2D
@export var walk_right: Texture2D
@export var walk_frames: int = 4
@export var walk_fps: float = 8.0
# Escala del sprite dentro del mundo (para igualar el tamaño entre personajes)
@export var sprite_scale: float = 1.0

@export_group("")
@export var base_stats: Stats
@export var starting_weapon: Weapon
