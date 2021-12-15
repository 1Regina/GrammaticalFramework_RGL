abstract MiniNoun = MiniCat ** {

  fun
    -- CN to NP
    -- We omit the more interesting ways to make NP with determiners, and only include the mass construction
    MassNP : CN -> NP ; -- water

    -- Add AP to CN
    AdjCN : AP -> CN -> CN ; -- blue water, blue cold water

    -- Lift N to CN
    UseN : N -> CN ; -- Lifting the lexical category N to the intermediate phrasal category CN; see explanation for CN in https://inariksit.github.io/gf/2021/02/15/rgl-api-core-extensions.html#fn:1 (footnote 1)
}
