


% Approches listées pour ce système expert
%write( 'Êtes-vous introverti(I) ou extroverti(E) ? Préfèrez-vous exercer votre imagination en recherchant de nouvelles idées et possibilités(N) ou êtes-vous plus en contact avec ce qui se passe devant vous, dans le présent.(S) ? Êtes-vous de nature réfléchi(T) ou émotif(F) ? Êtes-vous de nature à vous sentir plus à l''aise lorsque le chemin à parcourir est bien balisé.(J) ou  êtes-vous flexible lorsquil s agit de faire face à des défis inattendus(P) ?')
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

question(personality, 'Êtes-vous introverti(I) ou extroverti(E) ? Préfèrez-vous exercer votre imagination en recherchant de nouvelles idées et possibilités(N) ou êtes-vous plus en contact avec ce qui se passe devant vous, dans le présent.(S) ? Êtes-vous de nature réfléchi(T) ou émotif(F) ? Êtes-vous de nature à vous sentir plus à l''aise lorsque le chemin à parcourir est bien balisé.(J) ou  êtes-vous flexible lorsqu''il s''agit de faire face à des défis inattendus(P) ?').
question(mood, 'Dans quel Mood vous sentez vous actuellement ?').
question(genre, 'Quel est votre genre de musique préféré ?').
question(popularity, 'Votre chanson est-elle populaire ?').


% Base de connaissances sur ces approches

caracteristique('Single Ladies', mood,happy ).
caracteristique('Single Ladies', genre,pop ).
caracteristique('Single Ladies', personality,[istj,estj,lsfp,esfp] ).
caracteristique('Single Ladies', popularity, oui).

caracteristique('Shake it Off', mood,happy ).
caracteristique('Shake it Off', genre,pop ).
caracteristique('Shake it Off', personality, [istj,estj,isfp,esfp]).
caracteristique('Shake it Off', popularity,oui ).

caracteristique('Blinding Lights', mood,happy ).
caracteristique('Blinding Lights', genre,synthpop ).
caracteristique('Blinding Lights', personality,[istj,esfp] ).
caracteristique('Blinding Lights', popularity, oui).

caracteristique('I Walk the Line', mood, happy).
caracteristique('I Walk the Line', genre,country ).
caracteristique('I Walk the Line', personality,[esfj] ).
caracteristique('I Walk the Line', popularity, oui).

caracteristique('I Fall to Pieces', mood,sad ).
caracteristique('I Fall to Pieces', genre,country ).
caracteristique('I Fall to Pieces', personality, [esfj]).
caracteristique('I Fall to Pieces', popularity, non).

caracteristique('Whiskey Lullaby', mood,depression ).
caracteristique('Whiskey Lullaby', genre,country ).
caracteristique('Whiskey Lullaby', personality,[esfj] ).
caracteristique('Whiskey Lullaby', popularity, non).

caracteristique('Kanye West Stronger', mood,energetic ).
caracteristique('Kanye West Stronger', genre,hiphop ).
caracteristique('Kanye West Stronger', personality,[estj,estp,esfp] ).
caracteristique('Kanye West Stronger', popularity, oui).

caracteristique('The Supremes Baby Love', mood,happy ).
caracteristique('The Supremes Baby Love', genre,soul).
caracteristique('The Supremes Baby Love', personality,[esfj] ).
caracteristique('The Supremes Baby Love', popularity, oui).

caracteristique('Fleetwood Mac Dreams', mood,sad ).
caracteristique('Fleetwood Mac Dreams', genre,rock ).
caracteristique('Fleetwood Mac Dreams', personality,[entp,infp,istj,isfj] ).
caracteristique('Fleetwood Mac Dreams', popularity, oui).

caracteristique('The Heat Is On', mood,energetic).
caracteristique('The Heat Is On', genre,rock ).
caracteristique('The Heat Is On', personality,[entp,intp, infp,istj,isfj] ).
caracteristique('The Heat Is On', popularity, oui).

