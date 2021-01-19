(in-package :mylib)

#|
;;; TEMPLATE FOR OM::DEFMETHOD! DEFINITION ;;;

(om::defmethod! name ((input1 type) (input2 type) (... ...))
        :initvals '( input1-initvals input2-initvals '...)
	:indoc '("description-input1" "description-input2" "...") 
	:icon number for icon
        :menuins '( (input-number (("name1" output) ("name2" output2) ("..." ...)) ) )
        :numouts number ;values construction
	:doc "short documentation"
|#

;;; LISP FUNCTION ;;;

;;; NONSENSE-FUNCTION ;;;

(defun FUN1 (any-number)
 (cond ((> any-number 5) (write "greater than five!"))
       ((= any-number 5) (write "equal five!"))
       (t (write "lower than five!"))))

;;; FACTORIAL - RECURSIVE FUNCTION ;;;

(defun FUN2 (n)
 (if (= n 1)
     1
    (* n (FUN2 (- n 1)))))

;;; OM INTERFACE FUNCTIONS ;;;

(om::defmethod! MY-FUNCTION1 ((any-number number)) 
        :initvals '( 3 )
	:indoc '("Any number.") 
	:icon 01
        :menuins '( (0 (("zero" 0) ("one" 1) ("two" 2) ("three" 3) ("four" 4) ("five" 5) ("six" 6)) ) )
	:doc "Nonsense function: Tells if the number is greater, equal or lower than five."
(x-append (FUN1 any-number) (FUN1 any-number)))

(om::defmethod! MY-FUNCTION2 ((any-number number)) 
        :initvals '( 12 )
	:indoc '("Any number.") 
	:icon 01
	:doc "Recursive function: Returns n! (factorial)."
(FUN2 any-number))