// Transiciona para a próxima room se a mistura estiver pronta

// 1. Verifica se o sprite atual é o sprite do resultado final.
if (sprite_index == spr_poteResult) {
    
	global.puzzleIara = true;
	
    // 2. Transiciona para a próxima room. 
    // Substitua 'Room_ProximaFase' pelo nome da room de destino no seu projeto.
    room_goto(SalaSudeste);
    
    
}