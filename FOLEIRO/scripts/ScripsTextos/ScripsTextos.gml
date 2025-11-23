function scr_textos(){
	switch npc_nome{
		case "Boto":
			ds_grid_add_text("Testando aaa", Spt_Boto, 1, "Boto");
			ds_grid_add_text("Vai pifar", Spt_foleiro_andando_esquerda, 0, "Foleiro");
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

