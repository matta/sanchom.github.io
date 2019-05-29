#lang pollen
◊(require racket/list)

@import url('https://fonts.googleapis.com/css?family=Source+Code+Pro:400,500&display=swap');

@font-face{
    font-family: 'Source Serif Pro';
    font-weight: 300;
    font-style: normal;
    font-stretch: normal;
    src: url('source-serif-pro/WOFF2/TTF/SourceSerifPro-Light.ttf.woff2') format('woff2'),
         url('source-serif-pro/WOFF/OTF/SourceSerifPro-Light.otf.woff') format('woff'),
         url('source-serif-pro/OTF/SourceSerifPro-Light.otf') format('opentype'),
         url('source-serif-pro/TTF/SourceSerifPro-Light.ttf') format('truetype');
}

@font-face{
    font-family: 'Source Serif Pro';
    font-weight: 300;
    font-style: italic;
    font-stretch: normal;
    src: url('source-serif-pro/WOFF2/TTF/SourceSerifPro-LightIt.ttf.woff2') format('woff2'),
         url('source-serif-pro/WOFF/OTF/SourceSerifPro-LightIt.otf.woff') format('woff'),
         url('source-serif-pro/OTF/SourceSerifPro-LightIt.otf') format('opentype'),
         url('source-serif-pro/TTF/SourceSerifPro-LightIt.ttf') format('truetype');
}

@font-face{
    font-family: 'Source Serif Pro';
    font-weight: 400;
    font-style: normal;
    font-stretch: normal;
    src: url('source-serif-pro/WOFF2/TTF/SourceSerifPro-Regular.ttf.woff2') format('woff2'),
         url('source-serif-pro/WOFF/OTF/SourceSerifPro-Regular.otf.woff') format('woff'),
         url('source-serif-pro/OTF/SourceSerifPro-Regular.otf') format('opentype'),
         url('source-serif-pro/TTF/SourceSerifPro-Regular.ttf') format('truetype');
}

@font-face{
    font-family: 'Source Serif Pro';
    font-weight: 400;
    font-style: italic;
    font-stretch: normal;
    src: url('source-serif-pro/WOFF2/TTF/SourceSerifPro-It.ttf.woff2') format('woff2'),
         url('source-serif-pro/WOFF/OTF/SourceSerifPro-It.otf.woff') format('woff'),
         url('source-serif-pro/OTF/SourceSerifPro-It.otf') format('opentype'),
         url('source-serif-pro/TTF/SourceSerifPro-It.ttf') format('truetype');
}

@font-face{
    font-family: 'Source Serif Pro';
    font-weight: 600;
    font-style: normal;
    font-stretch: normal;
    src: url('source-serif-pro/WOFF2/TTF/SourceSerifPro-Semibold.ttf.woff2') format('woff2'),
         url('source-serif-pro/WOFF/OTF/SourceSerifPro-Semibold.otf.woff') format('woff'),
         url('source-serif-pro/OTF/SourceSerifPro-Semibold.otf') format('opentype'),
         url('source-serif-pro/TTF/SourceSerifPro-Semibold.ttf') format('truetype');
}

@font-face{
    font-family: 'Source Serif Pro';
    font-weight: 600;
    font-style: italic;
    font-stretch: normal;
    src: url('source-serif-pro/WOFF2/TTF/SourceSerifPro-SemiboldIt.ttf.woff2') format('woff2'),
         url('source-serif-pro/WOFF/OTF/SourceSerifPro-SemiboldIt.otf.woff') format('woff'),
         url('source-serif-pro/OTF/SourceSerifPro-SemiboldIt.otf') format('opentype'),
         url('source-serif-pro/TTF/SourceSerifPro-SemiboldIt.ttf') format('truetype');
}

@font-face{
    font-family: 'Source Serif Pro';
    font-weight: 700;
    font-style: normal;
    font-stretch: normal;
    src: url('source-serif-pro/WOFF2/TTF/SourceSerifPro-Bold.ttf.woff2') format('woff2'),
         url('source-serif-pro/WOFF/OTF/SourceSerifPro-Bold.otf.woff') format('woff'),
         url('source-serif-pro/OTF/SourceSerifPro-Bold.otf') format('opentype'),
         url('source-serif-pro/TTF/SourceSerifPro-Bold.ttf') format('truetype');
}

@font-face{
    font-family: 'Source Serif Pro';
    font-weight: 700;
    font-style: italic;
    font-stretch: normal;
    src: url('source-serif-pro/WOFF2/TTF/SourceSerifPro-BoldIt.ttf.woff2') format('woff2'),
         url('source-serif-pro/WOFF/OTF/SourceSerifPro-BoldIt.otf.woff') format('woff'),
         url('source-serif-pro/OTF/SourceSerifPro-BoldIt.otf') format('opentype'),
         url('source-serif-pro/TTF/SourceSerifPro-BoldIt.ttf') format('truetype');
}


