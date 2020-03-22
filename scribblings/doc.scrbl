#lang scribble/manual

@title{Scribble Embedding Tools}

@author{Shriram Krishnamurthi}

@defmodule[scribble-embedding]

When creating Scribble documents, it's useful to be able to embed
third-party content, such as a Google Form or a YouTube video. For
instance, you may want to include surveys, quizzes, and videos in your
material.

The assumption is that the content is available through a URL.  This
package greatly simplifies the proceess of using such content by
providing simple libraries that do most of the work.

``Embedding'' has very different meanings in HTML and in PDF. In HTML,
Web content is inlined using an @code{iframe}. In contrast, in a PDF,
the content is simply presented as a link. Below, we use the term
``reference'' to abstract over these.

In principle, there is nothing specific in this package to Google
Forms or YouTube. The package simply creates an @code{iframe} in HTML
and a hyperlink in PDF. If there's user interest, I can extend the
package to support arbitrary content. However, for now, the package
uses the @emph{default values} that these sites provide, and does not
include all the possible options for an @code{iframe} or hyperlink.

@section{Notes}

These notes apply to all the following procedures.

@itemlist[

@item{To obtain the URL, go to the corresponding Google utility and
generate a sharing URL. Paste that URL in as the @code{url}
parameter. This is the only required parameter.}

@item{The default values (other than the height of the form) are set
based on Google's current suggested values in their embedding
instructions. However, their suggestion uses attributes that are
deprecated in HTML5 (which suggests using CSS to manipulate those
values instead). By default, therefore, they are left out (by using
the default value of @code{#f}) of the generated reference. To turn
them back on, simply provide the values given by Google.}

@item{The @code{anchor} parameter is ignored in HTML and only used, as
the link anchor text, in PDF.}

]

@section{Procedures}

@defproc[(google-form [url string?]
                      [#:width width number? 640]
		      [#:height height number? 480]
		      [#:frameborder frame-border (or number? #f) #f]
		      [#:marginheight margin-height (or number? #f) #f]
		      [#:marginwidth margin-width (or number? #f) #f]
		      [#:anchor anchor-text string? "Google Form Link"])
         element?]{

Generates a reference to a Google Form (which can also be a quiz).

As noted above, Google does not provide a single default value for the
@code{height} parameter; instead, the height is chosen based on the
size of the form.

Examples:

@code{@"@"(google-form "https://docs.google.com/forms/d/e/1FAIpQLSclvjmRhjPJZJzFxsYYqeBl8OIR2wdAPL6utIlYwTHYpwSOwA/viewform?usp=sf_link")}

@code{@"@"(google-form "https://docs.google.com/forms/d/e/1FAIpQLSclvjmRhjPJZJzFxsYYqeBl8OIR2wdAPL6utIlYwTHYpwSOwA/viewform?usp=sf_link"
                       #:height 1030)}

}

@defproc[(youtube [url string?]
		  [#:width width number? 560]
		  [#:height height number? 315]
		  [#:frameborder frame-border (or number? #f) #f]
		  [#:allow allows string? "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"]
		  [#:allowfullscreen allow-full-screen boolean? #t]
		  [#:anchor anchor-text string? "YouTube Link"])
		  element?]{

Generates a reference to a YouTube video.

@code{@"@"(youtube "https://www.youtube.com/embed/43XaZEn2aLc")}

@code{@"@"(youtube "https://www.youtube.com/embed/43XaZEn2aLc" #:anchor "this video")}

}
