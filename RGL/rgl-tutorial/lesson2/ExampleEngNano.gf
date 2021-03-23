concrete ExampleEngNano of Example =
  open
    NanoRGLEng -- concrete syntax of the abstract NanoRGL
  in {

  lincat
    Comment = NP ;

  lin
    example1_Comment = DetN this_Det dog_N ; -- DetN, this_Det and dog_N are lins in NanoRGLEng

    example2_Comment = DetN many_Det (regNoun "aardvark") ; -- regNoun is an oper in NanoRGLEng
}
