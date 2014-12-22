(define (problem test29)
    (:requirements :strips :fluents)
    (:domain travel-strips)
    (:objects c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 c21 c22 c23 c24 c25 c26 c27 c28 c29  - city
              h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29  - hotel)
    (:init  (connected c1 c2) (connected c1 c9) (connected c1 c18) 
            (connected c3 c14) (connected c4 c8) (connected c4 c14) 
            (connected c4 c26) (connected c5 c2) (connected c5 c4) 
            (connected c5 c7) (connected c5 c12) (connected c5 c14) 
            (connected c5 c15) (connected c5 c23) (connected c5 c29) 
            (connected c6 c2) (connected c8 c27) (connected c10 c20) 
            (connected c10 c25) (connected c11 c4) (connected c13 c4) 
            (connected c14 c9) (connected c15 c13) (connected c15 c21) 
            (connected c16 c12) (connected c16 c13) (connected c16 c23) 
            (connected c17 c3) (connected c18 c17) (connected c19 c13) 
            (connected c19 c15) (connected c20 c21) (connected c20 c29) 
            (connected c21 c19) (connected c21 c23) (connected c22 c18) 
            (connected c24 c13) (connected c24 c22) (connected c25 c4) 
            (connected c25 c14) (connected c26 c5) (connected c26 c10) 
            (connected c27 c18) (connected c27 c26) (connected c28 c7) 
            (connected c29 c4) (connected c29 c8) (connected c29 c10) 
            (hotel-in h1 c1) (hotel-in h2 c2) (hotel-in h3 c3) 
            (hotel-in h4 c4) (hotel-in h5 c5) (hotel-in h6 c6) 
            (hotel-in h7 c7) (hotel-in h8 c8) (hotel-in h9 c9) 
            (hotel-in h10 c10) (hotel-in h11 c11) (hotel-in h12 c12) 
            (hotel-in h13 c13) (hotel-in h14 c14) (hotel-in h15 c15) 
            (hotel-in h16 c16) (hotel-in h17 c17) (hotel-in h18 c18) 
            (hotel-in h19 c19) (hotel-in h20 c20) (hotel-in h21 c21) 
            (hotel-in h22 c22) (hotel-in h23 c23) (hotel-in h24 c24) 
            (hotel-in h25 c25) (hotel-in h26 c26) (hotel-in h27 c27) 
            (hotel-in h28 c28) (hotel-in h29 c29) (not-visited c1) (not-visited c2) (not-visited c3) 
            (not-visited c4) (not-visited c5) (not-visited c6) 
            (not-visited c7) (not-visited c8) (not-visited c9) 
            (not-visited c10) (not-visited c11) (not-visited c12) 
            (not-visited c13) (not-visited c14) (not-visited c15) 
            (not-visited c16) (not-visited c17) (not-visited c18) 
            (not-visited c19) (not-visited c20) (not-visited c21) 
            (not-visited c22) (not-visited c23) (not-visited c24) 
            (not-visited c25) (not-visited c26) (not-visited c27) 
            (not-visited c28) (not-visited c29) (= (price c1 c2) 38) (= (price c1 c9) 27) (= (price c1 c18) 22) 
            (= (price c3 c14) 95) (= (price c4 c8) 68) (= (price c4 c14) 87) 
            (= (price c4 c26) 64) (= (price c5 c2) 86) (= (price c5 c4) 92) 
            (= (price c5 c7) 70) (= (price c5 c12) 19) (= (price c5 c14) 99) 
            (= (price c5 c15) 21) (= (price c5 c23) 66) (= (price c5 c29) 32) 
            (= (price c6 c2) 29) (= (price c8 c27) 70) (= (price c10 c20) 23) 
            (= (price c10 c25) 51) (= (price c11 c4) 15) (= (price c13 c4) 94) 
            (= (price c14 c9) 89) (= (price c15 c13) 95) (= (price c15 c21) 81) 
            (= (price c16 c12) 53) (= (price c16 c13) 77) (= (price c16 c23) 70) 
            (= (price c17 c3) 43) (= (price c18 c17) 11) (= (price c19 c13) 29) 
            (= (price c19 c15) 49) (= (price c20 c21) 100) (= (price c20 c29) 56) 
            (= (price c21 c19) 23) (= (price c21 c23) 94) (= (price c22 c18) 23) 
            (= (price c24 c13) 61) (= (price c24 c22) 10) (= (price c25 c4) 9) 
            (= (price c25 c14) 52) (= (price c26 c5) 79) (= (price c26 c10) 79) 
            (= (price c27 c18) 50) (= (price c27 c26) 100) (= (price c28 c7) 44) 
            (= (price c29 c4) 33) (= (price c29 c8) 80) (= (price c29 c10) 65) 
            (= (price-hotel h1 c1) 55) (= (price-hotel h2 c2) 82) (= (price-hotel h3 c3) 79) 
            (= (price-hotel h4 c4) 48) (= (price-hotel h5 c5) 71) (= (price-hotel h6 c6) 26) 
            (= (price-hotel h7 c7) 81) (= (price-hotel h8 c8) 23) (= (price-hotel h9 c9) 2) 
            (= (price-hotel h10 c10) 50) (= (price-hotel h11 c11) 65) (= (price-hotel h12 c12) 65) 
            (= (price-hotel h13 c13) 30) (= (price-hotel h14 c14) 65) (= (price-hotel h15 c15) 64) 
            (= (price-hotel h16 c16) 85) (= (price-hotel h17 c17) 87) (= (price-hotel h18 c18) 10) 
            (= (price-hotel h19 c19) 60) (= (price-hotel h20 c20) 48) (= (price-hotel h21 c21) 19) 
            (= (price-hotel h22 c22) 20) (= (price-hotel h23 c23) 99) (= (price-hotel h24 c24) 97) 
            (= (price-hotel h25 c25) 50) (= (price-hotel h26 c26) 1) (= (price-hotel h27 c27) 48) 
            (= (price-hotel h28 c28) 94) (= (price-hotel h29 c29) 33) (not-started) (= (min-days) 1) (= (max-days) 1) (= (spent-days) 0) (= (min-days-viatge) 29) (= (cost-travel) 0)(= (min-cost-travel) 100) (= (max-cost-travel) 10000 )
    )
    (:goal (and (>= (cost-travel) (min-cost-travel)) (<= (min-days-viatge) 0)))
    (:metric minimize (cost-travel))
)
