; Com nomes agafem un dia, mirem que vagi a la ciutat c1
; ja que es l'interes mes "alt"


; step    0: START C1
;         1: SPEND-NIGHT C1 H1

(define (problem four-cities)
  (:domain travel-strips)
  (:objects c1 c2 c3 - city 
            h1 h2 h3 - hotel)
  (:init (connected c1 c2) (connected c1 c3) (connected c2 c3)
         (hotel-in h1 c1) (hotel-in h2 c2) (hotel-in h3 c3)
         (not-visited c1) (not-visited c2) (not-visited c3)
         (not-started)
         (= (interest c1) 1)
         (= (interest c2) 3)
         (= (interest c3) 3)
         (= (min-days) 1)
         (= (max-days) 1)
         (= (spent-days) 0)
         (= (min-days-viatge) 1)
         (= (sum-interest) 0)
         (= (cost-travel) 0)
         (= (min-cost-travel) 100)
         (= (max-cost-travel) 200)
         (= (price c1 c2) 100)
         (= (price c1 c3) 100)
         (= (price c2 c3) 100)
         (= (price-hotel h1 c1) 100)
         (= (price-hotel h2 c2) 100)
         (= (price-hotel h3 c3) 100))

  (:goal (and (>= (cost-travel) (min-cost-travel)) 
         (<= (min-days-viatge) 0)))

  (:metric minimize (+ (cost-travel) (sum-interest)))
)
