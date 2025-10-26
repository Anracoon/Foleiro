// Mostra a sequência para o jogador
if (showing_sequence) {
    timer += 1;

    // Acende o botão
    if (timer == 30) { // meio segundo
        var btn_id = sequence[current_step];
        with (buttons[btn_id]) {
            highlight = true;
        }
    }

    // Apaga o botão
    if (timer == 60) { // mais meio segundo
        var btn_id = sequence[current_step];
        with (buttons[btn_id]) {
            highlight = false;
        }

        current_step += 1;
        timer = 0;

        // Se terminou de mostrar a sequência
        if (current_step >= sequence_length) {
            showing_sequence = false;
            player_index = 0;
        }
    }
}
