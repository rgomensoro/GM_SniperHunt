/// @description Insert description here
// You can write your code in this editor


random_posx = irandom_range(0,1200);
random_posy = irandom_range(0,800);

gun = instance_create_layer(random_posx,random_posy,"objects",obj_gun_ak47);

gun.image_xscale = 0.5;
gun.image_yscale = 0.5;

random_posx = irandom_range(0,1200);
random_posy = irandom_range(0,800);

gun = instance_create_layer(random_posx,random_posy,"objects",obj_gun_usp);

gun.image_xscale = 0.5;
gun.image_yscale = 0.5;

