:- multifile portray_message/2.



% don't show message about homomorphism condition
user_portray_message(warning,ale(join_nopres(_F,_T1,_T2))).

% don't show messages about unary branches
user_portray_message(warning,ale(unary_branch(_T,_U))).



% maximal spezifische Typen

% don't show messages about implicit maxs
user_portray_message(warning,ale(implicit_maxs(_L))).



%%% Hooks for the new Trale

/*

% don't show message about homomorphism condition
portray_message(warning,ale(join_nopres(_F,_T1,_T2))) :- !.

% don't show messages about unary branches
portray_message(warning,ale(unary_branch(_T,_U))) :- !.



% maximal spezifische Typen

% don't show messages about implicit maxs
portray_message(warning,ale(implicit_maxs(_L))) :- !.

*/

% According to Gerald, the hooks above should be loaded before ale.pl
% Since I do not want to spend time on this, I reintroduce Detmar's
% solution by abolishing Gerald's code. Sorry for this.


:- abolish(portray_message/2).

portray_message(Level,What) :-
   current_predicate(user_portray_message/2),
   user_portray_message(Level,What),
   !.

% SHOULD MAKE THIS MODULE-SPECIFIC
portray_message(warning,no_match(abolish(_))). % suppress abolish/1 warnings
portray_message(warning,ale(Msg)) :-
  format(user_error,'{ALE: Warning: ',[]),
  ale_warning(Msg),
  format(user_error,'}~n',[]),
  flush_output(user_error).

portray_message(informational,M) :-            
  portray_message_inf(M).
