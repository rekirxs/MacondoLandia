vida--;

opacidad -= 0.05;

if (vida <= 0 || opacidad <= 0) {
    instance_destroy();
}