# Lesson 2: Using `lin`s to define other `lin`s

In Lesson 1, we got familiar with NanoRGL. You may have added new language(s), new lexicon or constructions as an exercise---cool if you did, cool if you didn't. In this directory, we have a fresh copy of NanoRGL that will be used in an application grammar. (How to use a grammar from another directory is a topic for a later lesson.)

So far we've seen a clear division of labour between `abstract` and `concrete` vs. `resource` modules, as well as `fun`s and `lin`s vs `oper`s. This is what you've been taught:

* Open a `resource` module in a `concrete` module
* Use the opers from the resource in defining the lins of the concrete

This lesson teaches that you can, in addition,

* Open a `concrete` module in another `concrete` module
* Use the lins and opers from the first concrete, in defining the lins of the other concrete.


### Tasks for lesson 2

* Look at `ExampleEngNano` and just understand that you can do this: open concretes in concretes and define lins with help of other lins.

Optional:
* If you added some new funs/lins or opers to your NanoRGL in lesson 1, you can copy them over to the NanoRGL in this directory and use them in ExampleEngNano.
* If you already know how to do file paths, feel free to skip the copying and just open lesson1/NanoRGLEng in lesson2/ExampleEng.

We're learning how to add file paths in the next lesson.

<!-- * Remember that this lesson exists, if you're later unsure and want to check how to do it. (There's no special syntax---`open ModuleName in {…}` and the usage of the lins on the right-hand side are exactly the same ) -->
