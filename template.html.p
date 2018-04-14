<!DOCTYPE html>
<!--
◊|template-message|
-->

◊(define (grab-optionally-shortened-title page) (define x (select 'short-title page)) (if (not x) (select 'page-title page) x))
◊(define prev-page (previous here))
◊(define next-page (next here))
◊(define featured-image-url
   (if (select 'featured-image-url metas)
       (select 'featured-image-url metas)
       (get-featured-image-url doc)))
◊(define snippet (select 'snippet metas))

<html>
  <head>
    <!-- Global Site Tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-106592360-1"></script>
    <script>
       window.dataLayer = window.dataLayer || [];
       function gtag(){dataLayer.push(arguments)};
       gtag('js', new Date());

       gtag('config', 'UA-106592360-1');
    </script>
    <meta name="google-site-verification" content="ApapaNT3CEd0OdSE-X9Xy4xF3r_gjtWDR05XS6FANu4" />

    ◊when/splice[featured-image-url]{<meta name="twitter:card" content="summary_large_image" />}
    ◊when/splice[(not featured-image-url)]{<meta name="twitter:card" content="summary" />}
    <meta name="twitter:site" content="@sanchom" />
    <meta property="og:title" content="◊(select 'page-title here)" />
    ◊when/splice[snippet]{<meta property="og:description" content="◊|snippet|" />}
    ◊when/splice[featured-image-url]{<meta property="og:image" content="◊|site-root|/◊|featured-image-url|" />}

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>◊|site-title|—◊(select 'page-title metas)</title>
    <link rel="stylesheet" type="text/css" href="../site-style.css" />
</head>
  <body ◊when/splice[(need-right-margin? doc)]{class="print-with-right-margin"}>
<header>
<nav>
<div class="header">
◊when/splice[prev-page]{<p class="left-header">◄ <a href="◊|prev-page|">◊(grab-optionally-shortened-title prev-page)</a></p>}
◊when/splice[next-page]{<p class="right-header"><a href="◊|next-page|">◊(grab-optionally-shortened-title next-page)</a> ►</p>}
</div>
</nav>
</header>
<div style="clear: both;"></div>
<article>
    ◊(->html doc)
</article>
  </body>
</html>
