function xc = secant(f, x0, x1, k)
    % f - function handle pentru funcția dată
    % x0, x1 - valorile inițiale
    % k - numărul de pași
    
    % Inițializăm valorile inițiale
    xi_minus_1 = x0;
    xi = x1;
    
    % Iterăm pentru k pași
    for i = 1:k
        % Calculăm xi+1 utilizând formula metodei secantei
        xi_plus_1 = xi - f(xi) * (xi - xi_minus_1) / (f(xi) - f(xi_minus_1));
        
        % Actualizăm valorile pentru următoarea iterație
        xi_minus_1 = xi;
        xi = xi_plus_1;
    end
    
    % Rezultatul final este xc = xi_plus_1
    xc = xi_plus_1;
end
