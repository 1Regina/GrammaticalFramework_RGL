concrete MiniAdjectiveEng of MiniAdjective = MiniCatEng ** {
  lin
    -- : A -> AP ;         -- green
    -- You don't need to change this function.
    -- Because the inflection table will be added to both A and AP, and this function only lifts A to AP.
    -- We are not modifying the contents of the A in any way, only the type of it.
    -- So "a = a" means: "whatever was in the A, keep it unchanged and lift the type into AP."
    -- This doesn't need to change, as long as A and AP keep having the same lincat.
    PositA a = a ;

    -- : AP -> Adv -> AP ;  -- warm by nature
    -- You will need to change this function.
    -- Type signature is AP -> … -> AP.
    -- Any inflection table that there is, needs to stay as it is.
    -- We are not choosing anything from the inflection table yet, we are only adding new strings to it.
    -- Remember how you did QKind in Foods grammar:
    --   http://www.grammaticalframework.org/doc/tutorial/gf-tutorial.html#toc55
    -- fun QKind : Quality -> Kind -> Kind ;
    -- lin QKind quality kind = {s = quality.s ++ kind.s}
    -- fun AdvAP : AP -> _ -> AP ;
    lin AdvAP ap adv = -- {s = ap.s ++ adv.s} ;

        {s = table {
          --verbose way
            -- Attributive => ap.s!Attributive ++ adv.s;
            -- Predicative => ap.s!Predicative ++ adv.s
          -- simplified
            adjForm => ap.s! adjForm ++ adv.s
        }};
}
