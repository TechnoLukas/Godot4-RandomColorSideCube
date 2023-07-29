extends MeshInstance3D

var timer = 0
var wait_time = 1

func _ready():
	update_color()


func _process(delta):
	timer+=delta
	if timer>wait_time:
		update_color()
		timer = 0

	
func update_color():
	for m in range(get_surface_override_material_count()):
		get_surface_override_material(m).albedo_color=Color(randf_range(0,1),randf_range(0,1),randf_range(0,1))
