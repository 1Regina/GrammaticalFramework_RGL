abstract NanoRGL = {
  flags startcat = NP ;
  -- To have GF shell behave nicely: with startcat=NP,
  -- you can gt/gr and parse without specifying -cat=NP.
  -- See http://www.grammaticalframework.org/doc/gf-refman.html#flags-and-pragmas

  cat
    Det ;
    N ;
    NP ;

    Adj ;
    -- my 5 big dogs
    Num ; 
    Pron; -- my

  fun
    this_Det : Det ;
    many_Det : Det ;
    PronNumDet : Pron -> Num -> Det ;

    dog_N : N ;

    DetN : Det -> N -> NP ;

    -- this big (dogs); these 5 big (dogs)
    my_Pron : Pron ;
    num_5 : Num ;
    num_1 : Num ;

    big_Adj : Adj ; 

    AdjN  : Det -> Adj -> N -> NP;
    
    -- my 5 big dogs. Not required bcos taken care of my PronNumDet 
    -- AdjNumN : Det -> Adj -> Num -> N -> NP; 

}