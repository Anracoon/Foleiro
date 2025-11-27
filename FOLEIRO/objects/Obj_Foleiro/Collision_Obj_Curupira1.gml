if(place_meeting(x+velh,y,Obj_Curupira1))
{
while(!place_meeting(x+sign(velh),y,Obj_Curupira1))
{
x = x + sign(velh)
}
 velh = 0
}

x+= velh

if(place_meeting(x, y+velv,Obj_Curupira1))
{
	while(!place_meeting(x,y+sign(velv),Obj_Curupira1))
{
y = y + sign(velv)
}
velv = 0 
}

y+= velv
