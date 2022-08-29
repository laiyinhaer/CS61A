(define (tail-replicate x n)
  ; BEGIN SOLUTION
  (define (helper n so-far)
    (if (= n 0) so-far
      (helper (- n 1) (cons x so-far))))
  (helper n '())
  ; END SOLUTION
)