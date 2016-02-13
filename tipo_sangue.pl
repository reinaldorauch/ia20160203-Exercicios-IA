%% Fatos
tipo(a).
tipo(b).
tipo(o).
tipo(ab).

doa(a, a).
doa(a, ab).

doa(ab, ab).

doa(b, b).
doa(b, ab).

doa(o, o).
doa(o, a).
doa(o, ab).
doa(o, b).

%% Regras
recebe(X, Y) :- doa(Y, X).