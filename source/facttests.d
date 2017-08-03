module facttests;

import fact;

unittest {
/*

https://bitbucket.org/wrobell/factplusplus/src/05a702533ef4e13a2466cd1df7379b18a37f9177/factpp/examples/test.py?at=factpp&fileviewer=file-view-default

k = lib.fact_reasoning_kernel_new()

c = lib.fact_concept(k, b'C');
d = lib.fact_concept(k, b'D');
r = lib.fact_object_role(k, b'R');

top = lib.fact_top(k)
some = lib.fact_o_exists(k, r, top);
lib.fact_implies_concepts(k, c, some);
lib.fact_implies_concepts(k, some, d);

if lib.fact_is_subsumed_by(k, c, d):
    print('yes!\n')
else:
*/
  fact_reasoning_kernel* k = fact_reasoning_kernel_new();
  fact_concept_expression* c = fact_concept(k,"C");
  fact_concept_expression* d = fact_concept(k,"D");
  fact_o_role_expression* r = fact_object_role(k,"R");
  auto top = fact_top(k);
  auto some = fact_o_exists(k,r,top);
  fact_implies_concepts(k,c,some);
  fact_implies_concepts(k,some,d);
  assert(fact_is_subsumed_by(k,c,d));
}

unittest {
  // Test property
  // https://bitbucket.org/wrobell/factplusplus/src/05a702533ef4e13a2466cd1df7379b18a37f9177/factpp/examples/test-property.py
  fact_reasoning_kernel* k = fact_reasoning_kernel_new();
  fact_concept_expression* c = fact_concept(k,"C");
  fact_concept_expression* d = fact_concept(k,"D");
  fact_concept_expression* e = fact_concept(k,"E");
  fact_o_role_expression* r = fact_object_role(k,"R");
  fact_set_symmetric(k,r);
  fact_set_transitive(k,r);
  fact_related_to(k,c,r,d);
  fact_related_to(k,d,r,e);
  //fact_individual_set* res;
  //fact_get_role_fillers(k,d,r,&res);
  //assert(0);
}

unittest {
  // Test disjoint concepts
  fact_reasoning_kernel* k = fact_reasoning_kernel_new();
  fact_concept_expression* a = fact_concept(k,"A");
  fact_concept_expression* b = fact_concept(k,"B");
  fact_concept_expression* c = fact_concept(k,"C");
  //assert(0);
}
