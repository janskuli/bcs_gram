% -*-trale-prolog-*-
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   $RCSfile: lexicon.pl,v $
%%  $Revision: 1.2 $
%%      $Date: 2005/10/20 08:17:02 $
%%     Author: Stefan Mueller (Stefan.Mueller@cl.uni-bremen.de)
%%    Purpose: 
%%   Language: Trale
%      System: TRALE 2.3.7 under Sicstus 3.9.1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% NOUNS

vladika ---> (word,
  head:(noun,
        agr:(gender:Gen,
             num:Num)),
  spr:[],
  sem:index:(object,
            gender:(Gen,masc),
            num:(Num,sg)),
  subcat:[]).

vladike ---> (word,
  head:(noun,
        agr:(Agr,
             gender:fem,
             num:pl)),
  sem:index:(object,
             gender:masc,
             num:pl),
  spr:[(head:(det,agr:Agr))],
  subcat:[]).

vladike ---> (word,
  head:(noun,
        agr:(
            gender:fem,
            num:pl)),
  sem:index:(object,
             gender:(Gen,masc),
             num:(Num,pl)),
  spr:[(head:(det,agr:(num:Num,gender:Gen)))],
  subcat:[]).

% ADJECTIVES

stari ---> (word,
  head:(adj,
        agr:(Agr,
             gender:masc,
             num:sg),
  mod:[(head:(noun,agr:Agr))]),
  spr:[],
  subcat:[]).

stari ---> (word,
  head:(adj,
        agr:(
             gender:(Gen,masc),
             num:(Num,pl)),
  mod:[(head:noun,sem:index:(object,gender:Gen,num:Num))]),
  spr:[],
  subcat:[]).

stara ---> (word,
  head:(adj,
        agr:(Agr,
             gender:fem,
             num:sg),
  mod:[(head:(noun,agr:Agr))]),
  spr:[],
  subcat:[]).

stare ---> (word,
  head :(adj,
         agr:(Agr,
              num:pl,
              gender:fem),
  mod:[(head:(noun,agr:Agr))]),
  spr:[],
  subcat:[]).

oni ---> (word,
  head:(det,
        agr:(gender:masc,
             num:pl),
  mod: []),
  subcat:[]).

one ---> (word,
  head:(det,
        agr:(gender:fem,
             num:pl),
  mod: []),
  subcat:[]).
