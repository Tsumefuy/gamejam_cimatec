if !arremessado {
	projectile = instance_create_layer(x+7, y+7, "CENARIO_INSTANCE", obj_projectile);
	arremessado = true;
	with (projectile) {
		dir = other.dir;
		image_angle = 0;
	}
	
}