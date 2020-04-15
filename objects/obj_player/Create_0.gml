/// @description Insert description here
// You can write your code in this editor

vel = 2;

espera = 0; // Tempo que estou esperando

//pistol limit
limite = room_speed/2; // 10 tiros por segundo
clip = 12;
gun_active = "pistol";

camuflado = false;

window_set_cursor(cr_none);
cursor_sprite = spr_cross_hair;
image_index = 1;