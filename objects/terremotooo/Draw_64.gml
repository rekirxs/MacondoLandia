if (playerInside) {
    var screenW = display_get_gui_width();
    var screenH = display_get_gui_height();
    
    draw_set_color(c_black);
    draw_rectangle(screenW/2 - 220, screenH - 100, screenW/2 + 220, screenH - 50, false);
    
    draw_set_color(c_yellow);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(screenW / 2, screenH - 75, "⚠ EMERGENCIA: presiona E para invocar un terremoto ⚠");
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}