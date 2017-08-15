(ns seven-languages.core
  (:gen-class))

(defn function_test [args]
  (println "Hello," args "!"))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (println "Hello, World!")
  (function_test "Function"))
