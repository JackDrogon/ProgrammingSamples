CXX = g++
CXXFLAGS = -Wall -g -std=c++20
LDFLAGS = -L/home/linuxbrew/.linuxbrew/lib -lboost_context-mt -lboost_system -static

# g++ fibonacci.cc -L/home/linuxbrew/.linuxbrew/lib -lboost_context-mt -lboost_system -static
fibonacci_for_range: fibonacci_for_range.cc
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)

clean:
	rm -f fibonacci_for_range
