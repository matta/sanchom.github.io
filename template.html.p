<!DOCTYPE html>
<!--
◊|template-message|
-->

◊(define (grab-optionally-shortened-title page) (define x (select 'short-title page)) (if (not x) (select 'page-title page) x))
◊(define prev-page (previous here))
◊(define next-page (next here))
◊(define original-date (select 'original-date metas))
◊(define edited-date (select 'edited-date metas))
◊(define featured-image-url
   (if (select 'featured-image-url metas)
       (select 'featured-image-url metas)
       (get-featured-image-url doc)))
◊(define snippet (select 'snippet metas))
◊(define include-disqus (not (or (eq? here 'index.html)
                                 (eq? here 'colophon.html))))

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
    <script>
      (function(d, s, id){
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) {return;}
      js = d.createElement(s); js.id = id;
      js.src = "https://assets.gfycat.com/gfycat.js";
      fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'gfycat-js'));
    </script>
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
<p class="date">
◊when/splice[original-date]{<time datetime="◊|original-date|">◊|original-date|</time>}◊when/splice[edited-date]{, edited: <time datetime="◊|edited-date|">◊|edited-date|</time>}
</p>
    ◊(->html doc)
</article>

◊when/splice[include-disqus]{
<div id="disqus_thread"></div>
<script>


var disqus_config = function () {
this.page.url = "http://sanchom.github.io/◊|here|"
this.page.identifier = "◊|here|"
};

(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://sanchom.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
}

  </body>
</html>
