draw_set_color(c_black)
draw_set_halign(fa_center)

if global.kikuBranco < global.upgradeRatoMaximo{
	draw_text(x,y,"ganho da\n torreta\n\n+0.05\n\n\n\n\n\n\n"+arredondarNum(global.precoUpRato)+"$" )
}
else{
	draw_text(x,y,"ganho da\n torreta\n\n+0.05\n\n\n\n\n\n\n"+"Compra maxima feita" )
}


draw_set_color(-1)