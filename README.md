# kk

Implements vim's digraphs as a standalone tool

    $ make
    $ ./kk o/
    $ ø

If your digraph has a special meaning, just put it between quotes:
    $ ./kk '>>'
    $ »

With `xclip` you can create a small script that puts the digraph into the x clipboard:

    $ ./kk o/ | xclip
    $ xclip -o
    $ »

If you want to have it in the "real" clipboard

    $ ./kk o/ | xclip -selection clipboard

## Todo

- show the list of available digraphs.
- at compile time give a choice between the full list of digarphs and a saner shorter one.
- if used from a terminal, add a return at the end (but not if it's used in a pipe)
- check st for utf8 handling. or libutf?
- eventually, allow multiple digraphs (`kk << >>`)

## Notes

some notes from hiltjo for https://github.com/mutantturkey/fsbm/ that could be relevant for me too:


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
