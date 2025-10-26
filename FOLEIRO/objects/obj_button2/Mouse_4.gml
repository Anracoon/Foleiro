// Piscar quando o jogador clicar
highlight = true;
alarm[0] = room_speed / 4;

// Só reage se a sequência já foi mostrada
if (!Obj_control.showing_sequence) {
    var expected_id = Obj_control.sequence[Obj_control.player_index];

    if (button_id == expected_id) {
        Obj_control.player_index += 1;

        // Completou a sequência
        if (Obj_control.player_index >= Obj_control.sequence_length) {
            show_message("Parabéns! Você acertou!");

            // Aumenta a dificuldade
            Obj_control.sequence_length += 1;
            Obj_control.sequence = [];
            for (var i = 0; i < Obj_control.sequence_length; i++) {
                Obj_control.sequence[i] = irandom(3);
            }

            Obj_control.showing_sequence = true;
            Obj_control.current_step = 0;
            Obj_control.timer = 0;
        }
    } else {
        show_message("Errou! Tente novamente.");

        // Reinicia a sequência
        Obj_control.showing_sequence = true;
        Obj_control.current_step = 0;
        Obj_control.player_index = 0;
        Obj_control.timer = 0;
    }
}