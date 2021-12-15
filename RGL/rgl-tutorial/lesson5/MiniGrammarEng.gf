concrete MiniGrammarEng of MiniGrammar = MiniLexiconEng, MiniAdjectiveEng, MiniNounEng, MiniVerbEng ** {

  lin
    -- : NP -> VP -> S ; -- the water is blue
    PosPresPredVP np vp = {s = np.s ++ vp.s} ;
}
