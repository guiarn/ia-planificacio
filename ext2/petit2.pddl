(define (problem petit2)
    (:requirements :strips :fluents)
    (:domain travel-strips)
    (:objects c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15  - city
              h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23  - hotel)
    (:init  (connected c1 c5) (connected c2 c3) (connected c2 c11) 
            (connected c3 c10) (connected c5 c6) (connected c6 c4) 
            (connected c7 c10) (connected c8 c4) (connected c9 c12) 
            (connected c11 c15) (connected c12 c5) (connected c13 c7) 
            (connected c14 c10) (connected c15 c12) (hotel-in h1 c1) (hotel-in h2 c1) (hotel-in h3 c2) 
            (hotel-in h4 c2) (hotel-in h5 c3) (hotel-in h6 c3) 
            (hotel-in h7 c4) (hotel-in h8 c5) (hotel-in h9 c6) 
            (hotel-in h10 c6) (hotel-in h11 c7) (hotel-in h12 c8) 
            (hotel-in h13 c8) (hotel-in h14 c9) (hotel-in h15 c10) 
            (hotel-in h16 c11) (hotel-in h17 c12) (hotel-in h18 c12) 
            (hotel-in h19 c13) (hotel-in h20 c13) (hotel-in h21 c14) 
            (hotel-in h22 c15) (hotel-in h23 c15) (not-visited c1) (not-visited c2) (not-visited c3) 
            (not-visited c4) (not-visited c5) (not-visited c6) 
            (not-visited c7) (not-visited c8) (not-visited c9) 
            (not-visited c10) (not-visited c11) (not-visited c12) 
            (not-visited c13) (not-visited c14) (not-visited c15) 
            (= (interest c1) 3) (= (interest c2) 3) (= (interest c3) 1) 
            (= (interest c4) 3) (= (interest c5) 1) (= (interest c6) 3) 
            (= (interest c7) 3) (= (interest c8) 2) (= (interest c9) 3) 
            (= (interest c10) 2) (= (interest c11) 3) (= (interest c12) 1) 
            (= (interest c13) 1) (= (interest c14) 3) (= (interest c15) 2) 
            (not-started) (= (min-days) 1) (= (max-days) 1) (= (spent-days) 0) (= (min-days-viatge) 10) (= (sum-interest) 0)

    )
    (:goal (<= (min-days-viatge) 0))
    (:metric minimize (sum-interest))
)
