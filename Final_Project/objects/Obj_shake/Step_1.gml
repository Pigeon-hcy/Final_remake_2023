if(time > 0)
{
	time --;
	layer_set_visible("Effect_1",true);
	show_debug_message("shake");
}else{
	layer_set_visible("Effect_1",false);
}

