% -*-trale-prolog-*-
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   $RCSfile: theory.pl,v $
%%  $Revision: 1.3 $
%%      $Date: 2006/02/05 16:20:40 $
%%     Author: Stefan Mueller (Stefan.Mueller@cl.uni-bremen.de)
%%    Purpose: Eine kleine Spielzeuggrammatik für die Lehre
%%   Language: Trale
%      System: TRALE 2.7.5 (release ) under Sicstus 3.10.1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- multifile if/2.

%:- parse_and_gen.

% feature hiding and ordering
hidden_feat(dtrs).      % hide the dtrs attribute (shown by tree)
hidden_feat(head_dtr).          % hide the head_dtr attribute (shown by tree)
hidden_feat(non_head_dtr). % hide the non_head_dtr attribute ("")
hidden_feat(infl). % hide inflection

>>> phon.        % phon shall be shown first
>>> pred.

head <<< spr.
spr <<< subcat.
head <<< subcat.  % not needed once SPR is introduced in the signature
subcat <<< head_dtr.
head_dtr <<< non_head_dtr.
sem <<< infl.



% use ghostview for drawing signatures
graphviz_option(ps,gv).
%graphviz_option(svg,squiggle).

% Load phonology and tree output

:- [trale_home(tree_extensions)].


:- chart_display.

:- nochart_debug.  % this helps if somebody interrupted during chart debugging and the
                   % flag is still set to 'on'.

%nochart_display.
%chart_display.       % default

:- german.

:- notcl_warnings.  % on = output of warnings in a TCL window, off = output to console

:- hrp.  % use grisu for rules

%:- nofs. % do not print feature structures after parsing

root_symbol(@root).
decl_symbol(@root).
que_symbol(@interrog).

% load tokenization rules for parsing ordinary strings and atoms
:- [tokenization].

% specify signature file
signature(signature).

% load macros
%:- [flex_macros].
%:- [macros].

% load suffix information that is used by inflectional lexical rules
%:- [suffixes].

% load lexical rules
%:- [lexrules].

% load lexicon
:- [lexicon].

% load phrase structure rules
:- [rules].

% load phrase structure macros
:- [syntax].

% load relational constraints
%:- [constraints].

% load a test sequence
:- [test_items].


% If a description that should be used for generation is produced from a chart edge,
% which pathes of the input sign shall be considered?
gen_pathes([[head],[subcat],[sem]]).



% Semantics Definition for Generation with the build-in generator
% ------------------------------------------------------------------------------

% semantics sem1.
% sem1(sem:Cont,Cont) if true.





% Semantics Definition for Generation with Aurelien's generator
% ------------------------------------------------------------------------------

%% PREREQUISITES
%%
%%  o These can be given in theory.pl:
%%          syntactic_object(<type being the mgsat of all syntactic objects>).
%%
%%          ind_path([path,to,index,of,the,mrs]).
%%
%%          cont_path([path,to,mrs]).
%%          liszt_path([path,to,list,of,EPs]).
%%          hcons_path([path,to,handle,constraints]).
%%
%%     Here is what I use. There are chances that it is similar to that:
%%
%%          syntactic_object(syntactic_object).
%%
%%          ind_path([synsem,loc,cont,ind]).
%%          cont_path([synsem,loc,cont]).
%%          liszt_path([synsem,loc,cont,rels]).
%%          hcons_path([synsem,loc,cont,h_cons]).
%%
%% LOADING
%%
%%  o either launch trale with otion:
%%          -e "compile('/path/to/generator/directory/generator.pl')"
%%    or call within trale:
%%          compile('/path/to/generator/directory/generator.pl').
%%
%% USE
%%
%%  o To parse a sentence and generate from its semantics: 
%%          p_and_g([sentence,as,list,of,words]).
%%
%%  o To parse a phrase of description Desc and generate from its semantics:
%%          p_and_g([sentence,as,list,of,words],Desc).
%%
%%  o To generate from a description Desc (representing the whole sign, not only the
%%    semantics), getting all the outputs in the list Words, and matching Desc to the
%%    description Root:
%%          g(Desc).
%%          g(Desc,Words).
%%          g_d(Desc,Words,Root).
%%          g_d(Desc,Root).


          syntactic_object(syntactic_object).

          ind_path([sem,index]).
          cont_path([sem]).
          liszt_path([sem,rels]).
          hcons_path([sem,h_cons]).

:- compile('generator.pl').

