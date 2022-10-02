(define (problem Problem1)
    (:domain Mario)
    (:objects
        coin1 coin2 coin3 - coin
        character - character
        panel - panel
        button1 button2 - button
        l1 l2 l3 l4 l5 l6 - location
        f1 f2  - floor
        lift1 - lift 
    )
    (:init
        (in l1 f1)
        (in l2 f2)
        (in l3 f1)
        (in l4 f2)
        (InLift l5)
        (InLift l6)
        (at character l1)
        (at coin1 l1)
        (at coin2 l1)
        (at coin3 l1)
        (at button1 l3)
        (at button2 l4)
        (at panel l5)
    )
    (:goal
        (and (at coin1 l2) (at coin2 l4) (at coin1 l6))
    )
)