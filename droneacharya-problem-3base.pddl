; added a launchpad perspective for each drone
; added the is-clear-perspective for the relevant perspectives in the initial state



(define (problem asi-dur-problem-fullswap)
  (:domain asi-dur-domain-fullswap)
 
  (:objects 
	s1-tower-launchpad s1-antenna-1 s1-antenna-2 s1-antenna-3 s1-antenna-4 s1-antenna-5 s1-antenna-6 - component 
    s2-tower-launchpad s2-antenna-1 s2-antenna-2 s2-antenna-3 s2-antenna-4 s2-antenna-5 s2-antenna-6 - component 
    s3-tower-launchpad s3-antenna-1 s3-antenna-2 s3-antenna-3 s3-antenna-4 s3-antenna-5 s3-antenna-6 - component 
    charging-dock-1 charging-dock-2 - component 
    front above below left right front-below launch-pad dock radiation-pattern dynamic-inspection360 - perspective 
	drone1 drone2 - drone
	battery1d battery2d battery1s battery2s - battery 
    ;drone3 drone4 - drone
    ;battery2d battery3d battery2s battery3s - battery
  )

  (:init

    ;distance between sites

    (= (distance s1-tower-launchpad s2-tower-launchpad) 100)
    (= (distance s2-tower-launchpad s1-tower-launchpad) 100)

    (= (distance s1-tower-launchpad s3-tower-launchpad) 120)
    (= (distance s3-tower-launchpad s1-tower-launchpad) 120)

    (= (distance s2-tower-launchpad s3-tower-launchpad) 90)
    (= (distance s3-tower-launchpad s2-tower-launchpad) 90)

    (= (distance s1-tower-launchpad charging-dock-1) 60)
    (= (distance s2-tower-launchpad charging-dock-1) 60)
    (= (distance charging-dock-1 s1-tower-launchpad) 60)
    (= (distance charging-dock-1 s2-tower-launchpad) 60)

    (= (distance s1-tower-launchpad charging-dock-2) 150)
    (= (distance s2-tower-launchpad charging-dock-2) 80)
    (= (distance charging-dock-2 s1-tower-launchpad) 150)
    (= (distance charging-dock-2 s2-tower-launchpad) 80)

    (= (distance s3-tower-launchpad charging-dock-1) 80)
    (= (distance s3-tower-launchpad charging-dock-2) 40)
    (= (distance charging-dock-1 s3-tower-launchpad) 80)
    (= (distance charging-dock-2 s3-tower-launchpad) 40)

    (= (distance charging-dock-2 charging-dock-1) 110)
    (= (distance charging-dock-1 charging-dock-2) 110)


    ;connected-components between sites

    (connected-component s1-tower-launchpad s2-tower-launchpad)
    (connected-component s2-tower-launchpad s1-tower-launchpad)

    (connected-component s1-tower-launchpad s3-tower-launchpad)
    (connected-component s3-tower-launchpad s1-tower-launchpad)

    (connected-component s2-tower-launchpad s3-tower-launchpad)
    (connected-component s3-tower-launchpad s2-tower-launchpad)

    (connected-component s1-tower-launchpad charging-dock-1)
    (connected-component s2-tower-launchpad charging-dock-1)
    (connected-component charging-dock-1 s1-tower-launchpad)
    (connected-component charging-dock-1 s2-tower-launchpad)

    (connected-component s1-tower-launchpad charging-dock-2)
    (connected-component s2-tower-launchpad charging-dock-2)
    (connected-component charging-dock-2 s1-tower-launchpad)
    (connected-component charging-dock-2 s2-tower-launchpad)

    (connected-component s3-tower-launchpad charging-dock-1)
    (connected-component s3-tower-launchpad charging-dock-2)
    (connected-component charging-dock-1 s3-tower-launchpad)
    (connected-component charging-dock-2 s3-tower-launchpad)

    (connected-component charging-dock-2 charging-dock-1)
    (connected-component charging-dock-1 charging-dock-2)


    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;1st charging-dock

    (is-perspective launch-pad charging-dock-1)
    (is-charging-dock charging-dock-1 launch-pad)

    ;2nd charging-dock

    (is-perspective launch-pad charging-dock-2)
    (is-charging-dock charging-dock-2 launch-pad)


    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;first site

    (is-perspective launch-pad s1-tower-launchpad)
    (= (distance s1-tower-launchpad s1-antenna-1) 29)
    (= (distance s1-tower-launchpad s1-antenna-2) 29)
    (= (distance s1-tower-launchpad s1-antenna-3) 30)
    (= (distance s1-tower-launchpad s1-antenna-4) 30)
    (= (distance s1-tower-launchpad s1-antenna-5) 29)
    (= (distance s1-tower-launchpad s1-antenna-6) 29)

    (is-perspective dynamic-inspection360 s1-antenna-1)
    (is-perspective radiation-pattern s1-antenna-1)
    (is-perspective dock s1-antenna-1)
    (is-perspective front s1-antenna-1)
    (is-perspective above s1-antenna-1)
    (is-perspective below s1-antenna-1)
    (is-perspective left s1-antenna-1)
    (is-perspective right s1-antenna-1)
    (is-perspective front-below s1-antenna-1)
    (is-clear-perspective dynamic-inspection360 s1-antenna-1)
    (is-clear-perspective radiation-pattern s1-antenna-1)
    (is-clear-perspective front s1-antenna-1)
    (is-clear-perspective above s1-antenna-1)
    (is-clear-perspective below s1-antenna-1)
    (is-clear-perspective left s1-antenna-1)
    (is-clear-perspective right s1-antenna-1)
    (is-clear-perspective front-below s1-antenna-1)
    (= (distance s1-antenna-1 s1-tower-launchpad) 29)
    (= (distance s1-antenna-1 s1-antenna-2) 1)
    (= (distance s1-antenna-1 s1-antenna-3) 2)
    (= (distance s1-antenna-1 s1-antenna-4) 2)
    (= (distance s1-antenna-1 s1-antenna-5) 2)
    (= (distance s1-antenna-1 s1-antenna-6) 2)

    (is-perspective dynamic-inspection360 s1-antenna-2)
    (is-perspective radiation-pattern s1-antenna-2)
    (is-perspective dock s1-antenna-2)    
    (is-perspective front s1-antenna-2)
    (is-perspective above s1-antenna-2)
    (is-perspective below s1-antenna-2)
    (is-perspective left s1-antenna-2)
    (is-perspective right s1-antenna-2)
    (is-perspective front-below s1-antenna-2)
    (is-clear-perspective dynamic-inspection360 s1-antenna-2)
    (is-clear-perspective radiation-pattern s1-antenna-2)
    (is-clear-perspective front s1-antenna-2)
    (is-clear-perspective above s1-antenna-2)
    (is-clear-perspective below s1-antenna-2)
    (is-clear-perspective left s1-antenna-2)
    (is-clear-perspective right s1-antenna-2)
    (is-clear-perspective front-below s1-antenna-2)
    (= (distance s1-antenna-2 s1-tower-launchpad) 29)
    (= (distance s1-antenna-2 s1-antenna-1) 1)
    (= (distance s1-antenna-2 s1-antenna-3) 2)
    (= (distance s1-antenna-2 s1-antenna-4) 2)
    (= (distance s1-antenna-2 s1-antenna-5) 2)
    (= (distance s1-antenna-2 s1-antenna-6) 2)

    (is-perspective dynamic-inspection360 s1-antenna-3)
    (is-perspective radiation-pattern s1-antenna-3)
    (is-perspective dock s1-antenna-3)
    (is-perspective front s1-antenna-3)
    (is-perspective above s1-antenna-3)
    (is-perspective below s1-antenna-3)
    (is-perspective left s1-antenna-3)
    (is-perspective right s1-antenna-3)
    (is-perspective front-below s1-antenna-3)
    (is-clear-perspective dynamic-inspection360 s1-antenna-3)
    (is-clear-perspective radiation-pattern s1-antenna-3)
    (is-clear-perspective front s1-antenna-3)
    (is-clear-perspective above s1-antenna-3)
    (is-clear-perspective below s1-antenna-3)
    (is-clear-perspective left s1-antenna-3)
    (is-clear-perspective right s1-antenna-3)
    (is-clear-perspective front-below s1-antenna-3)
    (= (distance s1-antenna-3 s1-tower-launchpad) 30)
    (= (distance s1-antenna-3 s1-antenna-1) 2)
    (= (distance s1-antenna-3 s1-antenna-2) 2)
    (= (distance s1-antenna-3 s1-antenna-4) 1)
    (= (distance s1-antenna-3 s1-antenna-5) 2)
    (= (distance s1-antenna-3 s1-antenna-6) 2)

    (is-perspective dynamic-inspection360 s1-antenna-4)
    (is-perspective radiation-pattern s1-antenna-4)
    (is-perspective dock s1-antenna-4)
    (is-perspective front s1-antenna-4)
    (is-perspective above s1-antenna-4)
    (is-perspective below s1-antenna-4)
    (is-perspective left s1-antenna-4)
    (is-perspective right s1-antenna-4)
    (is-perspective front-below s1-antenna-4)
    (is-clear-perspective dynamic-inspection360 s1-antenna-4)
    (is-clear-perspective radiation-pattern s1-antenna-4)
    (is-clear-perspective front s1-antenna-4)
    (is-clear-perspective above s1-antenna-4)
    (is-clear-perspective below s1-antenna-4)
    (is-clear-perspective left s1-antenna-4)
    (is-clear-perspective right s1-antenna-4)
    (is-clear-perspective front-below s1-antenna-4)
    (= (distance s1-antenna-4 s1-tower-launchpad) 30)
    (= (distance s1-antenna-4 s1-antenna-1) 2)
    (= (distance s1-antenna-4 s1-antenna-2) 2)
    (= (distance s1-antenna-4 s1-antenna-3) 1)
    (= (distance s1-antenna-4 s1-antenna-5) 2)
    (= (distance s1-antenna-4 s1-antenna-6) 2)

    (is-perspective dynamic-inspection360 s1-antenna-5)
    (is-perspective radiation-pattern s1-antenna-5)
    (is-perspective dock s1-antenna-5)
    (is-perspective front s1-antenna-5)
    (is-perspective above s1-antenna-5)
    (is-perspective below s1-antenna-5)
    (is-perspective left s1-antenna-5)
    (is-perspective right s1-antenna-5)
    (is-perspective front-below s1-antenna-5)
    (is-clear-perspective dynamic-inspection360 s1-antenna-5)
    (is-clear-perspective radiation-pattern s1-antenna-5)
    (is-clear-perspective front s1-antenna-5)
    (is-clear-perspective above s1-antenna-5)
    (is-clear-perspective below s1-antenna-5)
    (is-clear-perspective left s1-antenna-5)
    (is-clear-perspective right s1-antenna-5)
    (is-clear-perspective front-below s1-antenna-5)
    (= (distance s1-antenna-5 s1-tower-launchpad) 29)
    (= (distance s1-antenna-5 s1-antenna-1) 2)
    (= (distance s1-antenna-5 s1-antenna-2) 2)
    (= (distance s1-antenna-5 s1-antenna-3) 2)
    (= (distance s1-antenna-5 s1-antenna-4) 2)
    (= (distance s1-antenna-5 s1-antenna-6) 1)

    (is-perspective dynamic-inspection360 s1-antenna-6)
    (is-perspective radiation-pattern s1-antenna-6)
    (is-perspective dock s1-antenna-6)
    (is-perspective front s1-antenna-6)
    (is-perspective above s1-antenna-6)
    (is-perspective below s1-antenna-6)
    (is-perspective left s1-antenna-6)
    (is-perspective right s1-antenna-6)
    (is-perspective front-below s1-antenna-6)
    (is-clear-perspective dynamic-inspection360 s1-antenna-6)
    (is-clear-perspective radiation-pattern s1-antenna-6)
    (is-clear-perspective front s1-antenna-6)
    (is-clear-perspective above s1-antenna-6)
    (is-clear-perspective below s1-antenna-6)
    (is-clear-perspective left s1-antenna-6)
    (is-clear-perspective right s1-antenna-6)
    (is-clear-perspective front-below s1-antenna-6)
    (= (distance s1-antenna-6 s1-tower-launchpad) 29)
    (= (distance s1-antenna-6 s1-antenna-1) 2)
    (= (distance s1-antenna-6 s1-antenna-2) 2)
    (= (distance s1-antenna-6 s1-antenna-3) 2)
    (= (distance s1-antenna-6 s1-antenna-4) 2)
    (= (distance s1-antenna-6 s1-antenna-5) 1)

    (connected-component s1-tower-launchpad s1-antenna-1)
    (connected-component s1-tower-launchpad s1-antenna-2)
    (connected-component s1-tower-launchpad s1-antenna-3)
    (connected-component s1-tower-launchpad s1-antenna-4)
    (connected-component s1-tower-launchpad s1-antenna-5)
    (connected-component s1-tower-launchpad s1-antenna-6)

    (connected-component s1-antenna-1 s1-tower-launchpad)
    (connected-component s1-antenna-1 s1-antenna-2)
    (connected-component s1-antenna-1 s1-antenna-3)
    (connected-component s1-antenna-1 s1-antenna-4)
    (connected-component s1-antenna-1 s1-antenna-5)
    (connected-component s1-antenna-1 s1-antenna-6)

    (connected-component s1-antenna-2 s1-tower-launchpad)
    (connected-component s1-antenna-2 s1-antenna-1)
    (connected-component s1-antenna-2 s1-antenna-3)
    (connected-component s1-antenna-2 s1-antenna-4)
    (connected-component s1-antenna-2 s1-antenna-5)
    (connected-component s1-antenna-2 s1-antenna-6)

    (connected-component s1-antenna-3 s1-tower-launchpad)
    (connected-component s1-antenna-3 s1-antenna-1)
    (connected-component s1-antenna-3 s1-antenna-2)
    (connected-component s1-antenna-3 s1-antenna-4)
    (connected-component s1-antenna-3 s1-antenna-5)
    (connected-component s1-antenna-3 s1-antenna-6)

    (connected-component s1-antenna-4 s1-tower-launchpad)
    (connected-component s1-antenna-4 s1-antenna-1)
    (connected-component s1-antenna-4 s1-antenna-2)
    (connected-component s1-antenna-4 s1-antenna-3)
    (connected-component s1-antenna-4 s1-antenna-5)
    (connected-component s1-antenna-4 s1-antenna-6)

    (connected-component s1-antenna-5 s1-tower-launchpad)
    (connected-component s1-antenna-5 s1-antenna-1)
    (connected-component s1-antenna-5 s1-antenna-2)
    (connected-component s1-antenna-5 s1-antenna-3)
    (connected-component s1-antenna-5 s1-antenna-4)
    (connected-component s1-antenna-5 s1-antenna-6)

    (connected-component s1-antenna-6 s1-tower-launchpad)
    (connected-component s1-antenna-6 s1-antenna-1)
    (connected-component s1-antenna-6 s1-antenna-2)
    (connected-component s1-antenna-6 s1-antenna-3)
    (connected-component s1-antenna-6 s1-antenna-4)
    (connected-component s1-antenna-6 s1-antenna-5)

    (= (max-dock s1-tower-launchpad) 0) 
    (= (max-dock s1-antenna-1) 3)
    (= (max-dock s1-antenna-2) 3) 
    (= (max-dock s1-antenna-3) 3) 
    (= (max-dock s1-antenna-4) 3) 
    (= (max-dock s1-antenna-5) 3) 
    (= (max-dock s1-antenna-6) 3)

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;second site

    (is-perspective launch-pad s2-tower-launchpad)
    (= (distance s2-tower-launchpad s2-antenna-1) 29)
    (= (distance s2-tower-launchpad s2-antenna-2) 29)
    (= (distance s2-tower-launchpad s2-antenna-3) 30)
    (= (distance s2-tower-launchpad s2-antenna-4) 30)
    (= (distance s2-tower-launchpad s2-antenna-5) 29)
    (= (distance s2-tower-launchpad s2-antenna-6) 29)

    (is-perspective dynamic-inspection360 s2-antenna-1)
    (is-perspective radiation-pattern s2-antenna-1)
    (is-perspective dock s2-antenna-1)
    (is-perspective front s2-antenna-1)
    (is-perspective above s2-antenna-1)
    (is-perspective below s2-antenna-1)
    (is-perspective left s2-antenna-1)
    (is-perspective right s2-antenna-1)
    (is-perspective front-below s2-antenna-1)
    (is-clear-perspective dynamic-inspection360 s2-antenna-1)
    (is-clear-perspective radiation-pattern s2-antenna-1)
    (is-clear-perspective front s2-antenna-1)
    (is-clear-perspective above s2-antenna-1)
    (is-clear-perspective below s2-antenna-1)
    (is-clear-perspective left s2-antenna-1)
    (is-clear-perspective right s2-antenna-1)
    (is-clear-perspective front-below s2-antenna-1)
    (= (distance s2-antenna-1 s2-tower-launchpad) 29)
    (= (distance s2-antenna-1 s2-antenna-2) 1)
    (= (distance s2-antenna-1 s2-antenna-3) 2)
    (= (distance s2-antenna-1 s2-antenna-4) 2)
    (= (distance s2-antenna-1 s2-antenna-5) 2)
    (= (distance s2-antenna-1 s2-antenna-6) 2)

    (is-perspective dynamic-inspection360 s2-antenna-2)
    (is-perspective radiation-pattern s2-antenna-2)
    (is-perspective dock s2-antenna-2)    
    (is-perspective front s2-antenna-2)
    (is-perspective above s2-antenna-2)
    (is-perspective below s2-antenna-2)
    (is-perspective left s2-antenna-2)
    (is-perspective right s2-antenna-2)
    (is-perspective front-below s2-antenna-2)
    (is-clear-perspective dynamic-inspection360 s2-antenna-2)
    (is-clear-perspective radiation-pattern s2-antenna-2)
    (is-clear-perspective front s2-antenna-2)
    (is-clear-perspective above s2-antenna-2)
    (is-clear-perspective below s2-antenna-2)
    (is-clear-perspective left s2-antenna-2)
    (is-clear-perspective right s2-antenna-2)
    (is-clear-perspective front-below s2-antenna-2)
    (= (distance s2-antenna-2 s2-tower-launchpad) 29)
    (= (distance s2-antenna-2 s2-antenna-1) 1)
    (= (distance s2-antenna-2 s2-antenna-3) 2)
    (= (distance s2-antenna-2 s2-antenna-4) 2)
    (= (distance s2-antenna-2 s2-antenna-5) 2)
    (= (distance s2-antenna-2 s2-antenna-6) 2)

    (is-perspective dynamic-inspection360 s2-antenna-3)
    (is-perspective radiation-pattern s2-antenna-3)
    (is-perspective dock s2-antenna-3)
    (is-perspective front s2-antenna-3)
    (is-perspective above s2-antenna-3)
    (is-perspective below s2-antenna-3)
    (is-perspective left s2-antenna-3)
    (is-perspective right s2-antenna-3)
    (is-perspective front-below s2-antenna-3)
    (is-clear-perspective dynamic-inspection360 s2-antenna-3)
    (is-clear-perspective radiation-pattern s2-antenna-3)
    (is-clear-perspective front s2-antenna-3)
    (is-clear-perspective above s2-antenna-3)
    (is-clear-perspective below s2-antenna-3)
    (is-clear-perspective left s2-antenna-3)
    (is-clear-perspective right s2-antenna-3)
    (is-clear-perspective front-below s2-antenna-3)
    (= (distance s2-antenna-3 s2-tower-launchpad) 30)
    (= (distance s2-antenna-3 s2-antenna-1) 2)
    (= (distance s2-antenna-3 s2-antenna-2) 2)
    (= (distance s2-antenna-3 s2-antenna-4) 1)
    (= (distance s2-antenna-3 s2-antenna-5) 2)
    (= (distance s2-antenna-3 s2-antenna-6) 2)

    (is-perspective dynamic-inspection360 s2-antenna-4)
    (is-perspective radiation-pattern s2-antenna-4)
    (is-perspective dock s2-antenna-4)
    (is-perspective front s2-antenna-4)
    (is-perspective above s2-antenna-4)
    (is-perspective below s2-antenna-4)
    (is-perspective left s2-antenna-4)
    (is-perspective right s2-antenna-4)
    (is-perspective front-below s2-antenna-4)
    (is-clear-perspective dynamic-inspection360 s2-antenna-4)
    (is-clear-perspective radiation-pattern s2-antenna-4)
    (is-clear-perspective front s2-antenna-4)
    (is-clear-perspective above s2-antenna-4)
    (is-clear-perspective below s2-antenna-4)
    (is-clear-perspective left s2-antenna-4)
    (is-clear-perspective right s2-antenna-4)
    (is-clear-perspective front-below s2-antenna-4)
    (= (distance s2-antenna-4 s2-tower-launchpad) 30)
    (= (distance s2-antenna-4 s2-antenna-1) 2)
    (= (distance s2-antenna-4 s2-antenna-2) 2)
    (= (distance s2-antenna-4 s2-antenna-3) 1)
    (= (distance s2-antenna-4 s2-antenna-5) 2)
    (= (distance s2-antenna-4 s2-antenna-6) 2)

    (is-perspective dynamic-inspection360 s2-antenna-5)
    (is-perspective radiation-pattern s2-antenna-5)
    (is-perspective dock s2-antenna-5)
    (is-perspective front s2-antenna-5)
    (is-perspective above s2-antenna-5)
    (is-perspective below s2-antenna-5)
    (is-perspective left s2-antenna-5)
    (is-perspective right s2-antenna-5)
    (is-perspective front-below s2-antenna-5)
    (is-clear-perspective dynamic-inspection360 s2-antenna-5)
    (is-clear-perspective radiation-pattern s2-antenna-5)
    (is-clear-perspective front s2-antenna-5)
    (is-clear-perspective above s2-antenna-5)
    (is-clear-perspective below s2-antenna-5)
    (is-clear-perspective left s2-antenna-5)
    (is-clear-perspective right s2-antenna-5)
    (is-clear-perspective front-below s2-antenna-5)
    (= (distance s2-antenna-5 s2-tower-launchpad) 29)
    (= (distance s2-antenna-5 s2-antenna-1) 2)
    (= (distance s2-antenna-5 s2-antenna-2) 2)
    (= (distance s2-antenna-5 s2-antenna-3) 2)
    (= (distance s2-antenna-5 s2-antenna-4) 2)
    (= (distance s2-antenna-5 s2-antenna-6) 1)

    (is-perspective dynamic-inspection360 s2-antenna-6)
    (is-perspective radiation-pattern s2-antenna-6)
    (is-perspective dock s2-antenna-6)
    (is-perspective front s2-antenna-6)
    (is-perspective above s2-antenna-6)
    (is-perspective below s2-antenna-6)
    (is-perspective left s2-antenna-6)
    (is-perspective right s2-antenna-6)
    (is-perspective front-below s2-antenna-6)
    (is-clear-perspective dynamic-inspection360 s2-antenna-6)
    (is-clear-perspective radiation-pattern s2-antenna-6)
    (is-clear-perspective front s2-antenna-6)
    (is-clear-perspective above s2-antenna-6)
    (is-clear-perspective below s2-antenna-6)
    (is-clear-perspective left s2-antenna-6)
    (is-clear-perspective right s2-antenna-6)
    (is-clear-perspective front-below s2-antenna-6)
    (= (distance s2-antenna-6 s2-tower-launchpad) 29)
    (= (distance s2-antenna-6 s2-antenna-1) 2)
    (= (distance s2-antenna-6 s2-antenna-2) 2)
    (= (distance s2-antenna-6 s2-antenna-3) 2)
    (= (distance s2-antenna-6 s2-antenna-4) 2)
    (= (distance s2-antenna-6 s2-antenna-5) 1)

    (connected-component s2-tower-launchpad s2-antenna-1)
    (connected-component s2-tower-launchpad s2-antenna-2)
    (connected-component s2-tower-launchpad s2-antenna-3)
    (connected-component s2-tower-launchpad s2-antenna-4)
    (connected-component s2-tower-launchpad s2-antenna-5)
    (connected-component s2-tower-launchpad s2-antenna-6)

    (connected-component s2-antenna-1 s2-tower-launchpad)
    (connected-component s2-antenna-1 s2-antenna-2)
    (connected-component s2-antenna-1 s2-antenna-3)
    (connected-component s2-antenna-1 s2-antenna-4)
    (connected-component s2-antenna-1 s2-antenna-5)
    (connected-component s2-antenna-1 s2-antenna-6)

    (connected-component s2-antenna-2 s2-tower-launchpad)
    (connected-component s2-antenna-2 s2-antenna-1)
    (connected-component s2-antenna-2 s2-antenna-3)
    (connected-component s2-antenna-2 s2-antenna-4)
    (connected-component s2-antenna-2 s2-antenna-5)
    (connected-component s2-antenna-2 s2-antenna-6)

    (connected-component s2-antenna-3 s2-tower-launchpad)
    (connected-component s2-antenna-3 s2-antenna-1)
    (connected-component s2-antenna-3 s2-antenna-2)
    (connected-component s2-antenna-3 s2-antenna-4)
    (connected-component s2-antenna-3 s2-antenna-5)
    (connected-component s2-antenna-3 s2-antenna-6)

    (connected-component s2-antenna-4 s2-tower-launchpad)
    (connected-component s2-antenna-4 s2-antenna-1)
    (connected-component s2-antenna-4 s2-antenna-2)
    (connected-component s2-antenna-4 s2-antenna-3)
    (connected-component s2-antenna-4 s2-antenna-5)
    (connected-component s2-antenna-4 s2-antenna-6)

    (connected-component s2-antenna-5 s2-tower-launchpad)
    (connected-component s2-antenna-5 s2-antenna-1)
    (connected-component s2-antenna-5 s2-antenna-2)
    (connected-component s2-antenna-5 s2-antenna-3)
    (connected-component s2-antenna-5 s2-antenna-4)
    (connected-component s2-antenna-5 s2-antenna-6)

    (connected-component s2-antenna-6 s2-tower-launchpad)
    (connected-component s2-antenna-6 s2-antenna-1)
    (connected-component s2-antenna-6 s2-antenna-2)
    (connected-component s2-antenna-6 s2-antenna-3)
    (connected-component s2-antenna-6 s2-antenna-4)
    (connected-component s2-antenna-6 s2-antenna-5)

    (= (max-dock s2-tower-launchpad) 3) 
    (= (max-dock s2-antenna-1) 3)
    (= (max-dock s2-antenna-2) 3) 
    (= (max-dock s2-antenna-3) 3) 
    (= (max-dock s2-antenna-4) 3) 
    (= (max-dock s2-antenna-5) 3) 
    (= (max-dock s2-antenna-6) 3)

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    ;third site

    (is-perspective launch-pad s3-tower-launchpad)
    (= (distance s3-tower-launchpad s3-antenna-1) 29)
    (= (distance s3-tower-launchpad s3-antenna-2) 29)
    (= (distance s3-tower-launchpad s3-antenna-3) 30)
    (= (distance s3-tower-launchpad s3-antenna-4) 30)
    (= (distance s3-tower-launchpad s3-antenna-5) 29)
    (= (distance s3-tower-launchpad s3-antenna-6) 29)

    (is-perspective dynamic-inspection360 s3-antenna-1)
    (is-perspective radiation-pattern s3-antenna-1)
    (is-perspective dock s3-antenna-1)
    (is-perspective front s3-antenna-1)
    (is-perspective above s3-antenna-1)
    (is-perspective below s3-antenna-1)
    (is-perspective left s3-antenna-1)
    (is-perspective right s3-antenna-1)
    (is-perspective front-below s3-antenna-1)
    (is-clear-perspective dynamic-inspection360 s3-antenna-1)
    (is-clear-perspective radiation-pattern s3-antenna-1)
    (is-clear-perspective front s3-antenna-1)
    (is-clear-perspective above s3-antenna-1)
    (is-clear-perspective below s3-antenna-1)
    (is-clear-perspective left s3-antenna-1)
    (is-clear-perspective right s3-antenna-1)
    (is-clear-perspective front-below s3-antenna-1)
    (= (distance s3-antenna-1 s3-tower-launchpad) 29)
    (= (distance s3-antenna-1 s3-antenna-2) 1)
    (= (distance s3-antenna-1 s3-antenna-3) 2)
    (= (distance s3-antenna-1 s3-antenna-4) 2)
    (= (distance s3-antenna-1 s3-antenna-5) 2)
    (= (distance s3-antenna-1 s3-antenna-6) 2)

    (is-perspective dynamic-inspection360 s3-antenna-2)
    (is-perspective radiation-pattern s3-antenna-2)
    (is-perspective dock s3-antenna-2)    
    (is-perspective front s3-antenna-2)
    (is-perspective above s3-antenna-2)
    (is-perspective below s3-antenna-2)
    (is-perspective left s3-antenna-2)
    (is-perspective right s3-antenna-2)
    (is-perspective front-below s3-antenna-2)
    (is-clear-perspective dynamic-inspection360 s3-antenna-2)
    (is-clear-perspective radiation-pattern s3-antenna-2)
    (is-clear-perspective front s3-antenna-2)
    (is-clear-perspective above s3-antenna-2)
    (is-clear-perspective below s3-antenna-2)
    (is-clear-perspective left s3-antenna-2)
    (is-clear-perspective right s3-antenna-2)
    (is-clear-perspective front-below s3-antenna-2)
    (= (distance s3-antenna-2 s3-tower-launchpad) 29)
    (= (distance s3-antenna-2 s3-antenna-1) 1)
    (= (distance s3-antenna-2 s3-antenna-3) 2)
    (= (distance s3-antenna-2 s3-antenna-4) 2)
    (= (distance s3-antenna-2 s3-antenna-5) 2)
    (= (distance s3-antenna-2 s3-antenna-6) 2)

    (is-perspective dynamic-inspection360 s3-antenna-3)
    (is-perspective radiation-pattern s3-antenna-3)
    (is-perspective dock s3-antenna-3)
    (is-perspective front s3-antenna-3)
    (is-perspective above s3-antenna-3)
    (is-perspective below s3-antenna-3)
    (is-perspective left s3-antenna-3)
    (is-perspective right s3-antenna-3)
    (is-perspective front-below s3-antenna-3)
    (is-clear-perspective dynamic-inspection360 s3-antenna-3)
    (is-clear-perspective radiation-pattern s3-antenna-3)
    (is-clear-perspective front s3-antenna-3)
    (is-clear-perspective above s3-antenna-3)
    (is-clear-perspective below s3-antenna-3)
    (is-clear-perspective left s3-antenna-3)
    (is-clear-perspective right s3-antenna-3)
    (is-clear-perspective front-below s3-antenna-3)
    (= (distance s3-antenna-3 s3-tower-launchpad) 30)
    (= (distance s3-antenna-3 s3-antenna-1) 2)
    (= (distance s3-antenna-3 s3-antenna-2) 2)
    (= (distance s3-antenna-3 s3-antenna-4) 1)
    (= (distance s3-antenna-3 s3-antenna-5) 2)
    (= (distance s3-antenna-3 s3-antenna-6) 2)

    (is-perspective dynamic-inspection360 s3-antenna-4)
    (is-perspective radiation-pattern s3-antenna-4)
    (is-perspective dock s3-antenna-4)
    (is-perspective front s3-antenna-4)
    (is-perspective above s3-antenna-4)
    (is-perspective below s3-antenna-4)
    (is-perspective left s3-antenna-4)
    (is-perspective right s3-antenna-4)
    (is-perspective front-below s3-antenna-4)
    (is-clear-perspective dynamic-inspection360 s3-antenna-4)
    (is-clear-perspective radiation-pattern s3-antenna-4)
    (is-clear-perspective front s3-antenna-4)
    (is-clear-perspective above s3-antenna-4)
    (is-clear-perspective below s3-antenna-4)
    (is-clear-perspective left s3-antenna-4)
    (is-clear-perspective right s3-antenna-4)
    (is-clear-perspective front-below s3-antenna-4)
    (= (distance s3-antenna-4 s3-tower-launchpad) 30)
    (= (distance s3-antenna-4 s3-antenna-1) 2)
    (= (distance s3-antenna-4 s3-antenna-2) 2)
    (= (distance s3-antenna-4 s3-antenna-3) 1)
    (= (distance s3-antenna-4 s3-antenna-5) 2)
    (= (distance s3-antenna-4 s3-antenna-6) 2)

    (is-perspective dynamic-inspection360 s3-antenna-5)
    (is-perspective radiation-pattern s3-antenna-5)
    (is-perspective dock s3-antenna-5)
    (is-perspective front s3-antenna-5)
    (is-perspective above s3-antenna-5)
    (is-perspective below s3-antenna-5)
    (is-perspective left s3-antenna-5)
    (is-perspective right s3-antenna-5)
    (is-perspective front-below s3-antenna-5)
    (is-clear-perspective dynamic-inspection360 s3-antenna-5)
    (is-clear-perspective radiation-pattern s3-antenna-5)
    (is-clear-perspective front s3-antenna-5)
    (is-clear-perspective above s3-antenna-5)
    (is-clear-perspective below s3-antenna-5)
    (is-clear-perspective left s3-antenna-5)
    (is-clear-perspective right s3-antenna-5)
    (is-clear-perspective front-below s3-antenna-5)
    (= (distance s3-antenna-5 s3-tower-launchpad) 29)
    (= (distance s3-antenna-5 s3-antenna-1) 2)
    (= (distance s3-antenna-5 s3-antenna-2) 2)
    (= (distance s3-antenna-5 s3-antenna-3) 2)
    (= (distance s3-antenna-5 s3-antenna-4) 2)
    (= (distance s3-antenna-5 s3-antenna-6) 1)

    (is-perspective dynamic-inspection360 s3-antenna-6)
    (is-perspective radiation-pattern s3-antenna-6)
    (is-perspective dock s3-antenna-6)
    (is-perspective front s3-antenna-6)
    (is-perspective above s3-antenna-6)
    (is-perspective below s3-antenna-6)
    (is-perspective left s3-antenna-6)
    (is-perspective right s3-antenna-6)
    (is-perspective front-below s3-antenna-6)
    (is-clear-perspective dynamic-inspection360 s3-antenna-6)
    (is-clear-perspective radiation-pattern s3-antenna-6)
    (is-clear-perspective front s3-antenna-6)
    (is-clear-perspective above s3-antenna-6)
    (is-clear-perspective below s3-antenna-6)
    (is-clear-perspective left s3-antenna-6)
    (is-clear-perspective right s3-antenna-6)
    (is-clear-perspective front-below s3-antenna-6)
    (= (distance s3-antenna-6 s3-tower-launchpad) 29)
    (= (distance s3-antenna-6 s3-antenna-1) 2)
    (= (distance s3-antenna-6 s3-antenna-2) 2)
    (= (distance s3-antenna-6 s3-antenna-3) 2)
    (= (distance s3-antenna-6 s3-antenna-4) 2)
    (= (distance s3-antenna-6 s3-antenna-5) 1)

    (connected-component s3-tower-launchpad s3-antenna-1)
    (connected-component s3-tower-launchpad s3-antenna-2)
    (connected-component s3-tower-launchpad s3-antenna-3)
    (connected-component s3-tower-launchpad s3-antenna-4)
    (connected-component s3-tower-launchpad s3-antenna-5)
    (connected-component s3-tower-launchpad s3-antenna-6)

    (connected-component s3-antenna-1 s3-tower-launchpad)
    (connected-component s3-antenna-1 s3-antenna-2)
    (connected-component s3-antenna-1 s3-antenna-3)
    (connected-component s3-antenna-1 s3-antenna-4)
    (connected-component s3-antenna-1 s3-antenna-5)
    (connected-component s3-antenna-1 s3-antenna-6)

    (connected-component s3-antenna-2 s3-tower-launchpad)
    (connected-component s3-antenna-2 s3-antenna-1)
    (connected-component s3-antenna-2 s3-antenna-3)
    (connected-component s3-antenna-2 s3-antenna-4)
    (connected-component s3-antenna-2 s3-antenna-5)
    (connected-component s3-antenna-2 s3-antenna-6)

    (connected-component s3-antenna-3 s3-tower-launchpad)
    (connected-component s3-antenna-3 s3-antenna-1)
    (connected-component s3-antenna-3 s3-antenna-2)
    (connected-component s3-antenna-3 s3-antenna-4)
    (connected-component s3-antenna-3 s3-antenna-5)
    (connected-component s3-antenna-3 s3-antenna-6)

    (connected-component s3-antenna-4 s3-tower-launchpad)
    (connected-component s3-antenna-4 s3-antenna-1)
    (connected-component s3-antenna-4 s3-antenna-2)
    (connected-component s3-antenna-4 s3-antenna-3)
    (connected-component s3-antenna-4 s3-antenna-5)
    (connected-component s3-antenna-4 s3-antenna-6)

    (connected-component s3-antenna-5 s3-tower-launchpad)
    (connected-component s3-antenna-5 s3-antenna-1)
    (connected-component s3-antenna-5 s3-antenna-2)
    (connected-component s3-antenna-5 s3-antenna-3)
    (connected-component s3-antenna-5 s3-antenna-4)
    (connected-component s3-antenna-5 s3-antenna-6)

    (connected-component s3-antenna-6 s3-tower-launchpad)
    (connected-component s3-antenna-6 s3-antenna-1)
    (connected-component s3-antenna-6 s3-antenna-2)
    (connected-component s3-antenna-6 s3-antenna-3)
    (connected-component s3-antenna-6 s3-antenna-4)
    (connected-component s3-antenna-6 s3-antenna-5)

    (= (max-dock s3-tower-launchpad) 3) 
    (= (max-dock s3-antenna-1) 3)
    (= (max-dock s3-antenna-2) 3) 
    (= (max-dock s3-antenna-3) 3) 
    (= (max-dock s3-antenna-4) 3) 
    (= (max-dock s3-antenna-5) 3) 
    (= (max-dock s3-antenna-6) 3)

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (is-available image front)
    (is-available thermal-image front)
    (is-available image above)
    (is-available thermal-image above)
    (is-available image below)
    (is-available thermal-image below)
    (is-available image left)
    (is-available thermal-image left)
    (is-available image right)
    (is-available thermal-image right)
    (is-available image front-below)
    (is-available thermal-image front-below)

    (is-available signal-measurement radiation-pattern)
    (is-available signal-measurement dynamic-inspection360)

    (is-launch-pad launch-pad)
    (is-dock launch-pad)
    (is-dock dock)

    (is-dynamic-inspection360 dynamic-inspection360)
    (is-radiation-pattern radiation-pattern)

    (different-drone drone1 drone2)
    (different-drone drone2 drone1)


    (has-capability drone1 camera)
    ;(has-capability drone1 signal-measurer)
    (is-at drone1 s1-tower-launchpad launch-pad)
    (has-battery drone1 battery1d)
    (= (max-charge-drone drone1) 200)
    (= (velocity drone1) 5)

    (has-capability drone2 camera)
    (has-capability drone2 thermal-camera)
    ;(has-capability drone2 signal-measurer)
    (is-at drone2 s1-tower-launchpad launch-pad)
    (has-battery drone2 battery2d)
    (= (max-charge-drone drone2) 200)
    (= (velocity drone2) 1)

    ;(has-capability drone3 thermal-camera)
    ;(has-capability drone3 signal-measurer)
    ;(is-at drone3 s1-tower-launchpad launch-pad)
    ;(has-battery drone3 battery3d)
    ;(= (max-charge-drone drone3) 200)
    ;(= (velocity drone3) 2)

    ;(has-capability drone4 thermal-camera)
    ;(has-capability drone4 signal-measurer)
    ;(is-at drone3 s1-tower-launchpad launch-pad)
    ;(has-battery drone4 battery4d)
    ;(= (max-charge-drone drone4) 200)
    ;(= (velocity drone4) 2)
      
    (= (battery-charge battery1d) 95)
    (= (battery-charge battery2d) 190)
    ;(= (battery-charge battery3d) 200)
    ;(= (battery-charge battery4d) 80)

    (= (battery-charge battery1s) 200)
    (= (battery-charge battery2s) 200)
    ;(= (battery-charge battery3s) 200)
    ;(= (battery-charge battery4s) 80)


    
    (is-free battery1s)
    (is-free battery2s)
    ;(is-free battery3s)
    ;(is-free battery4s)

    (= (max-charge-battery battery1d) 200)
    (= (max-charge-battery battery2d) 200)
    ;(= (max-charge-battery battery3d) 200)
    ;(= (max-charge-battery battery4d) 80)
    (= (max-charge-battery battery1s) 200)
    (= (max-charge-battery battery2s) 200)
    ;(= (max-charge-battery battery3s) 200)
    ;(= (max-charge-battery battery4s) 80)
  )

  (:goal (and
    (is-at drone1 s2-tower-launchpad launch-pad)
    (is-at drone2 s2-tower-launchpad launch-pad)
    ; (is-at drone3 s2-tower-launchpad launch-pad-1)
    ; (is-at drone4 s3-tower-launchpad launch-pad-1)
      
    (know image s1-antenna-1 front)
    (know image s1-antenna-2 left)
    (know image s1-antenna-3 left)
    (know image s1-antenna-4 left)
    (know image s1-antenna-5 left)

    (know thermal-image s1-antenna-1 front)
    (know thermal-image s1-antenna-2 left)
    (know thermal-image s1-antenna-3 left)
    (know thermal-image s1-antenna-4 left)
    (know thermal-image s1-antenna-5 left)
    (know thermal-image s1-antenna-6 left)

    ;scenario for inspecting multiple prespectives of the same component
    (know image s1-antenna-1 front)
    (know image s1-antenna-1 above)
    (know image s1-antenna-1 below)
    (know image s1-antenna-1 left)
    (know image s1-antenna-1 right)
    (know image s1-antenna-1 front-below)

    (know image s2-antenna-2 front)
    (know image s2-antenna-2 above)
    (know image s2-antenna-2 below)
    (know image s2-antenna-2 left)
    (know image s2-antenna-2 right)
    (know image s2-antenna-2 front-below)

    (know image s3-antenna-1 front)

    ;scenario for dual drone inventory-mapping signal measurement
    ;(know-simultaneous signal-measurement s1-antenna-1 radiation-pattern dynamic-inspection360)
    )
  )

  (:metric minimize (total-time))
)






















 
