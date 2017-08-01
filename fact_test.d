module fact_test;

import fact;
import std.stdio;

void print2Darray ( const char*** names ) {
	writefln("[\n");
	int n=0;
	const (char*)* syns = names[0];
	while ( syns != null )
	{
		printf("[");
		int m = 0;
		const (char)* name;
		while ( (name = syns[m++]) != null)
			writefln("%s ", name);
		writefln("]\n");
		syns=names[++n];
	}
	writefln("]\n");
}

int main ( ) {
	puts("Starting FaCT++ C interface tests");
	// create kernel
	fact_reasoning_kernel* k = fact_reasoning_kernel_new();

	// create classes C,D, property R
	puts("Creating entities");
	/*fact_concept_expression* c = fact_concept(k,"C");
	fact_concept_expression* d = fact_concept(k,"D");
	fact_individual_expression* i = fact_individual(k,"I");
	fact_o_role_expression* r = fact_object_role(k,"R");

	// create C [= ER.T, ER.T [= D
	puts("Creating axioms");
	fact_concept_expression* some = fact_o_exists ( k, r, fact_top(k));
	fact_implies_concepts ( k, c, some );
	fact_implies_concepts ( k, some, d );
	fact_instance_of ( k, i, c );*/

	// classify KB is not necessary: it's done automatically depending on a query
	puts("Classifying ontology");
	fact_classify_kb(k);
	return 0;
}