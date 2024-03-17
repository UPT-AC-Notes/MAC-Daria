function x = metoda_bisectiei(f,a, b, tol)

if f(a) * f(b) >= 0
    error('Conditia f(a) * f(b) < 0 nu este satisfacuta!')
end

while (b - a) / 2 > tol
    c = (a + b) / 2;
    if f(c) == 0
        break;
    end
    if f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end
end

x = (a + b) /2;