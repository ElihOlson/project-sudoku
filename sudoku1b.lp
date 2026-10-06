% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

subgrid(X,Y,G) :-
    X=1..4,
    Y=1..4,
    G = 1 + (((X-1)/2)*2 + (Y-1)/2).

#show sudoku/3.
