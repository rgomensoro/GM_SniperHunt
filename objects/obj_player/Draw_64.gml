/// @description Insert description here
// You can write your code in this editor

if (gun_active == "rifle")
{
	   draw_sprite_ext(spr_gun_ak47, 0, room_width - 100, room_height-50, 0.8, 0.8, 0, c_white, 1);
	   draw_set_font(fnt_ammo);
	   draw_text(room_width - 50, room_height-50, string(clip) + "/30");
	   
}

if (gun_active == "pistol")
{
	   draw_sprite_ext(spr_gun_usp, 0, room_width - 100, room_height-50,0.8, 0.8, 0, c_white, 1);
	   draw_set_font(fnt_ammo);
	   draw_text(room_width - 50, room_height-50, string(clip) + "/12");
}

if (gun_active == "no_gun")
{
	   draw_text(room_width - 50, room_height-50, string(clip) + "/0");
}
