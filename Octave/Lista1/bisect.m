function xn = bisect(ii, ie)
  a = ii;
  b = ie;
  xn = (a + b) / 2.0;
  while abs(f(a) - f(xn)) > 0.001;
    if f(a) * f(xn) < 0
        b = xn;
    else
        a = xn;
    end
    xn = (a + b) / 2.0;
  end
end
