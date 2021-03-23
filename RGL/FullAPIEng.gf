resource FullAPIEng = open
  NounEng, -- this module comes from the actual RGL

  -- To get some lexicon to play with in GF shell
  StructuralEng,
  LexiconEng
  in {

  oper
    mkNP : Det -> N -> NP = \det,n ->
      DetCN det (UseN n) ;
}