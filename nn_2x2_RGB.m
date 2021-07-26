function out = nn_2x2_RGB(img, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare nearest neighbour pe imaginea 2x2 img cu puncte
    % intermediare echidistante.
    % img este o imagine colorata RGB.
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    R_matrix = img(:,:,1);

    % TODO: extrage canalul verde al imaginii
    G_matrix = img(:,:,2);

    % TODO: extrace canalul albastru al imaginii
    B_matrix = img(:,:,3);

    
    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    R_out = nn_2x2(R_matrix, STEP);
    G_out = nn_2x2(G_matrix, STEP);
    B_out = nn_2x2(B_matrix, STEP);
    
    
    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    out = cat(3, R_out, G_out, B_out);
    % Hint: functia cat

endfunction
