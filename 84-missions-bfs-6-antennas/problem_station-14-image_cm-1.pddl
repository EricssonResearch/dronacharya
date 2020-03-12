(define (problem task)
(:domain droneacharya-domain)
(:objects
    s13-tower-launchpad s13-antenna-1 s13-antenna-2 s13-antenna-3 s13-antenna-4 s13-antenna-5 s13-antenna-6 s14-tower-launchpad s14-antenna-1 s14-antenna-2 s14-antenna-3 s14-antenna-4 s14-antenna-5 s14-antenna-6 s15-tower-launchpad s15-antenna-1 s15-antenna-2 s15-antenna-3 s15-antenna-4 s15-antenna-5 s15-antenna-6 - component
    drone2 drone1 - drone
)
(:init
    (has-capability drone1 camera)
    (has-capability drone1 signal-measurer)

    (is-at drone1 s13-tower-launchpad launch-pad)

    (not_busy_tactical drone1)

    (not_busy_strategic drone1)

    (has-configuration drone1 config1)

    (is-perspective launch-pad s13-tower-launchpad)
    (is-perspective dynamic-inspection360 s13-antenna-1)
    (is-perspective radiation-pattern s13-antenna-1)
    (is-perspective dock s13-antenna-1)
    (is-perspective front s13-antenna-1)
    (is-perspective above s13-antenna-1)
    (is-perspective below s13-antenna-1)
    (is-perspective left s13-antenna-1)
    (is-perspective right s13-antenna-1)
    (is-perspective front-below s13-antenna-1)
    (is-perspective dynamic-inspection360 s13-antenna-2)
    (is-perspective radiation-pattern s13-antenna-2)
    (is-perspective dock s13-antenna-2)
    (is-perspective front s13-antenna-2)
    (is-perspective above s13-antenna-2)
    (is-perspective below s13-antenna-2)
    (is-perspective left s13-antenna-2)
    (is-perspective right s13-antenna-2)
    (is-perspective front-below s13-antenna-2)
    (is-perspective dynamic-inspection360 s13-antenna-3)
    (is-perspective radiation-pattern s13-antenna-3)
    (is-perspective dock s13-antenna-3)
    (is-perspective front s13-antenna-3)
    (is-perspective above s13-antenna-3)
    (is-perspective below s13-antenna-3)
    (is-perspective left s13-antenna-3)
    (is-perspective right s13-antenna-3)
    (is-perspective front-below s13-antenna-3)
    (is-perspective dynamic-inspection360 s13-antenna-4)
    (is-perspective radiation-pattern s13-antenna-4)
    (is-perspective dock s13-antenna-4)
    (is-perspective front s13-antenna-4)
    (is-perspective above s13-antenna-4)
    (is-perspective below s13-antenna-4)
    (is-perspective left s13-antenna-4)
    (is-perspective right s13-antenna-4)
    (is-perspective front-below s13-antenna-4)
    (is-perspective dynamic-inspection360 s13-antenna-5)
    (is-perspective radiation-pattern s13-antenna-5)
    (is-perspective dock s13-antenna-5)
    (is-perspective front s13-antenna-5)
    (is-perspective above s13-antenna-5)
    (is-perspective below s13-antenna-5)
    (is-perspective left s13-antenna-5)
    (is-perspective right s13-antenna-5)
    (is-perspective front-below s13-antenna-5)
    (is-perspective dynamic-inspection360 s13-antenna-6)
    (is-perspective radiation-pattern s13-antenna-6)
    (is-perspective dock s13-antenna-6)
    (is-perspective front s13-antenna-6)
    (is-perspective above s13-antenna-6)
    (is-perspective below s13-antenna-6)
    (is-perspective left s13-antenna-6)
    (is-perspective right s13-antenna-6)
    (is-perspective front-below s13-antenna-6)
    (is-perspective launch-pad s14-tower-launchpad)
    (is-perspective dynamic-inspection360 s14-antenna-1)
    (is-perspective radiation-pattern s14-antenna-1)
    (is-perspective dock s14-antenna-1)
    (is-perspective front s14-antenna-1)
    (is-perspective above s14-antenna-1)
    (is-perspective below s14-antenna-1)
    (is-perspective left s14-antenna-1)
    (is-perspective right s14-antenna-1)
    (is-perspective front-below s14-antenna-1)
    (is-perspective dynamic-inspection360 s14-antenna-2)
    (is-perspective radiation-pattern s14-antenna-2)
    (is-perspective dock s14-antenna-2)
    (is-perspective front s14-antenna-2)
    (is-perspective above s14-antenna-2)
    (is-perspective below s14-antenna-2)
    (is-perspective left s14-antenna-2)
    (is-perspective right s14-antenna-2)
    (is-perspective front-below s14-antenna-2)
    (is-perspective dynamic-inspection360 s14-antenna-3)
    (is-perspective radiation-pattern s14-antenna-3)
    (is-perspective dock s14-antenna-3)
    (is-perspective front s14-antenna-3)
    (is-perspective above s14-antenna-3)
    (is-perspective below s14-antenna-3)
    (is-perspective left s14-antenna-3)
    (is-perspective right s14-antenna-3)
    (is-perspective front-below s14-antenna-3)
    (is-perspective dynamic-inspection360 s14-antenna-4)
    (is-perspective radiation-pattern s14-antenna-4)
    (is-perspective dock s14-antenna-4)
    (is-perspective front s14-antenna-4)
    (is-perspective above s14-antenna-4)
    (is-perspective below s14-antenna-4)
    (is-perspective left s14-antenna-4)
    (is-perspective right s14-antenna-4)
    (is-perspective front-below s14-antenna-4)
    (is-perspective dynamic-inspection360 s14-antenna-5)
    (is-perspective radiation-pattern s14-antenna-5)
    (is-perspective dock s14-antenna-5)
    (is-perspective front s14-antenna-5)
    (is-perspective above s14-antenna-5)
    (is-perspective below s14-antenna-5)
    (is-perspective left s14-antenna-5)
    (is-perspective right s14-antenna-5)
    (is-perspective front-below s14-antenna-5)
    (is-perspective dynamic-inspection360 s14-antenna-6)
    (is-perspective radiation-pattern s14-antenna-6)
    (is-perspective dock s14-antenna-6)
    (is-perspective front s14-antenna-6)
    (is-perspective above s14-antenna-6)
    (is-perspective below s14-antenna-6)
    (is-perspective left s14-antenna-6)
    (is-perspective right s14-antenna-6)
    (is-perspective front-below s14-antenna-6)
    (is-perspective launch-pad s15-tower-launchpad)
    (is-perspective dynamic-inspection360 s15-antenna-1)
    (is-perspective radiation-pattern s15-antenna-1)
    (is-perspective dock s15-antenna-1)
    (is-perspective front s15-antenna-1)
    (is-perspective above s15-antenna-1)
    (is-perspective below s15-antenna-1)
    (is-perspective left s15-antenna-1)
    (is-perspective right s15-antenna-1)
    (is-perspective front-below s15-antenna-1)
    (is-perspective dynamic-inspection360 s15-antenna-2)
    (is-perspective radiation-pattern s15-antenna-2)
    (is-perspective dock s15-antenna-2)
    (is-perspective front s15-antenna-2)
    (is-perspective above s15-antenna-2)
    (is-perspective below s15-antenna-2)
    (is-perspective left s15-antenna-2)
    (is-perspective right s15-antenna-2)
    (is-perspective front-below s15-antenna-2)
    (is-perspective dynamic-inspection360 s15-antenna-3)
    (is-perspective radiation-pattern s15-antenna-3)
    (is-perspective dock s15-antenna-3)
    (is-perspective front s15-antenna-3)
    (is-perspective above s15-antenna-3)
    (is-perspective below s15-antenna-3)
    (is-perspective left s15-antenna-3)
    (is-perspective right s15-antenna-3)
    (is-perspective front-below s15-antenna-3)
    (is-perspective dynamic-inspection360 s15-antenna-4)
    (is-perspective radiation-pattern s15-antenna-4)
    (is-perspective dock s15-antenna-4)
    (is-perspective front s15-antenna-4)
    (is-perspective above s15-antenna-4)
    (is-perspective below s15-antenna-4)
    (is-perspective left s15-antenna-4)
    (is-perspective right s15-antenna-4)
    (is-perspective front-below s15-antenna-4)
    (is-perspective dynamic-inspection360 s15-antenna-5)
    (is-perspective radiation-pattern s15-antenna-5)
    (is-perspective dock s15-antenna-5)
    (is-perspective front s15-antenna-5)
    (is-perspective above s15-antenna-5)
    (is-perspective below s15-antenna-5)
    (is-perspective left s15-antenna-5)
    (is-perspective right s15-antenna-5)
    (is-perspective front-below s15-antenna-5)
    (is-perspective dynamic-inspection360 s15-antenna-6)
    (is-perspective radiation-pattern s15-antenna-6)
    (is-perspective dock s15-antenna-6)
    (is-perspective front s15-antenna-6)
    (is-perspective above s15-antenna-6)
    (is-perspective below s15-antenna-6)
    (is-perspective left s15-antenna-6)
    (is-perspective right s15-antenna-6)
    (is-perspective front-below s15-antenna-6)

    (is-dock launch-pad)
    (is-dock dock)

    (is-charging-dock s13-tower-launchpad launch-pad)

    (is-clear-perspective dynamic-inspection360 s13-antenna-1)
    (is-clear-perspective radiation-pattern s13-antenna-1)
    (is-clear-perspective front s13-antenna-1)
    (is-clear-perspective above s13-antenna-1)
    (is-clear-perspective below s13-antenna-1)
    (is-clear-perspective left s13-antenna-1)
    (is-clear-perspective right s13-antenna-1)
    (is-clear-perspective front-below s13-antenna-1)
    (is-clear-perspective dynamic-inspection360 s13-antenna-2)
    (is-clear-perspective radiation-pattern s13-antenna-2)
    (is-clear-perspective front s13-antenna-2)
    (is-clear-perspective above s13-antenna-2)
    (is-clear-perspective below s13-antenna-2)
    (is-clear-perspective left s13-antenna-2)
    (is-clear-perspective right s13-antenna-2)
    (is-clear-perspective front-below s13-antenna-2)
    (is-clear-perspective dynamic-inspection360 s13-antenna-3)
    (is-clear-perspective radiation-pattern s13-antenna-3)
    (is-clear-perspective front s13-antenna-3)
    (is-clear-perspective above s13-antenna-3)
    (is-clear-perspective below s13-antenna-3)
    (is-clear-perspective left s13-antenna-3)
    (is-clear-perspective right s13-antenna-3)
    (is-clear-perspective front-below s13-antenna-3)
    (is-clear-perspective dynamic-inspection360 s13-antenna-4)
    (is-clear-perspective radiation-pattern s13-antenna-4)
    (is-clear-perspective front s13-antenna-4)
    (is-clear-perspective above s13-antenna-4)
    (is-clear-perspective below s13-antenna-4)
    (is-clear-perspective left s13-antenna-4)
    (is-clear-perspective right s13-antenna-4)
    (is-clear-perspective front-below s13-antenna-4)
    (is-clear-perspective dynamic-inspection360 s13-antenna-5)
    (is-clear-perspective radiation-pattern s13-antenna-5)
    (is-clear-perspective front s13-antenna-5)
    (is-clear-perspective above s13-antenna-5)
    (is-clear-perspective below s13-antenna-5)
    (is-clear-perspective left s13-antenna-5)
    (is-clear-perspective right s13-antenna-5)
    (is-clear-perspective front-below s13-antenna-5)
    (is-clear-perspective dynamic-inspection360 s13-antenna-6)
    (is-clear-perspective radiation-pattern s13-antenna-6)
    (is-clear-perspective front s13-antenna-6)
    (is-clear-perspective above s13-antenna-6)
    (is-clear-perspective below s13-antenna-6)
    (is-clear-perspective left s13-antenna-6)
    (is-clear-perspective right s13-antenna-6)
    (is-clear-perspective front-below s13-antenna-6)
    (is-clear-perspective dynamic-inspection360 s14-antenna-1)
    (is-clear-perspective radiation-pattern s14-antenna-1)
    (is-clear-perspective front s14-antenna-1)
    (is-clear-perspective above s14-antenna-1)
    (is-clear-perspective below s14-antenna-1)
    (is-clear-perspective left s14-antenna-1)
    (is-clear-perspective right s14-antenna-1)
    (is-clear-perspective front-below s14-antenna-1)
    (is-clear-perspective dynamic-inspection360 s14-antenna-2)
    (is-clear-perspective radiation-pattern s14-antenna-2)
    (is-clear-perspective front s14-antenna-2)
    (is-clear-perspective above s14-antenna-2)
    (is-clear-perspective below s14-antenna-2)
    (is-clear-perspective left s14-antenna-2)
    (is-clear-perspective right s14-antenna-2)
    (is-clear-perspective front-below s14-antenna-2)
    (is-clear-perspective dynamic-inspection360 s14-antenna-3)
    (is-clear-perspective radiation-pattern s14-antenna-3)
    (is-clear-perspective front s14-antenna-3)
    (is-clear-perspective above s14-antenna-3)
    (is-clear-perspective below s14-antenna-3)
    (is-clear-perspective left s14-antenna-3)
    (is-clear-perspective right s14-antenna-3)
    (is-clear-perspective front-below s14-antenna-3)
    (is-clear-perspective dynamic-inspection360 s14-antenna-4)
    (is-clear-perspective radiation-pattern s14-antenna-4)
    (is-clear-perspective front s14-antenna-4)
    (is-clear-perspective above s14-antenna-4)
    (is-clear-perspective below s14-antenna-4)
    (is-clear-perspective left s14-antenna-4)
    (is-clear-perspective right s14-antenna-4)
    (is-clear-perspective front-below s14-antenna-4)
    (is-clear-perspective dynamic-inspection360 s14-antenna-5)
    (is-clear-perspective radiation-pattern s14-antenna-5)
    (is-clear-perspective front s14-antenna-5)
    (is-clear-perspective above s14-antenna-5)
    (is-clear-perspective below s14-antenna-5)
    (is-clear-perspective left s14-antenna-5)
    (is-clear-perspective right s14-antenna-5)
    (is-clear-perspective front-below s14-antenna-5)
    (is-clear-perspective dynamic-inspection360 s14-antenna-6)
    (is-clear-perspective radiation-pattern s14-antenna-6)
    (is-clear-perspective front s14-antenna-6)
    (is-clear-perspective above s14-antenna-6)
    (is-clear-perspective below s14-antenna-6)
    (is-clear-perspective left s14-antenna-6)
    (is-clear-perspective right s14-antenna-6)
    (is-clear-perspective front-below s14-antenna-6)
    (is-clear-perspective dynamic-inspection360 s15-antenna-1)
    (is-clear-perspective radiation-pattern s15-antenna-1)
    (is-clear-perspective front s15-antenna-1)
    (is-clear-perspective above s15-antenna-1)
    (is-clear-perspective below s15-antenna-1)
    (is-clear-perspective left s15-antenna-1)
    (is-clear-perspective right s15-antenna-1)
    (is-clear-perspective front-below s15-antenna-1)
    (is-clear-perspective dynamic-inspection360 s15-antenna-2)
    (is-clear-perspective radiation-pattern s15-antenna-2)
    (is-clear-perspective front s15-antenna-2)
    (is-clear-perspective above s15-antenna-2)
    (is-clear-perspective below s15-antenna-2)
    (is-clear-perspective left s15-antenna-2)
    (is-clear-perspective right s15-antenna-2)
    (is-clear-perspective front-below s15-antenna-2)
    (is-clear-perspective dynamic-inspection360 s15-antenna-3)
    (is-clear-perspective radiation-pattern s15-antenna-3)
    (is-clear-perspective front s15-antenna-3)
    (is-clear-perspective above s15-antenna-3)
    (is-clear-perspective below s15-antenna-3)
    (is-clear-perspective left s15-antenna-3)
    (is-clear-perspective right s15-antenna-3)
    (is-clear-perspective front-below s15-antenna-3)
    (is-clear-perspective dynamic-inspection360 s15-antenna-4)
    (is-clear-perspective radiation-pattern s15-antenna-4)
    (is-clear-perspective front s15-antenna-4)
    (is-clear-perspective above s15-antenna-4)
    (is-clear-perspective below s15-antenna-4)
    (is-clear-perspective left s15-antenna-4)
    (is-clear-perspective right s15-antenna-4)
    (is-clear-perspective front-below s15-antenna-4)
    (is-clear-perspective dynamic-inspection360 s15-antenna-5)
    (is-clear-perspective radiation-pattern s15-antenna-5)
    (is-clear-perspective front s15-antenna-5)
    (is-clear-perspective above s15-antenna-5)
    (is-clear-perspective below s15-antenna-5)
    (is-clear-perspective left s15-antenna-5)
    (is-clear-perspective right s15-antenna-5)
    (is-clear-perspective front-below s15-antenna-5)
    (is-clear-perspective dynamic-inspection360 s15-antenna-6)
    (is-clear-perspective radiation-pattern s15-antenna-6)
    (is-clear-perspective front s15-antenna-6)
    (is-clear-perspective above s15-antenna-6)
    (is-clear-perspective below s15-antenna-6)
    (is-clear-perspective left s15-antenna-6)
    (is-clear-perspective right s15-antenna-6)
    (is-clear-perspective front-below s15-antenna-6)

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

    (= (distance s13-tower-launchpad s14-tower-launchpad) 32.4363)
    (= (distance s13-tower-launchpad s15-tower-launchpad) 32.6806)
    (= (distance s14-tower-launchpad s13-tower-launchpad) 32.4363)
    (= (distance s14-tower-launchpad s15-tower-launchpad) 40.6574)
    (= (distance s15-tower-launchpad s13-tower-launchpad) 32.6806)
    (= (distance s15-tower-launchpad s14-tower-launchpad) 40.6574)
    (= (distance s13-tower-launchpad s13-antenna-1) 5.79903)
    (= (distance s13-antenna-1 s13-tower-launchpad) 5.79903)
    (= (distance s13-tower-launchpad s13-antenna-2) 5.48844)
    (= (distance s13-antenna-2 s13-tower-launchpad) 5.48844)
    (= (distance s13-tower-launchpad s13-antenna-3) 5.11215)
    (= (distance s13-antenna-3 s13-tower-launchpad) 5.11215)
    (= (distance s13-tower-launchpad s13-antenna-4) 5.74439)
    (= (distance s13-antenna-4 s13-tower-launchpad) 5.74439)
    (= (distance s13-tower-launchpad s13-antenna-5) 4.98131)
    (= (distance s13-antenna-5 s13-tower-launchpad) 4.98131)
    (= (distance s13-tower-launchpad s13-antenna-6) 5.53998)
    (= (distance s13-antenna-6 s13-tower-launchpad) 5.53998)
    (= (distance s13-antenna-1 s13-antenna-2) 1.86652)
    (= (distance s13-antenna-2 s13-antenna-1) 1.86652)
    (= (distance s13-antenna-1 s13-antenna-3) 2.05309)
    (= (distance s13-antenna-3 s13-antenna-1) 2.05309)
    (= (distance s13-antenna-1 s13-antenna-4) 1.02733)
    (= (distance s13-antenna-4 s13-antenna-1) 1.02733)
    (= (distance s13-antenna-1 s13-antenna-5) 1.30764)
    (= (distance s13-antenna-5 s13-antenna-1) 1.30764)
    (= (distance s13-antenna-1 s13-antenna-6) 1.33243)
    (= (distance s13-antenna-6 s13-antenna-1) 1.33243)
    (= (distance s13-antenna-2 s13-antenna-3) 1.62315)
    (= (distance s13-antenna-3 s13-antenna-2) 1.62315)
    (= (distance s13-antenna-2 s13-antenna-4) 1.79119)
    (= (distance s13-antenna-4 s13-antenna-2) 1.79119)
    (= (distance s13-antenna-2 s13-antenna-5) 1.98174)
    (= (distance s13-antenna-5 s13-antenna-2) 1.98174)
    (= (distance s13-antenna-2 s13-antenna-6) 1.3704)
    (= (distance s13-antenna-6 s13-antenna-2) 1.3704)
    (= (distance s13-antenna-3 s13-antenna-4) 1.30392)
    (= (distance s13-antenna-4 s13-antenna-3) 1.30392)
    (= (distance s13-antenna-3 s13-antenna-5) 2.09936)
    (= (distance s13-antenna-5 s13-antenna-3) 2.09936)
    (= (distance s13-antenna-3 s13-antenna-6) 2.04269)
    (= (distance s13-antenna-6 s13-antenna-3) 2.04269)
    (= (distance s13-antenna-4 s13-antenna-5) 1.95084)
    (= (distance s13-antenna-5 s13-antenna-4) 1.95084)
    (= (distance s13-antenna-4 s13-antenna-6) 1.06482)
    (= (distance s13-antenna-6 s13-antenna-4) 1.06482)
    (= (distance s13-antenna-5 s13-antenna-6) 1.78581)
    (= (distance s13-antenna-6 s13-antenna-5) 1.78581)
    (= (distance s14-tower-launchpad s14-antenna-1) 5.79903)
    (= (distance s14-antenna-1 s14-tower-launchpad) 5.79903)
    (= (distance s14-tower-launchpad s14-antenna-2) 5.48844)
    (= (distance s14-antenna-2 s14-tower-launchpad) 5.48844)
    (= (distance s14-tower-launchpad s14-antenna-3) 5.11215)
    (= (distance s14-antenna-3 s14-tower-launchpad) 5.11215)
    (= (distance s14-tower-launchpad s14-antenna-4) 5.74439)
    (= (distance s14-antenna-4 s14-tower-launchpad) 5.74439)
    (= (distance s14-tower-launchpad s14-antenna-5) 4.98131)
    (= (distance s14-antenna-5 s14-tower-launchpad) 4.98131)
    (= (distance s14-tower-launchpad s14-antenna-6) 5.53998)
    (= (distance s14-antenna-6 s14-tower-launchpad) 5.53998)
    (= (distance s14-antenna-1 s14-antenna-2) 1.86652)
    (= (distance s14-antenna-2 s14-antenna-1) 1.86652)
    (= (distance s14-antenna-1 s14-antenna-3) 2.05309)
    (= (distance s14-antenna-3 s14-antenna-1) 2.05309)
    (= (distance s14-antenna-1 s14-antenna-4) 1.02733)
    (= (distance s14-antenna-4 s14-antenna-1) 1.02733)
    (= (distance s14-antenna-1 s14-antenna-5) 1.30764)
    (= (distance s14-antenna-5 s14-antenna-1) 1.30764)
    (= (distance s14-antenna-1 s14-antenna-6) 1.33243)
    (= (distance s14-antenna-6 s14-antenna-1) 1.33243)
    (= (distance s14-antenna-2 s14-antenna-3) 1.62315)
    (= (distance s14-antenna-3 s14-antenna-2) 1.62315)
    (= (distance s14-antenna-2 s14-antenna-4) 1.79119)
    (= (distance s14-antenna-4 s14-antenna-2) 1.79119)
    (= (distance s14-antenna-2 s14-antenna-5) 1.98174)
    (= (distance s14-antenna-5 s14-antenna-2) 1.98174)
    (= (distance s14-antenna-2 s14-antenna-6) 1.3704)
    (= (distance s14-antenna-6 s14-antenna-2) 1.3704)
    (= (distance s14-antenna-3 s14-antenna-4) 1.30392)
    (= (distance s14-antenna-4 s14-antenna-3) 1.30392)
    (= (distance s14-antenna-3 s14-antenna-5) 2.09936)
    (= (distance s14-antenna-5 s14-antenna-3) 2.09936)
    (= (distance s14-antenna-3 s14-antenna-6) 2.04269)
    (= (distance s14-antenna-6 s14-antenna-3) 2.04269)
    (= (distance s14-antenna-4 s14-antenna-5) 1.95084)
    (= (distance s14-antenna-5 s14-antenna-4) 1.95084)
    (= (distance s14-antenna-4 s14-antenna-6) 1.06482)
    (= (distance s14-antenna-6 s14-antenna-4) 1.06482)
    (= (distance s14-antenna-5 s14-antenna-6) 1.78581)
    (= (distance s14-antenna-6 s14-antenna-5) 1.78581)
    (= (distance s15-tower-launchpad s15-antenna-1) 5.79903)
    (= (distance s15-antenna-1 s15-tower-launchpad) 5.79903)
    (= (distance s15-tower-launchpad s15-antenna-2) 5.48844)
    (= (distance s15-antenna-2 s15-tower-launchpad) 5.48844)
    (= (distance s15-tower-launchpad s15-antenna-3) 5.11215)
    (= (distance s15-antenna-3 s15-tower-launchpad) 5.11215)
    (= (distance s15-tower-launchpad s15-antenna-4) 5.74439)
    (= (distance s15-antenna-4 s15-tower-launchpad) 5.74439)
    (= (distance s15-tower-launchpad s15-antenna-5) 4.98131)
    (= (distance s15-antenna-5 s15-tower-launchpad) 4.98131)
    (= (distance s15-tower-launchpad s15-antenna-6) 5.53998)
    (= (distance s15-antenna-6 s15-tower-launchpad) 5.53998)
    (= (distance s15-antenna-1 s15-antenna-2) 1.86652)
    (= (distance s15-antenna-2 s15-antenna-1) 1.86652)
    (= (distance s15-antenna-1 s15-antenna-3) 2.05309)
    (= (distance s15-antenna-3 s15-antenna-1) 2.05309)
    (= (distance s15-antenna-1 s15-antenna-4) 1.02733)
    (= (distance s15-antenna-4 s15-antenna-1) 1.02733)
    (= (distance s15-antenna-1 s15-antenna-5) 1.30764)
    (= (distance s15-antenna-5 s15-antenna-1) 1.30764)
    (= (distance s15-antenna-1 s15-antenna-6) 1.33243)
    (= (distance s15-antenna-6 s15-antenna-1) 1.33243)
    (= (distance s15-antenna-2 s15-antenna-3) 1.62315)
    (= (distance s15-antenna-3 s15-antenna-2) 1.62315)
    (= (distance s15-antenna-2 s15-antenna-4) 1.79119)
    (= (distance s15-antenna-4 s15-antenna-2) 1.79119)
    (= (distance s15-antenna-2 s15-antenna-5) 1.98174)
    (= (distance s15-antenna-5 s15-antenna-2) 1.98174)
    (= (distance s15-antenna-2 s15-antenna-6) 1.3704)
    (= (distance s15-antenna-6 s15-antenna-2) 1.3704)
    (= (distance s15-antenna-3 s15-antenna-4) 1.30392)
    (= (distance s15-antenna-4 s15-antenna-3) 1.30392)
    (= (distance s15-antenna-3 s15-antenna-5) 2.09936)
    (= (distance s15-antenna-5 s15-antenna-3) 2.09936)
    (= (distance s15-antenna-3 s15-antenna-6) 2.04269)
    (= (distance s15-antenna-6 s15-antenna-3) 2.04269)
    (= (distance s15-antenna-4 s15-antenna-5) 1.95084)
    (= (distance s15-antenna-5 s15-antenna-4) 1.95084)
    (= (distance s15-antenna-4 s15-antenna-6) 1.06482)
    (= (distance s15-antenna-6 s15-antenna-4) 1.06482)
    (= (distance s15-antenna-5 s15-antenna-6) 1.78581)
    (= (distance s15-antenna-6 s15-antenna-5) 1.78581)

    (= (max-dock s13-antenna-1) 3)
    (= (max-dock s13-antenna-2) 3)
    (= (max-dock s13-antenna-3) 3)
    (= (max-dock s13-antenna-4) 3)
    (= (max-dock s13-antenna-5) 3)
    (= (max-dock s13-antenna-6) 3)
    (= (max-dock s14-antenna-1) 3)
    (= (max-dock s14-antenna-2) 3)
    (= (max-dock s14-antenna-3) 3)
    (= (max-dock s14-antenna-4) 3)
    (= (max-dock s14-antenna-5) 3)
    (= (max-dock s14-antenna-6) 3)
    (= (max-dock s15-antenna-1) 3)
    (= (max-dock s15-antenna-2) 3)
    (= (max-dock s15-antenna-3) 3)
    (= (max-dock s15-antenna-4) 3)
    (= (max-dock s15-antenna-5) 3)
    (= (max-dock s15-antenna-6) 3)
    (= (max-dock s13-tower-launchpad) 0)
    (= (max-dock s14-tower-launchpad) 12)
    (= (max-dock s15-tower-launchpad) 12)

    (= (inspection-duration image) 1)
    (= (inspection-duration thermal-image) 2)
    (= (inspection-duration signal-measurement) 2)

    (= (capability-consumption camera) 2)
    (= (capability-consumption thermal-camera) 2)
    (= (capability-consumption signal-measurer) 2)



)
(:goal (and
    (is-at drone1 s13-tower-launchpad launch-pad)
    (know image s14-antenna-1 front)
    (know image s14-antenna-1 above)
    (know image s14-antenna-1 below)
    (know image s14-antenna-1 left)
    (know image s14-antenna-1 right)
    (know image s14-antenna-1 front-below)
    (know image s14-antenna-2 front)
    (know image s14-antenna-2 above)
    (know image s14-antenna-2 below)
    (know image s14-antenna-2 left)
    (know image s14-antenna-2 right)
    (know image s14-antenna-2 front-below)
    (know image s14-antenna-3 front)
    (know image s14-antenna-3 above)
    (know image s14-antenna-3 below)
    (know image s14-antenna-3 left)
    (know image s14-antenna-3 right)
    (know image s14-antenna-3 front-below)
    (know image s14-antenna-4 front)
    (know image s14-antenna-4 above)
    (know image s14-antenna-4 below)
    (know image s14-antenna-4 left)
    (know image s14-antenna-4 right)
    (know image s14-antenna-4 front-below)
    (know image s14-antenna-5 front)
    (know image s14-antenna-5 above)
    (know image s14-antenna-5 below)
    (know image s14-antenna-5 left)
    (know image s14-antenna-5 right)
    (know image s14-antenna-5 front-below)
    (know image s14-antenna-6 front)
    (know image s14-antenna-6 above)
    (know image s14-antenna-6 below)
    (know image s14-antenna-6 left)
    (know image s14-antenna-6 right)
    (know image s14-antenna-6 front-below)
))
(:metric minimize (total-time))
)
