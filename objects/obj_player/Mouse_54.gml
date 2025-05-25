if instance_exists(obj_projectile) and arremessado and abs(obj_projectile.x) - abs(x) < 40 and abs(obj_projectile.y) - abs(y) < 40 {
	instance_destroy(obj_projectile);
	instance_activate_object(obj_distracao_zone);
	arremessado = false;
}