function scr_textos(){
	switch npc_nome{
		case "Boto":
			ds_grid_add_text("Que droga.", Spt_Boto, 1, "Boto");
			ds_grid_add_text("Oi, tá tudo bem?", Spt_foleiro_andando_esquerda, 0, "Foleiro");
			ds_grid_add_text("Você deve ser o boto-cor-de-rosa né?", Spt_foleiro_andando_esquerda, 0, "Foleiro");
			ds_grid_add_text("Oi, você me conhece?", Spt_Boto, 1, "Boto");
			ds_grid_add_text("Sim, eu to viajando pelo Brasil conhecendo algumas lendas.", Spt_foleiro_andando_esquerda, 0, "Foleiro");
			ds_grid_add_text("Eu sou o Boto-Cor-de-Rosa, o galã dos rios da Amazônia.", Spt_Boto, 1, "Boto");
			ds_grid_add_text("Quando o sol se põe e a festa começa na beira do rio, eu me transformo em um homem bonito, vestido de branco e sempre usando um chapéu para esconder meu segredo.", Spt_Boto, 1, "Boto");
			ds_grid_add_text("Eu chego, seduzo a moça mais linda e passo a noite com ela.", Spt_Boto, 1, "Boto");
			ds_grid_add_text("Mas, antes do dia clarear, eu volto para a água.", Spt_Boto, 1, "Boto");
			ds_grid_add_text("Se alguma jovem acorda no dia seguinte com a lembrança de um amor e um mistério no ventre, o povo já sabe: é filho do boto.", Spt_Boto, 1, "Boto");
			ds_grid_add_text("Isso não é meio ruim da sua parte?", Spt_foleiro_andando_esquerda, 0, "Foleiro");
			ds_grid_add_text("Você abandona a moças grávidas!", Spt_foleiro_andando_esquerda, 0, "Foleiro");
			ds_grid_add_text("Independente irmão.", Spt_Boto, 1, "Boto");
			ds_grid_add_text("Não estamos aqui pra julgar ninguém, né?", Spt_Boto, 1, "Boto");
			ds_grid_add_text("To julgando muito na verdade.", Spt_foleiro_andando_esquerda, 0, "Foleiro");
			ds_grid_add_text("Ta bom pode julgar, mas me ajuda, por favor.", Spt_Boto, 1, "Boto");
			ds_grid_add_text("Eu perdi o meu chapéu na festa noite passada.", Spt_Boto, 1, "Boto");
			ds_grid_add_text("E sem ele eu não posso ir para as festas.", Spt_Boto, 1, "Boto");
			ds_grid_add_text("A não sei não.", Spt_foleiro_andando_esquerda, 0, "Foleiro");
			ds_grid_add_text("Po cara, imagine se fosse você perdendo o seu chapéu, você ia querer de volta né?", Spt_Boto, 1, "Boto");
			ds_grid_add_text("Aquele chapéu é tudo pra mim cara.", Spt_Boto, 1, "Boto");
			ds_grid_add_text("Ta bom, ta bom. Eu te ajudo.", Spt_foleiro_andando_esquerda, 0, "Foleiro");
			ds_grid_add_text("Ta la na festa?", Spt_foleiro_andando_esquerda, 0, "Foleiro");
			ds_grid_add_text("Ta la! Muito Obrigado sério, você é meu salvador, nunca vou te esquece-", Spt_Boto, 1, "Boto");
			ds_grid_add_text("Ta bom, ta bom, você fala demais piá.", Spt_foleiro_andando_esquerda, 0, "Foleiro");
			ds_grid_add_text("Já volto.", Spt_foleiro_andando_esquerda, 0, "Foleiro");
			
		break;
		
		case "Curupira":
		
		break;
		
		case "Lara":
			
		break;
		
		
		case "Mula":
			
		break;
	}
}
function ds_grid_add_row()
{
	///arg ds_grid
	var grid = argument[0];
	ds_grid_resize( grid,ds_grid_width( grid),ds_grid_height( grid)+1);
	return(ds_grid_height( grid)-1);
}
function ds_grid_add_text(){
	////@arg texto 
	////@arg retrato 
	////@arg lado
	var grid = texto_grid;
	var _y = ds_grid_add_row(grid);

	grid[# 0, _y] = argument[0];
	grid[# 1, _y] = argument[1];
	grid[# 2, _y] = argument[2];
	grid[# 3, _y] = argument[3];
}



