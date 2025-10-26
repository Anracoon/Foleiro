global.temChSudesteg = 0;
global.temChNorteg = 0;
global.temChNordesteg = 0;
global.temChCentrog = 0;

// Variáveis principais
sequence = [];
sequence_length = 4;       // tamanho da sequência
player_index = 0;          // índice da entrada do jogador
showing_sequence = true;   // está mostrando a sequência?
current_step = 0;          // passo atual da exibição
timer = 0;                 // contador para controlar o tempo

// Gerar sequência aleatória (valores de 0 a 3)
for (var i = 0; i < sequence_length; i++) {
    sequence[i] = irandom(3);
}

// Referências aos botões (assume que existem 4 objetos separados)
buttons = [obj_button0, obj_button1, obj_button2, obj_button3];
