if (highlight)
    draw_set_color(c_yellow);
else
    draw_set_color(merge_color(c_yellow, c_black, 0.5));

draw_circle(x, y, 32, false);