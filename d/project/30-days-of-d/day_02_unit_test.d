import std.stdio : writeln;

struct Vector3 {
	double x;
	double y;
	double z;

	unittest {
		// Simple
		assert(1 + 1 == 2);
		assert(1 + 2 == 2);
	}

	double dot(Vector3 rhs) const {
		return x*rhs.x + y*rhs.y + z*rhs.z;
	}

	// That's okay!
	unittest {
		assert(Vector3(1,0,0).dot(
					Vector3(0,1,0)) == 0);
	}

	string toString() const {
		import std.string : format;
		return format("x:%.1f y:%.1f z:%.1f",
				x, y, z);
	}

	// .. and that too!
	unittest {
		assert(Vector3(1,0,0).toString() ==
				"x:1.0 y:0.0 z:0.0");
	}
}

void main()
{
	Vector3 vec = Vector3(0,1,0);
	writeln(`This vector has been tested: `,
			vec);
}

/*
   Or just somewhere else.
   Nothing is compiled in and just
   ignored in normal mode. Run dub test
   locally or compile with dmd -unittest
   to actually test your modules.
 */
unittest {
	import std.math : isNaN;
	Vector3 vec;
	// .init a special built-in property that
	// returns the initial value of type,
	// a NaN for floating points values.
	assert(vec.x.init.isNaN);
}
