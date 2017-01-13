function root = nwtrph(x)
    syms y;
    g = y^2+y-6;
    gl = diff(g);
    root = x - vpa(subs(g, y, x))/vpa(subs(gl, y, x))
    if abs(root-x) < 10^-3
        return
    else
        root = nwtrph(root);
    end
end