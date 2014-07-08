(defun stupid-map
	(fn lst)
	(if (null lst)
		nil
		(nconc (list (funcall fn (car lst)))
			   (stupid-map fn (cdr lst)))))

(let ((n (find-if #'(lambda (x) (> x 2)) '(1 2 3 4))))
	(values n ((lambda (x) (* x 2)) n)))

