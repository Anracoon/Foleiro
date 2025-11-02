sprite_index = Spr_pote_vazio;

Obj_IngredienteUm_count = 0;
Obj_ingredienteDois_count = 0;
Obj_ingredienteTres_count = 0;
Obj_ingredienteQuatro_count = 0;

function mix(_object_id) {
    // Acessa o índice do objeto do ingrediente.
    var ingrediente_object_index = _object_id;

    // Verifica qual ingrediente foi adicionado
    if (ingrediente_object_index == Obj_IngredienteUm) {
        Obj_IngredienteUm_count += 1;
    }

    if (ingrediente_object_index == Obj_ingredienteDois) {
        Obj_ingredienteDois_count += 1;
    }
	
    if (ingrediente_object_index == Obj_ingredienteTres) {
        Obj_ingredienteTres_count += 1;
    }
	
    if (ingrediente_object_index == Obj_ingredienteQuatro) {
        Obj_ingredienteQuatro_count += 1;
	}


    // Atualiza a mistura com base nos ingredientes
    check_mix();
}


function check_mix() {
    // Regra 1: todos os ingredientes
    if (Obj_IngredienteUm_count > 0 and Obj_ingredienteDois_count > 0 and Obj_ingredienteTres_count > 0 and Obj_ingredienteQuatro_count > 0) {
        // Resultado: PoteResult
        sprite_index = spr_poteResult;
        
    }
	  
	//Regra 2: Ingrediente um + ingrediente dois + ingrediente tres
	else if (Obj_IngredienteUm_count > 0 and Obj_ingredienteDois_count > 0 and Obj_ingredienteTres_count > 0) {
        // Resultado: pote ingr tres
        sprite_index = Spr_poteIngrTres; 
        
	}
	
    
    // Regra 3: Ingrediente um + ingrediente dois
    else if (Obj_IngredienteUm_count > 0 and Obj_ingredienteDois_count > 0) {
        // Resultado: pote ingr dois
        sprite_index = Spr_poteIngrDois; 
        
	}
    
    // Regra 4: Apenas ingrediente um
    else if (Obj_IngredienteUm_count > 0) {
        // Resultado: Pote ingr um
        sprite_index = Spr_poteIngrUm; 
       
	}
    
    // Regra 5: Sem Ingredientes
    else {
        // Sem mistura
        sprite_index = Spr_pote_vazio;
	
    }
}