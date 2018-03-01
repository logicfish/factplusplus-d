module examples.testdisjointclasses;

/*
import factpp

reasoner = factpp.Reasoner()

classes = [
    reasoner.concept('A'),
    reasoner.concept('B'),
    reasoner.concept('C'),
]

reasoner.disjoint_concepts(classes)

a = reasoner.individual('a')
b = reasoner.individual('b')
c = reasoner.individual('c')
reasoner.instance_of(a, classes[0])

print('a is A, consistency:', reasoner.is_consistent())

# inconsistent, b is both instance of class B and C, but B and C are
# disjoint
reasoner.instance_of(b, classes[1])
reasoner.instance_of(b, classes[2])
print('b is B and b is C, consistency:', reasoner.is_consistent())

# vim: sw=4:et:ai
*/

unittest {
  import std.stdio;
  import fact;
  
  writeln("Test disjoint-classes");
  auto reasoner = fact_reasoning_kernel_new();

  auto clsA = reasoner.fact_concept("A");
  auto clsB = reasoner.fact_concept("B");
  auto clsC = reasoner.fact_concept("C");
  
  //reasoner.fact_disjoint_concepts(classes);
  reasoner.fact_new_arg_list;
  reasoner.fact_add_arg(clsA);
  reasoner.fact_add_arg(clsB);
  reasoner.fact_add_arg(clsC);
  reasoner.fact_disjoint_concepts;
  
  auto a = reasoner.fact_individual("a");
  auto b = reasoner.fact_individual("b");
  auto c = reasoner.fact_individual("c");
  reasoner.fact_instance_of(a, clsA);
  
  assert(reasoner.fact_is_kb_consistent());
  
  reasoner.fact_instance_of(b, clsB);
  reasoner.fact_instance_of(b, clsC);
  //print('b is B and b is C, consistency:', reasoner.is_consistent())
  assert(!reasoner.fact_is_kb_consistent());
}

