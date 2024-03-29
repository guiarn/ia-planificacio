(define (domain travel-strips)
  (:requirements :strips :fluents)
  (:types city hotel)
  (:predicates (in ?x - city) (visited ?x - city) (not-visited ?x - city)
           (connected ?x - city ?y - city)
           (hotel-in ?hotel - hotel ?city - city)
           (not-started))
  (:functions (min-days) 
              (max-days)
              (spent-days)
              (min-days-viatge)
              (sum-interest)
              (interest ?x - city)
              (min-cost-travel)
              (max-cost-travel)
              (cost-travel)
              (price ?x - city ?y - city)
              (price-hotel ?h - hotel ?x - city))

  (:action start
    :parameters (?x - city)
    :precondition (not-started)
    :effect (and (in ?x) (not (not-started)) 
            (visited ?x) (not (not-visited ?x))
            (increase (sum-interest) (interest ?x))))

  (:action spend-night
    :parameters (?x - city ?h - hotel)
    :precondition (and (in ?x) (hotel-in ?h ?x) (< (spent-days) (max-days)) 
                  (<= (+ (cost-travel) (price-hotel ?h ?x)) (max-cost-travel)))
    :effect (and (in ?x) (increase (spent-days) 1) (decrease (min-days-viatge) 1)
            (increase (cost-travel) (price-hotel ?h ?x))))
     
  (:action go-along
    :parameters (?x - city ?y - city)
    :precondition (and (in ?x) (not-visited ?y)
                  (connected ?x ?y) (>= (spent-days) (min-days))
                  (<= (+ (cost-travel) (price ?x ?y)) (max-cost-travel)))
    :effect (and (not (in ?x)) (in ?y) (visited ?y) (not (not-visited ?y)) 
            (decrease (spent-days) (spent-days))
            (increase (sum-interest) (interest ?y))
            (increase (cost-travel) (price ?x ?y))))

  (:action go-against
    :parameters (?x - city ?y - city)
    :precondition (and (in ?x) (not-visited ?y)
                  (connected ?y ?x) (>= (spent-days) (min-days))
                  (<= (+ (cost-travel) (price ?y ?x)) (max-cost-travel)))
    :effect (and (not (in ?x)) (in ?y) (visited ?y) (not (not-visited ?y)) 
            (decrease (spent-days) (spent-days))
            (increase (sum-interest) (interest ?y))
            (increase (cost-travel) (price ?y ?x))))
            
 )
