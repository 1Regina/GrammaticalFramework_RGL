1. Notes from Inari's blog on RGL: https://inariksit.github.io/gf/2021/02/15/rgl-api-core-extensions.html#rgl-funs-and-lins-outside-the-api
2. Create NanoRGL.gf 
3. ```i NanoRGL.gf```
4. ```gt -cat=NP```
5. Copy NanoRGLEng.gf from https://github.com/inariksit/rgl-tutorial/blob/main/lesson1/NanoRGLEng.gf
6. ```i NanoRGLEng.gf``` then  ```l DetN many_Det dog_N```
7. ``` i NanoRGLEng.gf NanoRGLChi.gf ```  then  ```l DetN many_Det dog_N``` and ```l DetN this_Det dog_N```
8. Test of Oper from API and overload with NanoAPIEng.gf using ```i NanoAPIEng.gf``` then ```cc mkNP this_Det (regNoun "dog")``` and ```cc mkNP many_Det (regNoun "dog")```. ok to put bracket if want for parsing ```cc mkNP (many_Det) (regNoun "dog")```
9. Test of Inari's custom API with ```i -retain FullAPIEng.gf``` and ```cc mkNP many_Det cat_N```

10. To open the Internals in the API ```i alltenses/LangEng.gfo``` , then ```p -cat=Cl "he sleeps"``` , ```p -cat=Cl "she sees my dog"``` to see parser
11. To see probability of a function, do ```ai UsePron``` to "abstract info" of UsePron and see its function or ```ai Quant``` which "Quant" is a category to see its various uses ie the different fun that will produce that category.

Help needed and Notes:
1. As i wanted to insert gender and numbers, NanoRGLIta oper noun and det (cleaned but try to read again. Study DetN det noun with definition of inherent feature)
2. NanoRGLEng.gf and NanoRGL.gf added a CN and tweak but went haywire in lincat CN and lin UseN and DetCN. same for fun in NanoRGL.gf. It even prevent my ExampleEngNano from gr and parsing. ( Fixed NanoRGLEng.gf + NanoAPIEng.gf esp the overload with documentation of Method A vs Method B. ExampleEngNano went haywire bcos its tied to NanoRGLEng.) ExampleEngNano still bad -- (self-fix when rerun on 23 Mar 2021)

3. how to read noun.s ! det.num in  NanoRGLEng lin DetN det noun?  why is the noun dependent on the number? (Bcos noun has a table to choose from. So the way to Sg or Pl is by det.)

4. in rgl-tutorial/lesson3/ExampleEngRGLAbstract.gf : --# -path=../lesson2:../lesson0. There are Example abstract in BOTH lesson0 and lesson2. How does it know which to link to? Did i put correctly with ../asda:../ (Yes. Put correctly. When 2 are the same, it goes for the first path. Actually put one path will do.)

5. a: in rgl-tutorial/lesson1/NanoRGLEng.gf created an expanded concrete including pronoun, adjective and number. Note that num to start with 5_num and to be consistent with concrete. 

5. b: in RGL/NanoRGL.gf, NanoRGLChi.gf, NanoRGLEng.gf, NanoRGLIta.gf, the lin and cat and function are the simplest to generate "this dog" vs "these dogs".
   
6. in rgl-tutorial/lesson1/NanoRGLIta.gf and RGL//NanoRGLIta.gf created a concrete that uses gender and number. Check out the oper and lin DetN arguments.

7. in rgl-tutorial/lesson4/NanoAPIEng.gf, able to do `i -retain NanoAPIEng.gf` and tested with `cc mkN "cake"` and `cc mkN "child" "children"` with mkN taken from oper noun and regNoun.
8. in rgl-tutorial/lesson4/NanoAPIEng.gf, why cant I replace  `mkN : Str -> Str -> {s : Number => Str}`   with ` mkN : Str -> Str -> N` since lincat in `rgl-tutorial/lesson1/NanoRGLEng.gf` shows `N = {s : Number => Str}` (Yes i should. Note the missing lock field in terminal so need to further rectify . See comments in  NanoAPIEng.gf for adding lin N)
9. in rgl-tutorial/lesson4/NanoAPIEng.gf, 2nd instance of mkN in mkN overload, where does this noun come from  ` \car -> noun car (car + "s")`  ( from lesson1. See top line)