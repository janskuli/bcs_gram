:- multifile '*>'/2. 


attr_adj_i_suffix *>
  ((phon:[(a_ [e])],
      num:sg,
      gen:mas,
      case:nom,
      dtype:strong)
  ;
      (phon:[(a_ [e])],
          num:sg,
          gen:fem,
          case:nom_acc)
  ;
      (phon:[(a_ [e])],
          num:sg,
          gen:neu,
          case:nom_acc,
          dtype:strong)
  ;
      (phon:[(a_ [e])],
          num:pl,
          case:nom_acc,
          dtype:weak)
  ;
      (phon:[(a_ [e,m])],
          num:sg,
          gen:mas_neu,
          case:dat,
          dtype:weak)
  ;
      (phon:[(a_ [e,n])],
          num:sg,
          case:gen_dat,
          dtype:strong)
  ;
      (phon:[(a_ [e,n])],
          num:sg,
          gen:mas_neu,
          case:gen,
          dtype:weak)
  ;
      (phon:[(a_ [e,n])],
          num:sg,
          gen:mas,
          case:acc)

  ;
      (phon:[(a_ [e,n])],
          num:pl,
          dtype:strong)
  
  ;  
      (phon:[(a_ [e,n])],
          num:pl,
          case:dat,
          dtype:weak)
  ;
      (phon:[(a_ [e,r])],
          num:sg,
          gen:mas,
          case:nom,
          dtype:weak)

  ;                             % wegen frischer Milch
      (phon:[(a_ [e,r])],
          num:sg,
          gen:fem,
          case:gen_dat,
          dtype:weak)

  ;  
      (phon:[(a_ [e,r])],
          num:pl,
          case:gen,
          dtype:weak)
  
  ;
      (phon:[(a_ [e,s])],
          num:sg,
          gen:neu,
          case:nom_acc,
          dtype:weak)
      ).

%-------------------------------------------------------
% nfk_p

