function out = bilinear_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica interpolare bilineara pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % TODO: extrage canalul rosu al imaginii
    R_matrix = img(:, :, 1);

    
    % TODO: extrage canalul verde al imaginii
    G_matrix = img(:, :, 2);

    
    % TODO: extrace canalul albastru al imaginii
    B_matrix = img(:, :, 3);


    % TODO: aplic rotate pe fiecare canal al imaginii
    R_out = bilinear_rotate(R_matrix, rotation_angle);
    G_out = bilinear_rotate(G_matrix, rotation_angle);
    B_out = bilinear_rotate(B_matrix, rotation_angle);
    

    % TODO: reconstruieste imaginea RGB finala (hint: cat)
    out = cat(3, R_out, G_out, B_out);
    
endfunction