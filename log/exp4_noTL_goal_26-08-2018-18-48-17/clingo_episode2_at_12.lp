1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((3, 8)).

wall((3, 6)).

wall((4, 8)).

wall((5, 8)).

wall((5, 6)).

wall((6, 8)).

wall((7, 8)).

wall((7, 6)).

wall((8, 8)).

wall((8, 6)).

wall((9, 8)).

wall((9, 6)).

wall((10, 8)).

wall((11, 8)).

wall((11, 6)).

wall((12, 8)).

wall((12, 6)).

wall((14, 7)).

wall((13, 8)).

wall((14, 6)).

wall((12, 5)).

wall((13, 4)).
link_start((14,5)). link_dest((14,3)). 

wall((15, 3)).

wall((14, 4)).

wall((13, 3)).

wall((15, 2)).

wall((13, 2)).

wall((14, 0)).

wall((15, 0)).
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V1, T+1) :- time(T), link_start(V0), link_dest(V1), state_at(V0, T).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((10, 7), 12).
%BBB
%CCC
time(12..250).
%DDD
%ANSWER SETS

%state_at((10,7),12)
%state_at((11,7),13)
%action(right,12)
%action(right,13)
%state_at((12,7),14)
%action(right,14)
%state_at((13,7),15)
%action(up,15)
%state_at((13,6),16)
%action(up,16)
%state_at((13,5),17)
%action(right,17)
%state_at((14,5),18)
%action(right,18)
%state_at((15,5),19)
%state_at((14,3),19)
%state_at((14,2),20)
%action(up,19)
%state_at((15,4),20)
%action(up,20)
%state_at((15,4),21)
%state_at((14,1),21)
%state_at((16,4),22)
%action(right,21)
%state_at((15,1),22)
%state_at((17,4),23)
%action(right,22)
%state_at((16,1),23)
