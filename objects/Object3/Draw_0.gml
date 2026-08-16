draw_set_color(c_white);
draw_text(20, 20, "Frame count: " + string(frameCount));
draw_text(20, 50, "Samples read: " + string(samplesRead));
draw_text(20, 80, "PEAK: " + string(peakDisplay));

var _barWidth = clamp(peakDisplay / 50, 0, 500);
draw_set_color(c_lime);
draw_rectangle(20, 120, 20 + _barWidth, 160, false);
draw_set_color(c_white);
draw_rectangle(20, 120, 520, 160, true);