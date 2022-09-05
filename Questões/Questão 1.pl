

doenca(chikun, X) :
    compare(=,X,[febre_alta, dores_intensas_nas_articula�oes,dor_de_cabe�a, dores_nos_musculos, manchas_vermelhas]).

doenca(dengue, X) :-
    compare(=,X,[febre_alta, erupcoes_cutaneas, dores_musculares,dores_articulares]).

doenca(febre_amarela, X) :-
    compare(=,X,[febre_alta, erupcoes_cutaneas, dores_musculares,dores_articulares]).

doenca(gripe, X) :-
   compare(=,X,[calafrios, tosse, congestao, coriza, febre, dor_de_cabeca, dores_musculares] ).

doenca(zica, X) :-
    compare(=,X,[febre_baixa, dor_nas_articula�oes, dor_muscular,dor_de_cabe�a, erup�ao_cutanea]).

doenca(virose, _).
