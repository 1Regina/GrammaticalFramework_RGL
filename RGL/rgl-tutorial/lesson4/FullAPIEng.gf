resource FullAPIEng = open
  NounEng, -- this module comes from the actual RGL

  -- Importing these to get some lexicon to play with
  StructuralEng,
  LexiconEng
  in {

  oper
    mkNP : Det -> N -> NP = \det,n ->
      DetCN det (UseN n) ;
}
