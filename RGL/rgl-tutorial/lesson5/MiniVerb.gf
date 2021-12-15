abstract MiniVerb = MiniCat ** {
  fun

    -- First, a VP may come from a V:
    UseV : V -> VP ; -- sleeps

    -- Second, a VP may come from a Comp:
    UseComp : Comp -> VP ; -- is small/a cat/today

    -- And here are functions to form Comps from other categories.
    CompAP : AP -> Comp ; -- (is) cold / green-coloured
    CompNP : NP -> Comp ; -- (is) a cat
    CompAdv : Adv -> Comp ; -- (is) today
}
