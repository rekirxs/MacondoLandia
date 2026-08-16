draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

if (obj_bj_controller.game_state == "betting") {
    draw_text(x + sprite_width/2, y + sprite_height/2, "Apostar " + string(obj_bj_controller.bet_input));
} else if (obj_bj_controller.game_state == "round_end") {
    draw_text(x + sprite_width/2, y + sprite_height/2, "Jugar de nuevo");
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);