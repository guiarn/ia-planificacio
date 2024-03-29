(define (problem test28)
    (:requirements :strips :fluents)
    (:domain travel-strips)
    (:objects c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 c21 c22 c23 c24 c25 c26 c27 c28  - city
              h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28  - hotel)
    (:init  (connected c2 c6) (connected c3 c5) (connected c4 c17) 
            (connected c4 c24) (connected c5 c25) (connected c6 c1) 
            (connected c6 c26) (connected c8 c3) (connected c9 c4) 
            (connected c10 c2) (connected c10 c5) (connected c10 c21) 
            (connected c11 c5) (connected c11 c14) (connected c12 c1) 
            (connected c12 c22) (connected c13 c20) (connected c14 c6) 
            (connected c14 c20) (connected c14 c22) (connected c14 c27) 
            (connected c14 c28) (connected c16 c12) (connected c17 c10) 
            (connected c17 c23) (connected c18 c11) (connected c18 c16) 
            (connected c20 c5) (connected c20 c7) (connected c20 c10) 
            (connected c20 c24) (connected c20 c28) (connected c21 c18) 
            (connected c22 c6) (connected c22 c11) (connected c22 c16) 
            (connected c22 c21) (connected c23 c6) (connected c23 c8) 
            (connected c24 c13) (connected c26 c7) (connected c26 c9) 
            (connected c26 c15) (connected c26 c22) (connected c27 c12) 
            (connected c28 c19) (connected c28 c24) (hotel-in h1 c1) (hotel-in h2 c2) (hotel-in h3 c3) 
            (hotel-in h4 c4) (hotel-in h5 c5) (hotel-in h6 c6) 
            (hotel-in h7 c7) (hotel-in h8 c8) (hotel-in h9 c9) 
            (hotel-in h10 c10) (hotel-in h11 c11) (hotel-in h12 c12) 
            (hotel-in h13 c13) (hotel-in h14 c14) (hotel-in h15 c15) 
            (hotel-in h16 c16) (hotel-in h17 c17) (hotel-in h18 c18) 
            (hotel-in h19 c19) (hotel-in h20 c20) (hotel-in h21 c21) 
            (hotel-in h22 c22) (hotel-in h23 c23) (hotel-in h24 c24) 
            (hotel-in h25 c25) (hotel-in h26 c26) (hotel-in h27 c27) 
            (hotel-in h28 c28) (not-visited c1) (not-visited c2) (not-visited c3) 
            (not-visited c4) (not-visited c5) (not-visited c6) 
            (not-visited c7) (not-visited c8) (not-visited c9) 
            (not-visited c10) (not-visited c11) (not-visited c12) 
            (not-visited c13) (not-visited c14) (not-visited c15) 
            (not-visited c16) (not-visited c17) (not-visited c18) 
            (not-visited c19) (not-visited c20) (not-visited c21) 
            (not-visited c22) (not-visited c23) (not-visited c24) 
            (not-visited c25) (not-visited c26) (not-visited c27) 
            (not-visited c28) (= (price c2 c6) 15) (= (price c3 c5) 94) (= (price c4 c17) 89) 
            (= (price c4 c24) 95) (= (price c5 c25) 81) (= (price c6 c1) 53) 
            (= (price c6 c26) 77) (= (price c8 c3) 70) (= (price c9 c4) 43) 
            (= (price c10 c2) 11) (= (price c10 c5) 29) (= (price c10 c21) 49) 
            (= (price c11 c5) 100) (= (price c11 c14) 56) (= (price c12 c1) 23) 
            (= (price c12 c22) 94) (= (price c13 c20) 23) (= (price c14 c6) 61) 
            (= (price c14 c20) 10) (= (price c14 c22) 9) (= (price c14 c27) 52) 
            (= (price c14 c28) 79) (= (price c16 c12) 79) (= (price c17 c10) 50) 
            (= (price c17 c23) 100) (= (price c18 c11) 44) (= (price c18 c16) 33) 
            (= (price c20 c5) 80) (= (price c20 c7) 65) (= (price c20 c10) 55) 
            (= (price c20 c24) 82) (= (price c20 c28) 79) (= (price c21 c18) 48) 
            (= (price c22 c6) 71) (= (price c22 c11) 26) (= (price c22 c16) 81) 
            (= (price c22 c21) 23) (= (price c23 c6) 2) (= (price c23 c8) 50) 
            (= (price c24 c13) 65) (= (price c26 c7) 65) (= (price c26 c9) 30) 
            (= (price c26 c15) 65) (= (price c26 c22) 64) (= (price c27 c12) 85) 
            (= (price c28 c19) 87) (= (price c28 c24) 10) (= (price-hotel h1 c1) 60) (= (price-hotel h2 c2) 48) (= (price-hotel h3 c3) 19) 
            (= (price-hotel h4 c4) 20) (= (price-hotel h5 c5) 99) (= (price-hotel h6 c6) 97) 
            (= (price-hotel h7 c7) 50) (= (price-hotel h8 c8) 1) (= (price-hotel h9 c9) 48) 
            (= (price-hotel h10 c10) 94) (= (price-hotel h11 c11) 33) (= (price-hotel h12 c12) 28) 
            (= (price-hotel h13 c13) 10) (= (price-hotel h14 c14) 40) (= (price-hotel h15 c15) 9) 
            (= (price-hotel h16 c16) 89) (= (price-hotel h17 c17) 39) (= (price-hotel h18 c18) 31) 
            (= (price-hotel h19 c19) 66) (= (price-hotel h20 c20) 19) (= (price-hotel h21 c21) 53) 
            (= (price-hotel h22 c22) 19) (= (price-hotel h23 c23) 20) (= (price-hotel h24 c24) 17) 
            (= (price-hotel h25 c25) 83) (= (price-hotel h26 c26) 50) (= (price-hotel h27 c27) 82) 
            (= (price-hotel h28 c28) 99) (not-started) (= (min-days) 1) (= (max-days) 1) (= (spent-days) 0) (= (min-days-viatge) 28) (= (cost-travel) 0)(= (min-cost-travel) 100) (= (max-cost-travel) 10000 )
    )
    (:goal (and (>= (cost-travel) (min-cost-travel)) (<= (min-days-viatge) 0)))
    (:metric minimize (cost-travel))
)
