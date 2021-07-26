function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia
    % =========================================================================

    % obtine dimensiunea imaginii
    [m n nr_colors] = size(I);

    % TODO: fa cast matricii I la double
    I = cast(I, "double");
    
    
    % TODO: calculeaza matricea cu derivate fata de x Ix
    Ix = zeros(m, n);
    for y = 1 : m
      for x = 1 : n
        if (x == 1 || x == n)
          continue;
        endif
        Ix(y, x) = fx(I, x, y);
      endfor
    endfor
    
    
    % TODO: calculeaza matricea cu derivate fata de y Iy
    Iy = zeros(m, n);
    for y = 1 : m
      for x = 1 : n
        if (y == 1 || y == m)
          continue;
        endif
        Iy(y, x) = fy(I, x, y);
      endfor
    endfor
    
    
    % TODO: calculeaza matricea cu derivate fata de xy Ixy
    Ixy = zeros(m, n);
    for y = 1 : m
      for x = 1 : n
        if (y == 1 || y == m || x == 1 || x == n)
          continue;
        endif
        Ixy(y, x) = fxy(I, x, y);
      endfor
    endfor
   

endfunction