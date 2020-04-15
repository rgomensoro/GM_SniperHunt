/// @description Movimentação do player
// You can write your code in this editor

var cima = keyboard_check(ord("W"));
var baixo = keyboard_check(ord("S"));
var esq = keyboard_check(ord("A"));
var dir = keyboard_check(ord("D"));
var stealth = keyboard_check_pressed(ord("C"));
var reload = keyboard_check_pressed(ord("R"));
var weapon1 = keyboard_check_pressed(ord("1"));
var weapon2 = keyboard_check_pressed(ord("2"));
var weapon3 = keyboard_check_pressed(ord("3"));
var tiro = mouse_check_button(mb_left);

x = clamp(x,32, room_width - 32);
y = clamp(y,32, room_height - 32);

// Movimento Horizontal.

var velH = (dir-esq)*vel;
x += velH;

// Movimento Vertical.

var velV = (baixo-cima)*vel;
y += velV;

if (velH == 0 && velV == 0) 
{
	if (image_index == 2)
		image_index = 3;		
}
else
if (!(velH == 0) || !(velV == 0)) 
{
	if (image_index == 3)
		image_index = 2;		
	
}
//Olhando para o mouse    
var dir = point_direction(x, y, mouse_x, mouse_y);

//Aplicando a direção do mouse à imagem
image_angle = dir;

espera++;

if (weapon1)
{
	image_index = 0;
	gun_active = "rifle";
	limite = room_speed/10; // 10 tiros por segundo
	clip = 30;

}

if (weapon2)
{
	image_index = 1;
	gun_active = "pistol";
	limite = room_speed/2; // 10 tiros por segundo
	clip = 12;
}

if (weapon3)
{
	image_index = 2;
	gun_active = "no_gun";
	limite = room_speed/2; // 10 tiros por segundo
	clip = 0;
}

if (reload)
{
	if (gun_active == "rifle")
	{
		clip = 30;
		espera = -room_speed*3; // tempo de reload 3 segundos
		limite = room_speed/10; // 10 tiros por segundo
		audio_play_sound(snd_ak47_reload,10,false);
	}

	if (gun_active == "pistol")
	{
		clip = 12;
		espera = -room_speed; // tempo de reload 1 segundo
		limite = room_speed/2; // 2 tiros por segundo
		audio_play_sound(snd_usp_reload,10,false);
	}
}


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
	if ((espera >= limite) && (gun_active != "no_gun"))
	{
		
		if (clip > 0)
		{
			
			yy = -25*sin((image_angle * pi)/180);
			xx = 25*cos((image_angle * pi)/180);
		
			clip--;
		
		    var g = instance_create_layer(x + xx, y + yy, "player", obj_gunfire);
		    g.direction = dir;
		    g.image_angle = dir;
		
			var t = instance_create_layer(x + xx, y + yy, "player", obj_bullet);
		    t.direction = dir;
		    t.image_angle = dir;
		    espera = 0;
			show_debug_message("tiro:created");

			if (gun_active == "rifle")
				audio_play_sound(snd_ak47_fire,10,false);

			if (gun_active == "pistol")
				audio_play_sound(snd_usp_fire,10,false);

		}
		else
		{
		    espera = 0;
			limite = room_speed/2;
			if (gun_active == "rifle")
				audio_play_sound(snd_ak47_dry,10,false);

			if (gun_active == "pistol")
				audio_play_sound(snd_usp_dry,10,false);
		}
		
	}
}
