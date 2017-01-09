function root = mpf(x, its)
  for i = 1:its
    x = f(x);
  end
  root = x;
end