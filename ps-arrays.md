# PostScript Arrays


### Creating Arrays

To create an array in PostScript, you use square brackets `[ ]`. Each item within the brackets becomes an element of the array. Here’s how you create a simple array:

```postscript
[1 2 3 4 5]  % Creates an array of five integers
```

Arrays can also be mixed-type:

```postscript
[100 (string) /name]  % An array containing an integer, a string, and a name
```

### Accessing Array Elements

Elements in a PostScript array are accessed by an index. PostScript arrays are zero-indexed, which means the first element is accessed with index `0`. You use the `get` operator to retrieve an element:

```postscript
/myArray [10 20 30 40 50] def
myArray 2 get  % Gets the third element, which is 30
```

### Modifying Arrays

To modify an element of an array, you use the `put` operator, specifying the array, the index, and the new value:

```postscript
myArray 1 25 put  % Sets the second element of myArray to 25
```

### Operations on Arrays

Arrays in PostScript can be manipulated with various operators:
- **length**: Returns the number of elements in the array.
  ```postscript
  myArray length  % Returns 5
  ```
- **copy**: Copies elements from one array to another or duplicates the entire array.
  ```postscript
  /newArray 5 array def
  myArray newArray copy  % Copies myArray to newArray
  ```
- **forall**: Iterates over each element of the array, applying a procedure.
  ```postscript
  myArray {100 mul} forall  % Multiplies each element by 100
  ```
- **index**: Accesses an element by its index without removing it from the stack.
  ```postscript
  myArray 3 index  % Gets the fourth element without altering the stack
  ```
- **aload** and **astore**: `aload` copies all elements of an array to the stack, and `astore` does the reverse, storing elements from the stack into an array.
  ```postscript
  myArray aload  % Pushes all elements of myArray onto the stack
  5 array astore  % Stores top five stack items into a new array
  ```

### Nested Arrays

Arrays can contain other arrays, allowing the creation of multi-dimensional data structures:

```postscript
[ [1 2 3] [4 5 6] [7 8 9] ]  % A 3x3 matrix represented as an array of arrays
```

### Use in Graphics

Arrays are particularly useful in PostScript for defining paths and patterns, storing transformation matrices, and managing graphical states. For example, transformation matrices are typically represented as arrays:

```postscript
[1 0 0 1 30 50] concat  % Applies a translation transform using an array
```

