# kk

Implements vim's digraphs as a standalone tool

    $ gcc -o kk kk.c
    $ ./kk o/
    $ ø

## Todo

- finish the Makefile.
- show the list of available digraphs.
- at compile time give a choice between the full list of digarphs and a saner shorter one.
- check for the inverted digraph if the digraph is not found ("/o" -> "o/")
- check how to allow digraphs that have a sepcial meaning on the command line (--, >>, <<, ...)
- if used from a terminal, add a return at the end (but not if it's used in a pipe)
- check st for utf8 handling. or libutf?
