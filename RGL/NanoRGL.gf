abstract NanoRGL = {
    flags startcat = NP;

    cat
        Det ; -- Determiner
        N ;   -- Noun
        NP ;  -- Noun phrase
        CN ;  -- new common noun
    
    fun
        -- Lexicon
        this_Det : Det ;
        many_Det : Det ;
        dog_N    : N   ;

        -- Syntatic functions (Method A in NanoRGLEng.gf)
        DetN     : Det -> N -> NP;

        -- for the new CN addition (Method B. Using CN and changing internal but using API)
        UseN     : N -> CN ;
        DetCN    : Det -> CN -> NP ;

}