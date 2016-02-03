%% Exercícios - Valendo nota no 4º bimestre.

%% Entregar um documento no Word, contendo o seu nome e a resolução dos
%% exercícios em Prolog, individualmente,para o email "leilamv@gmail.com", no
%% dia 5 de fevereiro de 2016. Colocar no assunto do email "IA: exercícios
%% Prolog - 4º Bimestre".

%% Material "2015-11-10-apostila-prolog.pdf".

%% página 28: exercícios 10.1 a 10.3; 10.6 a 10.10; 10.12 (feitos em ...)
%% página 31: exercícios 10.13 a 10.16. (feitos em ... e ...) - Assunto: cortes
%% em Prolog.

genitor(pam,bob).
genitor(tom,bob).
genitor(tom,liz).
genitor(bob,ann).
genitor(bob,pat).
genitor(pat,jim).

mulher(pam).
mulher(liz).
mulher(pat).
mulher(ann).
homem(tom).
homem(bob).
homem(jim).

prole(Y,X) :− genitor(X,Y).

mae(X,Y) :− genitor(X,Y), mulher(X).

avos(X,Z) :− genitor(X,Y), genitor(Y,Z).

irma(X,Y) :− genitor(Z,X), genitor(Z,Y), mulher(X), not(X = Y).

descendente(X,Z) :− genitor(X,Z).
descendente(X,Z) :− genitor(X,Y), descendente(Y,Z).
