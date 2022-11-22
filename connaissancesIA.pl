%_____________________________________________________________________%
%                                                                     %
% Fichier : connaissances.pl                                          %
%                                                                     %
% Exemple de structuration d'un fichier de connaissances pour se.pl   %
%                                                                     %
% Pierre-Alexandre Favier - ENSC - IPB                                %
%                                                                     %
% 07/09/20                                                            %
%                                                                     %
%_____________________________________________________________________%

% Approches listées pour ce système expert
write( 'Êtes-vous introverti(I) ou extroverti(E) ? Préfèrez-vous exercer votre imagination en recherchant de nouvelles idées et possibilités(N) ou êtes-vous plus en contact avec ce qui se passe devant vous, dans le présent.(S) ? Êtes-vous de nature réfléchi(T) ou émotif(F) ? Êtes-vous de nature à vous sentir plus à l''aise lorsque le chemin à parcourir est bien balisé.(J) ou  êtes-vous flexible lorsqu''il s''agit de faire face à des défis inattendus(P) ?')
objet('ENTJ').
objet('ENTP').
objet('ENFJ').
objet('ENFP').
objet('ESTJ').
objet('ESTP').
objet('ESFJ').
objet('ESFP').
objet('INTJ').
objet('INTP').
objet('INFJ').
objet('INFP').
objet('ISTJ').
objet('ISTP').
objet('ISFJ').
objet('ISFP').


% Caractéristiques renseignées pour ces approches

question(famille, 'Quel application recherchez-vous pour vos données ?').
question(precision, 'Souhaitez-vous obtenir une estimation (plus rapide et moins sensible à l''overfitting) ou une prévision la plus exacte possible ?').
question(rapidite, 'Quelle durée d''apprentissage est acceptable pour votre application ?').
question(linearite, 'Peut-on faire l''hypothèse d''une séparation linéaire des classes dans votre application ?').


% Base de connaissances sur ces approches

caracteristique('ENTJ', famille, classification).
caracteristique('ENTJ', precision, estimation).
caracteristique('ENTJ', rapidite, rapide).
caracteristique('ENTJ', linearite, oui).

caracteristique('ENTP', famille,classification ).
caracteristique('ENTP', precision, prevision).
caracteristique('ENTP', rapidite, moderee).
caracteristique('ENTP', linearite,non ).

caracteristique('ENFJ', famille, classification).
caracteristique('ENFJ', precision, prevision).
caracteristique('ENFJ', rapidite, moderee).
caracteristique('ENFJ', linearite, non).

caracteristique('ENFP', famille, classification).
caracteristique('ENFP', precision,estimation ).
caracteristique('ENFP', rapidite, moderee).
caracteristique('ENFP', linearite, non).

caracteristique('ESTJ', famille, classification).
caracteristique('ESTJ', precision, estimation).
caracteristique('ESTJ', rapidite, moderee).
caracteristique('ESTJ', linearite, oui).

caracteristique('ESTP', famille,classification ).
caracteristique('ESTP', precision,estimation ).
caracteristique('ESTP', rapidite, rapide).
caracteristique('ESTP', linearite, oui).

caracteristique('ESFJ', famille,classification ).
caracteristique('ESFJ', precision,estimation ).
caracteristique('ESFJ', rapidite, rapide).
caracteristique('ESFJ', linearite, oui).

caracteristique('ESFP', famille,classification ).
caracteristique('ESFP', precision, prevision).
caracteristique('ESFP', rapidite, moderee).
caracteristique('ESFP', linearite, non).

caracteristique('INTJ', famille, classification).
caracteristique('INTJ', precision, prevision).
caracteristique('INTJ', rapidite,moderee ).
caracteristique('INTJ', linearite, non).

caracteristique('INTP', famille,classification ).
caracteristique('INTP', precision,estimation ).
caracteristique('INTP', rapidite, moderee).
caracteristique('INTP', linearite, non).

caracteristique('INFJ', famille,classification ).
caracteristique('INFJ', precision, variable).
caracteristique('INFJ', rapidite, variable).
caracteristique('INFJ', linearite, variable).

caracteristique('INFP', famille,regression ).
caracteristique('INFP', precision,estimation ).
caracteristique('INFP', rapidite, rapide).
caracteristique('INFP', linearite, oui).

caracteristique('ISTJ', famille, regression).
caracteristique('ISTJ', precision, prevision).
caracteristique('ISTJ', rapidite,moderee ).
caracteristique('ISTJ', linearite, non).

caracteristique('ISTP', famille,regression ).
caracteristique('ISTP', precision, prevision).
caracteristique('ISTP', rapidite, moderee).
caracteristique('ISTP', linearite, non).

caracteristique('ISFJ', famille, regression).
caracteristique('ISFJ', precision, estimation).
caracteristique('ISFJ', rapidite, moderee).
caracteristique('ISFJ', linearite, non).

caracteristique('ISFP', famille, clustering).
caracteristique('ISFP', precision, prevision).
caracteristique('ISFP', rapidite, moderee).
caracteristique('ISFP', linearite, oui).
