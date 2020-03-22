#lang scribble/base

@(require scribble-embedding)

@title{Test Document}

This document shows how you can embed external media in a Scribble document.

Be sure to view it in both HTML and PDF (via LaTeX).

We have here a quiz for you to take:
@(google-form "https://docs.google.com/forms/d/e/1FAIpQLSclvjmRhjPJZJzFxsYYqeBl8OIR2wdAPL6utIlYwTHYpwSOwA/viewform?usp=sf_link")

Hopefully you did well on it!

Now we want you to watch
@(youtube "https://www.youtube.com/embed/43XaZEn2aLc" #:anchor "this video")
if you have the time.

Hope you enjoyed it!

For the same quiz above, Google recommends a different height, which would let the whole quiz fit on the screen:

@(google-form "https://docs.google.com/forms/d/e/1FAIpQLSclvjmRhjPJZJzFxsYYqeBl8OIR2wdAPL6utIlYwTHYpwSOwA/viewform?usp=sf_link"
              #:height 1030)
