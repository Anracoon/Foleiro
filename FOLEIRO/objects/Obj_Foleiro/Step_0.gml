//MOVIMENTAÇÕES
var tecla_cima = keyboard_check(vk_up)
var tecla_baixo= keyboard_check(vk_down)
var tecla_esquerda = keyboard_check(vk_left)
var tecla_direita = keyboard_check(vk_right)

var tecla = tecla_direita - tecla_esquerda != 0 || tecla_baixo - tecla_cima != 0


//sprite
if tecla_direita{
	direc = 0;
	sprite_index = Spt_foleiro_andando_direita;
} else if tecla_esquerda{
	direc = 1;
	sprite_index = Spt_foleiro_andando_esquerda;
} else if tecla_cima{
	if direc == 0{
		sprite_index = Spt_foleiro_andando_direita;
	} else if direc == 1{
		sprite_index = Spt_foleiro_andando_esquerda
	}
} else if tecla_baixo{
	if direc == 0{
		sprite_index = Spt_foleiro_andando_direita;
	} else if direc == 1{
		sprite_index = Spt_foleiro_andando_esquerda
	}
}else{
	if direc == 0{
		sprite_index = Spt_foleiro_direita;
	} else if direc == 1{
		sprite_index = Spt_foleiro_esquerda
	}
}
	
dir = point_direction(0,0,tecla_direita - tecla_esquerda, tecla_baixo - tecla_cima)

velh = lengthdir_x(velc * tecla,dir)
velv = lengthdir_y(velc * tecla,dir)


if(place_meeting(x+velh,y,Obj_parede))
{
while(!place_meeting(x+sign(velh),y,Obj_parede))
{
x = x + sign(velh)
}
 velh = 0
}

x+= velh

if(place_meeting(x, y+velv,Obj_parede))
{
	while(!place_meeting(x,y+sign(velv),Obj_parede))
{
y = y + sign(velv)
}
velv = 0 
}

y+= velv



//---------------IR PARA O MAPA---------------------------

if(place_meeting(x+velh,y,Obj_mapa))
{
	room_goto(mapa)
}

//---------------SISTEMA DE DIALOGO---------------------------
nome = "Foleiro";
global.Dialogo = false;
if !global.Dialogo {
    
    var _npc = instance_nearest(x, y, obj_par_npc);

    
    if (_npc != noone) {
        
        var d = point_distance(x, y, _npc.x, _npc.y);

        if (d <= 10) {
            
            global.Dialogo = true;

            
            var _dialogo = instance_create_layer(_npc.x, _npc.y - 16, "dialogo", obj_dialogo);

            
            _dialogo.npc_nome = _npc.nome;
        }
    }
}