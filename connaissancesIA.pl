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

objet('Régression logistique à 2 classes').
objet('Fotêt d''arbres décisionnels à 2 classes').
objet('Arbres de décision optimisés à 2 classes').
objet('Réseau neuronal à 2 classes').
objet('Perceptron moyenné à 2 classes').
objet('Machine à vecteurs de support à 2 classes').
objet('Régression logistique multiclasse').
objet('Forêt d''arbres de décision multiclasse').
objet('Arbre de décision multiclasse optimisé').
objet('Réseau neuronal multiclasse').
objet('One vs all multiclasse').
objet('Régression linéaire').
objet('Régression de forêt d''arbres de décision').
objet('Régression d''arbre de décision boosté').
objet('Régression de réseau neuronal').
objet('K-moyennes').

% Caractéristiques renseignées pour ces approches

question(famille, 'Quel application recherchez-vous pour vos données ?').
question(precision, 'Souhaitez-vous obtenir une estimation (plus rapide et moins sensible à l''overfitting) ou une prévision la plus exacte possible ?').
question(rapidite, 'Quelle durée d''apprentissage est acceptable pour votre application ?').
question(linearite, 'Peut-on faire l''hypothèse d''une séparation linéaire des classes dans votre application ?').


% Base de connaissances sur ces approches

caracteristique('Régression logistique à 2 classes', famille, classification).
caracteristique('Régression logistique à 2 classes', precision, estimation).
caracteristique('Régression logistique à 2 classes', rapidite, rapide).
caracteristique('Régression logistique à 2 classes', linearite, oui).

caracteristique('Fotêt d''arbres décisionnels à 2 classes', famille,classification ).
caracteristique('Fotêt d''arbres décisionnels à 2 classes', precision, prevision).
caracteristique('Fotêt d''arbres décisionnels à 2 classes', rapidite, moderee).
caracteristique('Fotêt d''arbres décisionnels à 2 classes', linearite,non ).

caracteristique('Arbres de décision optimisés à 2 classes', famille, classification).
caracteristique('Arbres de décision optimisés à 2 classes', precision, prevision).
caracteristique('Arbres de décision optimisés à 2 classes', rapidite, moderee).
caracteristique('Arbres de décision optimisés à 2 classes', linearite, non).

caracteristique('Réseau neuronal à 2 classes', famille, classification).
caracteristique('Réseau neuronal à 2 classes', precision,estimation ).
caracteristique('Réseau neuronal à 2 classes', rapidite, moderee).
caracteristique('Réseau neuronal à 2 classes', linearite, non).

caracteristique('Perceptron moyenné à 2 classes', famille, classification).
caracteristique('Perceptron moyenné à 2 classes', precision, estimation).
caracteristique('Perceptron moyenné à 2 classes', rapidite, moderee).
caracteristique('Perceptron moyenné à 2 classes', linearite, oui).

caracteristique('Machine à vecteurs de support à 2 classes', famille,classification ).
caracteristique('Machine à vecteurs de support à 2 classes', precision,estimation ).
caracteristique('Machine à vecteurs de support à 2 classes', rapidite, rapide).
caracteristique('Machine à vecteurs de support à 2 classes', linearite, oui).

caracteristique('Régression logistique multiclasse', famille,classification ).
caracteristique('Régression logistique multiclasse', precision,estimation ).
caracteristique('Régression logistique multiclasse', rapidite, rapide).
caracteristique('Régression logistique multiclasse', linearite, oui).

caracteristique('Forêt d''arbres de décision multiclasse', famille,classification ).
caracteristique('Forêt d''arbres de décision multiclasse', precision, prevision).
caracteristique('Forêt d''arbres de décision multiclasse', rapidite, moderee).
caracteristique('Forêt d''arbres de décision multiclasse', linearite, non).

caracteristique('Arbre de décision multiclasse optimisé', famille, classification).
caracteristique('Arbre de décision multiclasse optimisé', precision, prevision).
caracteristique('Arbre de décision multiclasse optimisé', rapidite,moderee ).
caracteristique('Arbre de décision multiclasse optimisé', linearite, non).

caracteristique('Réseau neuronal multiclasse', famille,classification ).
caracteristique('Réseau neuronal multiclasse', precision,estimation ).
caracteristique('Réseau neuronal multiclasse', rapidite, moderee).
caracteristique('Réseau neuronal multiclasse', linearite, non).

caracteristique('One vs all multiclasse', famille,classification ).
caracteristique('One vs all multiclasse', precision, variable).
caracteristique('One vs all multiclasse', rapidite, variable).
caracteristique('One vs all multiclasse', linearite, variable).

caracteristique('Régression linéaire', famille,regression ).
caracteristique('Régression linéaire', precision,estimation ).
caracteristique('Régression linéaire', rapidite, rapide).
caracteristique('Régression linéaire', linearite, oui).

caracteristique('Régression de forêt d''arbres de décision', famille, regression).
caracteristique('Régression de forêt d''arbres de décision', precision, prevision).
caracteristique('Régression de forêt d''arbres de décision', rapidite,moderee ).
caracteristique('Régression de forêt d''arbres de décision', linearite, non).

caracteristique('Régression d''arbre de décision boosté', famille,regression ).
caracteristique('Régression d''arbre de décision boosté', precision, prevision).
caracteristique('Régression d''arbre de décision boosté', rapidite, moderee).
caracteristique('Régression d''arbre de décision boosté', linearite, non).

caracteristique('Régression de réseau neuronal', famille, regression).
caracteristique('Régression de réseau neuronal', precision, estimation).
caracteristique('Régression de réseau neuronal', rapidite, moderee).
caracteristique('Régression de réseau neuronal', linearite, non).

caracteristique('K-moyennes', famille, clustering).
caracteristique('K-moyennes', precision, prevision).
caracteristique('K-moyennes', rapidite, moderee).
caracteristique('K-moyennes', linearite, oui).
