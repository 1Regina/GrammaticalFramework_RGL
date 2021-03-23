resource NanoAPIEng = open NanoRGLEng in {

oper
  --  Method 1 Original
  -- mkNP : Det -> N -> NP = DetN ;
  
  -- Method 2: Overload style
  mkNP = overload {
    mkNP : Det -> N -> NP =  -- DetN ; -- uncomment "--DetN;" same as before in Method 1 (Method A for NanoRGLEng.)
        
        \det, n -> DetCN det (UseN n) ;-- using this bcos now DetN is "gone" and replace with UseN and DetCN (Method B for NanoRGLEng)

    mkNP : N -> NP = \n ->
      let emptyDet : Det = lin Det {s = [] ; num = Sg}
       in DetN emptyDet n
   } ;  

}