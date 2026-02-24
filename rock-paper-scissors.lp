action(rock; paper; scissors).

person(p1; p2).

1 { play(p1, A) : action(A)} 1.
1 { play(p2, A) : action(A)} 1.

winner(p1) :- play(p1, rock), play(p2, scissors).
winner(p1) :- play(p1, paper), play(p2, rock).
winner(p1) :- play(p1, scissors), play(p2, paper).

winner(p2) :- play(p2, rock), play(p1, scissors).
winner(p2) :- play(p2, paper), play(p1, rock).
winner(p2) :- play(p2, scissors), play(p1, paper).

tie() :- play(p1, A1), play(p2, A2), A1=A2.

#show play/2.
#show winner/1.
#show tie/0.
