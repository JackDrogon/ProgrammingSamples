#include "tpl.h"

int main(int argc, char *argv[])
{
	tpl_node *tn;
	int id;
	char *name;

	tn = tpl_map("A(is)", &id, &name);
	tpl_load(tn, TPL_FILE, "users.tpl");

	while (tpl_unpack(tn, 1) > 0) {
		printf("id %d, user %s\n", id, name);
		free(name);
	}
	tpl_free(tn);
}
