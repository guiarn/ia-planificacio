(define (problem test3)
    (:requirements :strips :fluents)
    (:domain travel-strips)
    (:objects c1 c2 c3  - city
              h1 h2 h3  - hotel)
    (:init  (connected c1 c3) (connected c2 c1) (connected c2 c3) 
            (hotel-in h1 c1) (hotel-in h2 c2) (hotel-in h3 c3) 
            (not-visited c1) (not-visited c2) (not-visited c3) 
            (= (price c1 c3) 57) (= (price c2 c1) 54) (= (price c2 c3) 91) 
            (= (price-hotel h1 c1) 82) (= (price-hotel h2 c2) 87) (= (price-hotel h3 c3) 24) 
            (not-started) (= (min-days) 1) (= (max-days) 1) (= (spent-days) 0) (= (min-days-viatge) 3) (= (cost-travel) 0)(= (min-cost-travel) 100) (= (max-cost-travel) 10000 )
    )
    (:goal (and (>= (cost-travel) (min-cost-travel)) (<= (min-days-viatge) 0)))
    (:metric minimize (cost-travel))
)
