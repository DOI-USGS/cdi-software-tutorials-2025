# What is an IDE?

An **IDE** is an *Integrated Development Environment*, basically an application that *integrates*
a number of tools for software development and other tasks into one platform. An alternative is to
use a basic text editor with separate console (or terminal) and file explorer windows.

## Why not use a text editor?

You certainly can edit text in *Notepad.exe* or *TextEdit.app*. It might even have spellcheck, but
that's about it. An IDE has a text editor but can do far more than check your spelling.

## Benefits of using a text editor

1. A text editor is a lightweight application that probably starts up and loads your file quickly
2. Available on just about any system
3. Spellcheck

## Benefits of using an IDE

Let's start with the cons:

1. Depending on how you set it up, it may not be a lightweight application and may take time to
   start up.
2. May not be available on every system you use

Pros:

1. **Integrated tools**, e.g. a file system explorer, terminal, document outline, etc.
2. **Support for multiple programming languages** (e.g. C++, Python, R, bash) and file formats
   (e.g. JSON, XML, YAML, CSV)
3. **Syntax highlighting** - keywords, variable names, data, brackets, etc. can be shown with
   different font colors and styles to make your file easier to read and troubleshoot in the case
   of a missing bracket, for example
4. **Code completion** - because an IDE is aware of the language, it can automatically handle
   things like indentation of code blocks and closing brackets, suggest variable and function names
   or even entire lines of code, or suggest how to fix a syntax error.
5. **Code search and navigation** - IDEs can allow you to navigate through your code to follow
   function calls, usually by some key + click combination, or to find references to a variable or
   function
6. **Refactoring** - IDEs can change the name of a variable within the scope of a specific function
   or change the the name of a function or its parameters across multiple files
7. **Debugging** - though inserting print statements can be, technically speaking, a form of
   debugging, and IDE may allow you to set break points and step through the code while it executes
   to see the intermediate values assigned to variables
8. **Customization** - IDEs often have customizeable themes and styles, and many have large
   libraries plugins available to extend the IDE's functionality to meet your needs

## Syntax checking and highlighting?

![Text editor - did I miss something?](img/editor-did-i-miss-something.png) Is something missing?

![Missing bracket in an IDE](img/ide-missing-bracket.png)

Here, the IDE (VSCode) not only highlights different parts of the JSON object in different colors,
it puts a red squiggle under the last bracket to highlight the syntax error - a missing curly
bracket. The unclosed curly bracket at the start of the line is also in red.
