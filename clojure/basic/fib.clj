(defn fib-pair "fib calc" [[a b]]
  [b (+ a b)])

(println (fib-pair [1 1]))

(defn fib [n] (nth (map first (iterate fib-pair [1 1]))))
