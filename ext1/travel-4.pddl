(define (problem four-cities)
  (:domain travel-strips)
  (:objects c1 c2 c3 c4 - city 
            h1 h2 h3 h4 - hotel)
  (:init (connected c1 c2) (connected c2 c3) (connected c2 c4)
         (connected c4 c1) (connected c3 c4)
         (hotel-in h1 c1) (hotel-in h2 c2) (hotel-in h3 c3)
         (hotel-in h4 c4)
         (not-visited c1) (not-visited c2) (not-visited c3)
         (not-visited c4) (not-started)
         (= (min-days) 1)
         (= (max-days) 2)
         (= (spent-days) 0)
         (= (min-days-viatge) 4))
  (:goal (<= (min-days-viatge) 0))
)
