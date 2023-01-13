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

vladika ~~> (word,
  head:(noun,
    agr:(Agr,
      per:(Per,third),
      gen:(Gen,mas),
      num:(Num,sg)
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
      pred:(a_ vladika_rel),
      arg0:Ind
    ),
    rels:[Key]
   )
).

vladike ~~> (word,
  head:(noun,
    agr:(Agr,
      per:third,
      gen:fem_mas,
      num:pl
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
      num:pl
    ),
    key:(Key,
      pred:(a_ vladike_rel),
      arg0:Ind
    ),
    rels:[Key]
  )
).

vladike ~~> (word,
  head:(noun,
    agr:(
      per:third,
      gen:(Gen,fem_mas),
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
          num:Num,
          gen:Gen
        )
      ),
      spr:[_],
      sem:index:(Ind,
          num:Num,
          gen:(Gen,mas)
        )
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
          num:pl,
          gen:fem_mas
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

posvađale ~~> (word,
  head:verb,
  subcat:[(
    head:(noun,
      agr:(
        num:pl,
        gen:fem
      )
    ),
    sem:index:Arg1,
    subcat:[]
  )],
  sem:(
    index:(Ind,event),
    key:(Key,
      pred:(a_ posvađale),
      arg0:Ind,
      arg1:Arg1
    ),
    rels:[Key]
  ),
  spr:[]
).

posvađali ~~> (word,
  head:verb,
  subcat:[(
    head:(noun,
      agr:(
        num:pl,
        gen:fem_mas
      )
    ),
    sem:index:(Arg1,
          gen:mas
          ),
    subcat:[]
  )],
  sem:(
    index:(Ind,event),
    key:(Key,
      pred:(a_ posvađali),
      arg0:Ind,
      arg1:Arg1
    ),
    rels:[Key]
  ),
  spr:[]
).
