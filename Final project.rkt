#lang racket

;;Calculating height in centimeters

;;Converting feet and inches to centimeters
;1 feet = 30.48cm
;1 inche = 2.45 cm
;cm = (ft * 30.48) + (in * 2.45)

;;My code for converting feet and inches to centimeters
(define cm (lambda (ft in)
;;Conditionals
    (if (<= ft 0) "negative"
        (if (<= in 0) "negative"
;;Converting to two decimal places
        (real->decimal-string(+ (* ft 30.48) (* in 2.45)))))))

;;Multiplying feet by 30.48 and multiplying inches by 2.45. The values will them be added togther.
;;Returns height in centimeters


;;Calculating height in feet and inches

;;Converting centimeters to feet and inches
;1 cm = 0.032808 ft
;1 cm = 0.3937 in

;in = cm/2.54
;feet = in / 12

;;My code for converting centimeters to feet and inches
(define ftin (lambda (cm)
;;Conditionals
    (if (<= cm 0) "negative"
;;Converting to two decimal places
       (real->decimal-string (/ (/ cm 2.54) 12)))))
;;First divide centimeters by 2.54. The value is then divided by 12. 
;;Return height in feet and inches


;;Testing data for feet and inches
(define list '(167 190 145 178 152))

;;Testing malformed data for feet and inches
(define list2 '(167 -190 145 0 152))

