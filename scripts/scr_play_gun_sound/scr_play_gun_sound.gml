/// @description scr_play_gun_sound
/// @arg gun
/// @arg action


var gun = argument0;
var action = argument1;

//fire

switch (gun)
{
	case "pistol":
	
	file_reload = snd_usp_reload;
	file_fire = snd_usp_fire;
	file_dry = snd_usp_dry;	
	break;
	
	case "rifle":

	file_reload = snd_ak47_reload;
	file_fire = snd_ak47_fire;
	file_dry = snd_ak47_dry;	
	break;
	
	case "awp":

	file_reload = snd_awp_reload;
	file_fire = snd_awp_fire;
	file_dry = snd_awp_dry;	
	break;
	
}

switch (action)
{
	case "reload":
		audio_play_sound(file_reload,10,false);
	break;

	case "fire":
		audio_play_sound(file_fire,10,false);
	break;

	case "dry":
		audio_play_sound(file_dry,10,false);
	break;
}


