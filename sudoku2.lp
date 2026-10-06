% Sudoku Solver

1 { sudoku(X,Y,N) : N=1..9 } 1 :- X=1..9, Y=1..9.

sudoku(X,Y,N) :- initial(X,Y,N).

:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 != Y2.
:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 != X2.

subgrid(X,Y,1+(((X-1)/3)*3+(Y-1)/3)) :- X=1..9, Y=1..9.

:- sudoku(X1,Y1,N), sudoku(X2,Y2,N),
   subgrid(X1,Y1,G), subgrid(X2,Y2,G), (X1,Y1) != (X2,Y2).

#show sudoku/3.