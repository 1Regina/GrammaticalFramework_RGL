concrete MiniVerbEng of MiniVerb = MiniCatEng ** {
  lin

    --  : V -> VP ; -- sleeps
    UseV v = v ;

    --  : Comp -> VP ; -- is small/a cat/today
    UseComp comp = {s = "is" ++ comp.s} ;


    -- : AP -> Comp ; -- (is) cold / green-coloured
    -- You will need to change this function.
    -- In this function, AP is in predicative position: "(the water) is blue-coloured".
    -- We can now choose a string from AP's inflection table, we don't need to keep it open anymore.
    -- CompAP ap = ap ;
    -- Ans: given AP is in predicative position
    CompAP ap = { s = ap.s!Predicative };


    -- : NP -> Comp ; -- (is) a cat
    CompNP np = np ;

    -- : Adv -> Comp ; -- (is) today
    CompAdv adv = adv ;
}
