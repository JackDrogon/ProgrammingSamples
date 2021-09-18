#include <fstream>
#include <iostream>
using namespace std;

#include <cstdlib>

#include <boost/asio/dispatch.hpp>
#include <boost/asio/post.hpp>
#include <boost/asio/spawn.hpp>
#include <boost/asio/strand.hpp>
#include <boost/asio/thread_pool.hpp>

int main(int argc, char *argv[])
{
	if (argc < 2) {
		cerr << "Usage: " << argv[0] << " <string> <files...>" << endl;
		return EXIT_FAILURE;
	}

	boost::asio::thread_pool thread_pool;
	boost::asio::strand<boost::asio::thread_pool::executor_type>
	    output_strand(thread_pool.get_executor());

	string search_string = argv[1];
	for (int argn = 2; argn < argc; ++argn) {
		string input_file = argv[argn];
		boost::asio::spawn(
		    thread_pool, [=](boost::asio::yield_context yield) {
			    std::ifstream is(input_file.c_str());
			    string line;
			    size_t line_num = 0;
			    while (getline(is, line)) {
				    ++line_num;
				    if (line.find(search_string) ==
					string::npos) {
					    continue;
				    }

				    boost::asio::dispatch(output_strand, [=] {
					    cout << input_file << ":"
						 << line_num << " " << line
						 << endl;
				    });

				    if (line_num % 10 == 0) {
					    post(yield);
				    }
			    }
		    });
	}

	thread_pool.join();
	return 0;
}
