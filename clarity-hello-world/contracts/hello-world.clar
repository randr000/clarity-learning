
;; hello-world
;; <add a description here>

;; define a public function called say-hi that returns 'hello world'
(define-public (say-hi)
    (ok "hello world"))

;; define a read-only function called echo number that returns the value passed to the function
(define-read-only (echo-number (val int))
    (ok val))