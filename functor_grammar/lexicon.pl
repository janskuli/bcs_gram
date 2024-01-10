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

% Nouns
% concord:mas, index: mas
vladika ~~> (word,
  head:(class_2_empty,
    agr:(Agr,
      case:nom,
      gen:Gen,
      num:Num
    )
  ),
  subcat:[],
  marking:minus,
  sem:(
    index:(Ind,
      object,
      per:third,
      gen:Gen,
      num:(Num,sg)
    ),
    key:(Key,
      sex:(Gen,mas),
      pred:(a_ vladika_rel),
      arg0:Ind
    ),
    rels:[Key]
   )
).

vladike ~~> (word,
  head:(class_2_f,
    agr:(Agr,
      case:nom,
      gen:(Gen,fem),
      num:Num
    )
  ),
  subcat:[],
  marking:minus,
  sem:(
    index:(Ind,
      object,
      per:third,
      gen:Gen,
      num:(Num,pl)
    ),
    key:(Key,
      sex:mas,
      pred:(a_ vladika_rel),
      arg0:Ind
    ),
    rels:[Key]
   )
).
%concord: fem, index: fem
vladike ~~> (word,
  head:(class_2_m,
    agr:(Agr,
      case:nom,
      gen:fem_mas,
      num:Num
    )
  ),
  subcat:[],
  marking:minus,
  sem:(
    index:(Ind,
      object,
      per:third,
      gen:mas,
      num:(Num,pl)
    ),
    key:(Key,
      sex:mas,
      pred:(a_ vladika_rel),
      arg0:Ind
    ),
    rels:[Key]
   )
).


% ADJECTIVES
%Singular
stara ~~> (word,
 head:(adj,
   agr:Agr,
   select:[(
     head:(noun,
       agr:(Agr,
         case:nom,
         num:sg,
         gen:fem
       )
     )
   )],
   pre_modifier:plus
 ),
 sem:(
   index:Ind,
   key:(Key,
     pred:(a_ stara_rel),
     arg0:Ind
   ),
   rels:[Key]),
  subcat:[],
  marking:minus
).

%Plural
stari ~~>(word,
  head:(adj,
    agr:Agr,
    select:[(
      head:(noun,
        agr:(Agr,
          case:nom,
          gen:mas)),
      marking:minus
      )],
    pre_modifier:plus
  ),
  sem:(
    index:Ind,
    key:(Key,
      pred:(a_ stari_rel),
      arg0:Ind
    ),
    rels:[Key]
  ),
  subcat:[],
  marking:minus
).

stare ~~>(word,
  head:(adj,
    agr:Agr,
    select:[(
      head:(noun,
        agr:(Agr,
          case:nom,
          num:pl,
          gen:fem
        )
      ),
      sem:index:Ind,
      marking:minus
    )],
    pre_modifier:plus
  ),
  sem:(
    index:Ind,
    key:(Key,
      pred:(a_ stare_rel),
      arg0:Ind
    ),
    rels:[Key]
  ),
  subcat:[],
  marking:minus
).

oni ~~> (word,
  head:(det,
    agr:(
      case:Case,
      num:Num,
      gen:Gen
    ),
    select:[(
      head:(noun,
        agr:(Agr,
          case:(Case,nom),
          num:(Num,pl),
          gen:fem_mas
        )
      ),
      sem:index:(Ind,
        gen:(Gen,mas)),
      marking:minus
    )],
    pre_modifier:plus
  ),
  sem:(
    index:Ind,
    key:(Key,
      pred:(a_ oni_rel),
      arg0:Ind
    ),
    rels:[Key]
  ),
  subcat:[],
  marking:plus
).

one ~~> (word,
  head:(det,
    agr:Agr,
    select:[(
      head:(noun,
        agr:(Agr,
          case:nom,
          num:pl,
          gen:fem
        )
      ),
      sem:index:Ind,
      marking:minus
    )],
    pre_modifier:plus
    ),
  sem:(
    index:Ind,
    key:(Key,
      pred:(a_ one_rel),
      arg0:Ind
    ),
    rels:[Key]
  ),
  subcat:[],
  marking:plus
).

%Verbs
posvadale ~~> (word,
  head:(verb,
    lex:plus,
    vform:part
  ),
  subcat:[(
    head:noun,
    sem:index:(Arg1,
            gen:fem,
            num:pl),
    subcat:[]
  )],
  sem:(
    index:(Ind,event),
    key:(Key,
      pred:(a_ posvadale),
      arg0:Ind,
      arg1:Arg1
    ),
    rels:[Key]
  )
).

posvadali ~~> (word,
  head:(verb,
    lex:plus,
    vform:part
  ),
  subcat:[(
    head:noun,
    sem:index:(Arg1,
          gen:mas,
          num:pl),
    subcat:[]
  )],
  sem:(
    index:(Ind,event),
    key:(Key,
      pred:(a_ posvadali),
      arg0:Ind,
      arg1:Arg1
    ),
    rels:[Key]
  )
).

su ~~> (word,
  head:(verb,
    vform:fin
  ),
  subcat:[(
    head:(verb,
      vform:part
    )
  )],
  sem:rels:[]
).
