%% Calcular a n-ésima potência de um número

pot(_, 0, 1).
pot(X, 1, X).

pot(X, Y, X3) :- Y > 1, Y2 is Y - 1, pot(X, Y2, X4), X3 is X * X4.

checagem(0, zero).
checagem(N, positivo) :- N > 0, !.
checagem(N, negativo) :- N < 0.

traduza(1, integer_overflow).
traduza(2, divisao_por_zero).
traduza(3, id_desconhecido).


faixaEtaria(X, Y) :- X =< 12, Y = crianca, !.
faixaEtaria(X, Y) :- X =< 18, Y = adolescente, !.
faixaEtaria(X, Y) :- X =< 65, Y = adulto, !.
faixaEtaria(X, Y) :- Y = idoso.