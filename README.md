# llvm-dot-hacks
Quick and dirty scripts that help visualise CFGs produced by LLVM's opt -dot-cfg

0. Download this in $DDIR

```
> git clone https://github.com/smanilov/llvm-dot-hacks
> export DDIR=`pwd`/llvm-dot-hacks
```

1. Start with compiling your program with clang. Just pass -c -emit-llvm to generate a bitcode file.

```
> clang main.cpp -c -emit-llvm
```
    
2. Get a CFG per function out of it.

```
> opt -dot-cfg main.bc
```
    
3. Assuming you want to analyze the function 'main', strip the actual code from .dot file

```
> $DDIR/labels-only.sh cfg.main.dot
```
    
4. Spin your own tool to get a file containing the BB labels you want to colour, or, you know, do it by hand (the BBs of a loop, perhaps?).
5. Color the BBs in the graph.

```
> $DDIR/color.sh loop0 cfg.main.labels-only.dot
```

6. Convert to .svg.

```
> $DDIR/dottool.sh loop0.dot
```

7. See.

```
> eog loop0.svg
```
