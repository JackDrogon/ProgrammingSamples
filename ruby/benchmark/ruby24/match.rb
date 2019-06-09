require 'benchmark/ips'

Benchmark.ips do |bench|
  EMPTY_STRING  = ''
  WHITESPACE    = "   \n\t\n   "
  CONTAINS_TEXT = '   hi       '

  PATTERN = /\A[[:space:]]*\z/

  bench.report('Regexp#match?') do
    PATTERN.match?(EMPTY_STRING)
    PATTERN.match?(WHITESPACE)
    PATTERN.match?(CONTAINS_TEXT)
  end

  bench.report('Regexp#match') do
    PATTERN.match(EMPTY_STRING)
    PATTERN.match(WHITESPACE)
    PATTERN.match(CONTAINS_TEXT)
  end

  bench.report('Regexp#=~') do
    PATTERN =~ EMPTY_STRING
    PATTERN =~ WHITESPACE
    PATTERN =~ CONTAINS_TEXT
  end

  bench.report('Regexp#===') do
    PATTERN === EMPTY_STRING
    PATTERN === WHITESPACE
    PATTERN === CONTAINS_TEXT
  end

  bench.compare!
end
