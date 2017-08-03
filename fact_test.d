module fact_test;

import fact;
import std.stdio,
	std.string;
import core.stdc.stdarg;

void print2Darray ( const char*** names ) {
	writefln("[");
	int n=0;
	const (char*)* syns = names[0];
	while ( syns != null )
	{
		printf("[");
		int m = 0;
		const (char)* name;
		while ( (name = syns[m++]) != null)
			printf("%s ", name);
		writefln("]");
		syns=names[++n];
	}
	writefln("]");
}

int main ( ) {
	puts("Starting FaCT++ C interface tests");
	// create kernel
	fact_reasoning_kernel* k = fact_reasoning_kernel_new();

	// create classes C,D, property R
	puts("Creating entities");
	fact_concept_expression* c = fact_concept(k,"C");
	fact_concept_expression* d = fact_concept(k,"D");
	fact_individual_expression* i = fact_individual(k,"I");
	fact_o_role_expression* r = fact_object_role(k,"R");

	// create C [= ER.T, ER.T [= D
	puts("Creating axioms");
	fact_concept_expression* some = fact_o_exists ( k, r, fact_top(k));
	fact_implies_concepts ( k, c, some );
	fact_implies_concepts ( k, some, d );
	fact_instance_of ( k, i, c );

	// classify KB is not necessary: it's done automatically depending on a query
	puts("Classifying ontology");
	fact_classify_kb(k);
	
	
	// check whether C [= D
	puts("Is C subsumed by D?");
	if ( fact_is_subsumed_by(k,c,d) )
		puts("Yes!\n");
	else
		puts("No...\n");

	// create a concept actor and use it to get all superclasses of C
	puts("All superclasses of C:");
	fact_actor* actor = _fact_concept_actor_new();
	fact_get_sup_concepts(k,c,0,&actor);
	print2Darray(fact_get_elements_2d(actor));
	fact_actor_free(actor);

	// create an individual actor and use it to get all instances of C
	puts("All instances of C:");
	fact_actor* i_actor = _fact_individual_actor_new();
	fact_get_instances(k, c, &i_actor);
	print2Darray(fact_get_elements_2d(i_actor));
	fact_actor_free(i_actor);

	// get all the properties
	puts("All object properties:");
	fact_o_role_expression* o_top = fact_object_role_top(k);
	actor = _fact_o_role_actor_new();
	fact_get_sub_roles(k,cast(fact_role_expression*)o_top,0,&actor);
	print2Darray(fact_get_elements_2d(actor));
	fact_actor_free(actor);

	// we done so let's free memory
	puts("Destroying reasoning kernel");
	fact_reasoning_kernel_free(k);
	puts("All done");
	return 0;
}