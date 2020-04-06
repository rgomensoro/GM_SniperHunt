/// @description Movimentação do player
// You can write your code in this editor

var cima = keyboard_check(ord("W"));
var baixo = keyboard_check(ord("S"));
var esq = keyboard_check(ord("A"));
var dir = keyboard_check(ord("D"));
var stealth = keyboard_check_pressed(ord("C"));
var tiro = mouse_check_button(mb_left);

x = clamp(x,32, room_width - 32);
y = clamp(y,32, room_height - 32);

// Movimento Horizontal.

var velH = (dir-esq)*vel;
x += velH;

// Movimento Vertical.

var velV = (baixo-cima)*vel;
y += velV;

//Olhando para o mouse    
var dir = point_direction(x, y, mouse_x, mouse_y);

//Aplicando a direção do mouse à imagem
image_angle = dir;

espera++;

if (stealth)
{
	if (!camuflado)
	{
		image_alpha = 0.5;
		camuflado = true;
	}
	else
	{
		image_alpha = 1;
		camuflado = false;
	}
	
}

if (tiro)
{
	if (espera >= limite)
	{
		yy = -25*sin((image_angle * pi)/180);
		xx = 25*cos((image_angle * pi)/180);
		
	    var g = instance_create_layer(x + xx, y + yy, "player", obj_gunfire);
	    g.direction = dir;
	    g.image_angle = dir;
		
		var t = instance_create_layer(x, y, "player", obj_bullet);
	    t.direction = dir;
	    t.image_angle = dir;
	    espera = 0;
		show_debug_message("tiro:created");
	}
}