caracteristique('David Bowie Heroes', mood,lonely ).
caracteristique('David Bowie Heroes', genre,rock ).
caracteristique('David Bowie Heroes', personality,[entp,intp, infp,istj,isfj] ).
caracteristique('David Bowie Heroes', popularity, oui).

caracteristique('Dr Dre feat. Snoop Doggy Dogg Nuthin but a G Thang', mood,energetic ).
caracteristique('Dr Dre feat. Snoop Doggy Dogg Nuthin but a G Thang', genre,hiphop ).
caracteristique('Dr Dre feat. Snoop Doggy Dogg Nuthin but a G Thang', personality, [estj,estp,esfp]).
caracteristique('Dr Dre feat. Snoop Doggy Dogg Nuthin but a G Thang', popularity, oui).

caracteristique('Bob Marley and the Wailers Redemption Song', mood,sad ).
caracteristique('Bob Marley and the Wailers Redemption Song', genre,reggae ).
caracteristique('Bob Marley and the Wailers Redemption Song', personality,[isfp] ).
caracteristique('Bob Marley and the Wailers Redemption Song', popularity, oui).

caracteristique('Party Rock Anthem by LMFAO', mood,dance ).
caracteristique('Party Rock Anthem by LMFAO', genre,pop ).
caracteristique('Party Rock Anthem by LMFAO', personality,[istj,estj,isfp,esfp] ).
caracteristique('Party Rock Anthem by LMFAO', popularity, oui).

caracteristique('SHOUSE Love Tonight', mood,dance ).
caracteristique('SHOUSE Love Tonight', genre,electronica ).
caracteristique('SHOUSE Love Tonight', personality,[entj,estp,enfp] ).
caracteristique('SHOUSE Love Tonight', popularity, oui).

caracteristique('Nothing Compares 2 U  Sinéad OConnor', mood,sad ).
caracteristique('Nothing Compares 2 U  Sinéad OConnor', genre,pop ).
caracteristique('Nothing Compares 2 U  Sinéad OConnor', personality,[istj,estj,isfp,esfp] ).
caracteristique('Nothing Compares 2 U  Sinéad OConnor', popularity, non).

caracteristique('The Pearl Harold Budd  Brian Eno with Daniel Lanois', mood,calm ).
caracteristique('The Pearl Harold Budd  Brian Eno with Daniel Lanois', genre,ambient ).
caracteristique('The Pearl Harold Budd  Brian Eno with Daniel Lanois', personality,[enfp,isfp,esfp] ).
caracteristique('The Pearl Harold Budd  Brian Eno with Daniel Lanois', popularity, non).

caracteristique('Timewind Klaus Schulze', mood,calm ).
caracteristique('Timewind Klaus Schulze', genre,ambient ).
caracteristique('Timewind Klaus Schulze', personality,[enfp,isfp,esfp] ).
caracteristique('Timewind Klaus Schulze', popularity, oui).

caracteristique('Miles Davis All Blues', mood,happy ).
caracteristique('Miles Davis All Blues', genre,jazz ).
caracteristique('Miles Davis All Blues', personality,[entj, enfj,enfp] ).
caracteristique('Miles Davis All Blues', popularity, oui).

caracteristique('Julie London Cry Me A River', mood,depression ).
caracteristique('Julie London Cry Me A River', genre,jazz ).
caracteristique('Julie London Cry Me A River', personality,[entj, enfj,enfp] ).
caracteristique('Julie London Cry Me A River', popularity, oui).

caracteristique('Antonio Vivaldi  The Four Seasons', mood,energetic ).
caracteristique('Antonio Vivaldi  The Four Seasons', genre, classical).
caracteristique('Antonio Vivaldi  The Four Seasons', personality,[entj,intj,entp] ).
caracteristique('Antonio Vivaldi  The Four Seasons', popularity, oui).