◊; Responsive font sizes
◊(define width-for-max-font 920)
◊(define size-steps 6)
◊(define max-font-size 21)
◊(define font-size-on-small-screens 17)
◊(define small-screen-trigger (- width-for-max-font (* (- size-steps 1) 40)))
◊(define background-color "#fdfaf3")
◊(define dark-text-color "#111")
◊(define light-text-color "#474747")
◊(define very-light-text-color "#888")
◊(define blockquote-border-color "#a9a9a9")
◊(define blockquote-background-color "#f6f3f3")
◊(define highlight-color "#8A0707")

◊(define main-font "'Source Serif Pro'")

@media all {html {font-size: ◊|max-font-size|px;}}
◊(apply string-append (map (lambda (x)
        (format "@media all and (max-width:~apx){html {font-size:~apx;}}\n" (- width-for-max-font (* x 40)) (- max-font-size x)))
      (range 0 size-steps)))

body {
font-family: ◊|main-font|, serif;
margin-top: 5em; margin-bottom: 5em; margin-left: 10%; margin-right: 33%;
max-width: 40em;
background-color: ◊|background-color|;
color: ◊|dark-text-color|;
text-align: justify;
counter-reset: sidenote-counter;
}

◊; Only h1, h2, and h3 should be used.
h1, h2, h3, h4, h5, h6 {clear: left; text-align: left;}

h1 {font-size: 2.0em; font-weight: 400;}  ◊; Reserved for titles
h2 {font-size: 1.3em; font-weight: 600; margin-top: 1.5em; border-top: solid 0.5px; padding-top: 0.5em;}  ◊; The main headings on a page
h3 {font-size: 1.3em; font-weight: 600;}  ◊; Sub-headings, used sparingly

b { font-weight: 600;}

.warning { color: ◊|highlight-color|; }

.center { text-align: center; }

p.date {font-size: 0.8em; font-style: italic; text-align: right;}

p.subtitle {font-size: 1.2em; font-weight: 300; font-style: italic; margin-top: 1rem; margin-bottom: 1rem; display: block; line-height: 1;}

div#disqus_thread {margin-top: 3rem;}

.backlink {font-size: 0.8em; font-weight: bold; position: relative; bottom: 0.2em;}

◊; Space for navigation links.
div.header {clear:both; font-size: 0.7rem; display:flex; justify-content: space-between; width: 100%;}
div.left-header {width: 35%; text-align:left;}
div.center-header {text-align:center;}
div.right-header {width: 35%; text-align: right;}

◊; Figure styles
figure { text-align: center; padding: 0; margin: 0; margin-top: 1em;}
figure > p { margin-bottom: 0.25rem; }
figcaption { font-size:0.7rem; margin-top: 0.25rem;}

◊; Styles used for some little external links to Twitter, Wordpress.
◊; Line them up left-to-right, but centered. Don't style them as links.
div.external-link-logos { clear:left; display: flex; justify-content: center; }

a {pointer-events: auto;}

a.undecorated:link {text-decoration: none; background: none;}
a.undecorated:visited {text-decoration: none; background: none;}
a.undecorated:hover {text-decoration: none; background: none;}

img.little-logo { float: left; margin-right: 1em; margin-bottom: 1em; }

◊; Other image styles.
img.thumbnail { float: left; margin-right: 1em; margin-bottom: 1em; margin-top: 0.5em; width: 150px;}
img:not(.little-logo):not(.thumbnail):not(.specified-width) { width: 100%; }
img { max-width: 100%; }
.vid-wrapper { margin-left: auto; margin-right: auto; max-width: 100%; }

◊; Taken from Tufte-css. Plain, underlined links without cutting
◊; through descenders.
a:link, a:visited { color: inherit; }

