if inicializar_dialogo == false{
	scr_textos();
	global.curupira_progresso = 0;
	inicializar_dialogo = true;
}

if mouse_check_button_pressed(mb_left){
	if pagina < ds_grid_height(texto_grid) - 1{
		pagina++;
	}
	else{
		global.Dialogo = false;
		instance_destroy();
	}
}