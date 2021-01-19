;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DESCRIPTION
;;; MYLIB IS A TEMPLATE TO HELP USERS TO CREATE HIS OWN OM LIBRARY, COMPATIBLE WITH OM#.
;;; BY PAULO HENRIQUE RAPOSO - 2021


(in-package :om)

(mapc 'compile&load (list
                         (make-pathname  :directory (append (pathname-directory *load-pathname*) (list "sources")) :name "package" :type "lisp") ;package.lisp file should be compiled first (sources)! 
                         (make-pathname  :directory (append (pathname-directory *load-pathname*) (list "sources")) :name "mylib-functions" :type "lisp") ;lisp file 1 - code
                        ; (make-pathname  :directory (append (pathname-directory *load-pathname*) (list "sources")) :name "filename2" :type "lisp") ; lisp file 2 - optional
                        ; (... ) 
                    )
)

(fill-library '( ("FOLDER1" Nil Nil (mylib::MY-FUNCTION1) Nil)

                ("FOLDER2" Nil Nil (mylib::MY-FUNCTION2) Nil)

               ;("FOLDER3" Nil Nil (mylib::MY-FUNCTION3 mylib::MY-FUNCTION3 ... ) Nil)

))

(print 
"
MYLIB - TEMPLATE
NAME - AUTHOR - YEAR - VERSION ...

")