% -> wegen Karl = Dativ
% ansonsten 'die Frau Karl'
% =         'die Frau des Studenten'
noun_i_suffix *>
  ((phon:[(a_ [])],
      fk:nfk_p,
      num:sg,
      case:nom_dat_acc);

%-------------------------------------------------------
% nfk_e1
% Maskulinum oder Neutrum mit e-Endung im Plural
 

  (phon:[(a_ [])],
      fk:nfk_e1,
      dat_e:(minus;both),
      num:sg,
      case:nom_dat_acc);

  (phon:[(a_ [])],
      fk:nfk_e1,
          dat_e:plus,
      num:sg,
      case:nom_acc);

  (phon:[(a_ [e])],
      fk:nfk_e1,
      dat_e:(plus;both),
      num:sg,
      case:dat);
      
      % pl for nfk_e1, e2, e3
  (phon:[(a_ [e])],
      fk:nfk_e,
      num:pl,
      case:nom_gen_acc);

  (phon:[(a_ [e,n])],
      fk:nfk_e,
      num:pl,
      case:dat);
      
   (phon:[(a_ [e,s])],
       fk:nfk_e1,
       gen_e:plus,
       num:sg,
       case:gen);

   (phon:[(a_ [s])],
       fk:nfk_e1,
       gen_e:minus,
       num:sg,
       case:gen);


%-------------------------------------------------------
% nfk_e2
% Maskulinum oder Neutrum mit e-Endung im Plural


   (phon:[(a_ [])],
       fk:nfk_e2,
       num:sg);

      
%-------------------------------------------------------
% nfk_e3
% Femininum e-Endung im Plural

      (phon:[(a_ [])],
          fk:nfk_e3,
          num:sg);

%-------------------------------------------------------
% nfk_es
% Maskulinum oder Neutrum mit es-Endung im Plural


      (phon:[(a_ [])],
          fk:nfk_es,
          dat_e:(minus;both),
          num:sg,
          case:nom_dat_acc);
       
      (phon:[(a_ [])],
          fk:nfk_es,
          dat_e:plus,
          num:sg,
          case:nom_acc);

      (phon:[(a_ [s,e])],
          fk:nfk_es,
          dat_e:(plus;both),
          num:sg,
          case:dat);

      (phon:[(a_ [s,e,s])],
          fk:nfk_es,
          gen_e:plus,
          num:sg,
          case:gen);

      (phon:[(a_ [s,e])],
          fk:nfk_es,
          num:pl,
          case:nom_gen_acc);


      (phon:[(a_ [s,e,n])],
          fk:nfk_es,
          num:pl,
          case:dat);

      
%-------------------------------------------------------
% nfk_er
% Maskulinum oder Neutrum
% starke Deklination, er-Endung im Plural

   (phon:[(a_ [])],
       fk:nfk_er,
       dat_e:(minus;both),
       num:sg,
       case:nom_dat_acc);

      (phon:[(a_ [])],
       fk:nfk_er,
       dat_e:plus,
       num:sg,
       case:nom_acc);
      
   (phon:[(a_ [e])],
       fk:nfk_er,
       dat_e:(plus;both),
       num:sg,
       case:dat);
      
   (phon:[(a_ [e,s])],
       fk:nfk_er,
       gen_e:plus,
       num:sg,
       case:gen);
      
   (phon:[(a_ [e,r])],
       fk:nfk_er,
       num:pl,
       case:nom_gen_acc);

   (phon:[(a_ [e,r,n])],
       fk:nfk_er,
       num:pl,
       case:dat);

      
%-------------------------------------------------------
% nfk_n1
% Maskulinum oder Neutrum
% starke Deklination, n-Endung im Plural

      
   (phon:[(a_ [])],
       fk:nfk_n1,
       dat_e:(minus;both),
       num:sg,
       case:nom_dat_acc);

      (phon:[(a_ [])],
       fk:nfk_n1,
       dat_e:plus,
       num:sg,
       case:nom_acc);
      
      (phon:[(a_ [e])],
       fk:nfk_n1,
       dat_e:(plus;both),
       num:sg,
       case:dat);
      
      (phon:[(a_ [n])],
          fk:nfk_n1,
          e_vor_n:minus,
          num:pl);

      (phon:[(a_ [e,n])],
          fk:nfk_n1,
          e_vor_n:plus,
          num:pl);

      (phon:[(a_ [s])],
       fk:nfk_er,
       num:sg,
       case:gen);
      
      
%-------------------------------------------------------
% nfk_n2
% Maskulinum 
% schwache Deklination, n-Endung im Plural

      (phon:[(a_ [])],
       fk:nfk_n2,
       num:sg,
          case:nom);

      (phon:[(a_ [n])],
       fk:nfk_n2,
          e_vor_n:minus,
       num:sg,
          case:gen_dat_acc);

      (phon:[(a_ [n])],
          fk:nfk_n2,
          e_vor_n:minus,
          num:pl);

      (phon:[(a_ [e,n])],
          fk:nfk_n2,
          e_vor_n:plus,
          num:pl);
      
      (phon:[(a_ [e,n])],
          fk:nfk_n2,
          e_vor_n:plus,
          num:sg,
          case:gen_dat_acc);


%-------------------------------------------------------
% nfk_n3
% Maskulinum
% ...

      (phon:[(a_ [n])],
          fk:nfk_n3,
          num:pl);

      
%-------------------------------------------------------
% nfk_n4
% Neutrum
% Mischdeklination, n-Endung im Plural

         (phon:[(a_ [e,n])],
          fk:nfk_n4,
          num:pl);
      
%-------------------------------------------------------
% nfk_n5
% Feminum, n-Endung im Plural

   (phon:[(a_ [])],
       fk:nfk_n5,
       num:sg);
      
      (phon:[(a_ [n])],
          fk:nfk_n5,
          e_vor_n:minus,
          num:pl);

      (phon:[(a_ [e,n])],
          fk:nfk_n5,
          e_vor_n:plus,
          num:pl);
      
%---------------------------------------------------
% nfk_s1
% Maskulinum oder Neutrum
% starke Deklination s-Endung im Plural


  (phon:[(a_ [])],
      fk:nfk_s1,
      num:sg,
      case:nom_dat_acc);

   (phon:[(a_ [s])],
       fk:nfk_s1,
       num:sg,
       case:gen);

(phon:[(a_ [s])],
       fk:nfk_s,
       num:pl);

      
%---------------------------------------------------
% nfk_s2
% Femininum, s-Endung im Plural


      
%---------------------------------------------------
% nfk_1
% Maskulinum oder Neutrum
% starke Deklination ohne Endung im Plural

      (phon:[(a_ [])],
          fk:nfk_1,
          num:sg,
          case:nom_dat_acc);

      (phon:[(a_ [])],
          fk:nfk_1,
          num:pl);
      
      (phon:[(a_ [s])],
          fk:nfk_1,
          gen_e:minus,
          num:sg,
          case:gen);

      (phon:[(a_ [e,s])],
          fk:nfk_1,
          gen_e:plus,
          num:sg,
          case:gen);


%---------------------------------------------------
% nfk_2
% Maskulinum oder Neutrum
% starke Deklination  n-Endung im Dativ-Plural

      (phon:[(a_ [])],
      fk:nfk_2,
      num:sg,
      case:nom_dat_acc);
  
      (phon:[(a_ [s])],
       fk:nfk_2,
       num:sg,
       case:gen);

      (phon:[(a_ [])],
          fk:nfk_2,
          num:pl,
          case:nom_gen_acc);

      
      (phon:[(a_ [n])],
          fk:nfk_2,
          num:pl,
          case:dat);

%---------------------------------------------------
% nfk_3
% Maskulinum oder Neutrum
% ohne Endung


      (phon:[(a_ [])],
          fk:nfk_3);

%---------------------------------------------------
% nfk_4
% Femininum
% n-Endung im Dativ-Plural
       (phon:[(a_ [])],
          fk:nfk_4,
          num:pl,
          case:nom_gen_acc);

%-------------------------------------------------------
% nfk_i1
% Maskulinum oder Neutrum
% starke Deklination, ien-Endung im Plural
%
% Prinzipien, Materialien

      (phon:[(a_ [i,e,n])],
          fk:nfk_i1,
          num:pl);



%%% Bauten
      (phon:[(a_ [t,e,n])],
          fk:nfk_ten,
          num:pl)

  ).






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%  verbs


