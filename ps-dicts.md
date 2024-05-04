# PostScript Dictionaries

### Structure of a Dictionary

In PostScript, a dictionary is created with the `dict` operator and is used to store associations between keys (typically names) and values (which can be any PostScript object types). Each key in a dictionary must be unique, and its associated value can be of any data type, including numbers, strings, arrays, or even other dictionaries.

### Creating and Using Dictionaries

Here's how you typically work with dictionaries in PostScript:

1. **Creating a Dictionary**:  
   You use the `dict` operator followed by `begin` to start using a dictionary. For example, to create a dictionary with space for 10 entries:

   ```postscript
   10 dict begin
   ```

2. **Adding Entries**:  
   Entries are added using the `def` operator. The `/` character prefixes names (keys) in PostScript.

   ```postscript
   /x 100 def  % Defines 'x' with a value of 100 in the current dictionary
   /y 200 def  % Defines 'y' with a value of 200
   ```

3. **Accessing Entries**:  
   To retrieve a value from a dictionary, simply refer to the key:

   ```postscript
   x  % Pushes the value of 'x' onto the stack
   ```

4. **Modifying Entries**:  
   To change the value associated with an existing key, use `def` again:

   ```postscript
   /x 300 def  % Changes the value of 'x' to 300
   ```

5. **Ending Dictionary Usage**:  
   Use `end` to close the current dictionary scope:

   ```postscript
   end
   ```

### Nested Dictionaries

Dictionaries can be nested within other dictionaries, allowing complex data structures. For example:

```postscript
/outer 10 dict def
outer begin
  /inner 10 dict def
  inner begin
    /value 42 def
  end
end
```

In this example, an outer dictionary contains an inner dictionary, which has its own definitions.

### Dictionary Stack

PostScript maintains a dictionary stack where dictionaries are pushed when you begin using them with `begin` and popped with `end`. This allows you to create local scopes for variables and limit the visibility of definitions, similar to local variables in functions in other programming languages.

### Common Uses

Dictionaries are used extensively in PostScript for various purposes:
- **Font Management**: Defining and modifying font attributes.
- **Graphics States**: Storing and restoring graphics settings.
- **User Definitions**: Custom functions and configurations for repeated use across different parts of the document.

### Managing Large Dictionaries

For large or complex documents, managing numerous entries in dictionaries efficiently is crucial. Keys should be clearly named to avoid confusion, and dictionaries should be properly nested or organized to ensure that the document's logic is straightforward and maintainable.

