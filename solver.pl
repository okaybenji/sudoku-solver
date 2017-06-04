% 4x4 Sudoku Solver

sudoku([A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P], Solution) :-

% Solution is the completed puzzle, a list with 16 elements.
Solution = [A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P],

% Each element must be a number between 1 and 4.
fd_domain(Solution, 1, 4),

% Each row must contain unique values.
fd_all_different([A, B, C, D]),
fd_all_different([E, F, G, H]),
fd_all_different([I, J, K, L]),
fd_all_different([M, N, O, P]),

% Each square must contain unique values.
fd_all_different([A, B, E, F]),
fd_all_different([C, D, G, H]),
fd_all_different([I, J, M, N]),
fd_all_different([K, L, O, P]),

% Each column must contain unique values.
fd_all_different([A, E, I, M]),
fd_all_different([B, F, J, N]),
fd_all_different([C, G, K, O]),
fd_all_different([D, H, L, P]).

% Usage:
% | ?- sudoku([_, _, 2, 3, _, _, _, _, _, _, _, _, 3, 4, _, _], Solution).
% => Solution = [4,1,2,3,2,3,4,1,1,2,3,4,3,4,1,2]
% => yes