fin_verb_i_suffix *>
(

 (phon:[(a_ [])],
  fk:v_strong,
  temo:past_ind,
  per:first_or_third,
  num:sg);

 (phon:[(a_ [])],
  fk:modal,
  ep:minus,
  temo:pres_ind,
  per:first_or_third,
  num:sg);
 
 (phon:[(a_ [])],
  fk:v_strong,
  tm:plus,
  temo:pres_ind,
  per:third,
  num:sg);
 
 (phon:[(a_ [])],
  fk:v_strong,
  temo:pres_imp,
  per:second,
  num:sg);

 /*
 other grouping avoids ambiguity in readings
 (phon:[(a_ [e])],
  fk:v_strong,
  temo:pres_ind,
  per:first,
  num:sg);

 (phon:[(a_ [e])],
  fk:v_strong,
  temo:conj,             % pres_or_past + conjunctive
  per:first_or_third,
  num:sg);
*/

 (phon:[(a_ [e])],
  fk:v_strong,
  temo:pres_ind_conj,
  per:first,
  num:sg);

 (phon:[(a_ [e])],
  fk:v_strong,
  temo:pres_conj,
  per:third,
  num:sg);

 (phon:[(a_ [e])],
  fk:v_strong,
  temo:past_conj,             % pres_or_past + conjunctive
  per:first_or_third,
  num:sg);

 
 % möchte
 (phon:[(a_ [e])],
  fk:modal,
  ep:plus,
  temo:pres_ind,
  per:first_or_third,
  num:sg);

 (phon:[(a_ [e])],
  fk:v_weak,
  temo:pres_ind_imp,
  per:first,
  num:sg);

 (phon:[(a_ [e])],
  fk:mixed,
  temo:pres_ind_conj,
  per:first,
  num:sg);

 (phon:[(a_ [e])],
  fk:mixed,
  temo:conj,
  per:third,
  num:sg);

 (phon:[(a_ [e,n])],
  fk:v_strong,
  temo:pres_ind_conj,
  per:first_or_third,
  num:pl);
 
 (phon:[(a_ [e,n])],
  fk:mixed_or_modal,
  temo:pres_ind_conj,
  per:first_or_third,
  num:pl);

 (phon:[(a_ [e,n])],
  fk:v_weak,
  temo:pres_ind_conj,
  pl_n:minus,
  per:first_or_third,
  num:pl);

 (phon:[(a_ [e,t])],
  fk:v_strong,
     temo:pres_ind,
     ep:plus,
     tm:minus,
     per:third,
     num:sg);

 (phon:[(a_ [e,t])],
  fk:mixed,
     temo:pres_ind,
     ep:plus,
     per:third,
     num:sg);
 
 (phon:[(a_ [e,t])],
  fk:v_weak,
     temo:pres_ind,
     ep:plus,
     per:third,
     num:sg);

 (phon:[(a_ [e,t,e])],
  fk:v_weak,
     temo:past_ind_conj,
     ep:plus,
     per:first_or_third,
     num:sg);

  (phon:[(a_ [e,t,e,s,t])],
  fk:v_weak,
     temo:past_ind_conj,
     ep:plus,
     per:second,
     num:sg);
 
 (phon:[(a_ [e,s,t])],
  fk:v_strong,
     temo:pres_ind,
     ep:plus,
     tm:minus,
     per:second,
     num:sg);

 (phon:[(a_ [e,s,t])],
  fk:v_strong,
     temo:past_ind,
     evp:plus,
     per:second,
     num:sg);

 (phon:[(a_ [e,s,t])],
  fk:v_strong,
     temo:past_ind,
     spe:plus,
     per:second,
     num:sg);

 (phon:[(a_ [e,s,t])],
  fk:mixed,
     temo:pres_ind,
     ep:plus,
     sm:minus,
     per:second,
     num:sg);
 
 (phon:[(a_ [e,s,t])],
  fk:v_weak,
     temo:pres_ind,
     ep:plus,
     per:second,
     num:sg);

 (phon:[(a_ [e,s,t])],
  fk:modal,
     temo:pres_ind,
     ep:plus,
     sm:minus,
     per:second,
     num:sg);

 (phon:[(a_ [s,t])],
  fk:v_strong,
     temo:pres_ind,   %temo:pres_ind_conj,
     ep:minus,
     sm:minus,
     per:second,
     num:sg);

  (phon:[(a_ [s,t])],
   fk:v_strong,
     temo:pres_ind,
     ep:plus,
     sm:minus,
     tm:plus,
     per:second,
     num:sg);

% neu für 'lädst'
 (phon:[(a_ [s,t])],
  fk:v_strong,
     temo:pres_ind,
     ep:plus,
     tm:t,
     per:second,
     num:sg);

 (phon:[(a_ [s,t])],
  fk:v_strong,
     temo:past_ind_conj,
     evp:minus,
     sm:minus,
     per:second,
     num:sg);
 
  (phon:[(a_ [s,t])],
  fk:mixed,
     temo:pres_ind,
     ep:minus,
     sm:minus,
     per:second,
     num:sg);

 (phon:[(a_ [s,t])],
  fk:modal,
     temo:pres_ind,
     ep:minus,
     sm:minus,
     per:second,
     num:sg);
 
  (phon:[(a_ [s,t])],
  fk:v_weak,
     temo:pres_ind_conj,
     ep:minus,
     sm:minus,
     per:second,
     num:sg);
 
 (phon:[(a_ [t])],
  fk:v_strong,
     temo:pres_ind_conj,
     ep:minus,
     sm:plus,
     per:second,
     num:sg);
 
 (phon:[(a_ [t])],
  fk:v_strong,
     temo:pres_ind,
     ep:minus,
     tm:minus,
     per:third,
     num:sg);

 
 (phon:[(a_ [t])],
  fk:mixed,
     temo:pres_ind,
     ep:minus,
     per:third,
     num:sg);

 % für lädt
 (phon:[(a_ [t])],
  fk:v_strong,
     temo:pres_ind,
     ep:plus,
     tm:t,
     per:third,
     num:sg);
 
 /*
 %wird
 (phon:[(a_ [d])],
  fk:v_strong,
     temo:pres_ind,
     ep:minus,
     tm:werden,
     per:third,
     num:sg);
*/
 
 
 (phon:[(a_ [t])],
  fk:v_weak,
     temo:pres_ind_conj,
     ep:minus,
     sm:plus,
     per:second,
     num:sg);

 (phon:[(a_ [t])],
  fk:v_weak,
     temo:pres_ind,
     ep:minus,
     per:third,
     num:sg);

 (phon:[(a_ [t])],
  fk:modal,
     temo:pres_ind,
     sm:plus,
     per:second,
     num:sg);

  (phon:[(a_ [t,e])],
  fk:v_weak,
     temo:past_ind,
     ep:minus,
     per:first_or_third,
     num:sg);

 
  (phon:[(a_ [t,e])],
  fk:mixed,
     temo:past_ind_conj,
     ep:minus,
     per:first_or_third,
     num:sg);

   (phon:[(a_ [t,e])],
     fk:modal,
     temo:past_ind_conj,
     ep:minus,
     per:first_or_third,
     num:sg);

   (phon:[(a_ [t,e,s,t])],
     fk:non_strong,
     temo:past_ind_conj,
     ep:minus,
     per:second,
     num:sg)

).


