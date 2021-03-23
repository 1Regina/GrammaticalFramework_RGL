--# -path=../lesson2:../lesson0
concrete ExampleEngRGLAbstract of Example =
  open
     CatEng,       -- English concrete syntax modules of the RGL abstract
     NounEng,
     PhraseEng,
     LexiconEng,
     StructuralEng,

     ParadigmsEng -- resource module containing opers like mkN
  in {

  lincat
    Comment = Utt ;

  lin
    example1_Comment = UttNP (DetCN (DetQuant this_Quant NumSg) (UseN dog_N)) ;  -- cf lesson0/ExampleEng.gf: UttNP = mkUtt;  DetCN = mkNP; DetQuant this_Quant NumSg = this_Det and lastly UseN dog_N = dog_N

    example2_Comment = UttNP (DetCN many_Det (mkN "aardvark")) ;
}
