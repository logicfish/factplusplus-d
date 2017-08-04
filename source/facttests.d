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
/*


https://bitbucket.org/wrobell/factplusplus/src/05a702533ef4e13a2466cd1df7379b18a37f9177/factpp/examples/test-object-cardinality.py


reasoner = factpp.Reasoner()


cls_a = reasoner.concept('CLS-A')
cls_b = reasoner.concept('CLS-B')
reasoner.disjoint_concepts([cls_a, cls_b])


r = reasoner.object_role('R')
reasoner.set_o_domain(r, cls_a)
reasoner.set_o_range(r, cls_b)


c = reasoner.individual('C')
reasoner.instance_of(c, cls_a)


restriction_max_one_cls_b = reasoner.max_o_cardinality(1, r, cls_b)
reasoner.implies_concepts(cls_a, restriction_max_one_cls_b)


d = reasoner.individual('D')
reasoner.instance_of(d, cls_b)
reasoner.related_to(c, r, d)
print('consistent after 1st instance:', reasoner.is_consistent())


# add another individual to class C, making ontology inconsistent
x = reasoner.individual('X')
reasoner.instance_of(x, cls_b)
reasoner.related_to(c, r, x)
reasoner.different_individuals([d, x])
print('consistent after 2nd instance:', reasoner.is_consistent())

# add another individual to class C, making ontology inconsistent
x = reasoner.individual('X')
reasoner.instance_of(x, cls_b)
reasoner.related_to(c, r, x)
reasoner.different_individuals([d, x])
print('consistent after 2nd instance:', reasoner.is_consistent())

*/
  fact_reasoning_kernel* k = fact_reasoning_kernel_new();
  fact_concept_expression* cls_a = k.fact_concept("CLS-A");
  fact_concept_expression* cls_b = k.fact_concept("CLS-B");
  k.fact_new_arg_list();
  k.fact_add_arg(cls_a);
  k.fact_add_arg(cls_b);
  k.fact_disjoint_concepts();

  fact_o_role_expression* r = k.fact_object_role("R");
  k.fact_set_o_domain(r,cls_a);
  k.fact_set_o_range(r,cls_b);
  
  auto c = k.fact_individual("C");
  k.fact_instance_of(c, cls_a);
  
  auto restriction_max_one_cls_b = k.fact_o_max_cardinality(1, r, cls_b);
  k.fact_implies_concepts(cls_a, restriction_max_one_cls_b);
  
  auto d = k.fact_individual("D");
  k.fact_instance_of(d, cls_b);
  k.fact_related_to(c,r,d);
  assert(k.fact_is_kb_consistent());
  
  auto x = k.fact_individual("X");
  k.fact_instance_of(x,cls_b);
  k.fact_related_to(c,r,x);
  
  k.fact_new_arg_list();
  k.fact_add_arg(d);
  k.fact_add_arg(x);
  k.fact_process_different();
  assert(!k.fact_is_kb_consistent());
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
