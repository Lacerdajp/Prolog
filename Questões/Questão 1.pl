

doenca(chikun, X) :
    compare(=,X,[febre_alta, dores_intensas_nas_articulaçoes,dor_de_cabeça, dores_nos_musculos, manchas_vermelhas]).

doenca(dengue, X) :-
    compare(=,X,[febre_alta, erupcoes_cutaneas, dores_musculares,dores_articulares]).

doenca(febre_amarela, X) :-
    compare(=,X,[febre_alta, erupcoes_cutaneas, dores_musculares,dores_articulares]).

doenca(gripe, X) :-
   compare(=,X,[calafrios, tosse, congestao, coriza, febre, dor_de_cabeca, dores_musculares] ).

doenca(zica, X) :-
    compare(=,X,[febre_baixa, dor_nas_articulaçoes, dor_muscular,dor_de_cabeça, erupçao_cutanea]).

doenca(virose, _).
