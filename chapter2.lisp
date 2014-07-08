(defun our-remove-if
  (fn lst)
  (if (null lst)
    nil
    (if (funcall fn (car lst))
      (our-remove-if fn (cdr lst))
      (cons (car lst) (our-remove-if fn (cdr lst))))))

(let ((y 7))
	(defun scope-test
		(x)
		(list x y)))

(let ((counter 0))
	(defun new () (incf counter))
	(defun reset () (setq counter 0)))

(defun make-adder
	(n)
	(lambda (x) (+ n x)))

(setq add2 (make-adder 2)
	  add3 (make-adder 3))

(defun flexible-add
	(n)
	(lambda (x &optional change)
		(if change
			(setq n x)
			(+ n x))))

(setq addx (flexible-add 3))

(funcall addx 4)

(funcall addx 10 't)

(funcall addx 4)

(defun make-dbms
	(db)
	(list
		#'(lambda (key)
			(cdr (assoc key db)))
		#'(lambda (key val)
			(push (cons key val) db))
		#'(lambda (key)
			
	