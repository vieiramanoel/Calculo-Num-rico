function xk = secroot(xk, xk0)
  while abs(f(xk) - f(xk0)) > 10 ^ -3
      xk1 = xk - (f(xk) * (xk - xk0) / (f(xk) - f(xk0)));
      xk0 = xk;
      xk = xk1;
  end
  return 
end