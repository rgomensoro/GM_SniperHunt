/// @description Insert description here
// You can write your code in this editor

//------------------ Nao sair da sala --------------------------//

if ( y - (sprite_height/2) < 0 || y+ (sprite_height/2) > room_height)
{
	vspeed *= -1;
}

if ( x - (sprite_width/2) <  0 || x + (sprite_width/2) >= room_width)
{
	hspeed *= -1;
}


