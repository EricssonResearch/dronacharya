(define (problem task)
(:domain droneacharya-domain)
(:objects
    s19-tower-launchpad s19-antenna-1 s19-antenna-2 s19-antenna-3 s19-antenna-4 s19-antenna-5 s19-antenna-6 s20-tower-launchpad s20-antenna-1 s20-antenna-2 s20-antenna-3 s20-antenna-4 s20-antenna-5 s20-antenna-6 s21-tower-launchpad s21-antenna-1 s21-antenna-2 s21-antenna-3 s21-antenna-4 s21-antenna-5 s21-antenna-6 - component
    drone3 - drone
)
(:init
    (has-capability drone3 signal-measurer)

    (is-at drone3 s19-tower-launchpad launch-pad)

    (not_busy_tactical drone3)

    (not_busy_strategic drone3)

    (has-configuration drone3 config3)

    (is-perspective launch-pad s19-tower-launchpad)
    (is-perspective dynamic-inspection360 s19-antenna-1)
    (is-perspective radiation-pattern s19-antenna-1)
    (is-perspective dock s19-antenna-1)
    (is-perspective front s19-antenna-1)
    (is-perspective above s19-antenna-1)
    (is-perspective below s19-antenna-1)
    (is-perspective left s19-antenna-1)
    (is-perspective right s19-antenna-1)
    (is-perspective front-below s19-antenna-1)
    (is-perspective dynamic-inspection360 s19-antenna-2)
    (is-perspective radiation-pattern s19-antenna-2)
    (is-perspective dock s19-antenna-2)
    (is-perspective front s19-antenna-2)
    (is-perspective above s19-antenna-2)
    (is-perspective below s19-antenna-2)
    (is-perspective left s19-antenna-2)
    (is-perspective right s19-antenna-2)
    (is-perspective front-below s19-antenna-2)
    (is-perspective dynamic-inspection360 s19-antenna-3)
    (is-perspective radiation-pattern s19-antenna-3)
    (is-perspective dock s19-antenna-3)
    (is-perspective front s19-antenna-3)
    (is-perspective above s19-antenna-3)
    (is-perspective below s19-antenna-3)
    (is-perspective left s19-antenna-3)
    (is-perspective right s19-antenna-3)
    (is-perspective front-below s19-antenna-3)
    (is-perspective dynamic-inspection360 s19-antenna-4)
    (is-perspective radiation-pattern s19-antenna-4)
    (is-perspective dock s19-antenna-4)
    (is-perspective front s19-antenna-4)
    (is-perspective above s19-antenna-4)
    (is-perspective below s19-antenna-4)
    (is-perspective left s19-antenna-4)
    (is-perspective right s19-antenna-4)
    (is-perspective front-below s19-antenna-4)
    (is-perspective dynamic-inspection360 s19-antenna-5)
    (is-perspective radiation-pattern s19-antenna-5)
    (is-perspective dock s19-antenna-5)
    (is-perspective front s19-antenna-5)
    (is-perspective above s19-antenna-5)
    (is-perspective below s19-antenna-5)
    (is-perspective left s19-antenna-5)
    (is-perspective right s19-antenna-5)
    (is-perspective front-below s19-antenna-5)
    (is-perspective dynamic-inspection360 s19-antenna-6)
    (is-perspective radiation-pattern s19-antenna-6)
    (is-perspective dock s19-antenna-6)
    (is-perspective front s19-antenna-6)
    (is-perspective above s19-antenna-6)
    (is-perspective below s19-antenna-6)
    (is-perspective left s19-antenna-6)
    (is-perspective right s19-antenna-6)
    (is-perspective front-below s19-antenna-6)
    (is-perspective launch-pad s20-tower-launchpad)
    (is-perspective dynamic-inspection360 s20-antenna-1)
    (is-perspective radiation-pattern s20-antenna-1)
    (is-perspective dock s20-antenna-1)
    (is-perspective front s20-antenna-1)
    (is-perspective above s20-antenna-1)
    (is-perspective below s20-antenna-1)
    (is-perspective left s20-antenna-1)
    (is-perspective right s20-antenna-1)
    (is-perspective front-below s20-antenna-1)
    (is-perspective dynamic-inspection360 s20-antenna-2)
    (is-perspective radiation-pattern s20-antenna-2)
    (is-perspective dock s20-antenna-2)
    (is-perspective front s20-antenna-2)
    (is-perspective above s20-antenna-2)
    (is-perspective below s20-antenna-2)
    (is-perspective left s20-antenna-2)
    (is-perspective right s20-antenna-2)
    (is-perspective front-below s20-antenna-2)
    (is-perspective dynamic-inspection360 s20-antenna-3)
    (is-perspective radiation-pattern s20-antenna-3)
    (is-perspective dock s20-antenna-3)
    (is-perspective front s20-antenna-3)
    (is-perspective above s20-antenna-3)
    (is-perspective below s20-antenna-3)
    (is-perspective left s20-antenna-3)
    (is-perspective right s20-antenna-3)
    (is-perspective front-below s20-antenna-3)
    (is-perspective dynamic-inspection360 s20-antenna-4)
    (is-perspective radiation-pattern s20-antenna-4)
    (is-perspective dock s20-antenna-4)
    (is-perspective front s20-antenna-4)
    (is-perspective above s20-antenna-4)
    (is-perspective below s20-antenna-4)
    (is-perspective left s20-antenna-4)
    (is-perspective right s20-antenna-4)
    (is-perspective front-below s20-antenna-4)
    (is-perspective dynamic-inspection360 s20-antenna-5)
    (is-perspective radiation-pattern s20-antenna-5)
    (is-perspective dock s20-antenna-5)
    (is-perspective front s20-antenna-5)
    (is-perspective above s20-antenna-5)
    (is-perspective below s20-antenna-5)
    (is-perspective left s20-antenna-5)
    (is-perspective right s20-antenna-5)
    (is-perspective front-below s20-antenna-5)
    (is-perspective dynamic-inspection360 s20-antenna-6)
    (is-perspective radiation-pattern s20-antenna-6)
    (is-perspective dock s20-antenna-6)
    (is-perspective front s20-antenna-6)
    (is-perspective above s20-antenna-6)
    (is-perspective below s20-antenna-6)
    (is-perspective left s20-antenna-6)
    (is-perspective right s20-antenna-6)
    (is-perspective front-below s20-antenna-6)
    (is-perspective launch-pad s21-tower-launchpad)
    (is-perspective dynamic-inspection360 s21-antenna-1)
    (is-perspective radiation-pattern s21-antenna-1)
    (is-perspective dock s21-antenna-1)
    (is-perspective front s21-antenna-1)
    (is-perspective above s21-antenna-1)
    (is-perspective below s21-antenna-1)
    (is-perspective left s21-antenna-1)
    (is-perspective right s21-antenna-1)
    (is-perspective front-below s21-antenna-1)
    (is-perspective dynamic-inspection360 s21-antenna-2)
    (is-perspective radiation-pattern s21-antenna-2)
    (is-perspective dock s21-antenna-2)
    (is-perspective front s21-antenna-2)
    (is-perspective above s21-antenna-2)
    (is-perspective below s21-antenna-2)
    (is-perspective left s21-antenna-2)
    (is-perspective right s21-antenna-2)
    (is-perspective front-below s21-antenna-2)
    (is-perspective dynamic-inspection360 s21-antenna-3)
    (is-perspective radiation-pattern s21-antenna-3)
    (is-perspective dock s21-antenna-3)
    (is-perspective front s21-antenna-3)
    (is-perspective above s21-antenna-3)
    (is-perspective below s21-antenna-3)
    (is-perspective left s21-antenna-3)
    (is-perspective right s21-antenna-3)
    (is-perspective front-below s21-antenna-3)
    (is-perspective dynamic-inspection360 s21-antenna-4)
    (is-perspective radiation-pattern s21-antenna-4)
    (is-perspective dock s21-antenna-4)
    (is-perspective front s21-antenna-4)
    (is-perspective above s21-antenna-4)
    (is-perspective below s21-antenna-4)
    (is-perspective left s21-antenna-4)
    (is-perspective right s21-antenna-4)
    (is-perspective front-below s21-antenna-4)
    (is-perspective dynamic-inspection360 s21-antenna-5)
    (is-perspective radiation-pattern s21-antenna-5)
    (is-perspective dock s21-antenna-5)
    (is-perspective front s21-antenna-5)
    (is-perspective above s21-antenna-5)
    (is-perspective below s21-antenna-5)
    (is-perspective left s21-antenna-5)
    (is-perspective right s21-antenna-5)
    (is-perspective front-below s21-antenna-5)
    (is-perspective dynamic-inspection360 s21-antenna-6)
    (is-perspective radiation-pattern s21-antenna-6)
    (is-perspective dock s21-antenna-6)
    (is-perspective front s21-antenna-6)
    (is-perspective above s21-antenna-6)
    (is-perspective below s21-antenna-6)
    (is-perspective left s21-antenna-6)
    (is-perspective right s21-antenna-6)
    (is-perspective front-below s21-antenna-6)

    (is-dock launch-pad)
    (is-dock dock)

    (is-charging-dock s19-tower-launchpad launch-pad)

    (is-clear-perspective dynamic-inspection360 s19-antenna-1)
    (is-clear-perspective radiation-pattern s19-antenna-1)
    (is-clear-perspective front s19-antenna-1)
    (is-clear-perspective above s19-antenna-1)
    (is-clear-perspective below s19-antenna-1)
    (is-clear-perspective left s19-antenna-1)
    (is-clear-perspective right s19-antenna-1)
    (is-clear-perspective front-below s19-antenna-1)
    (is-clear-perspective dynamic-inspection360 s19-antenna-2)
    (is-clear-perspective radiation-pattern s19-antenna-2)
    (is-clear-perspective front s19-antenna-2)
    (is-clear-perspective above s19-antenna-2)
    (is-clear-perspective below s19-antenna-2)
    (is-clear-perspective left s19-antenna-2)
    (is-clear-perspective right s19-antenna-2)
    (is-clear-perspective front-below s19-antenna-2)
    (is-clear-perspective dynamic-inspection360 s19-antenna-3)
    (is-clear-perspective radiation-pattern s19-antenna-3)
    (is-clear-perspective front s19-antenna-3)
    (is-clear-perspective above s19-antenna-3)
    (is-clear-perspective below s19-antenna-3)
    (is-clear-perspective left s19-antenna-3)
    (is-clear-perspective right s19-antenna-3)
    (is-clear-perspective front-below s19-antenna-3)
    (is-clear-perspective dynamic-inspection360 s19-antenna-4)
    (is-clear-perspective radiation-pattern s19-antenna-4)
    (is-clear-perspective front s19-antenna-4)
    (is-clear-perspective above s19-antenna-4)
    (is-clear-perspective below s19-antenna-4)
    (is-clear-perspective left s19-antenna-4)
    (is-clear-perspective right s19-antenna-4)
    (is-clear-perspective front-below s19-antenna-4)
    (is-clear-perspective dynamic-inspection360 s19-antenna-5)
    (is-clear-perspective radiation-pattern s19-antenna-5)
    (is-clear-perspective front s19-antenna-5)
    (is-clear-perspective above s19-antenna-5)
    (is-clear-perspective below s19-antenna-5)
    (is-clear-perspective left s19-antenna-5)
    (is-clear-perspective right s19-antenna-5)
    (is-clear-perspective front-below s19-antenna-5)
    (is-clear-perspective dynamic-inspection360 s19-antenna-6)
    (is-clear-perspective radiation-pattern s19-antenna-6)
    (is-clear-perspective front s19-antenna-6)
    (is-clear-perspective above s19-antenna-6)
    (is-clear-perspective below s19-antenna-6)
    (is-clear-perspective left s19-antenna-6)
    (is-clear-perspective right s19-antenna-6)
    (is-clear-perspective front-below s19-antenna-6)
    (is-clear-perspective dynamic-inspection360 s20-antenna-1)
    (is-clear-perspective radiation-pattern s20-antenna-1)
    (is-clear-perspective front s20-antenna-1)
    (is-clear-perspective above s20-antenna-1)
    (is-clear-perspective below s20-antenna-1)
    (is-clear-perspective left s20-antenna-1)
    (is-clear-perspective right s20-antenna-1)
    (is-clear-perspective front-below s20-antenna-1)
    (is-clear-perspective dynamic-inspection360 s20-antenna-2)
    (is-clear-perspective radiation-pattern s20-antenna-2)
    (is-clear-perspective front s20-antenna-2)
    (is-clear-perspective above s20-antenna-2)
    (is-clear-perspective below s20-antenna-2)
    (is-clear-perspective left s20-antenna-2)
    (is-clear-perspective right s20-antenna-2)
    (is-clear-perspective front-below s20-antenna-2)
    (is-clear-perspective dynamic-inspection360 s20-antenna-3)
    (is-clear-perspective radiation-pattern s20-antenna-3)
    (is-clear-perspective front s20-antenna-3)
    (is-clear-perspective above s20-antenna-3)
    (is-clear-perspective below s20-antenna-3)
    (is-clear-perspective left s20-antenna-3)
    (is-clear-perspective right s20-antenna-3)
    (is-clear-perspective front-below s20-antenna-3)
    (is-clear-perspective dynamic-inspection360 s20-antenna-4)
    (is-clear-perspective radiation-pattern s20-antenna-4)
    (is-clear-perspective front s20-antenna-4)
    (is-clear-perspective above s20-antenna-4)
    (is-clear-perspective below s20-antenna-4)
    (is-clear-perspective left s20-antenna-4)
    (is-clear-perspective right s20-antenna-4)
    (is-clear-perspective front-below s20-antenna-4)
    (is-clear-perspective dynamic-inspection360 s20-antenna-5)
    (is-clear-perspective radiation-pattern s20-antenna-5)
    (is-clear-perspective front s20-antenna-5)
    (is-clear-perspective above s20-antenna-5)
    (is-clear-perspective below s20-antenna-5)
    (is-clear-perspective left s20-antenna-5)
    (is-clear-perspective right s20-antenna-5)
    (is-clear-perspective front-below s20-antenna-5)
    (is-clear-perspective dynamic-inspection360 s20-antenna-6)
    (is-clear-perspective radiation-pattern s20-antenna-6)
    (is-clear-perspective front s20-antenna-6)
    (is-clear-perspective above s20-antenna-6)
    (is-clear-perspective below s20-antenna-6)
    (is-clear-perspective left s20-antenna-6)
    (is-clear-perspective right s20-antenna-6)
    (is-clear-perspective front-below s20-antenna-6)
    (is-clear-perspective dynamic-inspection360 s21-antenna-1)
    (is-clear-perspective radiation-pattern s21-antenna-1)
    (is-clear-perspective front s21-antenna-1)
    (is-clear-perspective above s21-antenna-1)
    (is-clear-perspective below s21-antenna-1)
    (is-clear-perspective left s21-antenna-1)
    (is-clear-perspective right s21-antenna-1)
    (is-clear-perspective front-below s21-antenna-1)
    (is-clear-perspective dynamic-inspection360 s21-antenna-2)
    (is-clear-perspective radiation-pattern s21-antenna-2)
    (is-clear-perspective front s21-antenna-2)
    (is-clear-perspective above s21-antenna-2)
    (is-clear-perspective below s21-antenna-2)
    (is-clear-perspective left s21-antenna-2)
    (is-clear-perspective right s21-antenna-2)
    (is-clear-perspective front-below s21-antenna-2)
    (is-clear-perspective dynamic-inspection360 s21-antenna-3)
    (is-clear-perspective radiation-pattern s21-antenna-3)
    (is-clear-perspective front s21-antenna-3)
    (is-clear-perspective above s21-antenna-3)
    (is-clear-perspective below s21-antenna-3)
    (is-clear-perspective left s21-antenna-3)
    (is-clear-perspective right s21-antenna-3)
    (is-clear-perspective front-below s21-antenna-3)
    (is-clear-perspective dynamic-inspection360 s21-antenna-4)
    (is-clear-perspective radiation-pattern s21-antenna-4)
    (is-clear-perspective front s21-antenna-4)
    (is-clear-perspective above s21-antenna-4)
    (is-clear-perspective below s21-antenna-4)
    (is-clear-perspective left s21-antenna-4)
    (is-clear-perspective right s21-antenna-4)
    (is-clear-perspective front-below s21-antenna-4)
    (is-clear-perspective dynamic-inspection360 s21-antenna-5)
    (is-clear-perspective radiation-pattern s21-antenna-5)
    (is-clear-perspective front s21-antenna-5)
    (is-clear-perspective above s21-antenna-5)
    (is-clear-perspective below s21-antenna-5)
    (is-clear-perspective left s21-antenna-5)
    (is-clear-perspective right s21-antenna-5)
    (is-clear-perspective front-below s21-antenna-5)
    (is-clear-perspective dynamic-inspection360 s21-antenna-6)
    (is-clear-perspective radiation-pattern s21-antenna-6)
    (is-clear-perspective front s21-antenna-6)
    (is-clear-perspective above s21-antenna-6)
    (is-clear-perspective below s21-antenna-6)
    (is-clear-perspective left s21-antenna-6)
    (is-clear-perspective right s21-antenna-6)
    (is-clear-perspective front-below s21-antenna-6)

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












    (= (max-charge drone3) 350)

    (= (current-charge drone3) 0)

    (= (velocity drone3) 3)

    (= (distance s19-tower-launchpad s20-tower-launchpad) 34.8157)
    (= (distance s19-tower-launchpad s21-tower-launchpad) 34.8157)
    (= (distance s20-tower-launchpad s19-tower-launchpad) 34.8157)
    (= (distance s20-tower-launchpad s21-tower-launchpad) 39.134)
    (= (distance s21-tower-launchpad s19-tower-launchpad) 34.8157)
    (= (distance s21-tower-launchpad s20-tower-launchpad) 39.134)
    (= (distance s19-tower-launchpad s19-antenna-1) 5.79903)
    (= (distance s19-antenna-1 s19-tower-launchpad) 5.79903)
    (= (distance s19-tower-launchpad s19-antenna-2) 5.48844)
    (= (distance s19-antenna-2 s19-tower-launchpad) 5.48844)
    (= (distance s19-tower-launchpad s19-antenna-3) 5.11215)
    (= (distance s19-antenna-3 s19-tower-launchpad) 5.11215)
    (= (distance s19-tower-launchpad s19-antenna-4) 5.74439)
    (= (distance s19-antenna-4 s19-tower-launchpad) 5.74439)
    (= (distance s19-tower-launchpad s19-antenna-5) 4.98131)
    (= (distance s19-antenna-5 s19-tower-launchpad) 4.98131)
    (= (distance s19-tower-launchpad s19-antenna-6) 5.53998)
    (= (distance s19-antenna-6 s19-tower-launchpad) 5.53998)
    (= (distance s19-antenna-1 s19-antenna-2) 1.86652)
    (= (distance s19-antenna-2 s19-antenna-1) 1.86652)
    (= (distance s19-antenna-1 s19-antenna-3) 2.05309)
    (= (distance s19-antenna-3 s19-antenna-1) 2.05309)
    (= (distance s19-antenna-1 s19-antenna-4) 1.02733)
    (= (distance s19-antenna-4 s19-antenna-1) 1.02733)
    (= (distance s19-antenna-1 s19-antenna-5) 1.30764)
    (= (distance s19-antenna-5 s19-antenna-1) 1.30764)
    (= (distance s19-antenna-1 s19-antenna-6) 1.33243)
    (= (distance s19-antenna-6 s19-antenna-1) 1.33243)
    (= (distance s19-antenna-2 s19-antenna-3) 1.62315)
    (= (distance s19-antenna-3 s19-antenna-2) 1.62315)
    (= (distance s19-antenna-2 s19-antenna-4) 1.79119)
    (= (distance s19-antenna-4 s19-antenna-2) 1.79119)
    (= (distance s19-antenna-2 s19-antenna-5) 1.98174)
    (= (distance s19-antenna-5 s19-antenna-2) 1.98174)
    (= (distance s19-antenna-2 s19-antenna-6) 1.3704)
    (= (distance s19-antenna-6 s19-antenna-2) 1.3704)
    (= (distance s19-antenna-3 s19-antenna-4) 1.30392)
    (= (distance s19-antenna-4 s19-antenna-3) 1.30392)
    (= (distance s19-antenna-3 s19-antenna-5) 2.09936)
    (= (distance s19-antenna-5 s19-antenna-3) 2.09936)
    (= (distance s19-antenna-3 s19-antenna-6) 2.04269)
    (= (distance s19-antenna-6 s19-antenna-3) 2.04269)
    (= (distance s19-antenna-4 s19-antenna-5) 1.95084)
    (= (distance s19-antenna-5 s19-antenna-4) 1.95084)
    (= (distance s19-antenna-4 s19-antenna-6) 1.06482)
    (= (distance s19-antenna-6 s19-antenna-4) 1.06482)
    (= (distance s19-antenna-5 s19-antenna-6) 1.78581)
    (= (distance s19-antenna-6 s19-antenna-5) 1.78581)
    (= (distance s20-tower-launchpad s20-antenna-1) 5.79903)
    (= (distance s20-antenna-1 s20-tower-launchpad) 5.79903)
    (= (distance s20-tower-launchpad s20-antenna-2) 5.48844)
    (= (distance s20-antenna-2 s20-tower-launchpad) 5.48844)
    (= (distance s20-tower-launchpad s20-antenna-3) 5.11215)
    (= (distance s20-antenna-3 s20-tower-launchpad) 5.11215)
    (= (distance s20-tower-launchpad s20-antenna-4) 5.74439)
    (= (distance s20-antenna-4 s20-tower-launchpad) 5.74439)
    (= (distance s20-tower-launchpad s20-antenna-5) 4.98131)
    (= (distance s20-antenna-5 s20-tower-launchpad) 4.98131)
    (= (distance s20-tower-launchpad s20-antenna-6) 5.53998)
    (= (distance s20-antenna-6 s20-tower-launchpad) 5.53998)
    (= (distance s20-antenna-1 s20-antenna-2) 1.86652)
    (= (distance s20-antenna-2 s20-antenna-1) 1.86652)
    (= (distance s20-antenna-1 s20-antenna-3) 2.05309)
    (= (distance s20-antenna-3 s20-antenna-1) 2.05309)
    (= (distance s20-antenna-1 s20-antenna-4) 1.02733)
    (= (distance s20-antenna-4 s20-antenna-1) 1.02733)
    (= (distance s20-antenna-1 s20-antenna-5) 1.30764)
    (= (distance s20-antenna-5 s20-antenna-1) 1.30764)
    (= (distance s20-antenna-1 s20-antenna-6) 1.33243)
    (= (distance s20-antenna-6 s20-antenna-1) 1.33243)
    (= (distance s20-antenna-2 s20-antenna-3) 1.62315)
    (= (distance s20-antenna-3 s20-antenna-2) 1.62315)
    (= (distance s20-antenna-2 s20-antenna-4) 1.79119)
    (= (distance s20-antenna-4 s20-antenna-2) 1.79119)
    (= (distance s20-antenna-2 s20-antenna-5) 1.98174)
    (= (distance s20-antenna-5 s20-antenna-2) 1.98174)
    (= (distance s20-antenna-2 s20-antenna-6) 1.3704)
    (= (distance s20-antenna-6 s20-antenna-2) 1.3704)
    (= (distance s20-antenna-3 s20-antenna-4) 1.30392)
    (= (distance s20-antenna-4 s20-antenna-3) 1.30392)
    (= (distance s20-antenna-3 s20-antenna-5) 2.09936)
    (= (distance s20-antenna-5 s20-antenna-3) 2.09936)
    (= (distance s20-antenna-3 s20-antenna-6) 2.04269)
    (= (distance s20-antenna-6 s20-antenna-3) 2.04269)
    (= (distance s20-antenna-4 s20-antenna-5) 1.95084)
    (= (distance s20-antenna-5 s20-antenna-4) 1.95084)
    (= (distance s20-antenna-4 s20-antenna-6) 1.06482)
    (= (distance s20-antenna-6 s20-antenna-4) 1.06482)
    (= (distance s20-antenna-5 s20-antenna-6) 1.78581)
    (= (distance s20-antenna-6 s20-antenna-5) 1.78581)
    (= (distance s21-tower-launchpad s21-antenna-1) 5.79903)
    (= (distance s21-antenna-1 s21-tower-launchpad) 5.79903)
    (= (distance s21-tower-launchpad s21-antenna-2) 5.48844)
    (= (distance s21-antenna-2 s21-tower-launchpad) 5.48844)
    (= (distance s21-tower-launchpad s21-antenna-3) 5.11215)
    (= (distance s21-antenna-3 s21-tower-launchpad) 5.11215)
    (= (distance s21-tower-launchpad s21-antenna-4) 5.74439)
    (= (distance s21-antenna-4 s21-tower-launchpad) 5.74439)
    (= (distance s21-tower-launchpad s21-antenna-5) 4.98131)
    (= (distance s21-antenna-5 s21-tower-launchpad) 4.98131)
    (= (distance s21-tower-launchpad s21-antenna-6) 5.53998)
    (= (distance s21-antenna-6 s21-tower-launchpad) 5.53998)
    (= (distance s21-antenna-1 s21-antenna-2) 1.86652)
    (= (distance s21-antenna-2 s21-antenna-1) 1.86652)
    (= (distance s21-antenna-1 s21-antenna-3) 2.05309)
    (= (distance s21-antenna-3 s21-antenna-1) 2.05309)
    (= (distance s21-antenna-1 s21-antenna-4) 1.02733)
    (= (distance s21-antenna-4 s21-antenna-1) 1.02733)
    (= (distance s21-antenna-1 s21-antenna-5) 1.30764)
    (= (distance s21-antenna-5 s21-antenna-1) 1.30764)
    (= (distance s21-antenna-1 s21-antenna-6) 1.33243)
    (= (distance s21-antenna-6 s21-antenna-1) 1.33243)
    (= (distance s21-antenna-2 s21-antenna-3) 1.62315)
    (= (distance s21-antenna-3 s21-antenna-2) 1.62315)
    (= (distance s21-antenna-2 s21-antenna-4) 1.79119)
    (= (distance s21-antenna-4 s21-antenna-2) 1.79119)
    (= (distance s21-antenna-2 s21-antenna-5) 1.98174)
    (= (distance s21-antenna-5 s21-antenna-2) 1.98174)
    (= (distance s21-antenna-2 s21-antenna-6) 1.3704)
    (= (distance s21-antenna-6 s21-antenna-2) 1.3704)
    (= (distance s21-antenna-3 s21-antenna-4) 1.30392)
    (= (distance s21-antenna-4 s21-antenna-3) 1.30392)
    (= (distance s21-antenna-3 s21-antenna-5) 2.09936)
    (= (distance s21-antenna-5 s21-antenna-3) 2.09936)
    (= (distance s21-antenna-3 s21-antenna-6) 2.04269)
    (= (distance s21-antenna-6 s21-antenna-3) 2.04269)
    (= (distance s21-antenna-4 s21-antenna-5) 1.95084)
    (= (distance s21-antenna-5 s21-antenna-4) 1.95084)
    (= (distance s21-antenna-4 s21-antenna-6) 1.06482)
    (= (distance s21-antenna-6 s21-antenna-4) 1.06482)
    (= (distance s21-antenna-5 s21-antenna-6) 1.78581)
    (= (distance s21-antenna-6 s21-antenna-5) 1.78581)

    (= (max-dock s19-antenna-1) 3)
    (= (max-dock s19-antenna-2) 3)
    (= (max-dock s19-antenna-3) 3)
    (= (max-dock s19-antenna-4) 3)
    (= (max-dock s19-antenna-5) 3)
    (= (max-dock s19-antenna-6) 3)
    (= (max-dock s20-antenna-1) 3)
    (= (max-dock s20-antenna-2) 3)
    (= (max-dock s20-antenna-3) 3)
    (= (max-dock s20-antenna-4) 3)
    (= (max-dock s20-antenna-5) 3)
    (= (max-dock s20-antenna-6) 3)
    (= (max-dock s21-antenna-1) 3)
    (= (max-dock s21-antenna-2) 3)
    (= (max-dock s21-antenna-3) 3)
    (= (max-dock s21-antenna-4) 3)
    (= (max-dock s21-antenna-5) 3)
    (= (max-dock s21-antenna-6) 3)
    (= (max-dock s19-tower-launchpad) 0)
    (= (max-dock s20-tower-launchpad) 12)
    (= (max-dock s21-tower-launchpad) 12)

    (= (inspection-duration image) 1)
    (= (inspection-duration thermal-image) 2)
    (= (inspection-duration signal-measurement) 2)

    (= (capability-consumption camera) 2)
    (= (capability-consumption thermal-camera) 2)
    (= (capability-consumption signal-measurer) 2)



)
(:goal (and
    (is-at drone3 s19-tower-launchpad launch-pad)
    (know signal-measurement s20-antenna-1 front)
    (know signal-measurement s20-antenna-1 above)
    (know signal-measurement s20-antenna-1 below)
    (know signal-measurement s20-antenna-1 left)
    (know signal-measurement s20-antenna-1 right)
    (know signal-measurement s20-antenna-1 front-below)
    (know signal-measurement s20-antenna-2 front)
    (know signal-measurement s20-antenna-2 above)
    (know signal-measurement s20-antenna-2 below)
    (know signal-measurement s20-antenna-2 left)
    (know signal-measurement s20-antenna-2 right)
    (know signal-measurement s20-antenna-2 front-below)
    (know signal-measurement s20-antenna-3 front)
    (know signal-measurement s20-antenna-3 above)
    (know signal-measurement s20-antenna-3 below)
    (know signal-measurement s20-antenna-3 left)
    (know signal-measurement s20-antenna-3 right)
    (know signal-measurement s20-antenna-3 front-below)
    (know signal-measurement s20-antenna-4 front)
    (know signal-measurement s20-antenna-4 above)
    (know signal-measurement s20-antenna-4 below)
    (know signal-measurement s20-antenna-4 left)
    (know signal-measurement s20-antenna-4 right)
    (know signal-measurement s20-antenna-4 front-below)
    (know signal-measurement s20-antenna-5 front)
    (know signal-measurement s20-antenna-5 above)
    (know signal-measurement s20-antenna-5 below)
    (know signal-measurement s20-antenna-5 left)
    (know signal-measurement s20-antenna-5 right)
    (know signal-measurement s20-antenna-5 front-below)
    (know signal-measurement s20-antenna-6 front)
    (know signal-measurement s20-antenna-6 above)
    (know signal-measurement s20-antenna-6 below)
    (know signal-measurement s20-antenna-6 left)
    (know signal-measurement s20-antenna-6 right)
    (know signal-measurement s20-antenna-6 front-below)
))
)
