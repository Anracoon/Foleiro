if (highlight)
    draw_set_color(c_blue);
else
    draw_set_color(merge_color(c_blue, c_black, 0.5));

draw_circle(x, y, 32, false);