%_____________________________________________________________________%
%                                                                     %
% Fichier : se.pl                                                     %
%                                                                     %
% Elements de travail pour la definition d'un systeme expert simple   %
%                                                                     %
% Pierre-Alexandre Favier - ENSC - IPB                                %
%                                                                     %
% 07/09/20                                                            %
%                                                                     %
%_____________________________________________________________________%

% le fait objet a 1 argument est dynamique
:-dynamic(objet/1).


% declaration d'un objet
declareObjet(X) :- 
	retractall(objet(X)),
	asserta(objet(X)).
					
% retrait d'un objet
retireObjet(X) :- 
	retract(objet(X)).

% effacement de tous les objets
effaceListeObjet :- 
	retractall(objet(_)).

% construction de la liste des objets
listeObjet(Liste) :- 
	findall(Objet, objet(Objet), Liste).

% un objet est defini par ses caracteristiques :
% caracteristique(paris, fluviale, oui).
% caracteristique(clermont, fluviale, non).

:-dynamic(caracteristique/3).

% declaration d'une caracteristique
declare(Objet, Carac, Reponse) :- 
	asserta(caracteristique(Objet, Carac, Reponse)).

% construction de la liste des caracteristiques
listeCaracteristique(Liste) :- 
	findall(Carac, caracteristique(_, Carac, _), ListeCarac), 
	sort(ListeCarac, Liste).

% association d'une question a une caracteristique
:-dynamic(question/2).

trouverQuestion(Carac, Question) :- question(Carac, Question), !.
trouverQuestion(Carac, Question) :- write('Je ne connais pas de question pour la caract�ristique suivante :'), 
									write(Carac),nl,
                                    write('Pouvez-vous m''en proposer une ?'),nl,
									read(Question),
									assertz(question(Carac,Question)).

% description d'un objet par l'utilisateur

decrireObjet(Nom) :-
	listeObjet(L),member(Nom,L),!,write('Je connais dej� cet objet, voil� ce que j''en sais :'),nl,
	afficheListeCaracteristique(Nom),
	definirObjet(Nom).
	
decrireObjet(Nom):-
	write('Je ne connaissais pas '), write(Nom),
	nl,
	write('D�finissons le ensemble.'),
	declareObjet(Nom),
	definirObjet(Nom).
		
afficheListeCaracteristique(Nom):-
	findall(Carac-Valeur, caracteristique(Nom, Carac, Valeur), ListeCarac),
	afficheListeCaracteristique(Nom, ListeCarac).
afficheListeCaracteristique(_,[]):-!.
afficheListeCaracteristique(Nom, [Carac-Valeur|Q]):-
	trouverQuestion(Carac, Question),
	write('La r�ponse � la question :'), nl, write('        '), write(Question),nl,
	write('est '), write(Valeur), write(' pour '),write(Nom),nl,
	afficheListeCaracteristique(Nom, Q).

definirObjet(Objet):-
	findall(Carac, caracteristique(Objet, Carac,_), ListeCaracConnue),
	listeCaracteristique(ListeCaracPossible),
	definirObjet(Objet, ListeCaracConnue, ListeCaracPossible).
definirObjet(_,_,[]) :- !.
definirObjet(Objet,ListeCaracConnue,[Carac|Q]) :-
	member(Carac, ListeCaracConnue),!,
	definirObjet(Objet,ListeCaracConnue, Q).
definirObjet(Objet,ListeCaracConnue, [Carac|Q]) :-
	trouverQuestion(Carac, Question),
	write(Question),
	read(Valeur),
	declare(Objet, Carac, Valeur),
	definirObjet(Objet, ListeCaracConnue, Q).

% d�termination des objets candidats sur liste de crit�res


trouveObjet:-
	% liste des objets possibles
	listeObjet(ListeCandidats),
	% liste des caract�ristiques connues
	listeCaracteristique(ListeCaracPossible),
	% interrogation sur les crit�res
	trouveObjet(ListeCandidats, ListeCaracPossible).
	
trouveObjet([], []):- 
	nl,nl,write('Tous les crit�res ont �t� examin�s, il n''y a aucun candidat possible, il faut r�viser les contraintes ou enrichir la base avec de nouveaux objets'), !.

trouveObjet(ListeCandidats, []):-
	nl,nl,write('Tous les crit�res ont �t� examin�s, la liste des candidats possibles est :'),nl,ecrireListe(ListeCandidats),!.
	
trouveObjet(ListeCandidats, [Carac|AutresCarac]):-
	nl,nl,write('Les candidas possibles sont :'), nl,ecrireListe(ListeCandidats),nl,
	interrogeCritere(Carac, Reponse),
	traiteReponse(Carac, Reponse, ListeCandidats, NouvelleListeCandidats),
	
	trouveObjet(NouvelleListeCandidats, AutresCarac).

% si la r�ponse est nsp, la liste des candidats est inchang�e
traiteReponse(_,nsp, ListeCandidats, ListeCandidats):-!.


% sinon, il faut filtrer la liste
traiteReponse(Carac,Rep, ListeCandidats, NouvelleListeCandidats):-
findall(Candidat, (member(Candidat, ListeCandidats),caracteristique(Candidat, Carac, Rep)), NouvelleListeCandidats).

	
interrogeCritere(Carac, Reponse):-
	trouverQuestion(Carac, Question),
	write(Question), nl,
	setof(Rep, Objet^caracteristique(Objet, Carac, Rep), ListeReponsesPossibles),
	nl,write('Les r�ponses connues sont : '), write(ListeReponsesPossibles),
	write(' ou nsp si inconnu ou non applicable'),nl,
	read(Reponse).


ecrireListe([]).
ecrireListe([T|Q]):-write('\t'), writeln(T), ecrireListe(Q).

:-consult('connaissancesIA.pl').

