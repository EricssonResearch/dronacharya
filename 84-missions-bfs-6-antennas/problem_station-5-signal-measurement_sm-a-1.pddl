(define (problem task)
(:domain droneacharya-domain)
(:objects
    s4-tower-launchpad s4-antenna-1 s4-antenna-2 s4-antenna-3 s4-antenna-4 s4-antenna-5 s4-antenna-6 s5-tower-launchpad s5-antenna-1 s5-antenna-2 s5-antenna-3 s5-antenna-4 s5-antenna-5 s5-antenna-6 s6-tower-launchpad s6-antenna-1 s6-antenna-2 s6-antenna-3 s6-antenna-4 s6-antenna-5 s6-antenna-6 - component
    drone6 drone1 - drone
)
(:init
    (has-capability drone1 camera)
    (has-capability drone1 signal-measurer)

    (is-at drone1 s4-tower-launchpad launch-pad)

    (not_busy_tactical drone1)

    (not_busy_strategic drone1)

    (has-configuration drone1 config1)

    (is-perspective launch-pad s4-tower-launchpad)
    (is-perspective dynamic-inspection360 s4-antenna-1)
    (is-perspective radiation-pattern s4-antenna-1)
    (is-perspective dock s4-antenna-1)
    (is-perspective front s4-antenna-1)
    (is-perspective above s4-antenna-1)
    (is-perspective below s4-antenna-1)
    (is-perspective left s4-antenna-1)
    (is-perspective right s4-antenna-1)
    (is-perspective front-below s4-antenna-1)
    (is-perspective dynamic-inspection360 s4-antenna-2)
    (is-perspective radiation-pattern s4-antenna-2)
    (is-perspective dock s4-antenna-2)
    (is-perspective front s4-antenna-2)
    (is-perspective above s4-antenna-2)
    (is-perspective below s4-antenna-2)
    (is-perspective left s4-antenna-2)
    (is-perspective right s4-antenna-2)
    (is-perspective front-below s4-antenna-2)
    (is-perspective dynamic-inspection360 s4-antenna-3)
    (is-perspective radiation-pattern s4-antenna-3)
    (is-perspective dock s4-antenna-3)
    (is-perspective front s4-antenna-3)
    (is-perspective above s4-antenna-3)
    (is-perspective below s4-antenna-3)
    (is-perspective left s4-antenna-3)
    (is-perspective right s4-antenna-3)
    (is-perspective front-below s4-antenna-3)
    (is-perspective dynamic-inspection360 s4-antenna-4)
    (is-perspective radiation-pattern s4-antenna-4)
    (is-perspective dock s4-antenna-4)
    (is-perspective front s4-antenna-4)
    (is-perspective above s4-antenna-4)
    (is-perspective below s4-antenna-4)
    (is-perspective left s4-antenna-4)
    (is-perspective right s4-antenna-4)
    (is-perspective front-below s4-antenna-4)
    (is-perspective dynamic-inspection360 s4-antenna-5)
    (is-perspective radiation-pattern s4-antenna-5)
    (is-perspective dock s4-antenna-5)
    (is-perspective front s4-antenna-5)
    (is-perspective above s4-antenna-5)
    (is-perspective below s4-antenna-5)
    (is-perspective left s4-antenna-5)
    (is-perspective right s4-antenna-5)
    (is-perspective front-below s4-antenna-5)
    (is-perspective dynamic-inspection360 s4-antenna-6)
    (is-perspective radiation-pattern s4-antenna-6)
    (is-perspective dock s4-antenna-6)
    (is-perspective front s4-antenna-6)
    (is-perspective above s4-antenna-6)
    (is-perspective below s4-antenna-6)
    (is-perspective left s4-antenna-6)
    (is-perspective right s4-antenna-6)
    (is-perspective front-below s4-antenna-6)
    (is-perspective launch-pad s5-tower-launchpad)
    (is-perspective dynamic-inspection360 s5-antenna-1)
    (is-perspective radiation-pattern s5-antenna-1)
    (is-perspective dock s5-antenna-1)
    (is-perspective front s5-antenna-1)
    (is-perspective above s5-antenna-1)
    (is-perspective below s5-antenna-1)
    (is-perspective left s5-antenna-1)
    (is-perspective right s5-antenna-1)
    (is-perspective front-below s5-antenna-1)
    (is-perspective dynamic-inspection360 s5-antenna-2)
    (is-perspective radiation-pattern s5-antenna-2)
    (is-perspective dock s5-antenna-2)
    (is-perspective front s5-antenna-2)
    (is-perspective above s5-antenna-2)
    (is-perspective below s5-antenna-2)
    (is-perspective left s5-antenna-2)
    (is-perspective right s5-antenna-2)
    (is-perspective front-below s5-antenna-2)
    (is-perspective dynamic-inspection360 s5-antenna-3)
    (is-perspective radiation-pattern s5-antenna-3)
    (is-perspective dock s5-antenna-3)
    (is-perspective front s5-antenna-3)
    (is-perspective above s5-antenna-3)
    (is-perspective below s5-antenna-3)
    (is-perspective left s5-antenna-3)
    (is-perspective right s5-antenna-3)
    (is-perspective front-below s5-antenna-3)
    (is-perspective dynamic-inspection360 s5-antenna-4)
    (is-perspective radiation-pattern s5-antenna-4)
    (is-perspective dock s5-antenna-4)
    (is-perspective front s5-antenna-4)
    (is-perspective above s5-antenna-4)
    (is-perspective below s5-antenna-4)
    (is-perspective left s5-antenna-4)
    (is-perspective right s5-antenna-4)
    (is-perspective front-below s5-antenna-4)
    (is-perspective dynamic-inspection360 s5-antenna-5)
    (is-perspective radiation-pattern s5-antenna-5)
    (is-perspective dock s5-antenna-5)
    (is-perspective front s5-antenna-5)
    (is-perspective above s5-antenna-5)
    (is-perspective below s5-antenna-5)
    (is-perspective left s5-antenna-5)
    (is-perspective right s5-antenna-5)
    (is-perspective front-below s5-antenna-5)
    (is-perspective dynamic-inspection360 s5-antenna-6)
    (is-perspective radiation-pattern s5-antenna-6)
    (is-perspective dock s5-antenna-6)
    (is-perspective front s5-antenna-6)
    (is-perspective above s5-antenna-6)
    (is-perspective below s5-antenna-6)
    (is-perspective left s5-antenna-6)
    (is-perspective right s5-antenna-6)
    (is-perspective front-below s5-antenna-6)
    (is-perspective launch-pad s6-tower-launchpad)
    (is-perspective dynamic-inspection360 s6-antenna-1)
    (is-perspective radiation-pattern s6-antenna-1)
    (is-perspective dock s6-antenna-1)
    (is-perspective front s6-antenna-1)
    (is-perspective above s6-antenna-1)
    (is-perspective below s6-antenna-1)
    (is-perspective left s6-antenna-1)
    (is-perspective right s6-antenna-1)
    (is-perspective front-below s6-antenna-1)
    (is-perspective dynamic-inspection360 s6-antenna-2)
    (is-perspective radiation-pattern s6-antenna-2)
    (is-perspective dock s6-antenna-2)
    (is-perspective front s6-antenna-2)
    (is-perspective above s6-antenna-2)
    (is-perspective below s6-antenna-2)
    (is-perspective left s6-antenna-2)
    (is-perspective right s6-antenna-2)
    (is-perspective front-below s6-antenna-2)
    (is-perspective dynamic-inspection360 s6-antenna-3)
    (is-perspective radiation-pattern s6-antenna-3)
    (is-perspective dock s6-antenna-3)
    (is-perspective front s6-antenna-3)
    (is-perspective above s6-antenna-3)
    (is-perspective below s6-antenna-3)
    (is-perspective left s6-antenna-3)
    (is-perspective right s6-antenna-3)
    (is-perspective front-below s6-antenna-3)
    (is-perspective dynamic-inspection360 s6-antenna-4)
    (is-perspective radiation-pattern s6-antenna-4)
    (is-perspective dock s6-antenna-4)
    (is-perspective front s6-antenna-4)
    (is-perspective above s6-antenna-4)
    (is-perspective below s6-antenna-4)
    (is-perspective left s6-antenna-4)
    (is-perspective right s6-antenna-4)
    (is-perspective front-below s6-antenna-4)
    (is-perspective dynamic-inspection360 s6-antenna-5)
    (is-perspective radiation-pattern s6-antenna-5)
    (is-perspective dock s6-antenna-5)
    (is-perspective front s6-antenna-5)
    (is-perspective above s6-antenna-5)
    (is-perspective below s6-antenna-5)
    (is-perspective left s6-antenna-5)
    (is-perspective right s6-antenna-5)
    (is-perspective front-below s6-antenna-5)
    (is-perspective dynamic-inspection360 s6-antenna-6)
    (is-perspective radiation-pattern s6-antenna-6)
    (is-perspective dock s6-antenna-6)
    (is-perspective front s6-antenna-6)
    (is-perspective above s6-antenna-6)
    (is-perspective below s6-antenna-6)
    (is-perspective left s6-antenna-6)
    (is-perspective right s6-antenna-6)
    (is-perspective front-below s6-antenna-6)

    (is-dock launch-pad)
    (is-dock dock)

    (is-charging-dock s4-tower-launchpad launch-pad)

    (is-clear-perspective dynamic-inspection360 s4-antenna-1)
    (is-clear-perspective radiation-pattern s4-antenna-1)
    (is-clear-perspective front s4-antenna-1)
    (is-clear-perspective above s4-antenna-1)
    (is-clear-perspective below s4-antenna-1)
    (is-clear-perspective left s4-antenna-1)
    (is-clear-perspective right s4-antenna-1)
    (is-clear-perspective front-below s4-antenna-1)
    (is-clear-perspective dynamic-inspection360 s4-antenna-2)
    (is-clear-perspective radiation-pattern s4-antenna-2)
    (is-clear-perspective front s4-antenna-2)
    (is-clear-perspective above s4-antenna-2)
    (is-clear-perspective below s4-antenna-2)
    (is-clear-perspective left s4-antenna-2)
    (is-clear-perspective right s4-antenna-2)
    (is-clear-perspective front-below s4-antenna-2)
    (is-clear-perspective dynamic-inspection360 s4-antenna-3)
    (is-clear-perspective radiation-pattern s4-antenna-3)
    (is-clear-perspective front s4-antenna-3)
    (is-clear-perspective above s4-antenna-3)
    (is-clear-perspective below s4-antenna-3)
    (is-clear-perspective left s4-antenna-3)
    (is-clear-perspective right s4-antenna-3)
    (is-clear-perspective front-below s4-antenna-3)
    (is-clear-perspective dynamic-inspection360 s4-antenna-4)
    (is-clear-perspective radiation-pattern s4-antenna-4)
    (is-clear-perspective front s4-antenna-4)
    (is-clear-perspective above s4-antenna-4)
    (is-clear-perspective below s4-antenna-4)
    (is-clear-perspective left s4-antenna-4)
    (is-clear-perspective right s4-antenna-4)
    (is-clear-perspective front-below s4-antenna-4)
    (is-clear-perspective dynamic-inspection360 s4-antenna-5)
    (is-clear-perspective radiation-pattern s4-antenna-5)
    (is-clear-perspective front s4-antenna-5)
    (is-clear-perspective above s4-antenna-5)
    (is-clear-perspective below s4-antenna-5)
    (is-clear-perspective left s4-antenna-5)
    (is-clear-perspective right s4-antenna-5)
    (is-clear-perspective front-below s4-antenna-5)
    (is-clear-perspective dynamic-inspection360 s4-antenna-6)
    (is-clear-perspective radiation-pattern s4-antenna-6)
    (is-clear-perspective front s4-antenna-6)
    (is-clear-perspective above s4-antenna-6)
    (is-clear-perspective below s4-antenna-6)
    (is-clear-perspective left s4-antenna-6)
    (is-clear-perspective right s4-antenna-6)
    (is-clear-perspective front-below s4-antenna-6)
    (is-clear-perspective dynamic-inspection360 s5-antenna-1)
    (is-clear-perspective radiation-pattern s5-antenna-1)
    (is-clear-perspective front s5-antenna-1)
    (is-clear-perspective above s5-antenna-1)
    (is-clear-perspective below s5-antenna-1)
    (is-clear-perspective left s5-antenna-1)
    (is-clear-perspective right s5-antenna-1)
    (is-clear-perspective front-below s5-antenna-1)
    (is-clear-perspective dynamic-inspection360 s5-antenna-2)
    (is-clear-perspective radiation-pattern s5-antenna-2)
    (is-clear-perspective front s5-antenna-2)
    (is-clear-perspective above s5-antenna-2)
    (is-clear-perspective below s5-antenna-2)
    (is-clear-perspective left s5-antenna-2)
    (is-clear-perspective right s5-antenna-2)
    (is-clear-perspective front-below s5-antenna-2)
    (is-clear-perspective dynamic-inspection360 s5-antenna-3)
    (is-clear-perspective radiation-pattern s5-antenna-3)
    (is-clear-perspective front s5-antenna-3)
    (is-clear-perspective above s5-antenna-3)
    (is-clear-perspective below s5-antenna-3)
    (is-clear-perspective left s5-antenna-3)
    (is-clear-perspective right s5-antenna-3)
    (is-clear-perspective front-below s5-antenna-3)
    (is-clear-perspective dynamic-inspection360 s5-antenna-4)
    (is-clear-perspective radiation-pattern s5-antenna-4)
    (is-clear-perspective front s5-antenna-4)
    (is-clear-perspective above s5-antenna-4)
    (is-clear-perspective below s5-antenna-4)
    (is-clear-perspective left s5-antenna-4)
    (is-clear-perspective right s5-antenna-4)
    (is-clear-perspective front-below s5-antenna-4)
    (is-clear-perspective dynamic-inspection360 s5-antenna-5)
    (is-clear-perspective radiation-pattern s5-antenna-5)
    (is-clear-perspective front s5-antenna-5)
    (is-clear-perspective above s5-antenna-5)
    (is-clear-perspective below s5-antenna-5)
    (is-clear-perspective left s5-antenna-5)
    (is-clear-perspective right s5-antenna-5)
    (is-clear-perspective front-below s5-antenna-5)
    (is-clear-perspective dynamic-inspection360 s5-antenna-6)
    (is-clear-perspective radiation-pattern s5-antenna-6)
    (is-clear-perspective front s5-antenna-6)
    (is-clear-perspective above s5-antenna-6)
    (is-clear-perspective below s5-antenna-6)
    (is-clear-perspective left s5-antenna-6)
    (is-clear-perspective right s5-antenna-6)
    (is-clear-perspective front-below s5-antenna-6)
    (is-clear-perspective dynamic-inspection360 s6-antenna-1)
    (is-clear-perspective radiation-pattern s6-antenna-1)
    (is-clear-perspective front s6-antenna-1)
    (is-clear-perspective above s6-antenna-1)
    (is-clear-perspective below s6-antenna-1)
    (is-clear-perspective left s6-antenna-1)
    (is-clear-perspective right s6-antenna-1)
    (is-clear-perspective front-below s6-antenna-1)
    (is-clear-perspective dynamic-inspection360 s6-antenna-2)
    (is-clear-perspective radiation-pattern s6-antenna-2)
    (is-clear-perspective front s6-antenna-2)
    (is-clear-perspective above s6-antenna-2)
    (is-clear-perspective below s6-antenna-2)
    (is-clear-perspective left s6-antenna-2)
    (is-clear-perspective right s6-antenna-2)
    (is-clear-perspective front-below s6-antenna-2)
    (is-clear-perspective dynamic-inspection360 s6-antenna-3)
    (is-clear-perspective radiation-pattern s6-antenna-3)
    (is-clear-perspective front s6-antenna-3)
    (is-clear-perspective above s6-antenna-3)
    (is-clear-perspective below s6-antenna-3)
    (is-clear-perspective left s6-antenna-3)
    (is-clear-perspective right s6-antenna-3)
    (is-clear-perspective front-below s6-antenna-3)
    (is-clear-perspective dynamic-inspection360 s6-antenna-4)
    (is-clear-perspective radiation-pattern s6-antenna-4)
    (is-clear-perspective front s6-antenna-4)
    (is-clear-perspective above s6-antenna-4)
    (is-clear-perspective below s6-antenna-4)
    (is-clear-perspective left s6-antenna-4)
    (is-clear-perspective right s6-antenna-4)
    (is-clear-perspective front-below s6-antenna-4)
    (is-clear-perspective dynamic-inspection360 s6-antenna-5)
    (is-clear-perspective radiation-pattern s6-antenna-5)
    (is-clear-perspective front s6-antenna-5)
    (is-clear-perspective above s6-antenna-5)
    (is-clear-perspective below s6-antenna-5)
    (is-clear-perspective left s6-antenna-5)
    (is-clear-perspective right s6-antenna-5)
    (is-clear-perspective front-below s6-antenna-5)
    (is-clear-perspective dynamic-inspection360 s6-antenna-6)
    (is-clear-perspective radiation-pattern s6-antenna-6)
    (is-clear-perspective front s6-antenna-6)
    (is-clear-perspective above s6-antenna-6)
    (is-clear-perspective below s6-antenna-6)
    (is-clear-perspective left s6-antenna-6)
    (is-clear-perspective right s6-antenna-6)
    (is-clear-perspective front-below s6-antenna-6)

    (inspects camera image)
    (inspects thermal-camera thermal-image)
    (inspects signal-measurer signal-measurement)

    (is-available thermal-image front)
    (is-available signal-measurement front)
    (is-available thermal-image above)
    (is-available signal-measurement above)
    (is-available thermal-image below)
    (is-available signal-measurement below)
    (is-available thermal-image left)
    (is-available signal-measurement left)
    (is-available thermal-image right)
    (is-available signal-measurement right)
    (is-available thermal-image front-below)
    (is-available signal-measurement front-below)
    (is-available image front)
    (is-available image above)
    (is-available image below)
    (is-available image left)
    (is-available image right)
    (is-available image front-below)
    (is-available signal-measurement radiation-pattern)
    (is-available signal-measurement dynamic-inspection360)












    (= (max-charge drone1) 350)

    (= (current-charge drone1) 0)

    (= (velocity drone1) 2)

    (= (distance s4-tower-launchpad s5-tower-launchpad) 40.6126)
    (= (distance s4-tower-launchpad s6-tower-launchpad) 40.6126)
    (= (distance s5-tower-launchpad s4-tower-launchpad) 40.6126)
    (= (distance s5-tower-launchpad s6-tower-launchpad) 29.134)
    (= (distance s6-tower-launchpad s4-tower-launchpad) 40.6126)
    (= (distance s6-tower-launchpad s5-tower-launchpad) 29.134)
    (= (distance s4-tower-launchpad s4-antenna-1) 5.79903)
    (= (distance s4-antenna-1 s4-tower-launchpad) 5.79903)
    (= (distance s4-tower-launchpad s4-antenna-2) 5.48844)
    (= (distance s4-antenna-2 s4-tower-launchpad) 5.48844)
    (= (distance s4-tower-launchpad s4-antenna-3) 5.11215)
    (= (distance s4-antenna-3 s4-tower-launchpad) 5.11215)
    (= (distance s4-tower-launchpad s4-antenna-4) 5.74439)
    (= (distance s4-antenna-4 s4-tower-launchpad) 5.74439)
    (= (distance s4-tower-launchpad s4-antenna-5) 4.98131)
    (= (distance s4-antenna-5 s4-tower-launchpad) 4.98131)
    (= (distance s4-tower-launchpad s4-antenna-6) 5.53998)
    (= (distance s4-antenna-6 s4-tower-launchpad) 5.53998)
    (= (distance s4-antenna-1 s4-antenna-2) 1.86652)
    (= (distance s4-antenna-2 s4-antenna-1) 1.86652)
    (= (distance s4-antenna-1 s4-antenna-3) 2.05309)
    (= (distance s4-antenna-3 s4-antenna-1) 2.05309)
    (= (distance s4-antenna-1 s4-antenna-4) 1.02733)
    (= (distance s4-antenna-4 s4-antenna-1) 1.02733)
    (= (distance s4-antenna-1 s4-antenna-5) 1.30764)
    (= (distance s4-antenna-5 s4-antenna-1) 1.30764)
    (= (distance s4-antenna-1 s4-antenna-6) 1.33243)
    (= (distance s4-antenna-6 s4-antenna-1) 1.33243)
    (= (distance s4-antenna-2 s4-antenna-3) 1.62315)
    (= (distance s4-antenna-3 s4-antenna-2) 1.62315)
    (= (distance s4-antenna-2 s4-antenna-4) 1.79119)
    (= (distance s4-antenna-4 s4-antenna-2) 1.79119)
    (= (distance s4-antenna-2 s4-antenna-5) 1.98174)
    (= (distance s4-antenna-5 s4-antenna-2) 1.98174)
    (= (distance s4-antenna-2 s4-antenna-6) 1.3704)
    (= (distance s4-antenna-6 s4-antenna-2) 1.3704)
    (= (distance s4-antenna-3 s4-antenna-4) 1.30392)
    (= (distance s4-antenna-4 s4-antenna-3) 1.30392)
    (= (distance s4-antenna-3 s4-antenna-5) 2.09936)
    (= (distance s4-antenna-5 s4-antenna-3) 2.09936)
    (= (distance s4-antenna-3 s4-antenna-6) 2.04269)
    (= (distance s4-antenna-6 s4-antenna-3) 2.04269)
    (= (distance s4-antenna-4 s4-antenna-5) 1.95084)
    (= (distance s4-antenna-5 s4-antenna-4) 1.95084)
    (= (distance s4-antenna-4 s4-antenna-6) 1.06482)
    (= (distance s4-antenna-6 s4-antenna-4) 1.06482)
    (= (distance s4-antenna-5 s4-antenna-6) 1.78581)
    (= (distance s4-antenna-6 s4-antenna-5) 1.78581)
    (= (distance s5-tower-launchpad s5-antenna-1) 5.79903)
    (= (distance s5-antenna-1 s5-tower-launchpad) 5.79903)
    (= (distance s5-tower-launchpad s5-antenna-2) 5.48844)
    (= (distance s5-antenna-2 s5-tower-launchpad) 5.48844)
    (= (distance s5-tower-launchpad s5-antenna-3) 5.11215)
    (= (distance s5-antenna-3 s5-tower-launchpad) 5.11215)
    (= (distance s5-tower-launchpad s5-antenna-4) 5.74439)
    (= (distance s5-antenna-4 s5-tower-launchpad) 5.74439)
    (= (distance s5-tower-launchpad s5-antenna-5) 4.98131)
    (= (distance s5-antenna-5 s5-tower-launchpad) 4.98131)
    (= (distance s5-tower-launchpad s5-antenna-6) 5.53998)
    (= (distance s5-antenna-6 s5-tower-launchpad) 5.53998)
    (= (distance s5-antenna-1 s5-antenna-2) 1.86652)
    (= (distance s5-antenna-2 s5-antenna-1) 1.86652)
    (= (distance s5-antenna-1 s5-antenna-3) 2.05309)
    (= (distance s5-antenna-3 s5-antenna-1) 2.05309)
    (= (distance s5-antenna-1 s5-antenna-4) 1.02733)
    (= (distance s5-antenna-4 s5-antenna-1) 1.02733)
    (= (distance s5-antenna-1 s5-antenna-5) 1.30764)
    (= (distance s5-antenna-5 s5-antenna-1) 1.30764)
    (= (distance s5-antenna-1 s5-antenna-6) 1.33243)
    (= (distance s5-antenna-6 s5-antenna-1) 1.33243)
    (= (distance s5-antenna-2 s5-antenna-3) 1.62315)
    (= (distance s5-antenna-3 s5-antenna-2) 1.62315)
    (= (distance s5-antenna-2 s5-antenna-4) 1.79119)
    (= (distance s5-antenna-4 s5-antenna-2) 1.79119)
    (= (distance s5-antenna-2 s5-antenna-5) 1.98174)
    (= (distance s5-antenna-5 s5-antenna-2) 1.98174)
    (= (distance s5-antenna-2 s5-antenna-6) 1.3704)
    (= (distance s5-antenna-6 s5-antenna-2) 1.3704)
    (= (distance s5-antenna-3 s5-antenna-4) 1.30392)
    (= (distance s5-antenna-4 s5-antenna-3) 1.30392)
    (= (distance s5-antenna-3 s5-antenna-5) 2.09936)
    (= (distance s5-antenna-5 s5-antenna-3) 2.09936)
    (= (distance s5-antenna-3 s5-antenna-6) 2.04269)
    (= (distance s5-antenna-6 s5-antenna-3) 2.04269)
    (= (distance s5-antenna-4 s5-antenna-5) 1.95084)
    (= (distance s5-antenna-5 s5-antenna-4) 1.95084)
    (= (distance s5-antenna-4 s5-antenna-6) 1.06482)
    (= (distance s5-antenna-6 s5-antenna-4) 1.06482)
    (= (distance s5-antenna-5 s5-antenna-6) 1.78581)
    (= (distance s5-antenna-6 s5-antenna-5) 1.78581)
    (= (distance s6-tower-launchpad s6-antenna-1) 5.79903)
    (= (distance s6-antenna-1 s6-tower-launchpad) 5.79903)
    (= (distance s6-tower-launchpad s6-antenna-2) 5.48844)
    (= (distance s6-antenna-2 s6-tower-launchpad) 5.48844)
    (= (distance s6-tower-launchpad s6-antenna-3) 5.11215)
    (= (distance s6-antenna-3 s6-tower-launchpad) 5.11215)
    (= (distance s6-tower-launchpad s6-antenna-4) 5.74439)
    (= (distance s6-antenna-4 s6-tower-launchpad) 5.74439)
    (= (distance s6-tower-launchpad s6-antenna-5) 4.98131)
    (= (distance s6-antenna-5 s6-tower-launchpad) 4.98131)
    (= (distance s6-tower-launchpad s6-antenna-6) 5.53998)
    (= (distance s6-antenna-6 s6-tower-launchpad) 5.53998)
    (= (distance s6-antenna-1 s6-antenna-2) 1.86652)
    (= (distance s6-antenna-2 s6-antenna-1) 1.86652)
    (= (distance s6-antenna-1 s6-antenna-3) 2.05309)
    (= (distance s6-antenna-3 s6-antenna-1) 2.05309)
    (= (distance s6-antenna-1 s6-antenna-4) 1.02733)
    (= (distance s6-antenna-4 s6-antenna-1) 1.02733)
    (= (distance s6-antenna-1 s6-antenna-5) 1.30764)
    (= (distance s6-antenna-5 s6-antenna-1) 1.30764)
    (= (distance s6-antenna-1 s6-antenna-6) 1.33243)
    (= (distance s6-antenna-6 s6-antenna-1) 1.33243)
    (= (distance s6-antenna-2 s6-antenna-3) 1.62315)
    (= (distance s6-antenna-3 s6-antenna-2) 1.62315)
    (= (distance s6-antenna-2 s6-antenna-4) 1.79119)
    (= (distance s6-antenna-4 s6-antenna-2) 1.79119)
    (= (distance s6-antenna-2 s6-antenna-5) 1.98174)
    (= (distance s6-antenna-5 s6-antenna-2) 1.98174)
    (= (distance s6-antenna-2 s6-antenna-6) 1.3704)
    (= (distance s6-antenna-6 s6-antenna-2) 1.3704)
    (= (distance s6-antenna-3 s6-antenna-4) 1.30392)
    (= (distance s6-antenna-4 s6-antenna-3) 1.30392)
    (= (distance s6-antenna-3 s6-antenna-5) 2.09936)
    (= (distance s6-antenna-5 s6-antenna-3) 2.09936)
    (= (distance s6-antenna-3 s6-antenna-6) 2.04269)
    (= (distance s6-antenna-6 s6-antenna-3) 2.04269)
    (= (distance s6-antenna-4 s6-antenna-5) 1.95084)
    (= (distance s6-antenna-5 s6-antenna-4) 1.95084)
    (= (distance s6-antenna-4 s6-antenna-6) 1.06482)
    (= (distance s6-antenna-6 s6-antenna-4) 1.06482)
    (= (distance s6-antenna-5 s6-antenna-6) 1.78581)
    (= (distance s6-antenna-6 s6-antenna-5) 1.78581)

    (= (max-dock s4-antenna-1) 3)
    (= (max-dock s4-antenna-2) 3)
    (= (max-dock s4-antenna-3) 3)
    (= (max-dock s4-antenna-4) 3)
    (= (max-dock s4-antenna-5) 3)
    (= (max-dock s4-antenna-6) 3)
    (= (max-dock s5-antenna-1) 3)
    (= (max-dock s5-antenna-2) 3)
    (= (max-dock s5-antenna-3) 3)
    (= (max-dock s5-antenna-4) 3)
    (= (max-dock s5-antenna-5) 3)
    (= (max-dock s5-antenna-6) 3)
    (= (max-dock s6-antenna-1) 3)
    (= (max-dock s6-antenna-2) 3)
    (= (max-dock s6-antenna-3) 3)
    (= (max-dock s6-antenna-4) 3)
    (= (max-dock s6-antenna-5) 3)
    (= (max-dock s6-antenna-6) 3)
    (= (max-dock s4-tower-launchpad) 0)
    (= (max-dock s5-tower-launchpad) 12)
    (= (max-dock s6-tower-launchpad) 12)

    (= (inspection-duration image) 1)
    (= (inspection-duration thermal-image) 2)
    (= (inspection-duration signal-measurement) 2)

    (= (capability-consumption camera) 2)
    (= (capability-consumption thermal-camera) 2)
    (= (capability-consumption signal-measurer) 2)



)
(:goal (and
    (is-at drone1 s4-tower-launchpad launch-pad)
    (know signal-measurement s5-antenna-1 front)
    (know signal-measurement s5-antenna-1 above)
    (know signal-measurement s5-antenna-1 below)
    (know signal-measurement s5-antenna-1 left)
    (know signal-measurement s5-antenna-1 right)
    (know signal-measurement s5-antenna-1 front-below)
    (know signal-measurement s5-antenna-2 front)
    (know signal-measurement s5-antenna-2 above)
    (know signal-measurement s5-antenna-2 below)
    (know signal-measurement s5-antenna-2 left)
    (know signal-measurement s5-antenna-2 right)
    (know signal-measurement s5-antenna-2 front-below)
    (know signal-measurement s5-antenna-3 front)
    (know signal-measurement s5-antenna-3 above)
    (know signal-measurement s5-antenna-3 below)
    (know signal-measurement s5-antenna-3 left)
    (know signal-measurement s5-antenna-3 right)
    (know signal-measurement s5-antenna-3 front-below)
    (know signal-measurement s5-antenna-4 front)
    (know signal-measurement s5-antenna-4 above)
    (know signal-measurement s5-antenna-4 below)
    (know signal-measurement s5-antenna-4 left)
    (know signal-measurement s5-antenna-4 right)
    (know signal-measurement s5-antenna-4 front-below)
    (know signal-measurement s5-antenna-5 front)
    (know signal-measurement s5-antenna-5 above)
    (know signal-measurement s5-antenna-5 below)
    (know signal-measurement s5-antenna-5 left)
    (know signal-measurement s5-antenna-5 right)
    (know signal-measurement s5-antenna-5 front-below)
    (know signal-measurement s5-antenna-6 front)
    (know signal-measurement s5-antenna-6 above)
    (know signal-measurement s5-antenna-6 below)
    (know signal-measurement s5-antenna-6 left)
    (know signal-measurement s5-antenna-6 right)
    (know signal-measurement s5-antenna-6 front-below)
))
(:metric minimize (total-time))
)
