#lang pollen
◊(require racket/list)

◊(define width-for-max-font 920)
◊(define size-steps 6)
◊(define max-font-size 22)
◊(define font-size-on-small-screens 16)
◊(define small-screen-trigger (- width-for-max-font (* (- size-steps 1) 40)))

@font-face { font-family: "et-book";
             src: url("et-book/et-book/et-book-roman-line-figures/et-book-roman-line-figures.eot");
             src: url("et-book/et-book/et-book-roman-line-figures/et-book-roman-line-figures.eot?#iefix") format("embedded-opentype"), url("et-book/et-book/et-book-roman-line-figures/et-book-roman-line-figures.woff") format("woff"), url("et-book/et-book/et-book-roman-line-figures/et-book-roman-line-figures.ttf") format("truetype"), url("et-book/et-book/et-book-roman-line-figures/et-book-roman-line-figures.svg#etbookromanosf") format("svg");
             font-weight: normal;
             font-style: normal; }

@font-face { font-family: "et-book";
             src: url("et-book/et-book/et-book-display-italic-old-style-figures/et-book-display-italic-old-style-figures.eot");
             src: url("et-book/et-book/et-book-display-italic-old-style-figures/et-book-display-italic-old-style-figures.eot?#iefix") format("embedded-opentype"), url("et-book/et-book/et-book-display-italic-old-style-figures/et-book-display-italic-old-style-figures.woff") format("woff"), url("et-book/et-book/et-book-display-italic-old-style-figures/et-book-display-italic-old-style-figures.ttf") format("truetype"), url("et-book/et-book/et-book-display-italic-old-style-figures/et-book-display-italic-old-style-figures.svg#etbookromanosf") format("svg");
             font-weight: normal;
             font-style: italic; }

@font-face { font-family: "et-book";
             src: url("et-book/et-book/et-book-bold-line-figures/et-book-bold-line-figures.eot");
             src: url("et-book/et-book/et-book-bold-line-figures/et-book-bold-line-figures.eot?#iefix") format("embedded-opentype"), url("et-book/et-book/et-book-bold-line-figures/et-book-bold-line-figures.woff") format("woff"), url("et-book/et-book/et-book-bold-line-figures/et-book-bold-line-figures.ttf") format("truetype"), url("et-book/et-book/et-book-bold-line-figures/et-book-bold-line-figures.svg#etbookromanosf") format("svg");
             font-weight: bold;
             font-style: normal; }

@font-face { font-family: "et-book-roman-old-style";
             src: url("et-book/et-book/et-book-roman-old-style-figures/et-book-roman-old-style-figures.eot");
             src: url("et-book/et-book/et-book-roman-old-style-figures/et-book-roman-old-style-figures.eot?#iefix") format("embedded-opentype"), url("et-book/et-book/et-book-roman-old-style-figures/et-book-roman-old-style-figures.woff") format("woff"), url("et-book/et-book/et-book-roman-old-style-figures/et-book-roman-old-style-figures.ttf") format("truetype"), url("et-book/et-book/et-book-roman-old-style-figures/et-book-roman-old-style-figures.svg#etbookromanosf") format("svg");
             font-weight: normal;
             font-style: normal; }

@media all {html {font-size: ◊|max-font-size|px;}}
◊(apply string-append (map (lambda (x)
        (format "@media all and (max-width:~apx){html {font-size:~apx;}}\n" (- width-for-max-font (* x 40)) (- max-font-size x)))
      (range 0 size-steps)))
@media all and (max-width:◊|small-screen-trigger|px){html {font-size:◊|font-size-on-small-screens|px;}}

body {
font-family: et-book, "Book Antiqua", serif;
margin-top: 5em; margin-bottom: 5em; margin-left: 10%; margin-right: 33%;
max-width: 40em;
background-color: #fffff8;
color: #111;
}
@media all and (max-width:◊|small-screen-trigger|px){body {margin-top: 1em; margin-left: 1em; margin-right: 1em; max-width: initial;}}

h1, h2, h3, h4, h5, h6 {clear: left; font-style: italic; font-weight: 400;}
h1 {font-size: 2.2em; font-style: normal;}  ◊; Reserved for titles
h2 {font-size: 1.5em; margin-top: 1.5em; border-top: solid 0.5px; padding-top: 0.5em;}  ◊; The main headings on a page
h3 {font-size: 1.2em;}  ◊; Sub-headings, used sparingly

