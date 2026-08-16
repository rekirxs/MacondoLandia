with (obj_bj_controller) {
    if (game_state == "betting") {
        if (global.coins >= bet_input) {
            bet = bet_input;
            if (array_length(deck) < 15) deck = deck_shuffle(deck_build_test());
            player_hand = [];
            dealer_hand = [];
            deal_card(player_hand, deck);
            deal_card(dealer_hand, deck);
            deal_card(player_hand, deck);
            deal_card(dealer_hand, deck);
            game_state = "player_turn";
            result_text = "";
        } else {
            result_text = "No tienes suficientes arepas.";
        }
    } else if (game_state == "round_end") {
        game_state = "betting";
    }
}