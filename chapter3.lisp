(defun bad-reverse
	(lst)
	(let* ((len (length lst))
		   (ilimit (truncate (/ len 2))))
		(do ((i 0 (1+ i))
			 (j (1- len) (1- j)))
			((>= i ilimit))
		  (rotatef (nth i lst) (nth j lst)))))

(defun good-reverse
	(lst)
	(labels ((rev
				(lst acc)
				(if (null lst)
					acc
					(rev (cdr lst) (cons (car lst) acc)))))
		(rev lst nil)))