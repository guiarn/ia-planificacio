(define (problem test14)
    (:requirements :strips :fluents)
    (:domain travel-strips)
    (:objects c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 c21 c22 c23 c24 c25 c26 c27 c28 c29 c30 c31 c32 c33 c34 c35 c36 c37 c38 c39 c40 c41 c42 c43 c44 c45 c46 c47 c48 c49 c50 c51 c52 c53 c54 c55 c56 c57 c58 c59 c60 c61 c62 c63 c64 c65 c66 c67 c68 c69 c70  - city
              h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70  - hotel)
    (:init  (connected c1 c26) (connected c2 c14) (connected c4 c5) 
            (connected c6 c19) (connected c6 c64) (connected c7 c50) 
            (connected c8 c60) (connected c9 c36) (connected c9 c53) 
            (connected c10 c2) (connected c10 c8) (connected c11 c27) 
            (connected c11 c59) (connected c12 c41) (connected c12 c65) 
            (connected c13 c57) (connected c15 c66) (connected c17 c50) 
            (connected c18 c39) (connected c18 c67) (connected c19 c38) 
            (connected c19 c61) (connected c20 c49) (connected c22 c16) 
            (connected c22 c53) (connected c23 c11) (connected c23 c21) 
            (connected c23 c43) (connected c24 c51) (connected c25 c51) 
            (connected c28 c20) (connected c28 c39) (connected c33 c29) 
            (connected c33 c58) (connected c35 c15) (connected c37 c57) 
            (connected c40 c13) (connected c41 c34) (connected c42 c69) 
            (connected c43 c36) (connected c43 c41) (connected c43 c46) 
            (connected c43 c47) (connected c44 c8) (connected c46 c18) 
            (connected c46 c36) (connected c47 c2) (connected c49 c4) 
            (connected c49 c57) (connected c50 c30) (connected c51 c41) 
            (connected c51 c56) (connected c52 c39) (connected c52 c54) 
            (connected c52 c63) (connected c53 c35) (connected c53 c45) 
            (connected c55 c1) (connected c55 c5) (connected c55 c42) 
            (connected c56 c17) (connected c57 c3) (connected c57 c31) 
            (connected c59 c37) (connected c60 c57) (connected c62 c32) 
            (connected c62 c45) (connected c63 c51) (connected c64 c1) 
            (connected c64 c3) (connected c65 c49) (connected c66 c17) 
            (connected c67 c48) (connected c68 c56) (connected c68 c58) 
            (connected c69 c2) (connected c69 c45) (connected c70 c24) 
            (connected c70 c67) (hotel-in h1 c1) (hotel-in h2 c2) (hotel-in h3 c3) 
            (hotel-in h4 c4) (hotel-in h5 c5) (hotel-in h6 c6) 
            (hotel-in h7 c7) (hotel-in h8 c8) (hotel-in h9 c9) 
            (hotel-in h10 c10) (hotel-in h11 c11) (hotel-in h12 c12) 
            (hotel-in h13 c13) (hotel-in h14 c14) (hotel-in h15 c15) 
            (hotel-in h16 c16) (hotel-in h17 c17) (hotel-in h18 c18) 
            (hotel-in h19 c19) (hotel-in h20 c20) (hotel-in h21 c21) 
            (hotel-in h22 c22) (hotel-in h23 c23) (hotel-in h24 c24) 
            (hotel-in h25 c25) (hotel-in h26 c26) (hotel-in h27 c27) 
            (hotel-in h28 c28) (hotel-in h29 c29) (hotel-in h30 c30) 
            (hotel-in h31 c31) (hotel-in h32 c32) (hotel-in h33 c33) 
            (hotel-in h34 c34) (hotel-in h35 c35) (hotel-in h36 c36) 
            (hotel-in h37 c37) (hotel-in h38 c38) (hotel-in h39 c39) 
            (hotel-in h40 c40) (hotel-in h41 c41) (hotel-in h42 c42) 
            (hotel-in h43 c43) (hotel-in h44 c44) (hotel-in h45 c45) 
            (hotel-in h46 c46) (hotel-in h47 c47) (hotel-in h48 c48) 
            (hotel-in h49 c49) (hotel-in h50 c50) (hotel-in h51 c51) 
            (hotel-in h52 c52) (hotel-in h53 c53) (hotel-in h54 c54) 
            (hotel-in h55 c55) (hotel-in h56 c56) (hotel-in h57 c57) 
            (hotel-in h58 c58) (hotel-in h59 c59) (hotel-in h60 c60) 
            (hotel-in h61 c61) (hotel-in h62 c62) (hotel-in h63 c63) 
            (hotel-in h64 c64) (hotel-in h65 c65) (hotel-in h66 c66) 
            (hotel-in h67 c67) (hotel-in h68 c68) (hotel-in h69 c69) 
            (hotel-in h70 c70) (not-visited c1) (not-visited c2) (not-visited c3) 
            (not-visited c4) (not-visited c5) (not-visited c6) 
            (not-visited c7) (not-visited c8) (not-visited c9) 
            (not-visited c10) (not-visited c11) (not-visited c12) 
            (not-visited c13) (not-visited c14) (not-visited c15) 
            (not-visited c16) (not-visited c17) (not-visited c18) 
            (not-visited c19) (not-visited c20) (not-visited c21) 
            (not-visited c22) (not-visited c23) (not-visited c24) 
            (not-visited c25) (not-visited c26) (not-visited c27) 
            (not-visited c28) (not-visited c29) (not-visited c30) 
            (not-visited c31) (not-visited c32) (not-visited c33) 
            (not-visited c34) (not-visited c35) (not-visited c36) 
            (not-visited c37) (not-visited c38) (not-visited c39) 
            (not-visited c40) (not-visited c41) (not-visited c42) 
            (not-visited c43) (not-visited c44) (not-visited c45) 
            (not-visited c46) (not-visited c47) (not-visited c48) 
            (not-visited c49) (not-visited c50) (not-visited c51) 
            (not-visited c52) (not-visited c53) (not-visited c54) 
            (not-visited c55) (not-visited c56) (not-visited c57) 
            (not-visited c58) (not-visited c59) (not-visited c60) 
            (not-visited c61) (not-visited c62) (not-visited c63) 
            (not-visited c64) (not-visited c65) (not-visited c66) 
            (not-visited c67) (not-visited c68) (not-visited c69) 
            (not-visited c70) (= (price c1 c26) 86) (= (price c2 c14) 80) (= (price c4 c5) 11) 
            (= (price c6 c19) 2) (= (price c6 c64) 61) (= (price c7 c50) 53) 
            (= (price c8 c60) 68) (= (price c9 c36) 84) (= (price c9 c53) 59) 
            (= (price c10 c2) 6) (= (price c10 c8) 82) (= (price c11 c27) 84) 
            (= (price c11 c59) 87) (= (price c12 c41) 75) (= (price c12 c65) 89) 
            (= (price c13 c57) 95) (= (price c15 c66) 67) (= (price c17 c50) 12) 
            (= (price c18 c39) 48) (= (price c18 c67) 41) (= (price c19 c38) 59) 
            (= (price c19 c61) 40) (= (price c20 c49) 83) (= (price c22 c16) 89) 
            (= (price c22 c53) 82) (= (price c23 c11) 89) (= (price c23 c21) 72) 
            (= (price c23 c43) 68) (= (price c24 c51) 56) (= (price c25 c51) 65) 
            (= (price c28 c20) 49) (= (price c28 c39) 41) (= (price c33 c29) 44) 
            (= (price c33 c58) 11) (= (price c35 c15) 42) (= (price c37 c57) 56) 
            (= (price c40 c13) 64) (= (price c41 c34) 62) (= (price c42 c69) 91) 
            (= (price c43 c36) 74) (= (price c43 c41) 19) (= (price c43 c46) 73) 
            (= (price c43 c47) 9) (= (price c44 c8) 5) (= (price c46 c18) 47) 
            (= (price c46 c36) 49) (= (price c47 c2) 100) (= (price c49 c4) 65) 
            (= (price c49 c57) 61) (= (price c50 c30) 47) (= (price c51 c41) 58) 
            (= (price c51 c56) 71) (= (price c52 c39) 38) (= (price c52 c54) 40) 
            (= (price c52 c63) 59) (= (price c53 c35) 20) (= (price c53 c45) 80) 
            (= (price c55 c1) 31) (= (price c55 c5) 87) (= (price c55 c42) 87) 
            (= (price c56 c17) 47) (= (price c57 c3) 87) (= (price c57 c31) 28) 
            (= (price c59 c37) 91) (= (price c60 c57) 50) (= (price c62 c32) 21) 
            (= (price c62 c45) 46) (= (price c63 c51) 13) (= (price c64 c1) 34) 
            (= (price c64 c3) 89) (= (price c65 c49) 38) (= (price c66 c17) 5) 
            (= (price c67 c48) 61) (= (price c68 c56) 47) (= (price c68 c58) 9) 
            (= (price c69 c2) 59) (= (price c69 c45) 47) (= (price c70 c24) 8) 
            (= (price c70 c67) 23) (= (price-hotel h1 c1) 7) (= (price-hotel h2 c2) 7) (= (price-hotel h3 c3) 32) 
            (= (price-hotel h4 c4) 29) (= (price-hotel h5 c5) 44) (= (price-hotel h6 c6) 72) 
            (= (price-hotel h7 c7) 40) (= (price-hotel h8 c8) 15) (= (price-hotel h9 c9) 3) 
            (= (price-hotel h10 c10) 22) (= (price-hotel h11 c11) 54) (= (price-hotel h12 c12) 90) 
            (= (price-hotel h13 c13) 68) (= (price-hotel h14 c14) 40) (= (price-hotel h15 c15) 69) 
            (= (price-hotel h16 c16) 10) (= (price-hotel h17 c17) 89) (= (price-hotel h18 c18) 41) 
            (= (price-hotel h19 c19) 8) (= (price-hotel h20 c20) 53) (= (price-hotel h21 c21) 27) 
            (= (price-hotel h22 c22) 96) (= (price-hotel h23 c23) 43) (= (price-hotel h24 c24) 31) 
            (= (price-hotel h25 c25) 56) (= (price-hotel h26 c26) 41) (= (price-hotel h27 c27) 39) 
            (= (price-hotel h28 c28) 66) (= (price-hotel h29 c29) 87) (= (price-hotel h30 c30) 99) 
            (= (price-hotel h31 c31) 88) (= (price-hotel h32 c32) 46) (= (price-hotel h33 c33) 5) 
            (= (price-hotel h34 c34) 72) (= (price-hotel h35 c35) 74) (= (price-hotel h36 c36) 100) 
            (= (price-hotel h37 c37) 95) (= (price-hotel h38 c38) 65) (= (price-hotel h39 c39) 67) 
            (= (price-hotel h40 c40) 97) (= (price-hotel h41 c41) 86) (= (price-hotel h42 c42) 20) 
            (= (price-hotel h43 c43) 86) (= (price-hotel h44 c44) 6) (= (price-hotel h45 c45) 59) 
            (= (price-hotel h46 c46) 6) (= (price-hotel h47 c47) 15) (= (price-hotel h48 c48) 100) 
            (= (price-hotel h49 c49) 47) (= (price-hotel h50 c50) 74) (= (price-hotel h51 c51) 4) 
            (= (price-hotel h52 c52) 73) (= (price-hotel h53 c53) 69) (= (price-hotel h54 c54) 46) 
            (= (price-hotel h55 c55) 3) (= (price-hotel h56 c56) 76) (= (price-hotel h57 c57) 86) 
            (= (price-hotel h58 c58) 41) (= (price-hotel h59 c59) 41) (= (price-hotel h60 c60) 25) 
            (= (price-hotel h61 c61) 91) (= (price-hotel h62 c62) 81) (= (price-hotel h63 c63) 70) 
            (= (price-hotel h64 c64) 95) (= (price-hotel h65 c65) 52) (= (price-hotel h66 c66) 95) 
            (= (price-hotel h67 c67) 47) (= (price-hotel h68 c68) 46) (= (price-hotel h69 c69) 60) 
            (= (price-hotel h70 c70) 13) (not-started) (= (min-days) 1) (= (max-days) 1) (= (spent-days) 0) (= (min-days-viatge) 35) (= (cost-travel) 0)(= (min-cost-travel) 100) (= (max-cost-travel) 10000 )
    )
    (:goal (and (>= (cost-travel) (min-cost-travel)) (<= (min-days-viatge) 0)))
    (:metric minimize (cost-travel))
)