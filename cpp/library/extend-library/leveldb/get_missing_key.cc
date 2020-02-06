#include <cassert>
#include <iostream>
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

	leveldb::Status status = leveldb::DB::Open(options, "/tmp/testdb", &db);
	assert(status.ok());

	// string key = "MyKey29", value="Hello,World!", result;
	string key = argv[1], value = argv[2], result;
	db->Put(leveldb::WriteOptions(), key, value);

	db->Get(leveldb::ReadOptions(), key, &result);

	cout << status.ok() << endl;
	cout << "result = " << result << endl;

	status = db->Get(leveldb::ReadOptions(), "xxxx", &result);

	cout << status.ok() << endl;
	cout << "result = " << result << endl;

	delete db;

	return 0;
}

// vim: se ts=8 sw=8
