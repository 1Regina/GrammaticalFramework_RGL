concrete NanoRGLIta of NanoRGL = {

  lincat
    Det = Determiner; 
    N = Noun ; -- need to modify this from NanoRGLEng bcos my N depends on gender which my Noun oper has define more comprehensively
    NP = NounPhrase ; -- need to modify this from NanoRGLEng bcos my N depends on gender which my NounPhrase oper has define more comprehensively
  

  lin
    this_Det  = det Sg "questo" "questa" ;
    many_Det  = det Pl "molti" "molte"   ; 
    dog_N = 
        { s = table {
                    Sg => "cane";
                    Pl => "cani" 
                    }  ;
          g = Masc   
          }  ;
    
    -- : Det -> N -> NP ;. Outdated bcos didnt take in Gender param
    -- DetN det noun = {s = det.s ++ noun.s ! det.num} ;
    
    -- DetN : Det -> N -> NP ;
    DetN det noun = {
              s = det.s!noun.g ++ noun.s!det.n;  --- this dog or many dog."det.s!noun.g" -> choosing molte/molti   &  noun.s!det.n  --> choosing cane / carni
              g  = noun.g ;          -- gender
              n  = det.n  ;         -- number
              }; 


  param
    Number = Sg | Pl ;
    Gender = Masc | Fem ;
  oper
    NounPhrase : Type =
            {s : Str ; 
             g : Gender ; 
             n : Number} ;

    Noun : Type = 
            {s : Number => Str ; 
             g : Gender} ;

    Determiner : Type = 
            { s : Gender => Str; 
              n : Number 
            };

    noun : Str -> Str -> Gender -> Noun = 
        \cane, cani , g -> {
            s = table {Sg => cane; Pl => cani} ;
            g = g ; 
            };

    det  : Number -> Str -> Str -> Determiner = 
        \ num , masc, fem -> {
            s = table { Masc => masc; Fem => fem } ;
            n = num ; 
            };  

}