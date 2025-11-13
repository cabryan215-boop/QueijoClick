x=mouse_x
y=mouse_y

if place_meeting(x,y, all){
	window_set_cursor(cr_handpoint)
}
else{
	window_set_cursor(cr_default)
}