/* Links: replicate underline that clears descenders */
a:link, a:visited { color: inherit; }

a:link { text-decoration: none;
         background: -webkit-linear-gradient(#fffff8, #fffff8), -webkit-linear-gradient(#fffff8, #fffff8), -webkit-linear-gradient(#333, #333);
         background: linear-gradient(#fffff8, #fffff8), linear-gradient(#fffff8, #fffff8), linear-gradient(#333, #333);
         -webkit-background-size: 0.05em 1px, 0.05em 1px, 1px 1px;
         -moz-background-size: 0.05em 1px, 0.05em 1px, 1px 1px;
         background-size: 0.05em 1px, 0.05em 1px, 1px 1px;
         background-repeat: no-repeat, no-repeat, repeat-x;
         text-shadow: 0.03em 0 #fffff8, -0.03em 0 #fffff8, 0 0.03em #fffff8, 0 -0.03em #fffff8, 0.06em 0 #fffff8, -0.06em 0 #fffff8, 0.09em 0 #fffff8, -0.09em 0 #fffff8, 0.12em 0 #fffff8, -0.12em 0 #fffff8, 0.15em 0 #fffff8, -0.15em 0 #fffff8;
         background-position: 0% 93%, 100% 93%, 0% 93%; }

@media screen and (-webkit-min-device-pixel-ratio: 0) { a:link { background-position-y: 87%, 87%, 87%; } }

a:link::selection { text-shadow: 0.03em 0 #b4d5fe, -0.03em 0 #b4d5fe, 0 0.03em #b4d5fe, 0 -0.03em #b4d5fe, 0.06em 0 #b4d5fe, -0.06em 0 #b4d5fe, 0.09em 0 #b4d5fe, -0.09em 0 #b4d5fe, 0.12em 0 #b4d5fe, -0.12em 0 #b4d5fe, 0.15em 0 #b4d5fe, -0.15em 0 #b4d5fe;
                    background: #b4d5fe; }

a:link::-moz-selection { text-shadow: 0.03em 0 #b4d5fe, -0.03em 0 #b4d5fe, 0 0.03em #b4d5fe, 0 -0.03em #b4d5fe, 0.06em 0 #b4d5fe, -0.06em 0 #b4d5fe, 0.09em 0 #b4d5fe, -0.09em 0 #b4d5fe, 0.12em 0 #b4d5fe, -0.12em 0 #b4d5fe, 0.15em 0 #b4d5fe, -0.15em 0 #b4d5fe;
                         background: #b4d5fe; }

div.external-link-logos { clear:left; }
div.external-link-logos a:link {text-decoration: none; background: none;}
div.external-link-logos a:visited {text-decoration: none; background: none;}
div.external-link-logos a:hover {text-decoration: none; background: none;}

ul {list-style: circle outside;}

p, li, blockquote {line-height: 1.5;}
li {padding-left: 1em;}

img.little-logo { float: left; margin-right: 1em; margin-bottom: 1em; }
img.thumbnail { float: left; margin-right: 1em; margin-bottom: 1em; margin-top: 0.5em;}

.external-link-logos {
  display:flex;
  justify-content:center;
}

blockquote {
    border-left: 10px solid gainsboro;
    padding-left: 1em;
    margin-right: 5em;
}

input.margin-toggle { display: none; }
label.margin-toggle { display: none; }

.margin-note {
float: right;
clear: right;
margin-right: -45%;
width: 40%;
margin-top: 0;
margin-bottom: 0;
font-size: 0.8rem;
line-height: 1.3;
vertical-align: baseline;
position: relative;
}

@media all and (max-width:◊|small-screen-trigger|px){
img {
    max-width: 95%;
    margin-left: auto;
    margin-right: auto;
}

blockquote {
    margin-right: 2em;
    padding-left: 1em;
    margin-left: 1em;
}

label.margin-toggle { display: inline; }
.margin-note { display: none; }
.margin-toggle:checked + .margin-note {
font-size: 1rem;
display: block;
float: left;
left: 0rem;
clear: both;
width: 85%;
margin: 1rem 7.5%;
vertical-align: baseline;
position: relative; 
}

li { margin-left: 1em; padding-left: 1em; }
ul { margin-left: 0; padding-left: 0; }
}