teclaIzquierda = -keyboard_check(ord("A"));
teclaDerecha = keyboard_check(ord("D"));

mover = teclaIzquierda + teclaDerecha;

if (teclaIzquierda != 0) {
    image_xscale = abs(escalaPersonaje);
}

if (teclaDerecha != 0) {
    image_xscale = -abs(escalaPersonaje);
}

if (tiempoEntreShift > 0) {
    tiempoEntreShift--;
}

if (keyboard_check_pressed(vk_shift)) {
    if (tiempoEntreShift > 0) {
        sandevistanActivo = true;
        sandevistanTiempo = sandevistanDuracion;
        tiempoEntreShift = 0;
    } else {
        tiempoEntreShift = ventanaDobleShift;
    }
}

if (sandevistanActivo) {
    sandevistanTiempo--;

    if (mover != 0) {
        hsp = mover * sandevistanFuerza;
    } else {
        if (image_xscale > 0) {
            hsp = -sandevistanFuerza;
        } else {
            hsp = sandevistanFuerza;
        }
    }

    if (sandevistanTiempo <= 0) {
        sandevistanActivo = false;
    }
} else {
    if (keyboard_check(vk_shift)) {
        hsp = mover * (moveSpeed * 2);
    } else {
        hsp = mover * moveSpeed;
    }
}

if (vsp < 10) {
    vsp += grav;
}

if (place_meeting(x, y + 1, obJ_Floor) || place_meeting(x, y + 1, obj_edificiotemb)) {
    saltosRestantes = 2;
}
if (place_meeting(x, y + 1, teleportroom2)) {
   room_goto(Room2);
}


if (keyboard_check_pressed(vk_space)) {
    if (saltosRestantes > 0) {
        vsp = -jumpSpeed;
        saltosRestantes--;
		audio_play_sound(snd_jump,10,false);
    }
}

if (place_meeting(x + hsp, y, obJ_Floor) || place_meeting(x + hsp, y, obj_edificiotemb)) {
    while (!place_meeting(x + sign(hsp), y, obJ_Floor) &&
           !place_meeting(x + sign(hsp), y, obj_edificiotemb)) {
        x += sign(hsp);
    }

    hsp = 0;
}

x += hsp;

if (place_meeting(x, y + vsp, obJ_Floor) || place_meeting(x, y + vsp, obj_edificiotemb)) {
    while (!place_meeting(x, y + sign(vsp), obJ_Floor) &&
           !place_meeting(x, y + sign(vsp), obj_edificiotemb)) {
        y += sign(vsp);
    }

    vsp = 0;
}

y += vsp;

if (place_meeting(x, y, obj_Death)) {
    room_restart();
}

if (keyboard_check_pressed(ord("R"))) {
    room_restart();
}

if (keyboard_check_pressed(ord("E"))) {
    sacudida = duracionSacudida;
	audio_play_sound(snd_terremoto,10,false);
}

if (sacudida > 0) {
    sacudida--;
}