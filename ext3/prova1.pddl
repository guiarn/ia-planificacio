(define (problem prova1)
    (:requirements :strips :fluents)
    (:domain travel-strips)
    (:objects c1 c2 c3 c4 c5 c6 c7 c8 c9 c10  - city
              h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16  - hotel)
    (:init  (connected c2 c4) (connected c2 c6) (connected c3 c1) 
            (connected c3 c2) (connected c3 c4) (connected c4 c8) 
            (connected c5 c10) (connected c7 c6) (connected c7 c8) 
            (connected c7 c9) (connected c7 c10) (connected c9 c4) 
            (connected c9 c5) (hotel-in h1 c1) (hotel-in h2 c2) (hotel-in h3 c2) 
            (hotel-in h4 c3) (hotel-in h5 c3) (hotel-in h6 c4) 
            (hotel-in h7 c5) (hotel-in h8 c5) (hotel-in h9 c6) 
            (hotel-in h10 c6) (hotel-in h11 c7) (hotel-in h12 c8) 
            (hotel-in h13 c8) (hotel-in h14 c9) (hotel-in h15 c9) 
            (hotel-in h16 c10) (not-visited c1) (not-visited c2) (not-visited c3) 
            (not-visited c4) (not-visited c5) (not-visited c6) 
            (not-visited c7) (not-visited c8) (not-visited c9) 
            (not-visited c10) (= (price c2 c4) 82) (= (price c2 c6) 44) (= (price c3 c1) 74) 
            (= (price c3 c2) 76) (= (price c3 c4) 11) (= (price c4 c8) 64) 
            (= (price c5 c10) 64) (= (price c7 c6) 98) (= (price c7 c8) 71) 
            (= (price c7 c9) 11) (= (price c7 c10) 87) (= (price c9 c4) 6) 
            (= (price c9 c5) 73) (= (price-hotel h1 c1) 55) (= (price-hotel h2 c2) 51) (= (price-hotel h3 c2) 61) 
            (= (price-hotel h4 c3) 61) (= (price-hotel h5 c3) 85) (= (price-hotel h6 c4) 86) 
            (= (price-hotel h7 c5) 42) (= (price-hotel h8 c5) 50) (= (price-hotel h9 c6) 57) 
            (= (price-hotel h10 c6) 59) (= (price-hotel h11 c7) 31) (= (price-hotel h12 c8) 7) 
            (= (price-hotel h13 c8) 97) (= (price-hotel h14 c9) 93) (= (price-hotel h15 c9) 20) 
            (= (price-hotel h16 c10) 19) (not-started) (= (min-days) 3) (= (max-days) 4) (= (spent-days) 0) (= (min-days-viatge) 3) (= (cost-travel) 0)(= (min-cost-travel) 100) (= (max-cost-travel) 100000 )
    )
    (:goal (and (>= (cost-travel) (min-cost-travel)) (<= (min-days-viatge) 0)))
    (:metric minimize (cost-travel))
)