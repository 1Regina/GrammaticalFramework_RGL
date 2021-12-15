# Lesson 5: Making changes in some resource grammar (core)

This lesson is for anyone who is writing their own RG, or wants to tweak an existing RG. _Note that this has nothing to do with the RGL API, just the RGL core._

## Motivation

When working with the full RGL, you change one lincat and suddenly it causes errors in several functions, over multiple modules. This can be overwhelming, so I created this smaller environment to tackle that situation with fewer functions and modules.

## Task: Attributive vs. predicative adjectives

Suppose that in English, all colour adjectives behave as follows:

* In __attributive__ position, just as in ordinary English. A black cat, my red house, blue water.
* In __predicative__ position, it needs to be suffixed with "-coloured". A cat is black-coloured, my house is red-coloured, water is blue-coloured.
* Any other adjectives are invariable: cold beer, beer is cold. (Although if you like, why not make it "beer is cold-temperatured". :-P)

This is a bit silly for English, but similar distinctions happen in other languages. So let's just pretend this is how English works now.

## Compile & test

You find in this directory a mini version of the RGL, with 6 modules. Unless stated otherwise, the function names and type signatures are identical to their full RGL versions. I have divided the functions in separate modules to better mimic the situation with the full RGL: when you compile, you get errors from one module, fix them, and then you get errors from the next module.

### Main module: MiniGrammarEng.gf

This is the main module. When you're making your changes in the other modules, you can just keep compiling that file:

```
$ gf MiniGrammarEng.gf
```

Of course, if you want to compile just one of the other modules, you _can_ do that. But MiniGrammarEng is the only one that includes Lexicon---so the only way to generate any sentences is to open MiniGrammarEng in the GF shell.

### Test script

You can run the test script, `test.sh` in this directory:

```
$ ./test.sh

If this is the only line you see, it means the test was successful!

<… bunch of output that looks like this>

-blue water is blue
+blue water is blue-coloured

…

-cold water is blue today
+cold water is blue-coloured today
```

The test script runs the output of the grammar against a gold standard. Once you have made the changes in the grammar, the test should succeed.

## Lins and opers to change

Now we get to the main part of this exercise. You will change the lincat of A and AP (by changing an oper), the `mkA` lexical constructor, and finally, some lins for funs that take AP as their argument.

I have written these instructions in the files too, copied here just for convenience.

### MiniCatEng.gf
```
oper
  Adjective : Type = {s : Str} ;
```

This helper definition, Adjective, is the lincat of A (line 5) and AP (line 9).
You will need to change Adjective into an inflection table.

The inflection table will need the following:
  * Attributive form: blue cat
  * Predicative form: cat is blue-coloured

Even though the predicative is only different for colour
adjectives, the inflection table must still exist in the lincat of A and AP.

Create the params, and change Adjective into an inflection table.


### MiniLexiconEng.gf
```
oper
    mkA : Str -> Str -> MiniCatEng.Adjective ;
    mkA attr pred = {s = attr} ;
```

You will need to change the implementation (line 15), not the type signature (line 14).
Before the changes, MiniCatEng.Adjective is just a `{s : Str}`.
After the changes, MiniCatEng.Adjective will be an inflection table,
and you need to place the variables `attr` and `pred` into right places.


### MiniAdjectiveEng.gf

```
lin
   -- : AP -> Adv -> AP ;  -- warm by nature
  AdvAP ap adv = {s = ap.s ++ adv.s} ;
```

You will need to change this function.
Type signature is `AP -> … -> AP`: we take an AP, put something in it, and it's still an AP.
So any inflection table that there is, needs to stay as it is.
We are not choosing anything from the inflection table yet, we are only adding new strings to it.
For hints, remember how you did QKind in Foods grammar: http://www.grammaticalframework.org/doc/tutorial/gf-tutorial.html#toc55


### MiniNounEng.gf

```
lin
  -- : AP -> CN -> CN ; -- blue water, blue cold water -- Add AP to CN
  AdjCN ap cn = {s = ap.s ++ cn.s} ;

```
You will need to change this function.
In this function, AP is in attributive position: "blue water".
We can now choose a string from AP's inflection table, we don't need to keep it open anymore.


### MiniVerbEng.gf

```
lin
  -- : AP -> Comp ; -- (is) cold / green-coloured
  CompAP ap = ap ;
```

You will need to change this function.
In this function, AP is in predicative position: "(the water) is blue-coloured".
We can now choose a string from AP's inflection table, we don't need to keep it open anymore.
