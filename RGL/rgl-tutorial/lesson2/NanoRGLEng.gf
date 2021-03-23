concrete NanoRGLEng of NanoRGL = {

  lincat
    Det = {s : Str ; num : Number} ;
    N = {s : Number => Str} ;
    NP = {s : Str} ;

  lin
    this_Det = {s = "this" ; num = Sg} ;
    many_Det = {s = "many" ; num = Pl} ;
    dog_N = regNoun "dog" ;

    -- : Det -> N -> NP ;
    DetN det noun = {s = det.s ++ noun.s ! det.num} ;

  param
    Number = Sg | Pl ;

  oper
    -- These are straight from the Foods grammar
    noun : Str -> Str -> {s : Number => Str} =
      \man,men -> {s = table {Sg => man ; Pl => men}} ;
    regNoun : Str -> {s : Number => Str} =
      \car -> noun car (car + "s") ;
}
