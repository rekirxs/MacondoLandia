var portraitX = 760;
var portraitY = 30;
var portraitSize = 14;

var heartSize = 32;
var heartSpacing = 36;
var heartsX = portraitX + portraitSize + 10;
var heartsY = portraitY + (portraitSize / 2) - (heartSize / 2);


var panelPadding = 10;
var panelX1 = portraitX - panelPadding;
var panelY1 = portraitY - panelPadding;
var panelX2 = heartsX + (maxLives * heartSpacing) + panelPadding;
var panelY2 = portraitY + portraitSize + panelPadding;

draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(panelX1, panelY1, panelX2, panelY2, false);
draw_set_alpha(1);

draw_set_color(c_white);
draw_rectangle(panelX1, panelY1, panelX2, panelY2, true);

draw_sprite_ext(icon_1, 0, portraitX, portraitY, 1, 1, 0, c_white, 1);

for (var i = 0; i < maxLives; i++) {
    if (i < pLives) {
        draw_sprite_ext(spr_heart, 0, heartsX + (i * heartSpacing), heartsY, 1, 1, 0, c_white, 1);
    } else {
        draw_sprite_ext(spr_heart, 1, heartsX + (i * heartSpacing), heartsY, 1, 1, 0, c_white, 1);
    }
}