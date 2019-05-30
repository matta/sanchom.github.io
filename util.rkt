#lang racket

(require racket/contract)
(require racket/string)
(require txexpr)

(module+ test
  (require rackunit))

(define/contract (merge-successive-strings elements)
  (txexpr-elements? . -> . txexpr-elements?)
  (define (conditional-merge element curr-list)
    (if (and (not (empty? curr-list))
             (string? (first curr-list))
             (string? element))
        (cons (string-append (first curr-list) element) (drop curr-list 1))
        (cons element curr-list)))
  (reverse (foldl conditional-merge '() elements)))

(module+ test
  (check-equal? (merge-successive-strings '()) '())
  (check-equal? (merge-successive-strings '("a")) '("a"))
  (check-equal? (merge-successive-strings '(a)) '(a))
  (check-equal? (merge-successive-strings '(a "b")) '(a "b"))
  (check-equal? (merge-successive-strings '("a" "b")) '("ab"))
  (check-equal? (merge-successive-strings '("a" a "b")) '("a" a "b"))
  (check-equal? (merge-successive-strings '("a" "b" " " "c")) '("ab c"))
  (check-equal? (merge-successive-strings '("a" "b" a " " b "c" c d "e" " f" g)) '("ab" a " " b "c" c d "e f" g))
  )

(provide merge-successive-strings)