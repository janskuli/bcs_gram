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
%SG
vladika ~~> (word,
  head:(noun,
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
      gen:(Gen,mas),
      num:(Num,sg)
    ),
    key:(Key,
      pred:(a_ vladika_rel),
      arg0:Ind
    ),
    rels:[Key]
   )
).
%PL
%noun-2_f
vladike ~~> (word,
  head:(noun,
    agr:(Agr,
      case:nom,
      per:(Per,third),
      gen:(Gen,fem),
      num:(Num,pl)
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
      per:Per,
      gen:Gen,
      num:Num
    ),
    key:(Key,
      pred:(a_ vladike_rel),
      arg0:Ind
    ),
    rels:[Key]
  )
).

%noun-2-pl
vladike ~~> (word,
  head:(noun,
    agr:(Agr,
      case:nom,
      per:(Per,third),
      gen:fem_mas,
      num:(Num,pl)
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
      per:Per,
      gen:mas,
      num:Num
    ),
    key:(Key,
      pred:(a_ vladike_rel),
      arg0:Ind
    ),
    rels:[Key]
  )
).
%noun-2-pl-spr-m
vladike ~~> (word,
  head:(noun,
    agr:(
      case:nom,
      per:(Per,third),
      gen:fem_mas,
      num:pl
    )
  ),
  spr:[(
    head:(det,
      agr:(
        gen:Gen,
        num:Num
      )
    ),
    sem:index:Ind
  )],
  subcat:[],
  sem:(
    index:(Ind,
      object,
      per:Per,
      gen:(Gen,mas),
      num:(Num,pl)
    ),
    key:(Key,
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
         num:Num,
         gen:Gen
       )
     ),
     spr:[_],
     sem:index:(Ind,
           num:(Num,sg),
           gen:(Gen,fem)
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
%% FIXME: Make sure that verbs combine well with non-hybrid nouns. Possible overgeneration here.
posvadale ~~> (word,
  head:(verb,
    lex:plus,
    vform:part
  ),
  subcat:[(
    head:noun,
    sem:index:(Arg1,
            gen:fem),
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
          gen:mas),
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
