concrete NanoRGLEng of NanoRGL = {

  lincat
    Det = {s : Str ; num : Number} ;
    N = {s : Number => Str} ;
    NP = {s : Str} ;
    
    -- Addition of CN in NanoRGL
    CN = {s : Number => Str} ;

  lin
    this_Det = {s = "this" ; num = Sg} ;
    many_Det = {s = "many" ; num = Pl} ;
    dog_N = regNoun "dog" ;

    -- Method A: 
     -- DetN: Det -> N -> NP ; -- Remove to demo the API can stay the same altho internal remains the same. See change in NanoRGL.gf
    DetN det noun = {s = det.s ++ noun.s ! det.num} ;

    -- Method B: Addition of CN in NanoRGL ie internal change with same API
    UseN noun = noun;
    DetCN det noun = {s = det.s ++ noun.s ! det.num} ;


  param
    Number = Sg | Pl ;

  oper
    noun : Str -> Str -> {s : Number => Str} =
      \man,men -> {s = table {Sg => man ; Pl => men}} ;
    regNoun : Str -> {s : Number => Str} =
      \car -> noun car (car + "s") ;
}