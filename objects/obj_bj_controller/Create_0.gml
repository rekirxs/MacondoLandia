if (!variable_global_exists("coins")) {
    global.coins = 100;
}

game_state = "betting";
deck = deck_shuffle(deck_build_test());
player_hand = [];
dealer_hand = [];
result_text = "";
bet = 0;
bet_input = 10;