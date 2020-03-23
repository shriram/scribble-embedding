# Scribble Embedding Tools

This repository makes it easy to embed third-party content into
Scribble documents through `iframe`s.

For now, my primary use-case is to embed Google Forms (surveys,
quizzes, etc.) and YouTube videos. Therefore, those are the
entry-points defined in the library. However, the actual code is very
generic; the only real specificity is using parameters (currently)
suggested by those sites, which are anyway modifiable. If there's
interest, we can generalize this interface.

In LaTeX, the library intentionally does not introduce any additional
styling (like centering) so that the links can appear gracefully in
the midst of prose without introducing ugly breaks. Nevertheless,
because the content appears “inline” in HTML and not in LaTeX,
slightly different prose may need to be written in the two
cases. Scribble's `cond-element` (which should be used only sparingly)
may be useful in this case.

## Quick Start

1. Install this package:

2. In a Scribble document,
	```
   @(require scribble-embedding)
   ```
   to load the library, and
   ```
   @(google-form <URL>)
   @(youtube <URL>)
   ```
   to use it (where `<URL>` is the sharing URL generated from those
	sites).

## Documentation

Once you've installed the package, you'll find documentation by
searching for "scribble embedding" in your local installation (go to
Help | Racket Documentation in DrRacket).

The installed directory also contains a `sample` sub-directory that
provides a file with examples. Just run `make` in that directory.

## Dependency

The LaTeX version depends on Scribble continuing to recognize links in
the `style`s of `element`s.

## Credits

The file `sxml-render.rkt` was written by Danny Yoo, and is included
here with permission.

## Acknowledgments

Thanks to Kathi Fisler, who showed me how she did something similar in
the Web version of the Bootstrap documents, and Danny Yoo, who helped
her set that up. A Leif Andersen post on StackOverflow was invaluable
to start figuring out the LaTeX version.
