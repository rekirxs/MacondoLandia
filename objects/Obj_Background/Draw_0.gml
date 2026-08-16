var camara = view_camera[0];

var camX = camera_get_view_x(camara);
var camY = camera_get_view_y(camara);

var ancho = camera_get_view_width(camara);
var alto = camera_get_view_height(camara);

draw_sprite_stretched(
    sprite_index,
    0,
    camX,
    camY,
    ancho,
    alto
);