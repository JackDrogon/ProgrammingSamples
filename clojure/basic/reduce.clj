(reduce + 50 [1 2 3])
(reduce max [0 1 -2 3])
(reduce (fn [m v]
          (assoc m v (* v v)))
        {}
        [1 2 3 4])

(reduce #(assoc % %2 (* %2 %2))
        {}
        [1 2 3 4])
(def x (reduce odd?))
