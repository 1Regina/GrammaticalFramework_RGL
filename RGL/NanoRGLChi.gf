concrete NanoRGLChi of NanoRGL = {

  lincat
    Det = {s : Str ; num : Number} ;
    N = {s : Number => Str} ;
    NP = {s : Str} ;
  

  lin
    this_Det = {s = "这" ; num = Sg} ;
    many_Det = {s = "许多" ; num = Pl} ;
    dog_N = regNoun "只狗" ;
 

    -- : Det -> N -> NP ;
    DetN det noun = {s = det.s ++ noun.s ! det.num} ;

  param
    Number = Sg | Pl ;

  oper
    noun : Str -> Str -> {s : Number => Str} =
      \man,men -> {s = table {Sg => man ; Pl => men}} ;
    regNoun : Str -> {s : Number => Str} =
      \car -> noun car (car + "") ;
}