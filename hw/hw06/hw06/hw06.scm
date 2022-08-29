(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))

(define (interleave lst1 lst2)
    (if (or (null? lst1) (null? lst2))
      (append lst1 lst2)
      (cons (car lst1)
            (cons (car lst2)
                  (interleave (cdr lst1) (cdr lst2)))))
)

(define (my-filter pred lst) 
    (cond ((null? lst) '())
          ((pred (car lst)) (cons (car lst) (my-filter pred (cdr lst))))
          (else (my-filter pred (cdr lst)))
    )
)

(define (concatenate s) 
    (define (helper cur rest)
        (if (null? rest)
            cur
            (helper (append cur (car rest)) (cdr rest))
        )
    )
    (helper () s)
)
