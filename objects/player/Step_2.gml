var camara = view_camera[0];

var anchoCamara = camera_get_view_width(camara);
var altoCamara = camera_get_view_height(camara);

var destinoX = x - anchoCamara / 2;
var destinoY = y - altoCamara / 2;

if (sacudida > 0) {
    destinoX += random_range(-intensidadSacudida, intensidadSacudida);
    destinoY += random_range(-intensidadSacudida, intensidadSacudida);
}

destinoX = clamp(destinoX, 0, max(0, room_width - anchoCamara));
destinoY = clamp(destinoY, 0, max(0, room_height - altoCamara));

camera_set_view_pos(camara, destinoX, destinoY);