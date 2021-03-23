concrete ExampleEngNano of Example = open NanoRGLEng in {
  lincat
    Phrase = NP ; -- cat in NanoRGL, lincat in NanoRGLEng
  lin
    example1_Phrase =
      DetN           -- fun in NanoRGL, lin in NanoRGLEng
        this_Det     -- fun in NanoRGL, …
        dog_N ;      -- fun in NanoRGL, …

    example2_Phrase =
      DetN
        many_Det     -- fun in NanoRGL, …
        (regNoun     -- oper in NanoRGLEng
          "aardvark") ;
}