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

## Dependency

The LaTeX version depends on Scribble continuing to recognize links in
the `style`s of `element`s.

## Credits

The file `sxml-render.rkt` was written by Danny Yoo, and is included
here with permission.

## Acknowledgments

Thanks to Kathi Fisler, who showed me how she did this in the Web
version of the Bootstrap documents, and Danny Yoo, who helped her set
that up. A Leif Andersen post on StackOverflow was invaluable to start
figuring out the LaTeX version.
