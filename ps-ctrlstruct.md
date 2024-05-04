### 1. Conditional Execution

**`if` and `ifelse`**  
PostScript uses `if` and `ifelse` for conditional logic. These operators expect a boolean value and one or two procedures on the stack.

**`if` Example:**
```postscript
% Check if a number is greater than 50
/num 65 def
num 50 gt { (Number is greater than 50) show } if
```
In this example, if `num` is greater than 50, the message is shown.

**`ifelse` Example:**
```postscript
% Check if a number is even or odd
/num 42 def
num 2 mod 0 eq
{ (Number is even) show }
{ (Number is odd) show }
ifelse
```
This script checks whether `num` is even or odd, displaying an appropriate message.

### 2. Loops

PostScript provides several looping constructs: `loop`, `repeat`, `for`, and `forall`. Each serves different purposes and is used based on the context.

**`loop`**  
This is an infinite loop, only exiting upon a conditional break.
```postscript
% Print numbers from 1 to 10
/counter 1 def
{
    counter 10 lt
    {
        counter pstack
        /counter counter 1 add def
    }{
        exit
    } ifelse
} loop
```
The `exit` operator is used to break out of the `loop`.

**`repeat`**  
Executes a block of code a specific number of times.
```postscript
% Print "Hello" 5 times
5 { (Hello\n) print } repeat
```

**`for`**  
Iterates over a range of numbers, commonly used for index-based operations.
```postscript
% Print numbers 0 to 9
0 1 9 {
    pstack
} for
```
This script iterates from 0 to 9, printing each number.

**`forall`**  
Iterates over elements in an array or dictionary.
```postscript
% Print all elements in an array
[10 20 30 40 50] {
    pstack
} forall
```
If used with a dictionary, `forall` passes each key-value pair to the block:
```postscript
<< /a 1 /b 2 >> {
    exch pstack  % First pop value, then key
    pstack
} forall
```

### 3. Exception Handling

PostScript handles runtime errors via the `stopped` operator, which can catch exceptions thrown by operations inside a procedure.

**Example:**
```postscript
{
    /num 0 def
    10 num div
} stopped {
    (An error occurred.) print
} if
```
In this example, division by zero would normally cause an error, but `stopped` catches it and prints an error message instead.

