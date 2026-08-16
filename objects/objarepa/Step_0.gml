if (!collected && place_meeting(x, y, player) && mouse_check_button_pressed(mb_left)) {
    collected = true;
    sprite_index = Sprite15; 
    image_index = 0;
    image_speed = 1;
}