# Errors in PostScript


### 1. **`undefined`**
This error occurs when an undefined name or operator is referenced.
**Example:**
```postscript
/ThisNameDoesNotExist get  % There is no such name defined
```
**Explanation:**  
The code tries to retrieve a value associated with a name (`ThisNameDoesNotExist`) that has not been defined.

### 2. **`undefinedfilename`**
Occurs when the filename specified cannot be found or accessed.
**Example:**
```postscript
(myfile.txt) (r) file  % Tries to open a file that does not exist
```
**Explanation:**  
Attempts to open `myfile.txt` for reading, but the file does not exist on the system.

### 3. **`undefinedresult`**
This error is triggered when an operation yields a result that is not within the allowable range or is undefined.
**Example:**
```postscript
0 0 div  % Division by zero
```
**Explanation:**  
Dividing zero by zero does not produce a defined result.

### 4. **`rangecheck`**
A `rangecheck` error occurs when a value is outside the expected range.
**Example:**
```postscript
[-1] 1 get  % Attempting to access an index that does not exist
```
**Explanation:**  
The code attempts to access the second element of a one-item array, which is out of range.

### 5. **`stackunderflow`**
This error happens when an operator is expecting more operands on the stack than are available.
**Example:**
```postscript
add  % Tries to add without enough operands
```
**Explanation:**  
The `add` operator requires two operands, but the stack is empty.

### 6. **`stackoverflow`**
Triggered when too many items are pushed onto the stack, exceeding its limit.
**Example:**
```postscript
1000 1 1 {1 index} repeat  % Excessively copies the top of the stack
```
**Explanation:**  
Repeatedly duplicates the top item on the stack without any limit, eventually overflowing it.

### 7. **`typecheck`**
Occurs when an operand or result has an incorrect type.
**Example:**
```postscript
(Hello) length add  % Tries to add an integer to a string
```
**Explanation:**  
Attempts to use the `add` operator on a string and an integer, which is not valid.

### 8. **`invalidaccess`**
Occurs when attempting an illegal access of an object, such as writing to a read-only object.
**Example:**
```postscript
/cvLit /readonly def
cvLit cvx exec  % Tries to execute a read-only name
```
**Explanation:**  
Attempts to change or execute a value marked as read-only.

### 9. **`invalidfont`**
This error occurs when an attempt is made to define or configure a font that is not valid.
**Example:**
```postscript
/Helvetica findfont 10000 scalefont setfont  % Excessive scale might be unsupported
```
**Explanation:**  
Attempts to scale a font to a size that may be unsupported or undefined, depending on the interpreter's capabilities.

### 10. **`ioerror`**
An `ioerror` happens during input/output operations, such as reading from or writing to a file.
**Example:**
```postscript
(myfile.txt) (w) file closefile
(myfile.txt) (r) file readstring  % Tries to read from a closed file
```
**Explanation:**  
Attempts to read from a file that has been closed, leading to an input/output error.

