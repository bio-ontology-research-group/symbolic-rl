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

wall((2, 6)).

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

wall((10, 6)).

wall((11, 8)).

wall((11, 6)).

wall((12, 8)).

wall((12, 6)).

wall((14, 7)).

wall((13, 8)).
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), action(up, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).

%END
%AAA
state_at((13, 7), 25).
%BBB
%CCC
time(25..250).
%DDD
%ANSWER SETS

%state_at((13,7),25)
%state_at((13,7),251)
%state_at((13,7),250)
%state_at((13,7),249)
%state_at((13,7),248)
%state_at((13,7),247)
%state_at((13,7),246)
%state_at((13,7),245)
%state_at((13,7),244)
%state_at((13,7),243)
%state_at((13,7),242)
%state_at((13,7),241)
%state_at((13,7),240)
%state_at((13,7),239)
%state_at((13,7),238)
%state_at((13,7),237)
%state_at((13,7),236)
%state_at((13,7),235)
%state_at((13,7),234)
%state_at((13,7),233)
%state_at((13,7),232)
%state_at((13,7),231)
%state_at((13,7),230)
%state_at((13,7),229)
%state_at((13,7),228)
%state_at((13,7),227)
%state_at((13,7),226)
%state_at((13,7),225)
%state_at((13,7),224)
%state_at((13,7),223)
%state_at((13,7),222)
%state_at((13,7),221)
%state_at((13,7),220)
%state_at((13,7),219)
%state_at((13,7),218)
%state_at((13,7),217)
%state_at((13,7),216)
%state_at((13,7),215)
%state_at((13,7),214)
%state_at((13,7),213)
%state_at((13,7),212)
%state_at((13,7),211)
%state_at((13,7),210)
%state_at((13,7),209)
%state_at((13,7),208)
%state_at((13,7),207)
%state_at((13,7),206)
%state_at((13,7),205)
%state_at((13,7),204)
%state_at((13,7),203)
%state_at((13,7),202)
%state_at((13,7),201)
%state_at((13,7),200)
%state_at((13,7),199)
%state_at((13,7),198)
%state_at((13,7),197)
%state_at((13,7),196)
%state_at((13,7),195)
%state_at((13,7),194)
%state_at((13,7),193)
%state_at((13,7),192)
%state_at((13,7),191)
%state_at((13,7),190)
%state_at((13,7),189)
%state_at((13,7),188)
%state_at((13,7),187)
%state_at((13,7),186)
%state_at((13,7),185)
%state_at((13,7),184)
%state_at((13,7),183)
%state_at((13,7),182)
%state_at((13,7),181)
%state_at((13,7),180)
%state_at((13,7),179)
%state_at((13,7),178)
%state_at((13,7),177)
%state_at((13,7),176)
%state_at((13,7),175)
%state_at((13,7),174)
%state_at((13,7),173)
%state_at((13,7),172)
%state_at((13,7),171)
%state_at((13,7),170)
%state_at((13,7),169)
%state_at((13,7),168)
%state_at((13,7),167)
%state_at((13,7),166)
%state_at((13,7),165)
%state_at((13,7),164)
%state_at((13,7),163)
%state_at((13,7),162)
%state_at((13,7),161)
%state_at((13,7),160)
%state_at((13,7),159)
%state_at((13,7),158)
%state_at((13,7),157)
%state_at((13,7),156)
%state_at((13,7),155)
%state_at((13,7),154)
%state_at((13,7),153)
%state_at((13,7),152)
%state_at((13,7),151)
%state_at((13,7),150)
%state_at((13,7),149)
%state_at((13,7),148)
%state_at((13,7),147)
%state_at((13,7),146)
%state_at((13,7),145)
%state_at((13,7),144)
%state_at((13,7),143)
%state_at((13,7),142)
%state_at((13,7),141)
%state_at((13,7),140)
%state_at((13,7),139)
%state_at((13,7),138)
%state_at((13,7),137)
%state_at((13,7),136)
%state_at((13,7),135)
%state_at((13,7),134)
%state_at((13,7),133)
%state_at((13,7),132)
%state_at((13,7),131)
%state_at((13,7),130)
%state_at((13,7),129)
%state_at((13,7),128)
%state_at((13,7),127)
%state_at((13,7),126)
%state_at((13,7),125)
%state_at((13,7),124)
%state_at((13,7),123)
%state_at((13,7),122)
%state_at((13,7),121)
%state_at((13,7),120)
%state_at((13,7),119)
%state_at((13,7),118)
%state_at((13,7),117)
%state_at((13,7),116)
%state_at((13,7),115)
%state_at((13,7),114)
%state_at((13,7),113)
%state_at((13,7),112)
%state_at((13,7),111)
%state_at((13,7),110)
%state_at((13,7),109)
%state_at((13,7),108)
%state_at((13,7),107)
%state_at((13,7),106)
%state_at((13,7),105)
%state_at((13,7),104)
%state_at((13,7),103)
%state_at((13,7),102)
%state_at((13,7),101)
%state_at((13,7),100)
%state_at((13,7),99)
%state_at((13,7),98)
%state_at((13,7),97)
%state_at((13,7),96)
%state_at((13,7),95)
%state_at((13,7),94)
%state_at((13,7),93)
%state_at((13,7),92)
%state_at((13,7),91)
%state_at((13,7),90)
%state_at((13,7),89)
%state_at((13,7),88)
%state_at((13,7),87)
%state_at((13,7),86)
%state_at((13,7),85)
%state_at((13,7),84)
%state_at((13,7),83)
%state_at((13,7),82)
%state_at((13,7),81)
%state_at((13,7),80)
%state_at((13,7),79)
%state_at((13,7),78)
%state_at((13,7),77)
%state_at((13,7),76)
%state_at((13,7),75)
%state_at((13,7),74)
%state_at((13,7),73)
%state_at((13,7),72)
%state_at((13,7),71)
%state_at((13,7),70)
%state_at((13,7),69)
%state_at((13,7),68)
%state_at((13,7),67)
%state_at((13,7),66)
%state_at((13,7),65)
%state_at((13,7),64)
%state_at((13,7),63)
%state_at((13,7),62)
%state_at((13,7),61)
%state_at((13,7),60)
%state_at((13,7),59)
%state_at((13,7),58)
%state_at((13,7),57)
%state_at((13,7),56)
%state_at((13,7),55)
%state_at((13,7),54)
%state_at((13,7),53)
%state_at((13,7),52)
%state_at((13,7),51)
%state_at((13,7),50)
%state_at((13,7),49)
%state_at((13,7),48)
%state_at((13,7),47)
%state_at((13,7),46)
%state_at((13,7),45)
%state_at((13,7),44)
%state_at((13,7),43)
%state_at((13,7),42)
%state_at((13,7),41)
%state_at((13,7),40)
%state_at((13,7),39)
%state_at((13,7),38)
%state_at((13,7),37)
%state_at((13,7),36)
%state_at((13,7),35)
%state_at((13,7),34)
%state_at((13,7),33)
%state_at((13,7),32)
%state_at((13,7),31)
%state_at((13,7),30)
%state_at((13,7),29)
%state_at((13,7),28)
%state_at((13,7),27)
%state_at((13,7),26)
%state_at((1,7),26)
%action(up,25)
%state_at((1,7),27)
%action(up,26)
%state_at((1,7),28)
%action(up,27)
%state_at((1,7),29)
%action(up,28)
%state_at((1,7),30)
%action(up,29)
%state_at((1,7),31)
%action(up,30)
%state_at((2,7),26)
%state_at((2,7),27)
%state_at((2,7),28)
%state_at((2,7),29)
%state_at((2,7),30)
%state_at((2,7),31)
%state_at((2,7),32)
%state_at((3,7),26)
%state_at((3,7),27)
%state_at((3,7),28)
%state_at((3,7),29)
%state_at((3,7),30)
%state_at((3,7),31)
%state_at((3,7),32)
%state_at((3,7),33)
%state_at((5,7),26)
%state_at((5,7),27)
%state_at((5,7),28)
%state_at((5,7),29)
%state_at((5,7),30)
%state_at((5,7),31)
%state_at((5,7),33)
%state_at((5,7),34)
%state_at((7,7),26)
%state_at((7,7),27)
%state_at((7,7),28)
%state_at((7,7),29)
%state_at((7,7),30)
%state_at((7,7),31)
%state_at((7,7),33)
%state_at((8,7),26)
%state_at((8,7),27)
%state_at((8,7),28)
%state_at((8,7),29)
%state_at((8,7),30)
%state_at((8,7),31)
%state_at((8,7),32)
%state_at((8,7),34)
%state_at((9,7),26)
%state_at((9,7),27)
%state_at((9,7),28)
%state_at((9,7),29)
%state_at((9,7),30)
%state_at((9,7),31)
%state_at((9,7),32)
%state_at((9,7),33)
%state_at((10,7),26)
%state_at((10,7),27)
%state_at((10,7),28)
%state_at((10,7),29)
%state_at((10,7),30)
%state_at((10,7),31)
%state_at((10,7),32)
%state_at((10,7),33)
%state_at((10,7),34)
%state_at((11,7),26)
%state_at((11,7),27)
%state_at((11,7),28)
%state_at((11,7),29)
%state_at((11,7),30)
%state_at((11,7),31)
%state_at((11,7),32)
%state_at((11,7),33)
%state_at((11,7),34)
%state_at((12,7),26)
%state_at((12,7),27)
%state_at((12,7),28)
%state_at((12,7),29)
%state_at((12,7),30)
%state_at((12,7),31)
%state_at((12,7),32)
%state_at((12,7),33)
%state_at((12,7),34)
%state_at((0,8),26)
%state_at((0,8),27)
%state_at((0,8),28)
%state_at((0,8),29)
%state_at((0,8),30)
%state_at((0,8),31)
%state_at((0,8),32)
%state_at((0,8),33)
%state_at((0,8),34)
%state_at((0,8),35)
%state_at((0,8),36)
%state_at((0,8),37)
%state_at((0,8),38)
%state_at((0,8),39)
%state_at((0,8),40)
%state_at((0,8),41)
%state_at((0,8),42)
%state_at((0,8),43)
%state_at((0,8),44)
%state_at((0,8),45)
%state_at((0,8),46)
%state_at((0,8),47)
%state_at((0,8),48)
%state_at((0,8),49)
%state_at((0,8),50)
%state_at((0,8),51)
%state_at((0,8),52)
%state_at((0,8),53)
%state_at((0,8),54)
%state_at((0,8),55)
%state_at((0,8),56)
%state_at((0,8),57)
%state_at((0,8),58)
%state_at((0,8),59)
%state_at((0,8),60)
%state_at((0,8),61)
%state_at((0,8),62)
%state_at((0,8),63)
%state_at((0,8),64)
%state_at((0,8),65)
%state_at((0,8),66)
%state_at((0,8),67)
%state_at((0,8),68)
%state_at((0,8),69)
%state_at((0,8),70)
%state_at((0,8),71)
%state_at((0,8),72)
%state_at((0,8),73)
%state_at((0,8),74)
%state_at((0,8),75)
%state_at((0,8),76)
%state_at((0,8),77)
%state_at((0,8),78)
%state_at((0,8),79)
%state_at((0,8),80)
%state_at((0,8),81)
%state_at((0,8),82)
%state_at((0,8),83)
%state_at((0,8),84)
%state_at((0,8),85)
%state_at((0,8),86)
%state_at((0,8),87)
%state_at((0,8),88)
%state_at((0,8),89)
%state_at((0,8),90)
%state_at((0,8),91)
%state_at((0,8),92)
%state_at((0,8),93)
%state_at((0,8),94)
%state_at((0,8),95)
%state_at((0,8),96)
%state_at((0,8),97)
%state_at((0,8),98)
%state_at((0,8),99)
%state_at((0,8),100)
%state_at((0,8),101)
%state_at((0,8),102)
%state_at((0,8),103)
%state_at((0,8),104)
%state_at((0,8),105)
%state_at((0,8),106)
%state_at((0,8),107)
%state_at((0,8),108)
%state_at((0,8),109)
%state_at((0,8),110)
%state_at((0,8),111)
%state_at((0,8),112)
%state_at((0,8),113)
%state_at((0,8),114)
%state_at((0,8),115)
%state_at((0,8),116)
%state_at((0,8),117)
%state_at((0,8),118)
%state_at((0,8),119)
%state_at((0,8),120)
%state_at((0,8),121)
%state_at((0,8),122)
%state_at((0,8),123)
%state_at((0,8),124)
%state_at((0,8),125)
%state_at((0,8),126)
%state_at((0,8),127)
%state_at((0,8),128)
%state_at((0,8),129)
%state_at((0,8),130)
%state_at((0,8),131)
%state_at((0,8),132)
%state_at((0,8),133)
%state_at((0,8),134)
%state_at((0,8),135)
%state_at((0,8),136)
%state_at((0,8),137)
%state_at((0,8),138)
%state_at((0,8),139)
%state_at((0,8),140)
%state_at((0,8),141)
%state_at((0,8),142)
%state_at((0,8),143)
%state_at((0,8),144)
%state_at((0,8),145)
%state_at((0,8),146)
%state_at((0,8),147)
%state_at((0,8),148)
%state_at((0,8),149)
%state_at((0,8),150)
%state_at((0,8),151)
%state_at((0,8),152)
%state_at((0,8),153)
%state_at((0,8),154)
%state_at((0,8),155)
%state_at((0,8),156)
%state_at((0,8),157)
%state_at((0,8),158)
%state_at((0,8),159)
%state_at((0,8),160)
%state_at((0,8),161)
%state_at((0,8),162)
%state_at((0,8),163)
%state_at((0,8),164)
%state_at((0,8),165)
%state_at((0,8),166)
%state_at((0,8),167)
%state_at((0,8),168)
%state_at((0,8),169)
%state_at((0,8),170)
%state_at((0,8),171)
%state_at((0,8),172)
%state_at((0,8),173)
%state_at((0,8),174)
%state_at((0,8),175)
%state_at((0,8),176)
%state_at((0,8),177)
%state_at((0,8),178)
%state_at((0,8),179)
%state_at((0,8),180)
%state_at((0,8),181)
%state_at((0,8),182)
%state_at((0,8),183)
%state_at((0,8),184)
%state_at((0,8),185)
%state_at((0,8),186)
%state_at((0,8),187)
%state_at((0,8),188)
%state_at((0,8),189)
%state_at((0,8),190)
%state_at((0,8),191)
%state_at((0,8),192)
%state_at((0,8),193)
%state_at((0,8),194)
%state_at((0,8),195)
%state_at((0,8),196)
%state_at((0,8),197)
%state_at((0,8),198)
%state_at((0,8),199)
%state_at((0,8),200)
%state_at((0,8),201)
%state_at((0,8),202)
%state_at((0,8),203)
%state_at((0,8),204)
%state_at((0,8),205)
%state_at((0,8),206)
%state_at((0,8),207)
%state_at((0,8),208)
%state_at((0,8),209)
%state_at((0,8),210)
%state_at((0,8),211)
%state_at((0,8),212)
%state_at((0,8),213)
%state_at((0,8),214)
%state_at((0,8),215)
%state_at((0,8),216)
%state_at((0,8),217)
%state_at((0,8),218)
%state_at((0,8),219)
%state_at((0,8),220)
%state_at((0,8),221)
%state_at((0,8),222)
%state_at((0,8),223)
%state_at((0,8),224)
%state_at((0,8),225)
%state_at((0,8),226)
%state_at((0,8),227)
%state_at((0,8),228)
%state_at((0,8),229)
%state_at((0,8),230)
%state_at((0,8),231)
%state_at((0,8),232)
%state_at((0,8),233)
%state_at((0,8),234)
%state_at((0,8),235)
%state_at((0,8),236)
%state_at((0,8),237)
%state_at((0,8),238)
%state_at((0,8),239)
%state_at((0,8),240)
%state_at((0,8),241)
%state_at((0,8),242)
%state_at((0,8),243)
%state_at((0,8),244)
%state_at((0,8),245)
%state_at((0,8),246)
%state_at((0,8),247)
%state_at((0,8),248)
%state_at((0,8),249)
%state_at((0,8),250)
%state_at((0,8),251)
%state_at((14,8),26)
%state_at((14,8),27)
%state_at((14,8),28)
%state_at((14,8),29)
%state_at((14,8),30)
%state_at((14,8),31)
%state_at((13,6),26)
%action(right,33)
%action(right,32)
%state_at((15,8),32)
%action(right,31)
%state_at((6,7),34)
%state_at((6,7),32)
%state_at((4,7),34)
%state_at((4,7),33)
%state_at((4,7),32)
%state_at((13,6),27)
%state_at((13,6),28)
%state_at((13,6),29)
%state_at((13,6),30)
%state_at((13,6),31)
%state_at((13,5),27)
%state_at((16,8),33)
%state_at((13,4),28)
%state_at((15,6),33)
%state_at((13,5),31)
%state_at((13,5),30)
%state_at((13,5),29)
%state_at((13,5),28)
%state_at((17,8),34)
%state_at((14,6),32)
%state_at((14,5),32)
%state_at((13,4),29)
%state_at((13,4),30)
%state_at((13,4),31)
%state_at((15,5),33)
%state_at((13,3),29)
%state_at((16,6),34)
%state_at((16,5),34)
%state_at((13,2),30)
%state_at((15,4),33)
%state_at((13,3),31)
%state_at((13,3),30)
%state_at((14,4),32)
%state_at((14,3),32)
%state_at((13,2),31)
%state_at((15,3),33)
%state_at((13,1),31)
%state_at((16,4),34)
%state_at((14,1),32)
%state_at((16,3),34)
%state_at((15,2),33)
%state_at((14,2),32)
%state_at((15,1),33)
%state_at((16,2),34)
%state_at((16,1),34)
