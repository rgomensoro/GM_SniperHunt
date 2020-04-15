/// @description Insert description here
// You can write your code in this editor

//------------------ Nao sair da sala --------------------------//

player_rangex = obj_player.x - x;
player_rangey = obj_player.y - y;

if ((abs(player_rangex) < 200) && (abs(player_rangey) < 200))
{
	aware = true;
}

if (aware == false)
{
	image_index = 1;
}
else
	image_index = 0;


