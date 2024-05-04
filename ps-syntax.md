### Features of PostScript Syntax

- Postfix (hence the name!)
- Stack
- Tacit/Concatative

Comments in PostScript start with `%` and end at newline.

### Basic Syntax

**First, we have the literals:**

- **Integer**: `123`
- **Real**: `123.456`
- **Boolean**: `true`, `false`
- **String**: `(This is a string)`
- **Name**: `/Name`
- **Array**: `[1 2 3]`
- **Dictionary**: `<< /Key /Value >>`

**Then, we got the operators**

- Arithmetic: `add`, `sub`, `mul`, `div`, `mod`
- Comparison: `eq`, `ne`, `gt`, `lt`, `ge`, `le`
- Logical: `and`, `or`, `not`
- Stack manipulation: `dup`, `exch`, `pop`, `clear`

### Closures

We can 'nest' operations by enclosing them in curly braces. These are 'procedures' but I'd like to call them 'closures'. **PostScript is a tacit language**. This means the code enclosed in curly braces have their own 'closure' --- similar to a function in Posix Shell. Whatever you pushed to stack before opening the curly closure, that is your 'argument stack'. Whatever you define in a 'curly closure' stays there:

```postscript
/mynameOuter 10 def
10 push
11 push
{ 
  /mynameInner 10 def
  pop print % prints 11
  pop print % prints 10
}

```

### Control Structures using Procedures (or Closures!)

**Conditional Execution**  
Use `if` and `ifelse` for conditional operations:

```postscript
/x 10 def
x 5 gt { (x is greater than 5) show } if
```

**Loops**  
For repeating operations, you can use `loop`, `repeat`, `for`, and `forall`.

Example using `for`:
```postscript
0 1 10 {  % From 0 to 10 incrementing by 1
    dup  % Duplicates the current number on the stack
    ( ) print
    =  % Prints the number
} for
```

### Functions and Variables

**Defining Variables**  
Use `/name` to declare a name and `def` to define a variable:

```postscript
/x 10 def  % Defines x and sets it to 10
```

**Creating Functions**  
Functions are defined as procedures and are bound to names:

```postscript
/addOne { 1 add } def
3 addOne  % Returns 4
```

### Graphics

PostScript is heavily used for drawing:

**Basic Shapes**  
- **Line**: `newpath 100 100 moveto 200 200 lineto stroke`
- **Rectangle**: `newpath 100 100 moveto 200 0 rlineto 0 100 rlineto -200 0 rlineto closepath stroke`
- **Circle**: `100 100 50 0 360 arc stroke`

**Color and Styles**  
Set colors and line styles using `setrgbcolor`, `setlinewidth`, etc.

```postscript
1 0 0 setrgbcolor  % Red
2 setlinewidth  % Line width of 2
100 100 50 0 360 arc fill  % Draws a filled red circle
```
