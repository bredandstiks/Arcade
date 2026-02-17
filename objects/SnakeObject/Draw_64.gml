draw_set_font(GoodFont_12pt);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(48, 16, "Score: " + string(points));
draw_text(48, 48, "High:  " + string(global.Snake_highScore));
