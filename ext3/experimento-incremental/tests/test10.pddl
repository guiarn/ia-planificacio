(define (problem test10)
    (:requirements :strips :fluents)
    (:domain travel-strips)
    (:objects c1 c2 c3 c4 c5 c6 c7 c8 c9 c10  - city
              h1 h2 h3 h4 h5 h6 h7 h8 h9 h10  - hotel)
    (:init  (connected c1 c7) (connected c2 c4) (connected c2 c5) 
            (connected c2 c6) (connected c2 c7) (connected c3 c10) 
            (connected c4 c6) (connected c4 c10) (connected c5 c1) 
            (connected c5 c3) (connected c5 c6) (connected c5 c7) 
            (connected c5 c9) (connected c5 c10) (connected c6 c3) 
            (connected c7 c4) (connected c8 c1) (connected c8 c2) 
            (connected c8 c3) (connected c8 c5) (connected c8 c6) 
            (connected c8 c9) (connected c9 c2) (connected c9 c3) 
            (connected c9 c6) (connected c10 c1) (connected c10 c7) 
            (connected c10 c8) (connected c10 c9) (hotel-in h1 c1) (hotel-in h2 c2) (hotel-in h3 c3) 
            (hotel-in h4 c4) (hotel-in h5 c5) (hotel-in h6 c6) 
            (hotel-in h7 c7) (hotel-in h8 c8) (hotel-in h9 c9) 
            (hotel-in h10 c10) (not-visited c1) (not-visited c2) (not-visited c3) 
            (not-visited c4) (not-visited c5) (not-visited c6) 
            (not-visited c7) (not-visited c8) (not-visited c9) 
            (not-visited c10) (= (price c1 c7) 18) (= (price c2 c4) 19) (= (price c2 c5) 53) 
            (= (price c2 c6) 55) (= (price c2 c7) 34) (= (price c3 c10) 8) 
            (= (price c4 c6) 52) (= (price c4 c10) 95) (= (price c5 c1) 34) 
            (= (price c5 c3) 57) (= (price c5 c6) 53) (= (price c5 c7) 40) 
            (= (price c5 c9) 22) (= (price c5 c10) 94) (= (price c6 c3) 72) 
            (= (price c7 c4) 87) (= (price c8 c1) 81) (= (price c8 c2) 36) 
            (= (price c8 c3) 12) (= (price c8 c5) 31) (= (price c8 c6) 89) 
            (= (price c8 c9) 91) (= (price c9 c2) 35) (= (price c9 c3) 8) 
            (= (price c9 c6) 7) (= (price c10 c1) 38) (= (price c10 c7) 27) 
            (= (price c10 c8) 22) (= (price c10 c9) 95) (= (price-hotel h1 c1) 68) (= (price-hotel h2 c2) 87) (= (price-hotel h3 c3) 64) 
            (= (price-hotel h4 c4) 86) (= (price-hotel h5 c5) 92) (= (price-hotel h6 c6) 70) 
            (= (price-hotel h7 c7) 19) (= (price-hotel h8 c8) 99) (= (price-hotel h9 c9) 21) 
            (= (price-hotel h10 c10) 66) (not-started) (= (min-days) 1) (= (max-days) 1) (= (spent-days) 0) (= (min-days-viatge) 10) (= (cost-travel) 0)(= (min-cost-travel) 100) (= (max-cost-travel) 10000 )
    )
    (:goal (and (>= (cost-travel) (min-cost-travel)) (<= (min-days-viatge) 0)))
    (:metric minimize (cost-travel))
)
