import math
import time


def f(x):
    return x - 2**(-x)


def f1(x):
    return (4 * math.sin(x) / 3 * x) - 1


def bisect(ii, ie):
    a, b = ii, ie
    xn = (a + b) / 2.0
    if b - a < 0.001:
        return float(xn)
    else:
        if f(a) * f(xn) < 0:
            return bisect(a, xn)
        else:
            return bisect(xn, b)


def itsec(xk, xk0, it):
    for i in range(it):
        xk = xk - (f1(xk) * (xk - xk0) / (f1(xk) - f1(xk0)))

    return xk


def sec(xk, xk0):
    if (f1(xk) - f1(xk0)) == 0:
        return xk
    else:
        xk1 = xk - (f1(xk) * (xk - xk0) / (f1(xk) - f1(xk0)))
        diff = abs(xk1 - xk)
        if diff < 10**-3:
            return xk1
        else:
            return sec(xk1, xk)


def fixedpoint(x, it):
    for i in range(it):
        x = f(x)
    return x


a = bisect(0, 1)
