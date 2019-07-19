; drone 4 removed
; added a launchpad perspective for each drone
; added the is-clear-perspective for the relevant perspectives in the initial state

; Anusha Mujumdar (AM): adding second (identical) base station

(define (problem asi-dur-problem-multibs)
  (:domain asi-dur-domain-multibs)
 
  (:objects 
	first-tower-launchpad s1-antenna-1 s1-antenna-2 s1-antenna-3 s1-antenna-4 s1-antenna-5 s1-antenna-6 - component 
  second-tower-launchpad s2-antenna-1 s2-antenna-2 s2-antenna-3 s2-antenna-4 s2-antenna-5 s2-antenna-6 - component 
  charging-dock-1 - component
	front above below left right front-below launch-pad-1 launch-pad-2 launch-pad-3 launch-pad-4 - perspective 
	drone1 drone2 drone3 - drone)

  (:init
    ;distance between sites

    (= (distance first-tower-launchpad second-tower-launchpad) 100)
    (= (distance second-tower-launchpad first-tower-launchpad) 100)
    (= (distance first-tower-launchpad charging-dock-1) 60)
    (= (distance second-tower-launchpad charging-dock-1) 60)
    (= (distance charging-dock-1 first-tower-launchpad) 60)
    (= (distance charging-dock-1 second-tower-launchpad) 60)

    ;charging-dock
    (is-perspective launch-pad-1 charging-dock-1)
    (is-perspective launch-pad-2 charging-dock-1)
    (is-perspective launch-pad-3 charging-dock-1)
    (is-perspective launch-pad-4 charging-dock-1)

    (is-charging-dock charging-dock-1 launch-pad-1)
    (is-charging-dock charging-dock-1 launch-pad-2)
    (is-charging-dock charging-dock-1 launch-pad-3)
    (is-charging-dock charging-dock-1 launch-pad-4)

    (is-clear-perspective launch-pad-1 charging-dock-1)
    (is-clear-perspective launch-pad-2 charging-dock-1)
    (is-clear-perspective launch-pad-3 charging-dock-1)
    (is-clear-perspective launch-pad-4 charging-dock-1)

    ; AM: Change launchpad (for charging) - place it between first and second towers
    ;; first site
    (is-perspective launch-pad-1 first-tower-launchpad)
    ; (is-perspective launch-pad-2 first-tower-launchpad)
    ; (is-perspective launch-pad-3 first-tower-launchpad)
    ; (is-perspective launch-pad-4 first-tower-launchpad)
    (not (is-clear-perspective launch-pad-1 first-tower-launchpad))
    (not (is-clear-perspective launch-pad-2 first-tower-launchpad))
    (not (is-clear-perspective launch-pad-3 first-tower-launchpad))
    (not (is-clear-perspective launch-pad-4 first-tower-launchpad))
    ;AM: distances to single launchpad - not associated with any of the towers
    (= (distance first-tower-launchpad s1-antenna-1) 29)
    (= (distance first-tower-launchpad s1-antenna-2) 29)
    (= (distance first-tower-launchpad s1-antenna-3) 30)
    (= (distance first-tower-launchpad s1-antenna-4) 30)
    (= (distance first-tower-launchpad s1-antenna-5) 29)
    (= (distance first-tower-launchpad s1-antenna-6) 29)

    (is-perspective front s1-antenna-1)
    (is-perspective above s1-antenna-1)
    (is-perspective below s1-antenna-1)
    (is-perspective left s1-antenna-1)
    (is-perspective right s1-antenna-1)
    (is-perspective front-below s1-antenna-1)
    (is-clear-perspective front s1-antenna-1)
    (is-clear-perspective above s1-antenna-1)
    (is-clear-perspective below s1-antenna-1)
    (is-clear-perspective left s1-antenna-1)
    (is-clear-perspective right s1-antenna-1)
    (is-clear-perspective front-below s1-antenna-1)
    (= (distance s1-antenna-1 first-tower-launchpad) 29)
    (= (distance s1-antenna-1 s1-antenna-2) 1)
    (= (distance s1-antenna-1 s1-antenna-3) 2)
    (= (distance s1-antenna-1 s1-antenna-4) 2)
    (= (distance s1-antenna-1 s1-antenna-5) 2)
    (= (distance s1-antenna-1 s1-antenna-6) 2)

    (is-perspective front s1-antenna-2)
    (is-perspective above s1-antenna-2)
    (is-perspective below s1-antenna-2)
    (is-perspective left s1-antenna-2)
    (is-perspective right s1-antenna-2)
    (is-perspective front-below s1-antenna-2)
    (is-clear-perspective front s1-antenna-2)
    (is-clear-perspective above s1-antenna-2)
    (is-clear-perspective below s1-antenna-2)
    (is-clear-perspective left s1-antenna-2)
    (is-clear-perspective right s1-antenna-2)
    (is-clear-perspective front-below s1-antenna-2)
    (= (distance s1-antenna-2 first-tower-launchpad) 29)
    (= (distance s1-antenna-2 s1-antenna-1) 1)
    (= (distance s1-antenna-2 s1-antenna-3) 2)
    (= (distance s1-antenna-2 s1-antenna-4) 2)
    (= (distance s1-antenna-2 s1-antenna-5) 2)
    (= (distance s1-antenna-2 s1-antenna-6) 2)

    (is-perspective front s1-antenna-3)
    (is-perspective above s1-antenna-3)
    (is-perspective below s1-antenna-3)
    (is-perspective left s1-antenna-3)
    (is-perspective right s1-antenna-3)
    (is-perspective front-below s1-antenna-3)
    (is-clear-perspective front s1-antenna-3)
    (is-clear-perspective above s1-antenna-3)
    (is-clear-perspective below s1-antenna-3)
    (is-clear-perspective left s1-antenna-3)
    (is-clear-perspective right s1-antenna-3)
    (is-clear-perspective front-below s1-antenna-3)
    (= (distance s1-antenna-3 first-tower-launchpad) 30)
    (= (distance s1-antenna-3 s1-antenna-1) 2)
    (= (distance s1-antenna-3 s1-antenna-2) 2)
    (= (distance s1-antenna-3 s1-antenna-4) 1)
    (= (distance s1-antenna-3 s1-antenna-5) 2)
    (= (distance s1-antenna-3 s1-antenna-6) 2)

    (is-perspective front s1-antenna-4)
    (is-perspective above s1-antenna-4)
    (is-perspective below s1-antenna-4)
    (is-perspective left s1-antenna-4)
    (is-perspective right s1-antenna-4)
    (is-perspective front-below s1-antenna-4)
    (is-clear-perspective front s1-antenna-4)
    (is-clear-perspective above s1-antenna-4)
    (is-clear-perspective below s1-antenna-4)
    (is-clear-perspective left s1-antenna-4)
    (is-clear-perspective right s1-antenna-4)
    (is-clear-perspective front-below s1-antenna-4)
    (= (distance s1-antenna-4 first-tower-launchpad) 30)
    (= (distance s1-antenna-4 s1-antenna-1) 2)
    (= (distance s1-antenna-4 s1-antenna-2) 2)
    (= (distance s1-antenna-4 s1-antenna-3) 1)
    (= (distance s1-antenna-4 s1-antenna-5) 2)
    (= (distance s1-antenna-4 s1-antenna-6) 2)

    (is-perspective front s1-antenna-5)
    (is-perspective above s1-antenna-5)
    (is-perspective below s1-antenna-5)
    (is-perspective left s1-antenna-5)
    (is-perspective right s1-antenna-5)
    (is-perspective front-below s1-antenna-5)
    (is-clear-perspective front s1-antenna-5)
    (is-clear-perspective above s1-antenna-5)
    (is-clear-perspective below s1-antenna-5)
    (is-clear-perspective left s1-antenna-5)
    (is-clear-perspective right s1-antenna-5)
    (is-clear-perspective front-below s1-antenna-5)
    (= (distance s1-antenna-5 first-tower-launchpad) 29)
    (= (distance s1-antenna-5 s1-antenna-1) 2)
    (= (distance s1-antenna-5 s1-antenna-2) 2)
    (= (distance s1-antenna-5 s1-antenna-3) 2)
    (= (distance s1-antenna-5 s1-antenna-4) 2)
    (= (distance s1-antenna-5 s1-antenna-6) 1)

    (is-perspective front s1-antenna-6)
    (is-perspective above s1-antenna-6)
    (is-perspective below s1-antenna-6)
    (is-perspective left s1-antenna-6)
    (is-perspective right s1-antenna-6)
    (is-perspective front-below s1-antenna-6)
    (is-clear-perspective front s1-antenna-6)
    (is-clear-perspective above s1-antenna-6)
    (is-clear-perspective below s1-antenna-6)
    (is-clear-perspective left s1-antenna-6)
    (is-clear-perspective right s1-antenna-6)
    (is-clear-perspective front-below s1-antenna-6)
    (= (distance s1-antenna-6 first-tower-launchpad) 29)
    (= (distance s1-antenna-6 s1-antenna-1) 2)
    (= (distance s1-antenna-6 s1-antenna-2) 2)
    (= (distance s1-antenna-6 s1-antenna-3) 2)
    (= (distance s1-antenna-6 s1-antenna-4) 2)
    (= (distance s1-antenna-6 s1-antenna-5) 1)
    ;;============
    ;; second site 

        ; AM: Change launchpad (for charging) - place it between first and second towers
    (is-perspective launch-pad-1 second-tower-launchpad)
    (is-perspective launch-pad-2 second-tower-launchpad)
    (is-perspective launch-pad-3 second-tower-launchpad)
    ;(is-perspective launch-pad-4 first-tower-launchpad)
    (is-clear-perspective launch-pad-1 second-tower-launchpad)
    (is-clear-perspective launch-pad-2 second-tower-launchpad)
    (is-clear-perspective launch-pad-3 second-tower-launchpad)
    (is-clear-perspective launch-pad-4 second-tower-launchpad)
    ;(not (is-clear-perspective launch-pad-4 first-tower-launchpad))
    ;AM: distances to single launchpad - not associated with any of the towers
    (= (distance second-tower-launchpad s2-antenna-1) 29)
    (= (distance second-tower-launchpad s2-antenna-2) 29)
    (= (distance second-tower-launchpad s2-antenna-3) 30)
    (= (distance second-tower-launchpad s2-antenna-4) 30)
    (= (distance second-tower-launchpad s2-antenna-5) 29)
    (= (distance second-tower-launchpad s2-antenna-6) 29)

    (is-perspective front s2-antenna-1)
    (is-perspective above s2-antenna-1)
    (is-perspective below s2-antenna-1)
    (is-perspective left s2-antenna-1)
    (is-perspective right s2-antenna-1)
    (is-perspective front-below s2-antenna-1)
    (is-clear-perspective front s2-antenna-1)
    (is-clear-perspective above s2-antenna-1)
    (is-clear-perspective below s2-antenna-1)
    (is-clear-perspective left s2-antenna-1)
    (is-clear-perspective right s2-antenna-1)
    (is-clear-perspective front-below s2-antenna-1)
    (= (distance s2-antenna-1 second-tower-launchpad) 29)
    (= (distance s2-antenna-1 s2-antenna-2) 1)
    (= (distance s2-antenna-1 s2-antenna-3) 2)
    (= (distance s2-antenna-1 s2-antenna-4) 2)
    (= (distance s2-antenna-1 s2-antenna-5) 2)
    (= (distance s2-antenna-1 s2-antenna-6) 2)

    (is-perspective front s2-antenna-2)
    (is-perspective above s2-antenna-2)
    (is-perspective below s2-antenna-2)
    (is-perspective left s2-antenna-2)
    (is-perspective right s2-antenna-2)
    (is-perspective front-below s2-antenna-2)
    (is-clear-perspective front s2-antenna-2)
    (is-clear-perspective above s2-antenna-2)
    (is-clear-perspective below s2-antenna-2)
    (is-clear-perspective left s2-antenna-2)
    (is-clear-perspective right s2-antenna-2)
    (is-clear-perspective front-below s2-antenna-2)
    (= (distance s2-antenna-2 second-tower-launchpad) 29)
    (= (distance s2-antenna-2 s2-antenna-1) 1)
    (= (distance s2-antenna-2 s2-antenna-3) 2)
    (= (distance s2-antenna-2 s2-antenna-4) 2)
    (= (distance s2-antenna-2 s2-antenna-5) 2)
    (= (distance s2-antenna-2 s2-antenna-6) 2)

    (is-perspective front s2-antenna-3)
    (is-perspective above s2-antenna-3)
    (is-perspective below s2-antenna-3)
    (is-perspective left s2-antenna-3)
    (is-perspective right s2-antenna-3)
    (is-perspective front-below s2-antenna-3)
    (is-clear-perspective front s2-antenna-3)
    (is-clear-perspective above s2-antenna-3)
    (is-clear-perspective below s2-antenna-3)
    (is-clear-perspective left s2-antenna-3)
    (is-clear-perspective right s2-antenna-3)
    (is-clear-perspective front-below s2-antenna-3)
    (= (distance s2-antenna-3 second-tower-launchpad) 30)
    (= (distance s2-antenna-3 s2-antenna-1) 2)
    (= (distance s2-antenna-3 s2-antenna-2) 2)
    (= (distance s2-antenna-3 s2-antenna-4) 1)
    (= (distance s2-antenna-3 s2-antenna-5) 2)
    (= (distance s2-antenna-3 s2-antenna-6) 2)

    (is-perspective front s2-antenna-4)
    (is-perspective above s2-antenna-4)
    (is-perspective below s2-antenna-4)
    (is-perspective left s2-antenna-4)
    (is-perspective right s2-antenna-4)
    (is-perspective front-below s2-antenna-4)
    (is-clear-perspective front s2-antenna-4)
    (is-clear-perspective above s2-antenna-4)
    (is-clear-perspective below s2-antenna-4)
    (is-clear-perspective left s2-antenna-4)
    (is-clear-perspective right s2-antenna-4)
    (is-clear-perspective front-below s2-antenna-4)
    (= (distance s2-antenna-4 second-tower-launchpad) 30)
    (= (distance s2-antenna-4 s2-antenna-1) 2)
    (= (distance s2-antenna-4 s2-antenna-2) 2)
    (= (distance s2-antenna-4 s2-antenna-3) 1)
    (= (distance s2-antenna-4 s2-antenna-5) 2)
    (= (distance s2-antenna-4 s2-antenna-6) 2)

    (is-perspective front s2-antenna-5)
    (is-perspective above s2-antenna-5)
    (is-perspective below s2-antenna-5)
    (is-perspective left s2-antenna-5)
    (is-perspective right s2-antenna-5)
    (is-perspective front-below s2-antenna-5)
    (is-clear-perspective front s2-antenna-5)
    (is-clear-perspective above s2-antenna-5)
    (is-clear-perspective below s2-antenna-5)
    (is-clear-perspective left s2-antenna-5)
    (is-clear-perspective right s2-antenna-5)
    (is-clear-perspective front-below s2-antenna-5)
    (= (distance s2-antenna-5 second-tower-launchpad) 29)
    (= (distance s2-antenna-5 s2-antenna-1) 2)
    (= (distance s2-antenna-5 s2-antenna-2) 2)
    (= (distance s2-antenna-5 s2-antenna-3) 2)
    (= (distance s2-antenna-5 s2-antenna-4) 2)
    (= (distance s2-antenna-5 s2-antenna-6) 1)

    (is-perspective front s2-antenna-6)
    (is-perspective above s2-antenna-6)
    (is-perspective below s2-antenna-6)
    (is-perspective left s2-antenna-6)
    (is-perspective right s2-antenna-6)
    (is-perspective front-below s2-antenna-6)
    (is-clear-perspective front s2-antenna-6)
    (is-clear-perspective above s2-antenna-6)
    (is-clear-perspective below s2-antenna-6)
    (is-clear-perspective left s2-antenna-6)
    (is-clear-perspective right s2-antenna-6)
    (is-clear-perspective front-below s2-antenna-6)
    (= (distance s2-antenna-6 second-tower-launchpad) 29)
    (= (distance s2-antenna-6 s2-antenna-1) 2)
    (= (distance s2-antenna-6 s2-antenna-2) 2)
    (= (distance s2-antenna-6 s2-antenna-3) 2)
    (= (distance s2-antenna-6 s2-antenna-4) 2)
    (= (distance s2-antenna-6 s2-antenna-5) 1)

    ;;==============

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

    (is-launch-pad launch-pad-1)
    (is-launch-pad launch-pad-2)
    (is-launch-pad launch-pad-3)
    ;(is-launch-pad launch-pad-4)

    (has-capability drone1 camera)
    (is-at drone1 first-tower-launchpad launch-pad-1)
    (= (charge-level drone1) 5)
    (= (max-charge-level drone1) 70)
    (= (velocity drone1) 5)

    (has-capability drone2 camera)
    (has-capability drone2 thermal-camera)
    (is-at drone2 first-tower-launchpad launch-pad-2)
    (= (charge-level drone2) 30)
    (= (max-charge-level drone2) 170)
    (= (velocity drone2) 1)

    (has-capability drone3 thermal-camera)
    (is-at drone3 first-tower-launchpad launch-pad-3)
    (= (charge-level drone3) 45)
    (= (max-charge-level drone3) 70)
    (= (velocity drone3) 2)

    ; (is-at drone4 first-tower-launchpad launch-pad-4)
    ; (= (charge-level drone4) 25)
    ; (= (max-charge-level drone4) 80)
    ; (= (velocity drone4) 2)
      
    (= (spare-batteries) 1)
  )

  (:goal (and
      (is-at drone1 second-tower-launchpad launch-pad-1)
      ; (is-at drone2 first-tower-launchpad launch-pad-2)
      ; (is-at drone3 first-tower-launchpad launch-pad-3)
      ; (is-at drone4 first-tower-launchpad launch-pad-4)
      
      ;(know image s1-antenna-1 left)
      ;(know image s1-antenna-2 left)
      ;(know image s1-antenna-3 left)
      ;(know image s1-antenna-4 left)
      ;(know image s1-antenna-5 left)

      ;(know thermal-image s1-antenna-1 left)
      ;(know thermal-image s1-antenna-2 left)
      ;(know thermal-image s1-antenna-3 left)
      ;(know thermal-image s1-antenna-4 left)
      ;(know thermal-image s1-antenna-5 left)
      ;(know thermal-image s1-antenna-6 left)

      ;scenario for inspecting multiple prespectives of the same component
      ; (know image s1-antenna-1 front)
      ; (know image s1-antenna-1 above)
      ; (know image s1-antenna-1 below)
      ; (know image s1-antenna-1 left)
      ; (know image s1-antenna-1 right)
      ; (know image s1-antenna-1 front-below)

      ; (know image s2-antenna-2 front)
      ; (know image s2-antenna-2 above)
      ; (know image s2-antenna-2 below)
      ; (know image s2-antenna-2 left)
      ; (know image s2-antenna-2 right)
      ; (know image s2-antenna-2 front-below)
  ))

  (:metric minimize (total-time))
)
 
