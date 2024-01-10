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
% concord:mas, index: mas, spr: mas
vladika ~~> (word,
  head:(class_2_empty,
    agr:(Agr,
      case:nom,
      gen:Gen,
      num:Num
    )
  ),
  spr:[(
    head:(det,
      agr:Agr),
    sem:index:Ind
  )],
  subcat:[],
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

%concord: fem, index: fem, spr: fem
vladike ~~> (word,
  head:(class_2_f,
    agr:(Agr,
      case:nom,
      gen:(Gen,fem),
      num:Num
    )
  ),
  spr:[(
    head:(det,
      agr:Agr),
    sem:index:Ind
  )],
  subcat:[],
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

% concord: sex, index: mas, spr:concord
vladike ~~> (word,
  head:(class_2_m,
    agr:(Agr,
      case:nom,
      gen:fem_mas,
      num:Num
    )
  ),
  spr:[(
    head:(det,
      agr:Agr),
    sem:index:Ind
  )],
  subcat:[],
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

%concord:sex index:masc spr:masc
vladike ~~> (word,
  head:(class_2_spr,
    agr:(
      case:(Case,nom),
      gen:fem_mas,
      num:(Num,pl)
    )
  ),
  spr:[(
    head:(det,
      agr:(
        case:Case,
        num:Num,
        gen:Gen)),
    sem:index:Ind
  )],
  subcat:[],
  sem:(
    index:(Ind,
      object,
      per:third,
      gen:Gen,
      num:Num
    ),
    key:(Key,
      sex:(Gen,mas),
      pred:(a_ vladike_rel),
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
   mod:[(
     head:(noun,
       agr:(Agr,
         case:nom,
         num:sg,
         gen:fem
       )
     ),
     spr:[_]
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
  spr:[],
  subcat:[]
).

%Plural
stari ~~>(word,
  head:(adj,
    agr:Agr,
    mod:[(
      head:(noun,
        agr:(Agr,
          case:nom,
          gen:mas)),
      spr:[_]
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
  spr:[],
  subcat:[]
).

stare ~~>(word,
  head:(adj,
    agr:Agr,
    mod:[(
      head:(noun,
        agr:(Agr,
          case:nom,
          num:pl,
          gen:fem
        )
      ),
      spr:[_],
      sem:index:Ind
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
  spr:[],
  subcat:[]
).

oni ~~> (word,
  head:(det,
    agr:(
      case:nom,
      gen:mas,
      num:pl
    )
  ),
  sem:(
    index:Ind,
    key:(Key,
      pred:(a_ oni_rel),
      arg0:Ind
    ),
    rels:[Key]
  ),
  spr:[],
  subcat:[]
).

one ~~> (word,
  head:(det,
    agr:(
      case:nom,
      gen:fem,
      num:pl
    )
  ),
  sem:(
    index:Ind,
    key:(Key,
      pred:(a_ one_rel),
      arg0:Ind
    ),
    rels:[Key]
  ),
  spr:[],
  subcat:[]
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
    spr:[],
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
  ),
  spr:[]
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
    spr:[],
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
  ),
  spr:[]
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
  sem:rels:[],
  spr: []
).
