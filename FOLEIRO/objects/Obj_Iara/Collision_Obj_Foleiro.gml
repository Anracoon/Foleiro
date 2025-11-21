// Reação à colisão com o jogador

// Verifica se o puzzle foi concluído (a variável global é true)
if (global.puzzleIara == true) {
    
    // O que deve acontecer se o puzzle foi concluído
    show_message("Parabéns! Você completou o puzzle e abriu o caminho!");
  
} 
else {
    // O que acontece se o puzzle NÃO foi concluído
    show_message("Você precisa da mistura especial para passar!");
}