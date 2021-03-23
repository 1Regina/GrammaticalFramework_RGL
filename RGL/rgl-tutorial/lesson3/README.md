# Lesson 3: File paths + Actual RGL abstract syntax

This directory contains two concrete syntaxes of Example. Neither of them compiles at the moment, because they are missing appropriate file paths.

* [ExampleEngNano.gf](https://github.com/inariksit/rgl-tutorial/blob/main/lesson3/ExampleEngNano.gf) is in all ways identical to [lesson2/ExampleEngNano.gf](https://github.com/inariksit/rgl-tutorial/blob/main/lesson2/ExampleEngNano.gf).
* [ExampleEngRGLAbstract.gf](https://github.com/inariksit/rgl-tutorial/blob/main/lesson3/ExampleEngRGLAbstract.gf) is like [lesson0/ExampleEng](https://github.com/inariksit/rgl-tutorial/blob/main/lesson0/ExampleEng.gf), but uses the underlying RGL abstract syntax.

### GF modules in different directories

If your grammar doesn't include a file path, you can only refer to other GF files in the same directory and in your `$GF_LIB_PATH`.

But often you want to refer to files in other directories. For instance:

* Your abstract is in one directory and concrete in another
* An abstract syntax (like Foods) is in one directory, and another abstract that *extends* the first abstract is in another.
* A concrete syntax is in one directory, and a module that you want to *open*

### How to add a file path

If you want to refer to files in other directories, you need to include a file path.
At the top of the file, write this:

```
--# -path=somePath:anotherPath:thirdPath
```

* You can add arbitrarily many paths, separated by colons `:`.

The paths may be…
* *absolute*, like `/Users/inari/GFstuff/myCoolGrammars/resource`, or
* *relative*, like `myCoolGrammars/resource` or `../myCoolGrammars/resource`.

A relative path uses two dots `..` to mean "go down one directory". (Related, a single dot `.` means "the current directory".) Suppose that my directory hierarchy is as follows:

```
GFstuff/
├─ myCoolGrammars/
│  ├─ resource/
│     ├─ NanoRGL.gf
│     ├─ NanoRGLEng.gf
├─ foods/
│  ├─ Foods.gf
│  ├─ FoodsEng.gf
├─ Example.gf
├─ ExampleEngNano.gf
```

If you want to open `NanoRGLEng` from `FoodsEng`, you need to type in

```
--# -path=../myCoolGrammars/resource
```

The file `FoodsEng` is located in `foods`. To go to `myCoolGrammars` from `foods`, you need to first go one step down, so that you're in `GFstuff`, and only then enter `myCoolGrammars`.

On the other hand, if you want to open `NanoRGLEng` from `ExampleEngNano`, you only need to type `--# -path=myCoolGrammars/resource`. Because you're already in `GFstuff` and don't need to go back a step.

For more examples on file paths, you can go to [GF tutorial](http://www.grammaticalframework.org/doc/tutorial/gf-tutorial.html) and Ctrl+F `--# -path`.


### Tasks for lesson 3

* Add file paths to both concretes in this directory, so that they compile. Make sure that the file paths you add are minimal.

* Look at ExampleEngRGLAbstract.gf and lesson0/ExampleEng.gf side by side. Try to figure out which of the long weird incantations in the RGL abstract correspond to the nice, short opers in the RGL API. For instance: `mkUtt` in the API corresponds to `UttNP` in the abstract.
