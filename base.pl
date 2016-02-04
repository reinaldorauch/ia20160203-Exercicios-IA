%% Exercícios - Valendo nota no 4º bimestre.

%% Entregar um documento no Word, contendo o seu nome e a resolução dos
%% exercícios em Prolog, individualmente,para o email "leilamv@gmail.com", no
%% dia 5 de fevereiro de 2016. Colocar no assunto do email "IA: exercícios
%% Prolog - 4º Bimestre".

%% Material "2015-11-10-apostila-prolog.pdf".

%% página 28: exercícios 10.1 a 10.3; 10.6 a 10.10; 10.12 (feitos em ...)
%% página 31: exercícios 10.13 a 10.16. (feitos em ... e ...) - Assunto: cortes
%% em Prolog.

/**
 * Facts
 */
genitor(pam,bob).
genitor(tom,bob).
genitor(tom,liz).
genitor(bob,ann).
genitor(bob,pat).
genitor(pat,jim).
genitor(ron, tonya).
genitor(hermione, tonya).
genitor(tonya, ann).
genitor(tonya, pat).

mulher(pam).
mulher(liz).
mulher(pat).
mulher(ann).
mulher(hermione).
mulher(tonya).
homem(tom).
homem(bob).
homem(jim).
homem(ron).

/**
 * Rules
 */
prole(Y,X) :- genitor(X,Y).

mae(X,Y) :- genitor(X,Y), mulher(X).

avos(X,Z) :- genitor(X,Y), genitor(Y,Z).

irma(X,Y) :- genitor(Z,X), genitor(Z,Y), mulher(X), not(X = Y).

descendente(X,Z) :- genitor(X,Z).
descendente(X,Z) :- genitor(X,Y), descendente(Y,Z).

irmao(X,Y) :- genitor(Z,X), genitor(Z,Y), homem(X), not(X = Y).

irmaos(X,Y) :- genitor(Z,X), genitor(Z,Y), not(X = Y).

tio(X,Y) :- irmao(X,Z), genitor(Z, Y).

tia(X,Y) :- irma(X,Z), genitor(Z, Y).

avos_paternos(X,Y) :- genitor(X, Z), genitor(Z, Y), homem(Z).

avos_maternos(X,Y) :- genitor(X, Z), genitor(Z, Y), mulher(Z).

ascendente(Y, X) :- descendente(X, Y).

primos(X, Y) :- irmaos(Z, A), genitor(Z, X), genitor(A, Y), not(X = Y).