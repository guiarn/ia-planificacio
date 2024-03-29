;; El minim pressupost es 500, pero hi ha un trajecte del 
;; viatge que ja costa 500, per tant es superarà el mínim 
;; cost del viatge

(define (problem four-cities)
  (:domain travel-strips)
  (:objects c1 c2 c3 c4 - city 
            h1 h2 h3 h4 - hotel)
  (:init (connected c1 c2) (connected c2 c3) (connected c2 c4)
         (connected c4 c1) (connected c3 c4) (connected c1 c3)
         (hotel-in h1 c1) (hotel-in h2 c2) (hotel-in h3 c3)
         (hotel-in h4 c4)
         (not-visited c1) (not-visited c2) (not-visited c3)
         (not-visited c4) (not-started)
         (= (min-days) 1)
         (= (max-days) 1)
         (= (spent-days) 0)
         (= (min-days-viatge) 4)
         (= (cost-travel) 0)
         (= (min-cost-travel) 500)
         (= (max-cost-travel) 10000)
         (= (price c1 c2) 100)
         (= (price c2 c3) 100)
         (= (price c2 c4) 100)
         (= (price c4 c1) 100)
         (= (price c3 c4) 100)
         (= (price c1 c3) 500)
         (= (price-hotel h1 c1) 100)
         (= (price-hotel h2 c2) 100)
         (= (price-hotel h3 c3) 100)
         (= (price-hotel h4 c4) 100) )

  (:goal (and (>= (cost-travel) (min-cost-travel)) 
         (<= (min-days-viatge) 0)))

  (:metric minimize (cost-travel))
)
