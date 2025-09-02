# What is an IDE?

An **IDE** is an *Integrated Development Environment*, basically an application that *integrates*
a number of tools for software development and other tasks into one platform. An alternative is to
use a basic text editor with separate console (or terminal) and file explorer windows.

## Why not use a text editor?

You certainly can edit text in *Notepad.exe* or *TextEdit.app*. It might even have spellcheck, but
that's about it. Other common text editors, which don't have a spellchecker, commonly used by
developers on Linux/Unix systems include vim, emacs, and nano/pico. An IDE has a text editor but
can do far more than check your spelling.

## Benefits of using a text editor

1. A text editor is a lightweight application that probably starts up and loads your file quickly
2. Available on just about any system
3. Spellcheck
4. Intuitive and easy to use

## Benefits of using an IDE

Let's start with the cons:

1. Depending on how you set it up, it may not be a lightweight application and may take time to
   start up
2. May not be available on every system you use
3. There may be a learning curve

Pros:

1. **Integrated tools**
   1. Integrated terminal - compile and deploy applications from within the IDE
   2. Version control - view git history and diffs or manage conflicts in the IDE GUI
   3. File and project management within the IDE (file explorer)
   4. Collaboration tools help apply standards across teams (e.g. spaces vs. tabs, formatting)
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
   debugging, an IDE may allow you to set break points and step through the code while it executes
   to see the intermediate values assigned to variables
8. **Customization** - IDEs often have customizeable themes and styles, and many have large
   libraries plugins available to extend the IDE's functionality to meet your needs
9.  **AI integration** - IDEs may be able to incorporate AI tools for code generation (e.g. GitHub
   CoPilot) and more advanced code completion or refactoring, but this will not be discussed in
   this tutorial.

## Syntax checking and highlighting

It's worth mentioning again - ***Syntax Highlighting!*** Not only will an IDE use colors and fonts
to help make most files easier to read, it can help you find mistakes. For example, this simple
JSON string has an error that may not be obvious in a basic text editor.

![Text editor - did I miss something?](img/editor-did-i-miss-something.png) Is something missing?

Here's the same JSON string in VSCode. In addition to differentiating between keys and values with
font color, the IDE puts a red squiggle under the last curly bracket to indicate a syntax error
(like a spelling error). The first curly bracket is also in red to indicate that it does not have a
matching (closing) bracket. In many IDEs, you can even hover over the squiggle to get information
about the error.

![Missing bracket in an IDE](img/ide-missing-bracket.png)
