#include <cassert>
#include <iostream>
#include <leveldb/db.h>
using namespace std;

int main()
{
	leveldb::DB *db;
	leveldb::Options options;

	options.create_if_missing = true;

	leveldb::Status status =
	    leveldb::DB::Open(options, "/tmp/create_db", &db);
	db->Put(leveldb::WriteOptions(), "Hello", "World");
	assert(status.ok());

	delete db;

	return 0;
}

// vim: se ts=8 sw=8
