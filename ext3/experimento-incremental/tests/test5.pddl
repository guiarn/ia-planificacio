(define (problem test5)
    (:requirements :strips :fluents)
    (:domain travel-strips)
    (:objects c1 c2 c3 c4 c5  - city
              h1 h2 h3 h4 h5  - hotel)
    (:init  (connected c2 c1) (connected c2 c4) (connected c3 c1) 
            (connected c3 c2) (connected c3 c5) (connected c4 c1) 
            (connected c4 c3) (connected c4 c5) (connected c5 c1) 
            (connected c5 c2) (hotel-in h1 c1) (hotel-in h2 c2) (hotel-in h3 c3) 
            (hotel-in h4 c4) (hotel-in h5 c5) (not-visited c1) (not-visited c2) (not-visited c3) 
            (not-visited c4) (not-visited c5) (= (price c2 c1) 64) (= (price c2 c4) 59) (= (price c3 c1) 13) 
            (= (price c3 c2) 16) (= (price c3 c5) 53) (= (price c4 c1) 38) 
            (= (price c4 c3) 41) (= (price c4 c5) 78) (= (price c5 c1) 89) 
            (= (price c5 c2) 45) (= (price-hotel h1 c1) 35) (= (price-hotel h2 c2) 9) (= (price-hotel h3 c3) 52) 
            (= (price-hotel h4 c4) 23) (= (price-hotel h5 c5) 100) (not-started) (= (min-days) 1) (= (max-days) 1) (= (spent-days) 0) (= (min-days-viatge) 5) (= (cost-travel) 0)(= (min-cost-travel) 100) (= (max-cost-travel) 10000 )
    )
    (:goal (and (>= (cost-travel) (min-cost-travel)) (<= (min-days-viatge) 0)))
    (:metric minimize (cost-travel))
)
