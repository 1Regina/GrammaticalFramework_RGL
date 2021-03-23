--# -path=../lesson1

resource NanoAPIEng = open NanoRGLEng in {
  oper
    mkNP = overload {

      mkNP : Det -> N -> NP = DetN ;

      mkNP : N -> NP = \n ->
       let emptyDet : Det = lin Det {s = [] ; num = Sg}
        in DetN emptyDet n

    } ;

    -- Your task: make an overloaded mkN with at least two instances
}
