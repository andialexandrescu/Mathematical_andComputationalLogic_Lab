% Fibonacci ineficient
fibo1(0,1).
fibo1(1,1).
fibo1(N,R) :- N>1, N1 is N-1, fibo1(N1,X), N2 is N-2, fibo1(N2,Y), R is X+Y.

% Eficient
/* predicatul fibo/3 va primi acum trei argumente: N, Y, si R. Y este folosit pentru a stoca valoarea lui fibo(N-1), iar R este folosit pentru a stoca rezultatul lui fibo(N). Cand se calculează fib(N, R), se calculeaza recursiv fibo(N-1, X, Y) si se stocheaza rezultatul in X si valoarea anterioara in Y */

fibo(0,0,1).
fibo(1,1,1).% val din mijloc indica suma termenilor anteriori 1=0+1
fibo(N,Y,R) :- N>1, N1 is N-1, fibo(N1,X,Y), R is X+Y.
fib(N,R) :- fibo(N,_,R).

 /*ver 2 este mai eficienta datorita utilizarii memorizarii, care evia calculul redundant pt ca reduce numarul de apeluri recursive*/
