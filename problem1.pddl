(define (problem Problem1)
    (:domain Mario)
    (:objects
        coin1 coin2 coin3 - coin
        character - character
        panel - panel
        button1 button2 button3 - button
        l1 l2 l3 l4 l5 l6 l7 l8 - location
        f1 f2 f3 - floor
        lift1 - lift 
    )
    (:init
        (in l1 f1)
        (in l2 f2)
        (in l3 f3)
        (in l4 f1)
        (in l5 f2)
        (in l6 f3)
        (InLift l7)
        (InLift l8)
        (at character l1)
        (at coin1 l1)
        (at coin2 l2)
        (at coin3 l3)
        (at button1 l4)
        (at button2 l5)
        (at button3 l6)
        (at panel l7)
        (LiftOnFloor)
    )
    (:goal
        (and (at coin1 l2) (at coin2 l3) (at coin3 l1))
    )
)