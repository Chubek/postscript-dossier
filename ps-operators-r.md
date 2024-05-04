1. **rand**: Returns a random integer between 0 and the maximum value the random number generator supports.
   ```
   rand  % Generates a random integer
   ```

2. **rangecheck**: Triggered automatically when an operation attempts to access outside the allowable range (e.g., array index out of bounds).

3. **rcheck**: Tests if an object has read permission.
   ```
   /x 42 def x rcheck  % Returns true if x is readable
   ```

4. **rcurveto**: Adds a relative cubic Bézier curve to the current path based on the current point.
   ```
   newpath 0 0 moveto 100 0 100 100 200 100 rcurveto  % Draws a curve starting from (0,0)
   ```

5. **read**: Reads a single character from a file, returning the character and a boolean indicating success.
   ```
   file read  % Returns next character and true, or false if end of file
   ```

6. **readhexstring**: Reads data from a file into a string until the string is full or the end of file is reached, interpreting the input as hexadecimal.
   ```
   file 100 string readhexstring  % Reads up to 100 hex characters from file
   ```

7. **readline**: Reads a line from a file, returning the line and a boolean indicating success.
   ```
   file readline  % Returns next line and true, or false if end of file
   ```

8. **readonly**: Makes an array or dictionary read-only.
   ```
   /myArray [1 2 3] def myArray readonly  % Makes myArray read-only
   ```

9. **readstring**: Reads characters into a string from a file until the string is full or the end of file is reached.
   ```
   file 100 string readstring  % Reads up to 100 characters from file
   ```

10. **realtime**: Returns the current time in milliseconds.
    ```
    realtime  % Returns the number of milliseconds since an epoch
    ```

11. **rectclip**: Sets the clipping path to a rectangle.
    ```
    10 10 100 100 rectclip  % Sets clipping path to rectangle specified
    ```

12. **rectfill**: Fills a rectangle.
    ```
    10 10 100 100 rectfill  % Fills a rectangle with current color
    ```

13. **rectstroke**: Strokes the outline of a rectangle.
    ```
    10 10 100 100 rectstroke  % Strokes a rectangle with current color
    ```

14. **rectviewclip**: Sets the view clipping path to a rectangle.


15. **renamefile**: This operator renames a file from an old name to a new name. It is used to change the file name within the file system managed by the PostScript environment. Here's how it's used:
   ```postscript
   (oldname.txt) (newname.txt) renamefile  % Renames 'oldname.txt' to 'newname.txt'
   ```

16. **repeat**: Repeats a procedure a specified number of times.
   ```
   { (Hello) print } 3 repeat  % Prints "Hello" three times
   ```

17. **resetfile**: Resets a file to its beginning.
   ```
   file resetfile  % Moves the file pointer back to the start of the file
   ```

18. **resourceforall**: Executes a procedure for each resource in a category.
   ```
   /Font resourceforall { pop }  % Executes for every font resource
   ```

19. **resourcestatus**: Checks if a resource is available and returns its status.
   ```
   /Font /Helvetica resourcestatus  % Checks status of Helvetica font
   ```

20. **restore**: Restores the graphics state from a saved state.
   ```
   grestore  % Restore graphics state to previously saved state
   ```

21. **reversepath**: Reverses the direction of the current path.
   ```
   reversepath  % Reverses the current drawing path
   ```

22. **revision**: Returns the revision number of the PostScript interpreter.
   ```
   revision  % Might return "3010" or other version number
   ```

23. **rlineto**: Adds a relative line to the current path from the current point.
   ```
   newpath 0 0 moveto 100 100 rlineto  % Draws a line from (0,0) to (100,100) relative to the last point
   ```

24. **rmoveto**: Moves the current point relative to the last point.
   ```
   100 100 rmoveto  % Moves the current point 100 units right and 100 units up from the last point
   ```

25. **roll**: Rolls the specified number of items on the stack.
   ```
   1 2 3 3 1 roll  % Rolls the top three elements, placing the third from the top on top
   ```

26. **rootfont**: Sets the root font to use as the basis for font manipulation.
   ```
   /Helvetica findfont rootfont  % Sets Helvetica as the root font
   ```

27. **rotate**: Rotates the current coordinate system by a specified angle (in degrees).
   ```
   45 rotate  % Rotates the coordinate system by 45 degrees
   ```

28. **round**: Rounds a number to the nearest integer.
   ```
   2.7 round  % Returns 3
   ```

29. **rrand**: Not a standard PostScript operator. Typically, random numbers are generated using `rand`.

30. **run**: Executes a PostScript file.
   ```
   (script.ps) run  % Executes the script file 'script.ps'
   ```

