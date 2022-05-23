;; contract that increments value of var

(define-data-var count uint u0)

(define-read-only (get-count) 
    (var-get count)
)

(define-public (count-up) 
    (ok (var-set count (+ (get-count) u1)))
)