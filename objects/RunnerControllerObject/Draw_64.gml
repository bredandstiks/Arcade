draw_set_color(make_color_rgb(200, 200, 200));
draw_set_font(GoodFont_12pt);
draw_text(room_width/2, 10, "Score: " + string(score));



if(global.gameOver)
{
	draw_sprite(GameOverSpriteDark, 0, room_width/2, room_height/2);
}