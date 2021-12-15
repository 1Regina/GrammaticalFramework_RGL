concrete MiniLexiconEng of MiniLexicon = MiniCatEng ** {
  lin
    water_N = mkN "water" ;
    cold_A = mkA "cold" ;
    blue_A = mkA "blue" "blue-coloured" ;
    sleep_V = mkV "sleeps" ; -- we ignore morphology here
    today_Adv = mkAdv "today" ;

  oper
    mkV,
    mkN,
    mkAdv : Str -> {s : Str} = \s -> {s = s} ;

    -- mkA_Full : Str -> Str -> MiniCatEng.Adjective ;
    -- mkA attr pred = {s = attr} ;
    -- You will need to change the implementation (line 15), not the type signature (line 14).
    -- Before the changes, MiniCatEng.Adjective is just a {s : Str}.
    -- After the changes, MiniCatEng.Adjective will be an inflection table,
    -- and you need to place the variables `attr' and `pred' into right places.

    -- after change:
    mkA_Full : Str -> Str -> MiniCatEng.Adjective = \attr, pred -> {
     s = table {
        Attributive => attr;
        Predicative => pred
        }
      } ;


    mkA = overload {
      mkA : (attr, pred : Str) -> MiniCatEng.Adjective = mkA_Full;
      mkA : Str -> MiniCatEng.Adjective = \attr -> mkA_Full attr attr
    };

  }

