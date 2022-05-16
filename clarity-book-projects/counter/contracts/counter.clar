
;; counter
;; Multiplayer Counter contract

;; data maps and vars ;;

(define-map counters principal uint)

;; read-only functions ;;

;; Returns counter value for specified principal.
;; If principal doesn't exist, then u0 is returned.
(define-read-only (get-count (who principal))
    (default-to u0 (map-get? counters who))
)

;; public functions ;;

;; Increments the tx-senders counter value by 1
(define-public (count-up)
    (ok (map-set counters tx-sender (+ (get-count tx-sender) u1)))
)