%%
%% Áries - 21/03 - 20/04
%%
signo(Dia, Mes, Signo) :-
    (
        %% De 21/03 a 31/03 e
        (Dia >= 21, Dia =< 31, Mes = 3);
        %% 01/04 a 20/04 inclusive
        (Dia >= 1, Dia =< 20, Mes = 5)
    ),
    Signo = aries, !.

%%
%% Touro - 21/04 - 20/05
%%
signo(Dia, Mes, Signo) :-
    (
        %% De 21/03 a 31/03 e
        (Dia >= 21, Dia =< 30, Mes = 4);
        %% 01/04 a 20/04 inclusive
        (Dia >= 1, Dia =< 20, Mes = 5)
    ),
    Signo = touro, !.

%%
%% Gêmeos - 21/05 - 20/06
%%
signo(Dia, Mes, Signo) :-
    (
        %% De 21/05 a 31/05 e
        (Dia >= 21, Dia =< 31, Mes = 5);
        %% 01/06 a 20/06 inclusive
        (Dia >= 1, Dia =< 20, Mes = 6)
    ),
    Signo = gemeos, !.

%%
%% Câncer - 21/06 - 21/07
%%
signo(Dia, Mes, Signo) :-
    (
        %% De 21/06 a 30/06 e
        (Dia >= 21, Dia =< 30, Mes = 6);
        %% De 01/07 a 21/07
        (Dia >= 1, Dia =< 21, Mes = 7)
    ),
    Signo = cancer, !.

%%
%% Leão - 22/07 - 22/08
%%
signo(Dia, Mes, Signo) :-
    (
        %% De 22/07 a 31/07 e
        (Dia >= 22, Dia =< 31, Mes = 7);
        %% De 01/07 a 22/08
        (Dia >= 1, Dia =< 22, Mes = 8)
    ),
    Signo = leao, !.

%%
%% Virgem - 23/08 - 22/09
%%
signo(Dia, Mes, Signo) :-
    (
        %% De 23/08 a 31/08 e
        (Dia >= 23, Dia =< 31, Mes = 8);
        %% De 01/09 a 22/09
        (Dia >= 1, Dia =< 22, Mes = 9)
    ),
    Signo = virgem, !.


%%
%% Libra - 23/09 - 22/10
%%
signo(Dia, Mes, Signo) :-
    (
        %% De 23/09 a 30/09 e
        (Dia >= 23, Dia =< 30, Mes = 9);
        %% De 01/10 a 22/10
        (Dia >= 1, Dia =< 22, Mes = 10)
    ),
    Signo = libra, !.

%%
%% Escorpião - 23/10 - 21/11
%%
signo(Dia, Mes, Signo) :-
    (
        %% De 23/10 a 31/10 e
        (Dia >= 23, Dia =< 31, Mes = 10);
        %% de 01/11 a 21/11
        (Dia >= 1, Dia =< 21, Mes = 11)
    ),
    Signo = escorpiao, !.

%%
%% Sagitário - 22/11 - 21/12
%%
signo(Dia, Mes, Signo) :-
    (
        %% De 22/11 a 30/11 e
        (Dia >= 22, Dia =< 30, Mes = 11);
        %% de 01/12 a 21/12
        (Dia >= 1, Dia =< 21, Mes = 12)
    ),
    Signo = sagitario, !.

%%
%% Capricórnio - 22/12 - 20/01
%%
signo(Dia, Mes, Signo) :-
    (
        %% De 22/12 a 31/12 e
        (Dia >= 22, Dia =< 31, Mes = 12);
        %% de 01/01 a 20/01
        (Dia >= 1, Dia =< 20, Mes = 1)
    ),
    Signo = capricornio, !.

%%
%% Aquário - 21/01 - 19/02
%%
signo(Dia, Mes, Signo) :-
    (
        %% De 21/01 a 31/01 e
        (Dia >= 21, Dia =< 31, Mes = 1);
        %% de 01/02 a 19/02
        (Dia >= 1, Dia =< 19, Mes = 2)
    ),
    Signo = aquario, !.

%%
%% Peixes - 20/02 - 20/03
%%
signo(Dia, Mes, Signo) :-
    (
        %% De 20/02 a 29/02 e
        (Dia >= 20, Dia =< 29, Mes = 2);
        %% de 01/03 a 20/03
        (Dia >= 1, Dia =< 20, Mes = 3)
    ),
    Signo = peixes, !.

%%
%% Erro de range
%%
signo(_, _, Signo) :-
    Signo = "Erro, data inválida".