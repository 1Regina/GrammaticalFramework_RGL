concrete NanoRGLEng of NanoRGL = {

  lincat
    Det = {s : Str ; num : Number} ;
    N = {s : Number => Str} ;
    NP = {s : Str} ;
    Adj = {s : Str} ;

    Pron = {s : Str} ;  -- my
    Num = {s : Str ; num : Number} ;


  lin
    this_Det = {s = "this" ; num = Sg} ;
    many_Det = {s = "many" ; num = Pl} ;
    dog_N = regNoun "dog" ;

    -- : Det -> N -> NP ;
    DetN det noun = {s = det.s ++ noun.s ! det.num} ;


    -- my 5 big dogs
    my_Pron = {s = "my"} ; 
    -- my_Det = {s = "my"} ; 
    num_1 = {s = "1"; num = Sg} ;
    num_5 = {s = "5"; num = Pl} ;
    big_Adj = {s =  "big"};


    -- my 5 big dogs
    -- AdjN pron num adj noun = { s = pron.s ++ num.s! det.num ++ adj.s ++ noun.s!det.num} -- if my is a pron
    -- this big dog and many big dogs
    -- AdjN  : Det -> Adj -> N -> NP;
    AdjN det adj noun  = {s = det.s ++ adj.s ++ noun.s!det.num}; 

    --Method A (General method)
    -- :  PronNumDet : Pron -> Num -> Det ;
    PronNumDet pron number = {s    = pron.s ++ number.s ;
                              num  = number.num } ;

    -- Method B with record extension where the number argument n return type have the same fields (here s and num) https://inariksit.github.io/gf/2018/05/25/subtyping-gf.html
    -- PronNumDet pron number = number ** {s = pron.s ++ number.s} ;
   

  param
    Number = Sg | Pl ;

  oper
    noun : Str -> Str -> {s : Number => Str} =
      \man,men -> {s = table {Sg => man ; Pl => men}} ;
    regNoun : Str -> {s : Number => Str} =
      \car -> noun car (car + "s") ;

    -- -- my dog
    -- my_Det = Pron -> Det
    
    -- -- my five dogs
    -- mk_Det = Pron -> Num -> Det


}