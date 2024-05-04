# PostScript Functions


### Defining Procedures

A PostScript procedure is defined by enclosing commands within curly braces. Here is how you define a simple procedure:

```postscript
{
    % Procedure body
    20 10 add  % Adds 20 and 10
    pstack      % Prints the stack contents
}
```

This procedure adds two numbers and prints the stack. It does not execute until it is specifically invoked.

### Naming and Storing Procedures

Procedures often need to be reused, and you can store them under a name using the `/name` notation followed by `def`:

```postscript
/addAndPrint {
    20 10 add
    pstack
} def

% Now you can call addAndPrint anywhere in your script
addAndPrint  % Executes the procedure
```

### Invoking Procedures

Procedures are invoked by simply writing their name or by using `exec` if the procedure is on the stack:

```postscript
% If defined and named
addAndPrint

% If the procedure is on the stack
{
    100 200 add
} exec  % Directly executes this anonymous procedure
```

### Passing Parameters

PostScript does not support passing parameters to procedures in the traditional sense like in other programming languages. Instead, parameters are typically managed via the stack or through global variables:

```postscript
/x 10 def
/y 20 def

% A procedure that uses global variables
{
    x y add
    pstack
} exec
```

However, to simulate parameter passing, you can manipulate the stack directly within the procedure:

```postscript
% This procedure expects two values on the stack
{
    add
    pstack
} exec

% Now push parameters onto the stack before calling
10 20 exec
```

### Local Variables

In PostScript, you can use dictionaries to create local scopes for variables, ensuring that variables inside a procedure do not interfere with global variables:

```postscript
10 dict begin
/x 10 def  % Local variable x
{
    /x 5 def  % Redefines x locally within the procedure
    x pstack  % Will print 5
} exec
x pstack  % Will print 10, showing that the global x was unaffected
end
```

### Loops and Conditionals within Procedures

Procedures can contain any PostScript commands, including loops and conditional statements, making them powerful for complex logic:

```postscript
{
    0 1 1000 {
        dup  % Duplicates the current index
        10 mod 0 eq {
            pop  % Removes the current index from the stack
        } if
    } for
} exec
```

This procedure loops from 1 to 1000, printing only numbers that are multiples of 10.

### Recursive Procedures

Procedures can even be recursive, calling themselves within their own bodies. However, care must be taken to avoid infinite recursion and ensure that there is a base case for termination:

```postscript
/fact {
    dup 0 eq
    {
        pop 1
    } {
        dup 1 sub fact mul
    } ifelse
} def

5 fact  % Calculates factorial of 5
```

