//Quando o botao do mouse é solto

drag = false;


    // Usa instance_place para obter o ID da instância do pote que está colidindo
    var pote_instancia = instance_place(x, y, Obj_pote);

  if (pote_instancia != noone) {
    
    // Salvar a ID do Objeto ANTES de qualquer destruição
    var ingrediente_object = object_index; 
    // Nota: 'object_index' é uma variável nativa que armazena o tipo de objeto.
    
    // Destrói o ingrediente IMEDIATAMENTE.
    instance_destroy(); 
    
    // Agora, entramos no pote e passamos apenas o valor seguro
    with (pote_instancia) {
        
        // Chamamos a função mix, passando a ID do objeto salva
        mix(ingrediente_object); 
    }
}
