concrete
  ExampleEngRGLNoAPI of Example = open CatEng,
                                       NounEng,
                                       PhraseEng,
                                       LexiconEng,
                                       StructuralEng,
                                       ParadigmsEng in {
lincat
  Phrase = Utt ; -- from CatEng
lin
  example1_Phrase =
    UttNP        -- from PhraseEng
      (DetCN     -- homework: where do the rest come from?
         (DetQuant this_Quant NumSg)
         (UseN dog_N)
      ) ;
}