abstract NanoRGL = {
  flags startcat = NP ;
  -- To have GF shell behave nicely: with startcat=NP,
  -- you can gt/gr and parse without specifying -cat=NP.
  -- See http://www.grammaticalframework.org/doc/gf-refman.html#flags-and-pragmas

  cat
    Det ;
    N ;
    NP ;

  fun
    this_Det : Det ;
    many_Det : Det ;
    dog_N : N ;

    DetN : Det -> N -> NP ;
}
