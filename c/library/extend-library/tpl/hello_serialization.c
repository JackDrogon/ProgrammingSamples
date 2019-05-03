#include <tpl.h>

int main(int argc, char *argv[])
{
	tpl_node *tn;
	int id = 0;
	char *name, *names[] = {"joe", "bob", "cary"};

	tn = tpl_map("A(is)", &id, &name);

	for (name = names[0]; id < 3; name = names[++id]) {
		tpl_pack(tn, 1);
	}

	tpl_dump(tn, TPL_FILE, "users.tpl");
	tpl_free(tn);
}
