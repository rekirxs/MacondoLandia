if (collected) {
    global.coins += 1;
	audio_play_sound(snd_arepa,10,false);
    instance_destroy();
}

