/// @description Insert description here
// You can write your code in this editor

//--------------- Saindo da room -----------------
//Saindo por cima
if (y < -100)
	instance_destroy(); 

//Saindo por baixo
if (y > room_height + 100)
	instance_destroy(); 

//Saindo pela esquerda
if (x < -100) 
	instance_destroy();
//Saindo pela direita
if (x > room_width + 100) 
	instance_destroy();

