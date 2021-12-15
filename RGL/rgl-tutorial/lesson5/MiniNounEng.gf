concrete MiniNounEng of MiniNoun = MiniCatEng ** {

  lin

    -- : CN -> NP ; -- water
    MassNP cn = cn ;

    -- : AP -> CN -> CN ; -- blue water, blue cold water -- Add AP to CN
    -- You will need to change this function.
    -- In this function, AP is in attributive position: "blue water".
    -- We can now choose a string from AP's inflection table, we don't need to keep it open anymore.
    -- AdjCN ap cn = {s = ap.s ++ cn.s} ;
    -- Ans: given AP is in attributive position
    AdjCN ap cn = {s =  ap.s ! Attributive ++ cn.s  };

    --  : N -> CN ; -- Lift N to CN
    UseN n = n ;
}
