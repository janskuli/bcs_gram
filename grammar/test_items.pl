% -*-trale-prolog-*-
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   $RCSfile: test_items.pl,v $
%%  $Revision: 1.2 $
%%      $Date: 2005/10/20 08:17:02 $
%%     Author: Stefan Mueller (Stefan.Mueller@cl.uni-bremen.de)
%%    Purpose:
%%   Language: Trale
%      System: TRALE 2.3.7 under Sicstus 3.9.1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% NP
t(1,"stari vladika",@root,1,attributive).%Index agreement singular
t(2,"stara vladika",@root,0,attributive).
t(3,"stare vladika",@root,0,attributive).
t(4,"stare vladike",@root,1,attributive).%Concord agreement plural
t(5,"stari vladike",@root,1,attributive).%Index agreement plural
t(6,"oni vladike",@root,1,determinative).%Index agreement plural
t(7,"one vladike",@root,1,determinative).%Concord agreement plural
t(8,"oni vladika",@root,0,determinative).
t(9,"one vladika",@root,0,determinative).
t(10,"oni stare vladike",@root,1,determinative-attributive).%One switch | A-N concord FEM | D-AP index MASC
t(11,"one stari vladike",@root,0,determinative-attributive).%Two switches
t(12,"oni stari vladike",@root,1,determinative-attributive).%One switch | index MASC
t(13,"one stare vladike",@root,1,determinative-attributive).%No switch | concord agreemen FEM
% VP
t(14,"vladika su posvađale",@root,0,verb-agreement).
t(15,"vladike su posvađali",@root,1,verb-agreement).%One switch | N-VP index MASC
t(16,"vladike su posvađale",@root,1,verb-agreement).%No switch | concord FEM
t(17,"stari vladika su posvađale",@root,0,verb-agreement).
t(18,"stari vladike su posvađali",@root,1,verb-agreement).%One switch | A-N index MASC
t(19,"stari vladike su posvađale",@root,0,verb-agreement).%Two switches
t(20,"stare vladike su posvađali",@root,1,verb-agreement).%One switch | A-N concord FEM | NP-V index MASC
t(21,"stare vladike su posvađale",@root,1,verb-agreement).%No switch | concord FEM
t(22,"oni vladike su posvađali",@root,1,verb-agreement).%One switch | D-N index MASC
t(23,"oni vladike su posvađale",@root,0,verb-agreement).%Two switches
t(24,"one vladike su posvađali",@root,1,verb-agreement).%One switch | D-N concord FEM | NP-V index MASC
t(25,"one vladike su posvađale",@root,1,verb-agreement).%No switch | concord FEM
t(26,"oni stare vladike su posvađale",@root,0,verb-agreement).%Two switches
t(27,"oni stari vladike su posvađale",@root,0,verb-agreement).%Two switches
t(28,"one stare vladike su posvađale",@root,1,verb-agreement).%No switch | concord FEM
t(29,"oni stare vladike su posvađali",@root,1,verb-agreement).%One switch | A-N concord FEM | D-AP index MASC
t(30,"oni stari vladike su posvađali",@root,1,verb-agreement).%One switch | A-N index MASC
t(31,"one stare vladike su posvađali",@root,1,verb-agreement).%One switch | D-N concord FEM| NP-V index MASC
