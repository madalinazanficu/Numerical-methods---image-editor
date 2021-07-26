function out = nn_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
    % Imaginea img este colorata.
    % Practic, apeleaza de 3 ori functia nn pe fiecare canal al imaginii.
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    R_matrix = img(:,:,1);

    % TODO: extrage canalul verde al imaginii
    G_matrix = img(:,:,2);

    % TODO: extrace canalul albastru al imaginii
    B_matrix = img(:,:,3);

    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    R_out = nn_resize(R_matrix, p, q);
    G_out = nn_resize(G_matrix, p, q);
    B_out = nn_resize(B_matrix, p, q);

    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    out = cat(3, R_out, G_out, B_out);
    % Hint: functia cat

endfunction
