/// @description Movimentação do player
// You can write your code in this editor

var cima = keyboard_check(ord("W"));
var baixo = keyboard_check(ord("S"));
var esq = keyboard_check(ord("A"));
var dir = keyboard_check(ord("D"));
var tiro = mouse_check_button(mb_left);

x = clamp(x,32, room_width - 32);
y = clamp(y,32, room_height - 32);

// Movimento Horizontal.

var velH = (dir-esq)*vel;
x += velH;

// Movimento Vertical.

var velV = (baixo-cima)*vel;
y += velV;

image_angle = point_direction(x, y, mouse_x,mouse_y);

if (tiro)
{
	var t = instance_create_layer(x,y,"instances",obj_bullet);
	
}
