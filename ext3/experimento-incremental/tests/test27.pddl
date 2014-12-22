(define (problem test27)
    (:requirements :strips :fluents)
    (:domain travel-strips)
    (:objects c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 c21 c22 c23 c24 c25 c26 c27  - city
              h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27  - hotel)
    (:init  (connected c1 c13) (connected c2 c9) (connected c2 c10) 
            (connected c3 c7) (connected c3 c21) (connected c3 c22) 
            (connected c4 c3) (connected c4 c14) (connected c4 c18) 
            (connected c4 c26) (connected c5 c7) (connected c5 c23) 
            (connected c5 c24) (connected c6 c3) (connected c6 c21) 
            (connected c6 c23) (connected c7 c11) (connected c7 c23) 
            (connected c8 c12) (connected c8 c17) (connected c8 c21) 
            (connected c9 c3) (connected c9 c14) (connected c9 c16) 
            (connected c10 c11) (connected c10 c13) (connected c12 c27) 
            (connected c13 c11) (connected c14 c3) (connected c14 c25) 
            (connected c15 c9) (connected c15 c24) (connected c16 c3) 
            (connected c16 c11) (connected c16 c13) (connected c16 c15) 
            (connected c16 c27) (connected c17 c6) (connected c19 c4) 
            (connected c19 c20) (connected c19 c22) (connected c24 c1) 
            (connected c24 c11) (connected c24 c22) (connected c26 c22) 
            (connected c27 c9) (hotel-in h1 c1) (hotel-in h2 c2) (hotel-in h3 c3) 
            (hotel-in h4 c4) (hotel-in h5 c5) (hotel-in h6 c6) 
            (hotel-in h7 c7) (hotel-in h8 c8) (hotel-in h9 c9) 
            (hotel-in h10 c10) (hotel-in h11 c11) (hotel-in h12 c12) 
            (hotel-in h13 c13) (hotel-in h14 c14) (hotel-in h15 c15) 
            (hotel-in h16 c16) (hotel-in h17 c17) (hotel-in h18 c18) 
            (hotel-in h19 c19) (hotel-in h20 c20) (hotel-in h21 c21) 
            (hotel-in h22 c22) (hotel-in h23 c23) (hotel-in h24 c24) 
            (hotel-in h25 c25) (hotel-in h26 c26) (hotel-in h27 c27) 
            (not-visited c1) (not-visited c2) (not-visited c3) 
            (not-visited c4) (not-visited c5) (not-visited c6) 
            (not-visited c7) (not-visited c8) (not-visited c9) 
            (not-visited c10) (not-visited c11) (not-visited c12) 
            (not-visited c13) (not-visited c14) (not-visited c15) 
            (not-visited c16) (not-visited c17) (not-visited c18) 
            (not-visited c19) (not-visited c20) (not-visited c21) 
            (not-visited c22) (not-visited c23) (not-visited c24) 
            (not-visited c25) (not-visited c26) (not-visited c27) 
            (= (price c1 c13) 91) (= (price c2 c9) 35) (= (price c2 c10) 8) 
            (= (price c3 c7) 7) (= (price c3 c21) 38) (= (price c3 c22) 27) 
            (= (price c4 c3) 22) (= (price c4 c14) 95) (= (price c4 c18) 68) 
            (= (price c4 c26) 87) (= (price c5 c7) 64) (= (price c5 c23) 86) 
            (= (price c5 c24) 92) (= (price c6 c3) 70) (= (price c6 c21) 19) 
            (= (price c6 c23) 99) (= (price c7 c11) 21) (= (price c7 c23) 66) 
            (= (price c8 c12) 32) (= (price c8 c17) 29) (= (price c8 c21) 70) 
            (= (price c9 c3) 23) (= (price c9 c14) 51) (= (price c9 c16) 15) 
            (= (price c10 c11) 94) (= (price c10 c13) 89) (= (price c12 c27) 95) 
            (= (price c13 c11) 81) (= (price c14 c3) 53) (= (price c14 c25) 77) 
            (= (price c15 c9) 70) (= (price c15 c24) 43) (= (price c16 c3) 11) 
            (= (price c16 c11) 29) (= (price c16 c13) 49) (= (price c16 c15) 100) 
            (= (price c16 c27) 56) (= (price c17 c6) 23) (= (price c19 c4) 94) 
            (= (price c19 c20) 23) (= (price c19 c22) 61) (= (price c24 c1) 10) 
            (= (price c24 c11) 9) (= (price c24 c22) 52) (= (price c26 c22) 79) 
            (= (price c27 c9) 79) (= (price-hotel h1 c1) 50) (= (price-hotel h2 c2) 100) (= (price-hotel h3 c3) 44) 
            (= (price-hotel h4 c4) 33) (= (price-hotel h5 c5) 80) (= (price-hotel h6 c6) 65) 
            (= (price-hotel h7 c7) 55) (= (price-hotel h8 c8) 82) (= (price-hotel h9 c9) 79) 
            (= (price-hotel h10 c10) 48) (= (price-hotel h11 c11) 71) (= (price-hotel h12 c12) 26) 
            (= (price-hotel h13 c13) 81) (= (price-hotel h14 c14) 23) (= (price-hotel h15 c15) 2) 
            (= (price-hotel h16 c16) 50) (= (price-hotel h17 c17) 65) (= (price-hotel h18 c18) 65) 
            (= (price-hotel h19 c19) 30) (= (price-hotel h20 c20) 65) (= (price-hotel h21 c21) 64) 
            (= (price-hotel h22 c22) 85) (= (price-hotel h23 c23) 87) (= (price-hotel h24 c24) 10) 
            (= (price-hotel h25 c25) 60) (= (price-hotel h26 c26) 48) (= (price-hotel h27 c27) 19) 
            (not-started) (= (min-days) 1) (= (max-days) 1) (= (spent-days) 0) (= (min-days-viatge) 27) (= (cost-travel) 0)(= (min-cost-travel) 100) (= (max-cost-travel) 10000 )
    )
    (:goal (and (>= (cost-travel) (min-cost-travel)) (<= (min-days-viatge) 0)))
    (:metric minimize (cost-travel))
)
