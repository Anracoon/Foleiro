//ESSA MOVIMENTAÇÃO AINDA NÃO FUNCIONAAA
var tecla_cima = keyboard_check(vk_up);
var tecla_baixo = keyboard_check(vk_down);
var tecla_esquerda = keyboard_check(vk_left);
var tecla_direita = keyboard_check(vk_right);

var tecla = tecla_direita - tecla_esquerda != 0 || tecla_baixo - tecla_cima != 0;

dir = point_direction(0,0, tecla_direita - tecla_esquerda, tecla_baixo - tecla_cima);

velh = lengthdir_x(velc * tecla,dir);
velv = lengthdir_y(velc * tecla,dir);

//COLISÃO COM A PAREDE

if(place_meeting(x+velh,y,Obj_parede))
{
	while(!place_meeting(x+sign(velh),y,Obj_parede)){
	x = x + sign(velh);
	}
	velh = 0;
}

x+=velh;

if(place_meeting(x,y+velv,Obj_parede)){

while(!place_meeting(x,y+sign(velv),Obj_parede))
{
	y = y + sign(velv);
}
velv = 0;
}


//Colisões com as regioes do mapa

if(place_meeting(x,y+velv,Obj_sul))
{
room_goto(SalaSul);

}

if(place_meeting(x,y+velv,Obj_sudeste))
{
room_goto(SalaSudeste);

}

if(place_meeting(x,y+velv,Obj_centroOeste))
{
room_goto(SalaCentroOeste);

}

if(place_meeting(x,y+velv,Obj_nordeste))
{
room_goto(SalaNordeste);

}

if(place_meeting(x,y+velv,Obj_norte))
{
room_goto(SalaNorte);

}