% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

1 { sudoku(X,Y,N)  : N=1..4 } 1 :- X=1..4, Y=1..4.
% achieved: every cell contains exactly one number between 1 and 4

sudoku(X,Y,N) :- initial(X,Y,N).
% achieved: sudoku cell has value N if that value was given as initial clue.

:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 != Y2.
% achieved: don't allow duplicate numbers within a row.

:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 != X2.
% achieved: don't allow duplicate numbers within a column.

subgrid(X,Y,G) :-
    X=1..4,
    Y=1..4,
    G = 1 + (((X-1)/2)*2 + (Y-1)/2).

%This prevent duplication of numbers in the same rows and column
:- sudoku(X1,Y1,N), sudoku(X2,Y2,N), subgrid(X1,Y1,G), subgrid(X2,Y2,G), (X1,Y1) != (X2,Y2).

#show sudoku/3.
