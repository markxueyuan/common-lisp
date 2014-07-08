#_(defun our-remove-if
  (fn lst)
  (if (null lst)
    nil
    (if (funcall fn (car lst))
      (our-remove-if fn (cdr lst))
      (cons (car lst) (our-remove-if fn (cdr lst))))))

(def ^:dynamic *counter* 0)

(defn new-id
  []
  (alter-var-root #'*counter* inc))

(binding [*counter* 5]
  (println *counter*))

(new-id)

(def counter 0)

(defn new-id
  []
  (alter-var-root #'counter inc))

(new-id)
