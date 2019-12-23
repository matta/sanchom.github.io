#lang pollen
◊(require racket/string)
◊(require pollen/pagetree)

◊(define pagelist (pagetree->list (get-pagetree "index.ptree")))

<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">

<url>
<loc>https://sanchom.github.io</loc>
<changefreq>daily</changefreq>
</url>

<url>
<loc>https://sanchom.github.io/site-index.html</loc>
<changefreq>daily</changefreq>
</url>

◊(apply string-append (map (lambda (x)
                             (string-join `(,(format "<url>\n<loc>https://sanchom.github.io/~a</loc>\n" x)
                                            ,(if (select 'edited-date x) (format "<lastmod>~a</lastmod>\n" (select 'edited-date x))
                                                 (if (select 'original-date x) (format "<lastmod>~a</lastmod>\n" (select 'original-date x)) ""))
                                            "<changefreq>weekly</changefreq>\n</url>\n\n")
                                          ""
                                          ))
                           pagelist))

</urlset>