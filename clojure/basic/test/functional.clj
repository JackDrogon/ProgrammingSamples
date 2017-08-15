(defn lazy-seq-fib
  ([]
    (concat [0 1] (lazy-seq-fib 0N 1N)))
  ([a b]
    (let [n (+ a b)]
      (lazy-seq
        (cons n (lazy-seq-fib b n))))))
