(define (problem test20)
    (:requirements :strips :fluents)
    (:domain travel-strips)
    (:objects c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 c21 c22 c23 c24 c25 c26 c27 c28 c29 c30 c31 c32 c33 c34 c35 c36 c37 c38 c39 c40 c41 c42 c43 c44 c45 c46 c47 c48 c49 c50 c51 c52 c53 c54 c55 c56 c57 c58 c59 c60 c61 c62 c63 c64 c65 c66 c67 c68 c69 c70 c71 c72 c73 c74 c75 c76 c77 c78 c79 c80 c81 c82 c83 c84 c85 c86 c87 c88 c89 c90 c91 c92 c93 c94 c95 c96 c97 c98 c99 c100  - city
              h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38 h39 h40 h41 h42 h43 h44 h45 h46 h47 h48 h49 h50 h51 h52 h53 h54 h55 h56 h57 h58 h59 h60 h61 h62 h63 h64 h65 h66 h67 h68 h69 h70 h71 h72 h73 h74 h75 h76 h77 h78 h79 h80 h81 h82 h83 h84 h85 h86 h87 h88 h89 h90 h91 h92 h93 h94 h95 h96 h97 h98 h99 h100  - hotel)
    (:init  (connected c3 c11) (connected c3 c81) (connected c3 c83) 
            (connected c4 c91) (connected c5 c39) (connected c8 c70) 
            (connected c10 c25) (connected c10 c98) (connected c11 c76) 
            (connected c12 c21) (connected c13 c49) (connected c14 c93) 
            (connected c16 c59) (connected c17 c92) (connected c18 c26) 
            (connected c19 c80) (connected c20 c18) (connected c21 c84) 
            (connected c22 c25) (connected c22 c73) (connected c24 c39) 
            (connected c25 c41) (connected c27 c97) (connected c28 c9) 
            (connected c28 c20) (connected c29 c99) (connected c32 c46) 
            (connected c33 c41) (connected c35 c56) (connected c36 c21) 
            (connected c38 c31) (connected c38 c90) (connected c39 c27) 
            (connected c39 c83) (connected c40 c42) (connected c40 c59) 
            (connected c41 c79) (connected c42 c29) (connected c42 c78) 
            (connected c42 c94) (connected c43 c15) (connected c43 c17) 
            (connected c43 c47) (connected c44 c38) (connected c44 c96) 
            (connected c45 c75) (connected c46 c81) (connected c47 c1) 
            (connected c47 c72) (connected c48 c38) (connected c48 c87) 
            (connected c49 c67) (connected c49 c86) (connected c50 c23) 
            (connected c50 c60) (connected c51 c64) (connected c52 c73) 
            (connected c53 c21) (connected c53 c25) (connected c53 c38) 
            (connected c53 c47) (connected c53 c88) (connected c54 c9) 
            (connected c55 c11) (connected c55 c24) (connected c57 c1) 
            (connected c58 c4) (connected c59 c18) (connected c59 c61) 
            (connected c59 c64) (connected c60 c53) (connected c61 c86) 
            (connected c62 c69) (connected c63 c41) (connected c63 c62) 
            (connected c65 c68) (connected c65 c82) (connected c66 c16) 
            (connected c66 c34) (connected c67 c30) (connected c67 c43) 
            (connected c69 c68) (connected c70 c7) (connected c70 c37) 
            (connected c70 c64) (connected c71 c7) (connected c71 c58) 
            (connected c71 c91) (connected c72 c67) (connected c74 c11) 
            (connected c77 c13) (connected c80 c32) (connected c80 c69) 
            (connected c81 c6) (connected c82 c74) (connected c83 c56) 
            (connected c84 c45) (connected c85 c2) (connected c85 c83) 
            (connected c88 c89) (connected c89 c95) (connected c93 c17) 
            (connected c93 c82) (connected c96 c58) (connected c96 c61) 
            (connected c96 c67) (connected c97 c98) (connected c99 c82) 
            (connected c100 c2) (hotel-in h1 c1) (hotel-in h2 c2) (hotel-in h3 c3) 
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
            (hotel-in h70 c70) (hotel-in h71 c71) (hotel-in h72 c72) 
            (hotel-in h73 c73) (hotel-in h74 c74) (hotel-in h75 c75) 
            (hotel-in h76 c76) (hotel-in h77 c77) (hotel-in h78 c78) 
            (hotel-in h79 c79) (hotel-in h80 c80) (hotel-in h81 c81) 
            (hotel-in h82 c82) (hotel-in h83 c83) (hotel-in h84 c84) 
            (hotel-in h85 c85) (hotel-in h86 c86) (hotel-in h87 c87) 
            (hotel-in h88 c88) (hotel-in h89 c89) (hotel-in h90 c90) 
            (hotel-in h91 c91) (hotel-in h92 c92) (hotel-in h93 c93) 
            (hotel-in h94 c94) (hotel-in h95 c95) (hotel-in h96 c96) 
            (hotel-in h97 c97) (hotel-in h98 c98) (hotel-in h99 c99) 
            (hotel-in h100 c100) (not-visited c1) (not-visited c2) (not-visited c3) 
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
            (not-visited c70) (not-visited c71) (not-visited c72) 
            (not-visited c73) (not-visited c74) (not-visited c75) 
            (not-visited c76) (not-visited c77) (not-visited c78) 
            (not-visited c79) (not-visited c80) (not-visited c81) 
            (not-visited c82) (not-visited c83) (not-visited c84) 
            (not-visited c85) (not-visited c86) (not-visited c87) 
            (not-visited c88) (not-visited c89) (not-visited c90) 
            (not-visited c91) (not-visited c92) (not-visited c93) 
            (not-visited c94) (not-visited c95) (not-visited c96) 
            (not-visited c97) (not-visited c98) (not-visited c99) 
            (not-visited c100) (= (price c3 c11) 47) (= (price c3 c81) 87) (= (price c3 c83) 28) 
            (= (price c4 c91) 91) (= (price c5 c39) 50) (= (price c8 c70) 21) 
            (= (price c10 c25) 46) (= (price c10 c98) 13) (= (price c11 c76) 34) 
            (= (price c12 c21) 89) (= (price c13 c49) 38) (= (price c14 c93) 5) 
            (= (price c16 c59) 61) (= (price c17 c92) 47) (= (price c18 c26) 9) 
            (= (price c19 c80) 59) (= (price c20 c18) 47) (= (price c21 c84) 8) 
            (= (price c22 c25) 23) (= (price c22 c73) 7) (= (price c24 c39) 7) 
            (= (price c25 c41) 32) (= (price c27 c97) 29) (= (price c28 c9) 44) 
            (= (price c28 c20) 72) (= (price c29 c99) 40) (= (price c32 c46) 15) 
            (= (price c33 c41) 3) (= (price c35 c56) 22) (= (price c36 c21) 54) 
            (= (price c38 c31) 90) (= (price c38 c90) 68) (= (price c39 c27) 40) 
            (= (price c39 c83) 69) (= (price c40 c42) 10) (= (price c40 c59) 89) 
            (= (price c41 c79) 41) (= (price c42 c29) 8) (= (price c42 c78) 53) 
            (= (price c42 c94) 27) (= (price c43 c15) 96) (= (price c43 c17) 43) 
            (= (price c43 c47) 31) (= (price c44 c38) 56) (= (price c44 c96) 41) 
            (= (price c45 c75) 39) (= (price c46 c81) 66) (= (price c47 c1) 87) 
            (= (price c47 c72) 99) (= (price c48 c38) 88) (= (price c48 c87) 46) 
            (= (price c49 c67) 5) (= (price c49 c86) 72) (= (price c50 c23) 74) 
            (= (price c50 c60) 100) (= (price c51 c64) 95) (= (price c52 c73) 65) 
            (= (price c53 c21) 67) (= (price c53 c25) 97) (= (price c53 c38) 86) 
            (= (price c53 c47) 20) (= (price c53 c88) 86) (= (price c54 c9) 6) 
            (= (price c55 c11) 59) (= (price c55 c24) 6) (= (price c57 c1) 15) 
            (= (price c58 c4) 100) (= (price c59 c18) 47) (= (price c59 c61) 74) 
            (= (price c59 c64) 4) (= (price c60 c53) 73) (= (price c61 c86) 69) 
            (= (price c62 c69) 46) (= (price c63 c41) 3) (= (price c63 c62) 76) 
            (= (price c65 c68) 86) (= (price c65 c82) 41) (= (price c66 c16) 41) 
            (= (price c66 c34) 25) (= (price c67 c30) 91) (= (price c67 c43) 81) 
            (= (price c69 c68) 70) (= (price c70 c7) 95) (= (price c70 c37) 52) 
            (= (price c70 c64) 95) (= (price c71 c7) 47) (= (price c71 c58) 46) 
            (= (price c71 c91) 60) (= (price c72 c67) 13) (= (price c74 c11) 42) 
            (= (price c77 c13) 97) (= (price c80 c32) 32) (= (price c80 c69) 80) 
            (= (price c81 c6) 2) (= (price c82 c74) 42) (= (price c83 c56) 85) 
            (= (price c84 c45) 69) (= (price c85 c2) 41) (= (price c85 c83) 83) 
            (= (price c88 c89) 42) (= (price c89 c95) 97) (= (price c93 c17) 55) 
            (= (price c93 c82) 63) (= (price c96 c58) 94) (= (price c96 c61) 9) 
            (= (price c96 c67) 38) (= (price c97 c98) 32) (= (price c99 c82) 50) 
            (= (price c100 c2) 79) (= (price-hotel h1 c1) 56) (= (price-hotel h2 c2) 40) (= (price-hotel h3 c3) 59) 
            (= (price-hotel h4 c4) 25) (= (price-hotel h5 c5) 87) (= (price-hotel h6 c6) 62) 
            (= (price-hotel h7 c7) 71) (= (price-hotel h8 c8) 85) (= (price-hotel h9 c9) 59) 
            (= (price-hotel h10 c10) 82) (= (price-hotel h11 c11) 97) (= (price-hotel h12 c12) 100) 
            (= (price-hotel h13 c13) 79) (= (price-hotel h14 c14) 80) (= (price-hotel h15 c15) 31) 
            (= (price-hotel h16 c16) 32) (= (price-hotel h17 c17) 21) (= (price-hotel h18 c18) 68) 
            (= (price-hotel h19 c19) 100) (= (price-hotel h20 c20) 14) (= (price-hotel h21 c21) 50) 
            (= (price-hotel h22 c22) 94) (= (price-hotel h23 c23) 10) (= (price-hotel h24 c24) 57) 
            (= (price-hotel h25 c25) 56) (= (price-hotel h26 c26) 3) (= (price-hotel h27 c27) 65) 
            (= (price-hotel h28 c28) 93) (= (price-hotel h29 c29) 34) (= (price-hotel h30 c30) 66) 
            (= (price-hotel h31 c31) 23) (= (price-hotel h32 c32) 41) (= (price-hotel h33 c33) 58) 
            (= (price-hotel h34 c34) 33) (= (price-hotel h35 c35) 17) (= (price-hotel h36 c36) 44) 
            (= (price-hotel h37 c37) 94) (= (price-hotel h38 c38) 88) (= (price-hotel h39 c39) 80) 
            (= (price-hotel h40 c40) 52) (= (price-hotel h41 c41) 69) (= (price-hotel h42 c42) 76) 
            (= (price-hotel h43 c43) 4) (= (price-hotel h44 c44) 99) (= (price-hotel h45 c45) 55) 
            (= (price-hotel h46 c46) 86) (= (price-hotel h47 c47) 31) (= (price-hotel h48 c48) 75) 
            (= (price-hotel h49 c49) 53) (= (price-hotel h50 c50) 82) (= (price-hotel h51 c51) 40) 
            (= (price-hotel h52 c52) 55) (= (price-hotel h53 c53) 75) (= (price-hotel h54 c54) 49) 
            (= (price-hotel h55 c55) 11) (= (price-hotel h56 c56) 30) (= (price-hotel h57 c57) 4) 
            (= (price-hotel h58 c58) 75) (= (price-hotel h59 c59) 75) (= (price-hotel h60 c60) 89) 
            (= (price-hotel h61 c61) 93) (= (price-hotel h62 c62) 97) (= (price-hotel h63 c63) 30) 
            (= (price-hotel h64 c64) 50) (= (price-hotel h65 c65) 30) (= (price-hotel h66 c66) 98) 
            (= (price-hotel h67 c67) 45) (= (price-hotel h68 c68) 75) (= (price-hotel h69 c69) 85) 
            (= (price-hotel h70 c70) 24) (= (price-hotel h71 c71) 79) (= (price-hotel h72 c72) 6) 
            (= (price-hotel h73 c73) 99) (= (price-hotel h74 c74) 34) (= (price-hotel h75 c75) 56) 
            (= (price-hotel h76 c76) 5) (= (price-hotel h77 c77) 19) (= (price-hotel h78 c78) 86) 
            (= (price-hotel h79 c79) 31) (= (price-hotel h80 c80) 24) (= (price-hotel h81 c81) 68) 
            (= (price-hotel h82 c82) 71) (= (price-hotel h83 c83) 78) (= (price-hotel h84 c84) 94) 
            (= (price-hotel h85 c85) 71) (= (price-hotel h86 c86) 40) (= (price-hotel h87 c87) 76) 
            (= (price-hotel h88 c88) 74) (= (price-hotel h89 c89) 66) (= (price-hotel h90 c90) 50) 
            (= (price-hotel h91 c91) 15) (= (price-hotel h92 c92) 58) (= (price-hotel h93 c93) 46) 
            (= (price-hotel h94 c94) 44) (= (price-hotel h95 c95) 7) (= (price-hotel h96 c96) 27) 
            (= (price-hotel h97 c97) 41) (= (price-hotel h98 c98) 51) (= (price-hotel h99 c99) 54) 
            (= (price-hotel h100 c100) 78) (not-started) (= (min-days) 1) (= (max-days) 1) (= (spent-days) 0) (= (min-days-viatge) 50) (= (cost-travel) 0)(= (min-cost-travel) 100) (= (max-cost-travel) 10000 )
    )
    (:goal (and (>= (cost-travel) (min-cost-travel)) (<= (min-days-viatge) 0)))
    (:metric minimize (cost-travel))
)