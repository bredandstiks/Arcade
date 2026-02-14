global.isFullscreen = !global.isFullscreen
window_set_fullscreen(global.isFullscreen);
switch(image_index)
{
	case 0:
		image_index = 1;
		break;
	case 1:
		image_index = 0;
		break;
}