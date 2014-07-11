(defun joiner (obj)
	(typecase obj
		(cons #'append)
		(number #'+)))

(defun join (&rest args)
	(apply (joiner (car args)) args))

(defun make-adder (n)
	#'(lambda (x) (+ x n)))

(setq add3 (make-adder 3))

(defun complement (fn)
	#'(lambda (&rest args) (not (apply fn args))))