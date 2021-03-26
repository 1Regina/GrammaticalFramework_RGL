resource Bar = {

oper

  mkSomething = overload {                    -- overloaded oper, with
      mkSomething : Str -> Str = \s -> s ;               -- instance 1 (with type signature Str -> Str)
      mkSomething : Str -> Str -> Str = \s,t -> s ++ t ; -- instance 2 (with type signature Str -> Str -> Str)
  } ;


  fooInternal : Str -> Str = \s -> "foo" + s + "foo" ;

  fooAPI : Str -> Str = \s -> fooInternal s ++ fooInternal s ;

  fooAPI' : Str -> Str = \s -> fooInternal (mkSomething s) ; -- in Haskell, can write fooAPI' = fooInternal . mkSomething, but GF doesn't have . (function composition operator)
  
  -- Equal methods
  fooAPI'' : Str -> Str = \s -> fooInternal s 
  fooAPI''' : Str -> Str = fooInternal ;

}