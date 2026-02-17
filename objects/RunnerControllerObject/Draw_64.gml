draw_set_color(c_white);
draw_set_font(GoodFont_12pt);
draw_text(room_width/2, 10, "Score: " + string(score));
draw_text(room_width/2, 30, "High Score: " + string(global.Runner_highScore));



if(global.gameOver)
{
	draw_sprite(GameOverSpriteDark, 0, room_width/2, room_height/2);
}