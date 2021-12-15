abstract MiniCat = {
  cat
    N ;
    A ;
    V ;
    Adv ;

    AP ;
    CN ; -- A category between N and NP; see https://inariksit.github.io/gf/2021/02/15/rgl-api-core-extensions.html#fn:1 for explanation (footnote 1)
    NP ;

    Comp ; -- An intermediate category for all non-verb cats that may become VP:
           -- "is small" (AP), "is a cat" (NP), "is today" (Adv).
           -- See more explanations in MiniVerb.gf

    VP ; -- VP may come from V, or from a Comp.

    S ; -- The startcat in this mini version of the RGL. In full RGL, we have Utt and Phr above S, but here we stop at S.
}
