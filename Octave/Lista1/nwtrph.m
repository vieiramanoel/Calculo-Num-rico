function root = nwtrph(x)
    syms y;
    g = y^2+y-6;
    gl = diff(g);
    root = x - vpa(subs(g, y, x))/vpa(subs(gl, y, x));
    lroot = x;
    while abs(lroot-root) > 10^-3
        lroot = root;
        root = root - vpa(subs(g, y, root))/vpa(subs(gl, y, root));
    end
end