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
objet('Kanye West Stronger').
objet('The Supremes Baby Love').
objet('Fleetwood Mac Dreams').
objet('The Heat Is On').
objet('David Bowie Heroes').
objet('Dr Dre feat. Snoop Doggy Dogg Nuthin but a G Thang').
objet('Bob Marley and the Wailers Redemption Song').
objet('Party Rock Anthem by LMFAO').
objet('SHOUSE Love Tonight').
objet('Nothing Compares 2 U  Sinéad OConnor').
objet('The Pearl Harold Budd  Brian Eno with Daniel Lanois').
objet('Timewind Klaus Schulze').
objet('Miles Davis All Blues').
objet('Julie London Cry Me A River').
objet('Antonio Vivaldi  The Four Seasons').



% Caractéristiques renseignées pour ces approches

question(mood, '').
question(genre, '').
question(song, '').
question(popularity, '').


% Base de connaissances sur ces approches

caracteristique('Single Ladies', mood, ).
caracteristique('Single Ladies', genre, ).
caracteristique('Single Ladies', song, ).
caracteristique('Single Ladies', popularity, oui).

caracteristique('Shake it Off', mood, ).
caracteristique('Shake it Off', genre, ).
caracteristique('Shake it Off', linearity, ).
caracteristique('Shake it Off', popularity,non ).

caracteristique('Blinding Lights', mood, ).
caracteristique('Blinding Lights', genre, ).
caracteristique('Blinding Lights', linearity, ).
caracteristique('Blinding Lights', popularity, non).

caracteristique('I Walk the Line', mood, ).
caracteristique('I Walk the Line', genre, ).
caracteristique('I Walk the Line', linearity, ).
caracteristique('I Walk the Line', popularity, non).

caracteristique('I Fall to Pieces', mood, ).
caracteristique('I Fall to Pieces', genre, ).
caracteristique('I Fall to Pieces', linearity, ).
caracteristique('I Fall to Pieces', popularity, oui).

caracteristique('Whiskey Lullaby', mood, ).
caracteristique('Whiskey Lullaby', genre, ).
caracteristique('Whiskey Lullaby', linearity, rapide).
caracteristique('Whiskey Lullaby', popularity, oui).

caracteristique('Kanye West Stronger', mood,classification ).
caracteristique('Kanye West Stronger', genre,estimation ).
caracteristique('Kanye West Stronger', linearity, rapide).
caracteristique('Kanye West Stronger', popularity, oui).

caracteristique('The Supremes Baby Love', mood,classification ).
caracteristique('The Supremes Baby Love', genre, prevision).
caracteristique('The Supremes Baby Love', linearity, moderee).
caracteristique('The Supremes Baby Love', popularity, non).

caracteristique('Fleetwood Mac Dreams', mood, classification).
caracteristique('Fleetwood Mac Dreams', genre, prevision).
caracteristique('Fleetwood Mac Dreams', linearity,moderee ).
caracteristique('Fleetwood Mac Dreams', popularity, non).

caracteristique('The Heat Is On', mood,classification ).
caracteristique('The Heat Is On', genre,estimation ).
caracteristique('The Heat Is On', linearity, moderee).
caracteristique('The Heat Is On', popularity, non).

caracteristique('David Bowie Heroes', mood,classification ).
caracteristique('David Bowie Heroes', genre, variable).
caracteristique('David Bowie Heroes', linearity, variable).
caracteristique('David Bowie Heroes', popularity, variable).

caracteristique('Dr Dre feat. Snoop Doggy Dogg Nuthin but a G Thang', mood,regression ).
caracteristique('Dr Dre feat. Snoop Doggy Dogg Nuthin but a G Thang', genre,estimation ).
caracteristique('Dr Dre feat. Snoop Doggy Dogg Nuthin but a G Thang', linearity, rapide).
caracteristique('Dr Dre feat. Snoop Doggy Dogg Nuthin but a G Thang', popularity, oui).

caracteristique('Bob Marley and the Wailers Redemption Song', mood, regression).
caracteristique('Bob Marley and the Wailers Redemption Song', genre, prevision).
caracteristique('Bob Marley and the Wailers Redemption Song', linearity,moderee ).
caracteristique('Bob Marley and the Wailers Redemption Song', popularity, non).

caracteristique('Party Rock Anthem by LMFAO', mood,regression ).
caracteristique('Party Rock Anthem by LMFAO', genre, prevision).
caracteristique('Party Rock Anthem by LMFAO', linearity, moderee).
caracteristique('Party Rock Anthem by LMFAO', popularity, non).

caracteristique('SHOUSE Love Tonight', mood, regression).
caracteristique('SHOUSE Love Tonight', genre, estimation).
caracteristique('SHOUSE Love Tonight', linearity, moderee).
caracteristique('SHOUSE Love Tonight', popularity, non).

caracteristique('Nothing Compares 2 U  Sinéad OConnor', mood, clustering).
caracteristique('Nothing Compares 2 U  Sinéad OConnor', genre, prevision).
caracteristique('Nothing Compares 2 U  Sinéad OConnor', linearity, moderee).
caracteristique('Nothing Compares 2 U  Sinéad OConnor', popularity, oui).

caracteristique('The Pearl Harold Budd  Brian Eno with Daniel Lanois', mood, clustering).
caracteristique('The Pearl Harold Budd  Brian Eno with Daniel Lanois', genre, prevision).
caracteristique('The Pearl Harold Budd  Brian Eno with Daniel Lanois', linearity, moderee).
caracteristique('The Pearl Harold Budd  Brian Eno with Daniel Lanois', popularity, oui).

caracteristique('Timewind Klaus Schulze', mood, clustering).
caracteristique('Timewind Klaus Schulze', genre, prevision).
caracteristique('Timewind Klaus Schulze', linearity, moderee).
caracteristique('Timewind Klaus Schulze', popularity, oui).

caracteristique('Miles Davis All Blues', mood, clustering).
caracteristique('Miles Davis All Blues', genre, prevision).
caracteristique('Miles Davis All Blues', linearity, moderee).
caracteristique('Miles Davis All Blues', popularity, oui).

caracteristique('Julie London Cry Me A River', mood, clustering).
caracteristique('Julie London Cry Me A River', genre, prevision).
caracteristique('Julie London Cry Me A River', linearity, moderee).
caracteristique('Julie London Cry Me A River', popularity, oui).

caracteristique('Antonio Vivaldi  The Four Seasons', mood, clustering).
caracteristique('Antonio Vivaldi  The Four Seasons', genre, prevision).
caracteristique('Antonio Vivaldi  The Four Seasons', linearity, moderee).
caracteristique('Antonio Vivaldi  The Four Seasons', popularity, oui).