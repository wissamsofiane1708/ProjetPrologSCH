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

question(mood, 'Dans quel Mood vous sentez vous actuellement ?').
question(genre, 'Quel est votre genre de musique préféré ?').
question(personality, 'Êtes-vous introverti(I) ou extroverti(E) ? Préfèrez-vous exercer votre imagination en recherchant de nouvelles idées et possibilités(N) ou êtes-vous plus en contact avec ce qui se passe devant vous, dans le présent.(S) ? Êtes-vous de nature réfléchi(T) ou émotif(F) ? Êtes-vous de nature à vous sentir plus à l''aise lorsque le chemin à parcourir est bien balisé.(J) ou  êtes-vous flexible lorsqu''il s''agit de faire face à des défis inattendus(P) ?').
question(popularity, 'Votre chanson est-elle populaire ?').


% Base de connaissances sur ces approches

caracteristique('Single Ladies', mood, ).
caracteristique('Single Ladies', genre, ).
caracteristique('Single Ladies', personality, ).
caracteristique('Single Ladies', popularity, oui).

caracteristique('Shake it Off', mood, ).
caracteristique('Shake it Off', genre, ).
caracteristique('Shake it Off', personality, ).
caracteristique('Shake it Off', popularity,non ).

caracteristique('Blinding Lights', mood, ).
caracteristique('Blinding Lights', genre, ).
caracteristique('Blinding Lights', personality, ).
caracteristique('Blinding Lights', popularity, non).

caracteristique('I Walk the Line', mood, ).
caracteristique('I Walk the Line', genre, ).
caracteristique('I Walk the Line', personality, ).
caracteristique('I Walk the Line', popularity, non).

caracteristique('I Fall to Pieces', mood, ).
caracteristique('I Fall to Pieces', genre, ).
caracteristique('I Fall to Pieces', personality, ).
caracteristique('I Fall to Pieces', popularity, oui).

caracteristique('Whiskey Lullaby', mood, ).
caracteristique('Whiskey Lullaby', genre, ).
caracteristique('Whiskey Lullaby', personality, ).
caracteristique('Whiskey Lullaby', popularity, oui).

caracteristique('Kanye West Stronger', mood, ).
caracteristique('Kanye West Stronger', genre, ).
caracteristique('Kanye West Stronger', personality, ).
caracteristique('Kanye West Stronger', popularity, oui).

caracteristique('The Supremes Baby Love', mood, ).
caracteristique('The Supremes Baby Love', genre,).
caracteristique('The Supremes Baby Love', personality, ).
caracteristique('The Supremes Baby Love', popularity, non).

caracteristique('Fleetwood Mac Dreams', mood, ).
caracteristique('Fleetwood Mac Dreams', genre, ).
caracteristique('Fleetwood Mac Dreams', personality, ).
caracteristique('Fleetwood Mac Dreams', popularity, non).

caracteristique('The Heat Is On', mood, ).
caracteristique('The Heat Is On', genre, ).
caracteristique('The Heat Is On', personality, ).
caracteristique('The Heat Is On', popularity, non).

caracteristique('David Bowie Heroes', mood, ).
caracteristique('David Bowie Heroes', genre, ).
caracteristique('David Bowie Heroes', personality, ).
caracteristique('David Bowie Heroes', popularity, oui).

caracteristique('Dr Dre feat. Snoop Doggy Dogg Nuthin but a G Thang', mood, ).
caracteristique('Dr Dre feat. Snoop Doggy Dogg Nuthin but a G Thang', genre, ).
caracteristique('Dr Dre feat. Snoop Doggy Dogg Nuthin but a G Thang', personality, ).
caracteristique('Dr Dre feat. Snoop Doggy Dogg Nuthin but a G Thang', popularity, oui).

caracteristique('Bob Marley and the Wailers Redemption Song', mood, ).
caracteristique('Bob Marley and the Wailers Redemption Song', genre, ).
caracteristique('Bob Marley and the Wailers Redemption Song', personality, ).
caracteristique('Bob Marley and the Wailers Redemption Song', popularity, non).

caracteristique('Party Rock Anthem by LMFAO', mood, ).
caracteristique('Party Rock Anthem by LMFAO', genre, ).
caracteristique('Party Rock Anthem by LMFAO', personality, ).
caracteristique('Party Rock Anthem by LMFAO', popularity, non).

caracteristique('SHOUSE Love Tonight', mood, ).
caracteristique('SHOUSE Love Tonight', genre, ).
caracteristique('SHOUSE Love Tonight', personality, ).
caracteristique('SHOUSE Love Tonight', popularity, non).

caracteristique('Nothing Compares 2 U  Sinéad OConnor', mood, ).
caracteristique('Nothing Compares 2 U  Sinéad OConnor', genre, ).
caracteristique('Nothing Compares 2 U  Sinéad OConnor', personality, ).
caracteristique('Nothing Compares 2 U  Sinéad OConnor', popularity, oui).

caracteristique('The Pearl Harold Budd  Brian Eno with Daniel Lanois', mood, ).
caracteristique('The Pearl Harold Budd  Brian Eno with Daniel Lanois', genre, ).
caracteristique('The Pearl Harold Budd  Brian Eno with Daniel Lanois', personality, ).
caracteristique('The Pearl Harold Budd  Brian Eno with Daniel Lanois', popularity, oui).

caracteristique('Timewind Klaus Schulze', mood, ).
caracteristique('Timewind Klaus Schulze', genre, ).
caracteristique('Timewind Klaus Schulze', personality, ).
caracteristique('Timewind Klaus Schulze', popularity, oui).

caracteristique('Miles Davis All Blues', mood, ).
caracteristique('Miles Davis All Blues', genre, ).
caracteristique('Miles Davis All Blues', personality, ).
caracteristique('Miles Davis All Blues', popularity, oui).

caracteristique('Julie London Cry Me A River', mood, ).
caracteristique('Julie London Cry Me A River', genre, ).
caracteristique('Julie London Cry Me A River', personality, ).
caracteristique('Julie London Cry Me A River', popularity, oui).

caracteristique('Antonio Vivaldi  The Four Seasons', mood, ).
caracteristique('Antonio Vivaldi  The Four Seasons', genre, ).
caracteristique('Antonio Vivaldi  The Four Seasons', personality, ).
caracteristique('Antonio Vivaldi  The Four Seasons', popularity, oui).