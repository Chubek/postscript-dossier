### Operators: *C* (1)

1. **clear**: The `clear` operator removes all elements from the operand stack. Example:
   ```
   1 2 3 clear    % Stack becomes empty
   ```

2. **cleardictstack**: The `cleardictstack` operator removes all dictionaries from the dictionary stack. Example:
   ```
   cleardictstack    % Clears all dictionaries from the stack
   ```

3. **cleartomark**: The `cleartomark` operator removes all elements from the operand stack up to the nearest mark. Example:
   ```
   1 2 mark 3 4 cleartomark    % Stack becomes [3 4]
   ```

4. **clip**: The `clip` operator sets the current clipping path to the current path. Example:
   ```
   clip    % Sets the clipping path to the current path
   ```

5. **clippath**: The `clippath` operator intersects the current clipping path with the current path, resulting in the new clipping path. Example:
   ```
   clippath    % Intersects the current clipping path with the current path
   ```

6. **closefile**: The `closefile` operator closes a file that was opened for reading or writing. Example:
   ```
   myFile closefile    % Closes the file 'myFile'
   ```

7. **closepath**: The `closepath` operator adds a line segment from the current point to the starting point of the current subpath, effectively closing the path. Example:
   ```
   closepath    % Closes the current path
   ```

8. **colorimage**: The `colorimage` operator defines a color image with the specified width, height, number of color components, and image data. Example:
   ```
   100 100 3 [255 0 0 0 255 0 0 0 255] colorimage    % Creates a 100x100 RGB image with a red diagonal line
   ```

9. **concat**: The `concat` operator concatenates the current transformation matrix with the specified matrix. Example:
   ```
   [1 0 0 1 100 100] concat    % Concatenates the current matrix with a translation by (100, 100)
   ```

10. **concatmatrix**: The `concatmatrix` operator replaces the current transformation matrix with the specified matrix. Example:
    ```
    1 0 0 1 0 0 concatmatrix    % Resets the current matrix to the identity matrix
    ```

11. **condition**: The `condition` operator executes a procedure based on a condition. Example:
    ```
    true { (Condition is true) print } condition    % Prints "Condition is true"
    ```

12. **configurationerror**: The `configurationerror` operator signals a configuration error. Example:
    ```
    configurationerror    % Signals a configuration error
    ```

13. **copy**: The `copy` operator duplicates the top `n` elements on the operand stack. Example:
    ```
    1 2 3 3 copy    % Stack becomes [1 2 3 1 2 3]
    ```

14. **copypage**: The `copypage` operator copies the entire visible page to another page. Example:
    ```
    copypage    % Copies the current page
    ```

15. **cos**: The `cos` operator calculates the cosine of an angle. Example:
    ```
    45 cos    % Result: 0.7071 (the cosine of 45 degrees)
    ```

16. **count**: The `count` operator returns the number of elements on the operand stack. Example:
    ```
    1 2 3 count    % Result: 3 (because there are three elements on the stack)
    ```

17. **countdictstack**: The `countdictstack` operator returns the number of dictionaries on the dictionary stack. Example:
    ```
    countdictstack    % Returns the number of dictionaries on the stack
    ```

18. **countexecstack**: The `countexecstack` operator returns the number of procedures on the execution stack. Example:
    ```
    countexecstack    % Returns the number of procedures on the execution stack
    ```

19. **counttomark**: The `counttomark` operator returns the number of elements between the mark and the top of the stack. Example:
    ```
    1 2 mark 3 4 5 counttomark    % Result: 3 (because there are three elements between the mark and the top of the stack)
    ```

20. **cshow**: The `cshow` operator shows text using a font and character spacing specified in the graphics state. Example:
    ```
    (Hello, world!) cshow    % Displays the text "Hello, world!" on the page
    ```
21. **curveto**: The `curveto` operator adds a cubic Bézier curve to the current path. It requires six parameters specifying the control points of the curve. Example:
   ```
   100 100 200 200 300 100 curveto    % Adds a cubic Bézier curve to the current path
   ```

22. **cvi**: The `cvi` operator converts a number to an integer by truncating any fractional part. Example:
   ```
   3.14 cvi    % Result: 3 (converts 3.14 to an integer)
   ```

23. **cvlit**: The `cvlit` operator converts an operand to a literal. It's typically used to prevent an operand from being executed as a procedure. Example:
   ```
   /myProc { (This is a procedure) } def
   myProc cvlit    % Converts myProc to a literal
   ```

24. **cvn**: The `cvn` operator converts a number to a name. Example:
   ```
   42 cvn    % Result: /42 (converts the number 42 to the name /42)
   ```

25. **cvr**: The `cvr` operator converts a number to a real number (floating-point). Example:
   ```
   42 cvr    % Result: 42.0 (converts the integer 42 to a real number)
   ```

26. **cvrs**: The `cvrs` operator converts a number to a string. Example:
   ```
   42 cvrs    % Result: (42) (converts the number 42 to the string "(42)")
   ```

27. **cvs**: The `cvs` operator converts any type of operand to a string. Example:
   ```
   (Hello) cvs    % Result: (Hello) (converts the string "Hello" to itself)
   ```

28. **cvx**: The `cvx` operator converts any type of operand to an executable. It's typically used to convert a name to a procedure. Example:
   ```
   /myProc { (This is a procedure) } def
   /myName cvx    % Converts myName to an executable
   ```

