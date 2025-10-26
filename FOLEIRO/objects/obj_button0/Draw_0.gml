if (highlight)
    draw_set_color(c_red);
else
    draw_set_color(merge_color(c_red, c_black, 0.5));

draw_circle(x, y, 32, false);
