if(obj_nut_manager.ammo_count > 0) {
	audio_play_sound(Snd_throw,10,false);
	instance_create_depth(x,y-50,-1,Obj_nut_left);
	obj_nut_manager.ammo_count--;
}