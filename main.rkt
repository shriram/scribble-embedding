#lang racket/base

(provide google-form youtube)

(require scribble/core)
(require scriblib/render-cond)
(require "sxml-render.rkt")

(define (google-form url
		     #:width [width 640]
		     #:height [height 480]
		     #:frameborder [frame-border #f]
		     #:marginheight [margin-height #f]
		     #:marginwidth [margin-width #f]
		     #:anchor [anchor-text "Google Form Link"])
  (cond-element
   [html
    (sxml->element
     `(iframe [@ (src ,url)
		 (width ,(number->string width))
		 (height ,(number->string height))
		 ,@(if frame-border
		       `((frameborder ,(number->string frame-border)))
		       `())
		 ,@(if margin-height
		       `((marginheight ,(number->string margin-height)))
		       `())
		 ,@(if margin-width
		       `((marginwidth ,(number->string margin-width)))
		       `())]
	      "Loading…"))]
   [latex
    (make-element (style #f (list (make-target-url url)))
		  (list anchor-text))]))

(define (youtube url
		 #:width [width 560]
		 #:height [height 315]
		 #:frameborder [frame-border #f]
		 #:allow [allows "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"]
		 #:allowfullscreen [allow-full-screen #t]
		 #:anchor [anchor-text "YouTube Link"])
  (cond-element
   [html
    (sxml->element
     `(iframe [@ (src ,url)
		 (width ,(number->string width))
		 (height ,(number->string height))
		 ,@(if frame-border
		       `((frameborder ,(number->string frame-border)))
		       `())
		 (allow ,allows)
		 ,@(if allow-full-screen
		       `((allowfullscreen "true"))
		       `())]
	      "Loading…"))]
   [latex
    (make-element (style #f (list (make-target-url url)))
		  (list anchor-text))]))

