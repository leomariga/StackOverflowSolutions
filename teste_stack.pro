wrote(applying_uml,pauline_wilcox).
wrote(applying_uml,pooley_rob).
wrote(artificial_intelligence,boden_margaret).
wrote(artificial_vision,cantoni_virginio).
wrote(artificial_vision,levialdi_stefano).
wrote(bioinformatics,critchlow_terence).
price(applying_uml,72).
price(artificial_intelligence,92).
price(artificial_vision,48).
price(bioinformatics,57).

specs(BK1, Aut1, P1) :- price(BK1, B), B =< P1, wrote(BK1, Aut1), 
		write(P1), write(', '), write(Aut1), write(', '), write(BK1) ,nl, fail.