draw_set_color(c_white);

var screenW = display_get_gui_width();
var screenH = display_get_gui_height();
var cardW = sprite_get_width(spr_cards) * 2;
var cardH = sprite_get_height(spr_cards) * 2;
var spacing = 60;

var numPlayerCards = array_length(player_hand);
var playerRowWidth = cardW + (numPlayerCards - 1) * spacing;
var px = (screenW - playerRowWidth) / 2;
var py = 250;

for (var i = 0; i < numPlayerCards; i++) {
    draw_sprite_ext(spr_cards, card_get_index(player_hand[i].rank), px, py, 2, 2, 0, c_white, 1);
    px += spacing;
}

var numDealerCards = array_length(dealer_hand);
var dealerRowWidth = cardW + (numDealerCards - 1) * spacing;
var dx = (screenW - dealerRowWidth) / 2;
var dy = 100;

for (var i = 0; i < numDealerCards; i++) {
    if (i == 1 && game_state == "player_turn") {
        draw_sprite_ext(spr_card_back, 0, dx, dy, 2, 2, 0, c_white, 1);
    } else {
        draw_sprite_ext(spr_cards, card_get_index(dealer_hand[i].rank), dx, dy, 2, 2, 0, c_white, 1);
    }
    dx += spacing;
}

draw_set_halign(fa_center);

if (game_state == "player_turn" || game_state == "round_end") {
    draw_text(screenW / 2, py + cardH + 20, "Tu mano: " + string(hand_value(player_hand)));
}
if (game_state == "round_end") {
    draw_text(screenW / 2, dy - 30, "Dealer: " + string(hand_value(dealer_hand)));
}
if ((game_state == "betting" || game_state == "round_end") && result_text != "") {
    draw_text(screenW - 200, screenH / 2, result_text);
}

draw_set_halign(fa_left);
draw_text(20, 20, "Arepas: " + string(global.coins));