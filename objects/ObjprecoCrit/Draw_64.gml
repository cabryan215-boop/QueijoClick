draw_set_color(c_black)
draw_set_halign(fa_center)

if global.kikupreto < global.upgradeCritMaximo{
	draw_text(x,y,"\nchance de \ncritico\n\n+5"+"\n\n\n\n\n\n\n"+arredondarNum(global.precoUpcrit)+"$" )
}
else{
	draw_text(x,y,"\nchance de \ncritico\n\n+5"+"\n\n\n\n\n\n\n max" )
}


draw_set_color(-1)