(define (tail-replicate x n)
  (define (help-sum n sofar)
    (if (zero? n)
        sofar
        (help-sum (- n 1) (cons x sofar))
    )
  )
  (help-sum n '())
)