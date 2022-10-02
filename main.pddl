(define (domain Mario)
    (:requirements :strips :adl)
    (:types
        coin character panel button - object 
        location - place
        floor lift - room
    )
    (:predicates
        (at ?x - object ?loc - location)
        (in ?loc - location ?r - room)
        (HaveCoin)
        (LiftOnFloor)
        (WeHave ?c - coin)
        (InLift ?loc - location)
    )
    
    (:action Go
        :parameters(?x - location ?y - location ?r - room)
        :precondition(and (at character ?x) (not (= ?x ?y)) (in ?x ?r) (in ?y ?r))
        :effect(and (not(at character ?x)) (at character ?y))
    )
    
    (:action EnterLift
        :parameters(?x - location ?y - location ?r - floor)
        :precondition(and (at character ?x) (not (= ?x ?y)) (in ?x ?r) (InLift ?y)(LiftOnFloor))
        :effect(and (not(at character ?x)) (at character ?y))
    )
    
    (:action ChangeFloor
        :parameters(?current - location ?p - panel ?goal - location)
        :precondition(and (not (= ?current ?goal)) (at ?p ?current)(InLift ?current)(at character ?current)(not(InLift ?goal)))
        :effect(and (not(at character ?current))(at character ?goal)(LiftOnFloor))
    )
    
    (:action PressButton
        :parameters(?s - button ?x - location)
        :precondition(and (not(LiftOnFloor)) (at character ?x) (at ?s ?x))
        :effect(and (LiftOnFloor))
    )
    
     (:action Pick
        :parameters(?c - coin ?x - location)
        :precondition(and (not(HaveCoin)) (at ?c ?x) (at character ?x))
        :effect(and (HaveCoin) (WeHave ?c))
    )
     (:action Put
        :parameters(?c - coin ?x - location)
        :precondition(and (HaveCoin) (WeHave ?c) (at character ?x))
        :effect(and (not(HaveCoin)) (at ?c ?x) (not(WeHave ?c)))
    )
)