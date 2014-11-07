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

## Notes

some notes on hiltjo for https://github.com/mutantturkey/fsbm/ that could be relevant for me too:

- Use the great arg.h from 20h:
http://git.suckless.org/sbase/tree/arg.h instead of getopt.
- Use sigaction(), not signal(), it's behaviour is more clear.
- Use tabs for indenting, align with spaces (it seems to have mixed
tabs / whitespace).
- Don't use C++ style comments (//).
- Do variable declarations at the top of a function.
- Use the suckless Makefile style (respect PREFIX, DESTDIR etc).
- Remove leftover config.h ?
- Add the LEN() macro and use it for contructs like: (sizeof(prefixes)
/ sizeof(const char*))
- Handle ferror() for FILE *dev ?
- Handle error case of: fgets(buf, sizeof(buf), dev);
