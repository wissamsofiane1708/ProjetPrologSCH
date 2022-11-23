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
objet('Single Ladies').
objet('Shake it Off').
objet('Blinding Lights').
objet('I Walk the Line').
objet('I Fall to Pieces').
objet('Whiskey Lullaby').
objet('Kanye West, ‘Stronger’').
objet('The Supremes, ‘Baby Love’').
objet('Fleetwood Mac, ‘Dreams’').
objet('“The Heat Is On”').
objet('David Bowie, ‘Heroes’').
objet('Dr. Dre feat. Snoop Doggy Dogg, Nuthin but a G Thang').
objet('Bob Marley and the Wailers, ‘Redemption Song’').
objet('‘Party Rock Anthem’ by LMFAO').
objet('SHOUSE – Love Tonight').
objet('Nothing Compares 2 U' - Sinéad O'Connor').
objet('The Pearl. Harold Budd / Brian Eno with Daniel Lanois. ...').
objet('Timewind. Klaus Schulze. ...').
objet('Miles Davis, “All Blues”').
objet('Julie London, “Cry Me A River').
objet('Antonio Vivaldi – The Four Seasons').



% Caractéristiques renseignées pour ces approches

question(mood, '').
question(genre, '').
question(song, '').
question(popularity, '').


% Base de connaissances sur ces approches

caracteristique('ENTJ', mood, ).
caracteristique('ENTJ', genre, ).
caracteristique('ENTJ', song, ).
caracteristique('ENTJ', popularity, oui).

caracteristique('ENTP', mood, ).
caracteristique('ENTP', genre, ).
caracteristique('ENTP', linearity, ).
caracteristique('ENTP', popularity,non ).

caracteristique('ENFJ', mood, ).
caracteristique('ENFJ', genre, ).
caracteristique('ENFJ', linearity, ).
caracteristique('ENFJ', popularity, non).

caracteristique('ENFP', mood, ).
caracteristique('ENFP', genre, ).
caracteristique('ENFP', linearity, ).
caracteristique('ENFP', popularity, non).

caracteristique('ESTJ', mood, ).
caracteristique('ESTJ', genre, ).
caracteristique('ESTJ', linearity, ).
caracteristique('ESTJ', popularity, oui).

caracteristique('ESTP', mood, ).
caracteristique('ESTP', genre, ).
caracteristique('ESTP', linearity, rapide).
caracteristique('ESTP', popularity, oui).

caracteristique('ESFJ', mood,classification ).
caracteristique('ESFJ', genre,estimation ).
caracteristique('ESFJ', linearity, rapide).
caracteristique('ESFJ', popularity, oui).

caracteristique('ESFP', mood,classification ).
caracteristique('ESFP', genre, prevision).
caracteristique('ESFP', linearity, moderee).
caracteristique('ESFP', popularity, non).

caracteristique('INTJ', mood, classification).
caracteristique('INTJ', genre, prevision).
caracteristique('INTJ', linearity,moderee ).
caracteristique('INTJ', popularity, non).

caracteristique('INTP', mood,classification ).
caracteristique('INTP', genre,estimation ).
caracteristique('INTP', linearity, moderee).
caracteristique('INTP', popularity, non).

caracteristique('INFJ', mood,classification ).
caracteristique('INFJ', genre, variable).
caracteristique('INFJ', linearity, variable).
caracteristique('INFJ', popularity, variable).

caracteristique('INFP', mood,regression ).
caracteristique('INFP', genre,estimation ).
caracteristique('INFP', linearity, rapide).
caracteristique('INFP', popularity, oui).

caracteristique('ISTJ', mood, regression).
caracteristique('ISTJ', genre, prevision).
caracteristique('ISTJ', linearity,moderee ).
caracteristique('ISTJ', popularity, non).

caracteristique('ISTP', mood,regression ).
caracteristique('ISTP', genre, prevision).
caracteristique('ISTP', linearity, moderee).
caracteristique('ISTP', popularity, non).

caracteristique('ISFJ', mood, regression).
caracteristique('ISFJ', genre, estimation).
caracteristique('ISFJ', linearity, moderee).
caracteristique('ISFJ', popularity, non).

caracteristique('ISFP', mood, clustering).
caracteristique('ISFP', genre, prevision).
caracteristique('ISFP', linearity, moderee).
caracteristique('ISFP', popularity, oui).
