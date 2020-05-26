append( [], X, X).                                   % your 2nd line
append( [X | Y], Z, [X | W]) :- append( Y, Z, W).    % your first line

% boss(Name, Type) Name = Name of boss, Type = Attack type
boss(kraken,magic).
boss(scorpia,melee).
boss(zulrah,ranged).
boss(cerberus,melee).
boss(abyssal_sire,melee).
boss(obor,melee).
boss(sarachnis,ranged).
boss(skotizo,melee).
boss(venenatis,magic).

superEffective(magic,melee). %magic is more effective against melee
superEffective(ranged,magic). %ranged is more effective against magic
superEffective(melee,ranged). %melee is more effective against ranged

verify_con(Boss, ConBoss) :- boss(Boss,MainSkill), 
			     superEffective(MainSkill,ConSkill), 
                             boss(ConBoss,ConSkill), !.

verify_con_list([],[]).
verify_con_list([H|T], LIST) :- verify_con(H, ConBoss), 
                                verify_con_list(T, L1), 
                                append([ConBoss],L1, LIST).



%verify_con(kraken, A).
%verify_con_list([kraken, scorpia, zulrah], A).