ppp_verb_i_suffix *>
  (
    (phon:[(a_ [e,n])],
     fk:v_strong,
     epp:plus);

    % only for `getan'
    (phon:[(a_ [n])],
     fk:v_strong,
     epp:minus);

    (phon:[(a_ [t])],
     fk:non_strong,
     ep:minus);

    % there may be a bug here regarding mixed ? are they always ep:minus?
    (phon:[(a_ [e,t])],
     fk:non_strong,
     ep:plus)

  ).



det_i_suffix *>
  (
    
    (phon:[(a_ [])],
     fk:weak,
        dtype:weak,
        num:sg,
        gen:mas,
        case:nom)
  ;

    (phon:[(a_ [])],
     fk:weak,
     dtype:weak,
        num:sg,
        gen:neu,
        case:nom_acc)
  ;
    
    (phon:[(a_ [e])],
        dtype:strong,
        num:sg,
        gen:fem,
        case:nom_acc)
  ;
    
    (phon:[(a_ [e])],
%        dtype:strong,
        num:pl,
        case:nom_acc)
  ;
    
    (phon:[(a_ [e,n])],
        dtype:strong,
        num:sg,
        gen:mas,
        case:acc)
  ;

    (phon:[(a_ [e,n])],
        dtype:strong,
        num:pl,
        case:dat)
  ;

    (phon:[(a_ [e,m])],
        dtype:strong,
        num:sg,
        gen:mas_neu,
        case:dat)
  ;
    
    (phon:[(a_ [e,r])],
        dtype:strong,
        num:sg,
        gen:fem,
        case:gen_dat)

  ;
    
    (phon:[(a_ [e,r])],
        fk:strong,
        dtype:strong,
        num:sg,
        gen:mas,
        case:nom)

    ;
    
    (phon:[(a_ [e,r])],
        dtype:strong,
        num:pl,
        case:gen)

  ;
    (phon:[(a_ [e,s])],
        fk:strong,
        dtype:strong,
        num:sg,
        gen:neu,
        case:nom_acc)
  ;
    (phon:[(a_ [e,s])],
        dtype:strong,
        num:sg,
        gen:mas_neu,
        case:gen)
  ).
    

