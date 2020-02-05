#include <iostream>
#include <cassert>
using namespace std;

#include <leveldb/db.h>

int main(int argc, char **argv)
{
	if (argc <= 2) {
		cout << "Usage: " << argv[0] << " key "
		     << "value" << endl;
		return 0;
	}

	leveldb::DB *db;
	leveldb::Options options;

	options.create_if_missing = true;

	leveldb::Status status =
	    leveldb::DB::Open(options, "./leveldb/testdb", &db);
	assert(status.ok());

	// string key = "MyKey29", value="Hello,World!", result;
	string key = argv[1], value = argv[2], result;
	db->Put(leveldb::WriteOptions(), key, value);
	db->Get(leveldb::ReadOptions(), key, &result);

	cout << "result = " << result << endl;

	delete db;

	return 0;
}

// vim: se ts=8 sw=8
