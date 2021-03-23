resource Foo = open Prelude in {

  oper
    MyComplexCat : Type = {
        s : Str ;
        isSilly : Bool ;
        eatsIceCream : Bool ;
        additionalString : Str
    } ;

    MySimpleCat : Type = {
        s : Str
    };

    ------



    complex : MyComplexCat = {
        s = "sing" ;
        isSilly = True ;
        eatsIceCream = False  ;
        additionalString = "sing" 
    };

    -- Note that the output is a MyComplexCat type so copy the type skeleton first and modify    
    combineSimpleAndComplexToComplex : MySimpleCat -> MyComplexCat -> MyComplexCat ;
    combineSimpleAndComplexToComplex simple compl = {
        s = simple.s  ;
        isSilly = True ;
        eatsIceCream = False  ;
        additionalString = "sing" 
    };
}