a:link {
text-decoration: none;
background: -webkit-linear-gradient(◊|background-color|, ◊|background-color|), -webkit-linear-gradient(◊|background-color|, ◊|background-color|), -webkit-linear-gradient(#333, #333);
background: linear-gradient(◊|background-color|, ◊|background-color|), linear-gradient(◊|background-color|, ◊|background-color|), linear-gradient(#333, #333);
-webkit-background-size: 0.05em 1px, 0.05em 1px, 1px 1px;
-moz-background-size: 0.05em 1px, 0.05em 1px, 1px 1px;
background-size: 0.05em 1px, 0.05em 1px, 1px 1px;
background-repeat: no-repeat, no-repeat, repeat-x;
text-shadow: 0.03em 0 ◊|background-color|, -0.03em 0 ◊|background-color|, 0 0.03em ◊|background-color|, 0 -0.03em ◊|background-color|, 0.06em 0 ◊|background-color|, -0.06em 0 ◊|background-color|, 0.09em 0 ◊|background-color|, -0.09em 0 ◊|background-color|, 0.12em 0 ◊|background-color|, -0.12em 0 ◊|background-color|, 0.15em 0 ◊|background-color|, -0.15em 0 ◊|background-color|;
background-position: 0% 93%, 100% 93%, 0% 93%;
}

@media screen and (-webkit-min-device-pixel-ratio: 0) { a:link { background-position-y: 87%, 87%, 87%; } }

a:link::selection {
text-shadow: 0.03em 0 #b4d5fe, -0.03em 0 #b4d5fe, 0 0.03em #b4d5fe, 0 -0.03em #b4d5fe, 0.06em 0 #b4d5fe, -0.06em 0 #b4d5fe, 0.09em 0 #b4d5fe, -0.09em 0 #b4d5fe, 0.12em 0 #b4d5fe, -0.12em 0 #b4d5fe, 0.15em 0 #b4d5fe, -0.15em 0 #b4d5fe;
background: #b4d5fe;
}

a:link::-moz-selection {
text-shadow: 0.03em 0 #b4d5fe, -0.03em 0 #b4d5fe, 0 0.03em #b4d5fe, 0 -0.03em #b4d5fe, 0.06em 0 #b4d5fe, -0.06em 0 #b4d5fe, 0.09em 0 #b4d5fe, -0.09em 0 #b4d5fe, 0.12em 0 #b4d5fe, -0.12em 0 #b4d5fe, 0.15em 0 #b4d5fe, -0.15em 0 #b4d5fe;
background: #b4d5fe;
}

◊; Core styles for commonly used elements.
p, li, blockquote {line-height: 1.5;}
ul {list-style: circle outside;}
li {padding-left: 1em; text-align: left;}

blockquote { border-left: 5px solid ◊|blockquote-border-color|; padding-left: 1em; margin-right: 3em; }
.code { font-family: "Source Code Pro", "Liberation Mono", Menlo, Courier, monospace; }
span.code {font-size: 0.8rem;}
span.outline {outline: 1px dotted ◊|blockquote-border-color|;}
blockquote.code {
border-top: 1px solid ◊|blockquote-border-color|;
border-bottom: 1px solid ◊|blockquote-border-color|;
background-color: ◊|blockquote-background-color|;
margin-left: 0;
margin-right: 0;
overflow-x: auto;
font-size: 0.7rem;}

table.scc-stats { margin-top: 1rem; border-collapse: collapse; font-size: 0.7rem; text-align: left; hyphens: none;}
th { border-bottom: 1px solid grey; }
th, td { padding: 0.2rem; }
tr:nth-child(even) { background-color: #fefefe; }
div.full-width { width: 120%; }
table.full-width { width: 100%; }
td.intervener-cell { font-size: 0.6rem; }
.as-of-right-column { padding-left: 1rem; padding-right: 1rem; }
.intervener-cell ul { padding-left: 0.5rem; }
.intervener-cell li { margin-left: 0rem; padding-left: 0rem;}

◊; Styles for sidenotes and margin-notes. Taken from Tufte-css.
.sidenote, .margin-note, p.date {
text-align: left;
color: ◊|light-text-color|;
float: right;
clear: right;
margin-right: -40%;
width: 30%;
margin-top: 0;
margin-bottom: 0.5rem;
font-size: 0.7rem;
line-height: 1.3;
vertical-align: baseline;
position: relative;

text-overflow: ellipsis;
overflow: hidden;
display: -webkit-box;
-webkit-line-clamp: 3;
-webkit-box-orient: vertical;
}

.footnote {
text-align: left;
color: ◊|dark-text-color|;
font-size: 0.7rem;
line-height: 1.3;
}

.sidenote.expanded, .margin-note.expanded {
-webkit-line-clamp: 300;
}

.sidenote-number { counter-increment: sidenote-counter; }

.sidenote-number:after, .sidenote:before {
font-family: ◊|main-font|;
position: relative;
vertical-align: baseline;
}

.sidenote-number:after {
content: counter(sidenote-counter);
font-size: 0.65rem;
top: -0.35rem;
left: 0.1rem;
}

.sidenote-comma {
position: relative;
font-size: 0.65rem;
top: -0.35rem;
left: 0.1rem;
}

.sidenote:before { content: counter(sidenote-counter) ". "; top: 0rem; }

input.margin-toggle { display: none; }
input.margin-expand { display: none; }
label.sidenote-number { display: inline; }
label.margin-toggle:not(.sidenote-number) { display: none; color: #8A0707;}

.margin-expand:checked + .margin-note,
.margin-expand:checked + .sidenote {
text-overflow: ellipsis;
overflow: hidden;
display: -webkit-box;
-webkit-line-clamp: 300;
-webkit-box-orient: vertical;
}

@media all {
.print-only { display: none; }
.small-screens-only { display: none; }
}

◊; On small screens, do things a bit differently.
@media screen and (max-width:◊|small-screen-trigger|px){
html { font-size:◊|font-size-on-small-screens|px; }

.small-screens-only { display: initial; }
.drop-on-small-screens { display: none; }

body {
margin-top: 1em;
margin-left: 1em;
margin-right: 1em;
max-width: initial;
}

img {
max-width: 100%;
margin-left: auto;
margin-right: auto;
}

div.thumbnail { background-color: white; }
img.thumbnail { float: none; display: block; margin-bottom: 1em; max-height: 225px; width: auto; margin-left: auto; margin-right: auto; }
div.clear { clear: both; }

blockquote {
margin-right: 0.5em;
padding-left: 0.5em;
margin-left: 0em;
}

p.date {
text-align: right;
margin-top: 1.5rem;
width: 100%;
float: none;
clear: none;
color: ◊|light-text-color|;
position: static;
font-size: 0.7rem;
}

.sidenote-number:after {
font-family: ◊|main-font|;
content: counter(sidenote-counter);
color: ◊|very-light-text-color|;
border: 1px solid ◊|very-light-text-color|;
font-size: 0.8em;
top: -0.1rem;
left: 0.1rem;
padding-left: 0.35em;
padding-right: 0.35em;
border-radius: 50%;
}

.sidenote-comma {
visibility:hidden;
position: relative;
font-size: 1em;
top: 0.0rem;
left: 0.1rem;
}

label.margin-toggle:not(.sidenote-number) { display: inline; }
.margin-note, .sidenote { display: none; }
.margin-toggle:checked ~ .sidenote,
.margin-toggle:checked ~ .margin-note {
color: ◊|dark-text-color|;
font-size: 0.8rem;
display: block;
float: left;
left: 0rem;
clear: both;
width: 85%;
margin: 1rem 7.5%;
vertical-align: baseline;
position: relative;
pointer-events: none;
}
label { cursor: pointer; }

li { margin-left: 1em; padding-left: 1em; }
ul { margin-left: 0; padding-left: 0; }

div.full-width { width: 100%; }
table.full-width { width: 100%; }
}

@media print {
.no-print { display: none; }
div.full-width { width: 100%; }
table.full-width { width: 100%; }
tr { border-top: 1px solid grey; }

a:link {
text-decoration: underline;
background: #ffffff;
-webkit-background-size: 0.05em 1px, 0.05em 1px, 1px 1px;
-moz-background-size: 0.05em 1px, 0.05em 1px, 1px 1px;
background-size: 0.05em 1px, 0.05em 1px, 1px 1px;
background-repeat: no-repeat, no-repeat, repeat-x;
text-shadow: 0.03em 0 #ffffff, -0.03em 0 #ffffff, 0 0.03em #ffffff, 0 -0.03em #ffffff, 0.06em 0 #ffffff, -0.06em 0 #ffffff, 0.09em 0 #ffffff, -0.09em 0 #ffffff, 0.12em 0 #ffffff, -0.12em 0 #ffffff, 0.15em 0 #ffffff, -0.15em 0 #ffffff;
background-position: 0% 93%, 100% 93%, 0% 93%;
}

.sidenote, .margin-expand:checked + .sidenote, .backlink, div.header { display: none; }
.endnotes { display: block; }
div#disqus_thread{ display: none; }
p.date{
text-align: right;
margin-top: 1.5rem;
width: 100%;
float: none;
clear: none;
color: ◊|light-text-color|;
position: static;
font-size: 0.7rem;
}
html { font-size: 13px; }
body { margin-top: 0; margin-bottom: 0; margin-left: 10%; margin-right: 10%; font-family: "Bitstream Charter", "Century Schoolbook", serif;}
body.print-with-right-margin { margin-top: 0; margin-bottom: 0; margin-left: 0; margin-right: 25.0%; }
@page {
margin-top: 1.5in;
margin-bottom: 1.5in;
margin-left: 1.5in;
margin-right: 1.5in;
}
.sidenote-number:after, .sidenote:before {
font-family: 'Source Serif Pro', serif;
}
.margin-note {
text-align: left;
color: ◊|light-text-color|;
float: right;
clear: right;
margin-right: -30%;
width: 25%;
margin-top: 0;
margin-bottom: 0.5rem;
font-size: 0.7rem;
line-height: 1.3;
vertical-align: baseline;
position: relative;
-webkit-line-clamp: 3000;
}
blockquote {
margin-right: 2em;
padding-left: 1em;
margin-left: 1em;
}
}