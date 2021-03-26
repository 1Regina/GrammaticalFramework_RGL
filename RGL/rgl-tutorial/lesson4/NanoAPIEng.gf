--# -path=../lesson1

resource NanoAPIEng = open NanoRGLEng in {
  oper
    mkNP = overload {

      mkNP : Det -> N -> NP = DetN ;

      mkNP : N -> NP = \n ->
       let emptyDet : Det = lin Det {s = [] ; num = Sg}
        in DetN emptyDet n

    } ;


    -- Your task: make an overloaded mkN with at least two instances
    
    -- copied here lincat of N and opers noun and regNoun from lesson1/NanoRGLEng for reference
  -- lincat
  --     N = {s : Number => Str} ;
  -- oper
    -- noun : Str -> Str -> {s : Number => Str} =
    --   \man,men -> {s = table {Sg => man ; Pl => men}} ;
    -- regNoun : Str -> {s : Number => Str} =
    --   \car -> noun car (car + "s") ;
{-
  oper Noun : Type = {s : Number => Str} ;
  lincat N = Noun ; -- {s : Number => Str ; lock_N : {}} ;
                    -- Noun ** {lock_N : {}} ;
-}


      mkN = overload {          -- overloaded oper, with

        -- from oper noun
      
        mkN : Str -> Str -> N =      -- N = {s : Number => Str ; lock_N : {}} 
          \man,men -> lin N ( noun man men ) ; --  IF without lin N , type returned is only  {s = table {Sg => man ;  Pl => men}} ; So rectify with adding lin N in front

        -- from oper regNoun
        mkN : Str -> N = --{s : Number => Str}  =  . [ Note that N is { s: Number => Str ] - returns types -- N = {s : Number => Str ; lock_N : {}} 
          \car -> lin N (regNoun car ) ; -- regNoun car is same as  noun car (car + "s");  But  IF without lin N , type returned is only  {s = table {Sg => man ;  Pl => men}} without lock_N : {}; So rectify with adding lin N in front

        -- leave it at ResEng as the fuller is in RGL and this exercise is to test overload witn lin
        -- from https://github.com/1Regina/GrammaticalFramework_Book/blob/master/Chapter04/ResEng.gf
        -- mkN : Str -> {s : Number => Str}  = \w ->
        --     let
        --         ws : Str = case w of {
        --         _ + ("a" | "e" | "i"  | "o") + "o" => w + "s"   ; -- bamboo
        --         _ + ("s" | "x" | "sh" | "o" )      => w + "es"  ; -- bus, hero
        --         _ + "z"                            => w + "zes" ; -- quiz
        --         _ + ("a" | "e" | "o" | "u" ) + "y" => w + "s"   ; -- boy
        --         x + "y"                            => x + "ies" ; -- fly
        --         _                                  => w + "s"     -- car   NB from oper regNoun
        --         }
        -- in noun w ws   ;     -- NB mkN w ws is oper noun 

    } ;



}


