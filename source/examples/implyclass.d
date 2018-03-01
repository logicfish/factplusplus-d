module examples.implyclass;

/*
import factpp

reasoner = factpp.Reasoner()

top_data = reasoner.data_top()

cls = reasoner.concept('A')

role = reasoner.data_role('R')
reasoner.set_d_domain(role, cls)
reasoner.set_d_range(role, reasoner.type_float)

rt = reasoner.d_cardinality(1, role, top_data)
reasoner.implies_concepts(cls, rt)

# a is instance of A due to use of R
a = reasoner.individual('a')
reasoner.value_of_float(a, role, 1)

print('a added, consistent:', reasoner.is_consistent())
print('a instance of A:', reasoner.is_instance(a, cls))

# vim: sw=4:et:ai
*/

unittest {
  import std.stdio;
  import fact;
  
  writeln("Test imply-class");
  auto reasoner = fact_reasoning_kernel_new();
  auto top_data = reasoner.fact_data_top();
  auto cls = reasoner.fact_concept("A");
  auto role = reasoner.fact_data_role("R");
  reasoner.fact_set_d_domain(role,cls);
  auto real_data_type = reasoner.fact_get_real_data_type();
  reasoner.fact_set_d_range(role,real_data_type);
  auto rt = reasoner.fact_d_cardinality(1, role, top_data);
  reasoner.fact_implies_concepts(cls, rt);

    
  // a is instance of A due to use of R
  auto a = reasoner.fact_individual("a");
  auto value = reasoner.fact_data_value("1", real_data_type);
  reasoner.fact_value_of(a, role, value);
  assert(reasoner.fact_is_kb_consistent());
  //writeln("a added, consistent:", reasoner.fact_is_kb_consistent());
  assert(reasoner.fact_is_instance(a, cls));
  //writeln("a instance of A:", reasoner.fact_is_instance(a, cls));
}
