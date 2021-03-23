resource ProtoRGLEng = open Prelude in {
    param
        Number = Sg | Pl ;
    oper
        det : Number -> Str ->
            {s : Number => Str} -> {s : Str ; n : Number} =
            \n,det,noun -> {s = det ++ noun.s ! n ; n = n} ;

        Noun : Type = { s : Number => Str };
        NounPhrase : Type = {s : Str ; n : Number};
    -- (option 2) det used as a function bcos of needing 3 arguments.
        det : Number -> Str ->
            {- {s : Number => Str} -> {s : Str ; n : Number} replace it with this for easier understanding -}
             Noun -> NounPhrase =
                \number,det,noun -> {s = det ++ noun.s ! number ; n = number} ;

        noun : Str -> Str -> {s : Number => Str} =
            \man,men -> {s = table {Sg => man ; Pl => men}} ;
        regNoun : Str -> {s : Number => Str} =
            \car -> noun car (car + "s") ;
        adj : Str -> {s : Str} =
            \cold -> {s = cold} ;
        copula : Number => Str =
            table {Sg => "is" ; Pl => "are"} ;

}