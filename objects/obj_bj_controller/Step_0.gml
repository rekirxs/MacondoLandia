if (game_state == "betting") {
    if (keyboard_check_pressed(vk_up)) bet_input += 5;
    if (keyboard_check_pressed(vk_down)) bet_input = max(5, bet_input - 5);
}

if (game_state == "player_turn") {
    if (keyboard_check_pressed(vk_space)) {
        deal_card(player_hand, deck);
    }
    if (keyboard_check_pressed(vk_enter)) {
        game_state = "dealer_turn";
    }
    if (hand_value(player_hand) > 21) {
        game_state = "round_end";
        result_text = "Te pasaste. Pierdes " + string(bet) + " arepas.";
        global.coins -= bet;
    }
}

if (game_state == "dealer_turn") {
    if (hand_value(dealer_hand) < 17 && array_length(deck) > 0) {
        deal_card(dealer_hand, deck);
    } else {
        var _pv = hand_value(player_hand);
        var _dv = hand_value(dealer_hand);
        if (_dv > 21 || _pv > _dv) {
            result_text = "¡Ganaste! +" + string(bet) + " arepas.";
            global.coins += bet;
        } else if (_pv == _dv) {
            result_text = "Empate.";
        } else {
            result_text = "El dealer gana. Pierdes " + string(bet) + " arepas.";
            global.coins -= bet;
        }
        game_state = "round_end";
    }
}