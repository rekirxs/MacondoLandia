x = player.x;
y = player.y;

image_xscale = player.image_xscale;

if (mouse_check_button_pressed(mb_left)) {
    image_index = 1;
    image_speed = 0.4;
}

if (image_index > 0) {
    image_speed = 0.4;

    if (image_index >= image_number - 1) {
        image_index = 0;
        image_speed = 0;
    }
}