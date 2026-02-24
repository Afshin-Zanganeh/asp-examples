% Rock Paper Scissors Game
% This program generates all possible game scenarios between two players

% Define the three possible actions in the game
action(rock; paper; scissors).

% Define the two players
person(p1; p2).

% Each player must choose exactly one action
% The syntax "1 { ... } 1" means: choose exactly 1 from the set
1 { play(p1, A) : action(A)} 1.
1 { play(p2, A) : action(A)} 1.

% Define winning conditions for player 1
% Rock beats scissors
winner(p1) :- play(p1, rock), play(p2, scissors).
% Paper beats rock
winner(p1) :- play(p1, paper), play(p2, rock).
% Scissors beats paper
winner(p1) :- play(p1, scissors), play(p2, paper).

% Define winning conditions for player 2
% Rock beats scissors
winner(p2) :- play(p2, rock), play(p1, scissors).
% Paper beats rock
winner(p2) :- play(p2, paper), play(p1, rock).
% Scissors beats paper
winner(p2) :- play(p2, scissors), play(p1, paper).

% Define tie condition: both players choose the same action
tie() :- play(p1, A1), play(p2, A2), A1=A2.

% Display the results: show which actions were played, who won, and if there's a tie
#show play/2.
#show winner/1.
#show tie/0.
