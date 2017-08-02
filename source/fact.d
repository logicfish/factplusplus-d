/* Converted to D from ../FaCT++.C/fact.h by htod */
module fact;
/* This file is part of the FaCT++ DL reasoner
Copyright (C) 2011-2015 Dmitry Tsarkov and The University of Manchester
Copyright (C) 2015-2017 Dmitry Tsarkov

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
*/

//C     #ifndef FACT_H_INCLUDED
//C     #define FACT_H_INCLUDED

// export specification
//C     #if defined(_WIN32)
//C     #	if defined(FPP_BUILD_SHARED)	/* build DLL */
//C     #		define FPP_EXPORT __declspec(dllexport)
//C     #	else /* use DLL */
//C     #		define FPP_EXPORT __declspec(dllimport)
//C     #	endif
//C     #else
//C     #	define FPP_EXPORT
//C     #endif


//C     #ifdef __cplusplus
//C     extern "C" {
//C     #endif

import std.typecons;
import core.stdc.stdarg;

/* variadic wrapper */
extern(D):
auto _fact_concept_actor_new(...) {
	return fact_concept_actor_new(_argptr);
}
auto _fact_individual_actor_new(...) {
	return fact_individual_actor_new(_argptr);
}
auto _fact_o_role_actor_new(...) {
	return fact_o_role_actor_new(_argptr);
}

/* type declarations */

//C     #define DECLARERUCT(name) typedef struct name ##  name
/* FaCT++ kernel */
//C     DECLARERUCT(fact_reasoning_kernel);
extern (C):
//alias fact_reasoning_kernel fact_reasoning_kernel;
alias fact_reasoning_kernel = Typedef!(void*);
/* progress monitor */
//C     DECLARERUCT(fact_progress_monitor);
alias fact_progress_monitor = Typedef!(void*); //progress_monitor;
/* axiom */
//C     DECLARERUCT(fact_axiom);
alias fact_axiom = Typedef!(void*); //axiom;
/* expression */
//C     DECLARERUCT(fact_expression);
alias fact_expression = Typedef!(void*); //expression;
/* concept expression */
//C     DECLARERUCT(fact_concept_expression);
alias fact_concept_expression = Typedef!(void*); //concept_expression;
/* data- or object-role expression */
//C     DECLARERUCT(fact_role_expression);
alias fact_role_expression = Typedef!(void*); //role_expression;
/* object role expression */
//C     DECLARERUCT(fact_o_role_expression);
alias fact_o_role_expression = Typedef!(void*); //o_role_expression;
/* complex object role expression */
//C     DECLARERUCT(fact_o_role_complex_expression);
alias fact_o_role_complex_expression = Typedef!(void*); //o_role_complex_expression;
/* data role expression */
//C     DECLARERUCT(fact_d_role_expression);
alias fact_d_role_expression = Typedef!(void*); //d_role_expression;
/* individual expression */
//C     DECLARERUCT(fact_individual_expression);
alias fact_individual_expression = Typedef!(void*); //individual_expression;
/* general data expression */
//C     DECLARERUCT(fact_data_expression);
alias fact_data_expression = Typedef!(void*); //data_expression;
/* data type expression */
//C     DECLARERUCT(fact_data_type_expression);
alias fact_data_type_expression = Typedef!(void*); //data_type_expression;
/* data value expression */
//C     DECLARERUCT(fact_data_value_expression);
alias fact_data_value_expression = Typedef!(void*); //data_value_expression;
/* facet expression */
//C     DECLARERUCT(fact_facet_expression);
alias fact_facet_expression = Typedef!(void*); //facet_expression;
/* actor to traverse taxonomy */
//C     DECLARERUCT(fact_actor);
alias fact_actor = Typedef!(void*); //actor;

//C     #undef DECLARERUCT

//C     FPP_EXPORT const immutable(char)* fact_get_version ();
immutable(char)*  fact_get_version(va_list);

//C     FPP_EXPORT fact_reasoning_kernel *fact_reasoning_kernel_new (void);
fact_reasoning_kernel * fact_reasoning_kernel_new();
//C     FPP_EXPORT void fact_reasoning_kernel_free (fact_reasoning_kernel *);
void  fact_reasoning_kernel_free(fact_reasoning_kernel *);

/*
ifOptionSet* getOptions (  );
const ifOptionSet* getOptions (  );
 */

//C     FPP_EXPORT int fact_is_kb_preprocessed (fact_reasoning_kernel *);
int  fact_is_kb_preprocessed(fact_reasoning_kernel *);
//C     FPP_EXPORT int fact_is_kb_classified (fact_reasoning_kernel *);
int  fact_is_kb_classified(fact_reasoning_kernel *);
//C     FPP_EXPORT int fact_is_kb_realised (fact_reasoning_kernel *);
int  fact_is_kb_realised(fact_reasoning_kernel *);
//C     FPP_EXPORT void fact_set_progress_monitor (fact_reasoning_kernel *, fact_progress_monitor *);
void  fact_set_progress_monitor(fact_reasoning_kernel *, fact_progress_monitor *);

//C     FPP_EXPORT void fact_set_verbose_output (fact_reasoning_kernel *, int value);
void  fact_set_verbose_output(fact_reasoning_kernel *, int value);

//C     FPP_EXPORT void fact_set_top_bottom_role_names (fact_reasoning_kernel *,
//C     		const immutable(char)* top_b_role_name,
//C     		const immutable(char)* bot_b_role_name,
//C     		const immutable(char)* top_d_role_name,
//C     		const immutable(char)* bot_d_role_name);
void  fact_set_top_bottom_role_names(fact_reasoning_kernel *, immutable(char)* top_b_role_name, immutable(char)* bot_b_role_name, immutable(char)* top_d_role_name, immutable(char)* bot_d_role_name);

//C     FPP_EXPORT void fact_set_operation_timeout (fact_reasoning_kernel *,
//C     		unsigned long timeout);
void  fact_set_operation_timeout(fact_reasoning_kernel *, uint timeout);

//C     FPP_EXPORT int fact_new_kb (fact_reasoning_kernel *);
int  fact_new_kb(fact_reasoning_kernel *);
//C     FPP_EXPORT int fact_release_kb (fact_reasoning_kernel *);
int  fact_release_kb(fact_reasoning_kernel *);
//C     FPP_EXPORT int fact_clear_kb (fact_reasoning_kernel *);
int  fact_clear_kb(fact_reasoning_kernel *);

//C     FPP_EXPORT fact_axiom *fact_declare (fact_reasoning_kernel *, fact_expression *c);
fact_axiom * fact_declare(fact_reasoning_kernel *, fact_expression *c);
//C     FPP_EXPORT fact_axiom *fact_implies_concepts (fact_reasoning_kernel *,
//C     		fact_concept_expression *c,
//C     		fact_concept_expression *d);
fact_axiom * fact_implies_concepts(fact_reasoning_kernel *, fact_concept_expression *c, fact_concept_expression *d);
//C     FPP_EXPORT fact_axiom *fact_equal_concepts (fact_reasoning_kernel *);
fact_axiom * fact_equal_concepts(fact_reasoning_kernel *);
//C     FPP_EXPORT fact_axiom *fact_disjoint_concepts (fact_reasoning_kernel *);
fact_axiom * fact_disjoint_concepts(fact_reasoning_kernel *);
//C     FPP_EXPORT fact_axiom *fact_disjoint_union (fact_reasoning_kernel *,
//C     		fact_concept_expression *c);
fact_axiom * fact_disjoint_union(fact_reasoning_kernel *, fact_concept_expression *c);


//C     FPP_EXPORT fact_axiom *fact_set_inverse_roles (fact_reasoning_kernel *,
//C     		fact_o_role_expression *r,
//C     		fact_o_role_expression *s);
fact_axiom * fact_set_inverse_roles(fact_reasoning_kernel *, fact_o_role_expression *r, fact_o_role_expression *s);
//C     FPP_EXPORT fact_axiom *fact_implies_o_roles (fact_reasoning_kernel *,
//C     		fact_o_role_complex_expression *r,
//C     		fact_o_role_expression *s);
fact_axiom * fact_implies_o_roles(fact_reasoning_kernel *, fact_o_role_complex_expression *r, fact_o_role_expression *s);
//C     FPP_EXPORT fact_axiom *fact_implies_d_roles (fact_reasoning_kernel *,
//C     		fact_d_role_expression *r,
//C     		fact_d_role_expression *s);
fact_axiom * fact_implies_d_roles(fact_reasoning_kernel *, fact_d_role_expression *r, fact_d_role_expression *s);
//C     FPP_EXPORT fact_axiom *fact_equal_o_roles (fact_reasoning_kernel *);
fact_axiom * fact_equal_o_roles(fact_reasoning_kernel *);
//C     FPP_EXPORT fact_axiom *fact_equal_d_roles (fact_reasoning_kernel *);
fact_axiom * fact_equal_d_roles(fact_reasoning_kernel *);
//C     FPP_EXPORT fact_axiom *fact_disjoint_o_roles (fact_reasoning_kernel *);
fact_axiom * fact_disjoint_o_roles(fact_reasoning_kernel *);
//C     FPP_EXPORT fact_axiom *fact_disjoint_d_roles (fact_reasoning_kernel *);
fact_axiom * fact_disjoint_d_roles(fact_reasoning_kernel *);

//C     FPP_EXPORT fact_axiom* fact_set_o_domain (fact_reasoning_kernel *,
//C     		fact_o_role_expression *r,
//C     		fact_concept_expression *c);
fact_axiom * fact_set_o_domain(fact_reasoning_kernel *, fact_o_role_expression *r, fact_concept_expression *c);
//C     FPP_EXPORT fact_axiom *fact_set_d_domain (fact_reasoning_kernel *,
//C     		fact_d_role_expression *r,
//C     		fact_concept_expression *c);
fact_axiom * fact_set_d_domain(fact_reasoning_kernel *, fact_d_role_expression *r, fact_concept_expression *c);
//C     FPP_EXPORT fact_axiom *fact_set_o_range (fact_reasoning_kernel *,
//C     		fact_o_role_expression *r,
//C     		fact_concept_expression *c);
fact_axiom * fact_set_o_range(fact_reasoning_kernel *, fact_o_role_expression *r, fact_concept_expression *c);
//C     FPP_EXPORT fact_axiom *fact_set_d_range (fact_reasoning_kernel *,
//C     		fact_d_role_expression *r,
//C     		fact_data_expression *e);
fact_axiom * fact_set_d_range(fact_reasoning_kernel *, fact_d_role_expression *r, fact_data_expression *e);

//C     FPP_EXPORT fact_axiom *fact_set_transitive (fact_reasoning_kernel *,
//C     		fact_o_role_expression *r);
fact_axiom * fact_set_transitive(fact_reasoning_kernel *, fact_o_role_expression *r);
//C     FPP_EXPORT fact_axiom *fact_set_reflexive (fact_reasoning_kernel *,
//C     		fact_o_role_expression *r);
fact_axiom * fact_set_reflexive(fact_reasoning_kernel *, fact_o_role_expression *r);
//C     FPP_EXPORT fact_axiom *fact_set_irreflexive (fact_reasoning_kernel *,
//C     		fact_o_role_expression *r);
fact_axiom * fact_set_irreflexive(fact_reasoning_kernel *, fact_o_role_expression *r);
//C     FPP_EXPORT fact_axiom *fact_set_symmetric (fact_reasoning_kernel *,
//C     		fact_o_role_expression *r);
fact_axiom * fact_set_symmetric(fact_reasoning_kernel *, fact_o_role_expression *r);
//C     FPP_EXPORT fact_axiom *fact_set_asymmetric (fact_reasoning_kernel *,
//C     		fact_o_role_expression *r);
fact_axiom * fact_set_asymmetric(fact_reasoning_kernel *, fact_o_role_expression *r);
//C     FPP_EXPORT fact_axiom *fact_set_o_functional (fact_reasoning_kernel *,
//C     		fact_o_role_expression *r);
fact_axiom * fact_set_o_functional(fact_reasoning_kernel *, fact_o_role_expression *r);
//C     FPP_EXPORT fact_axiom *fact_set_d_functional (fact_reasoning_kernel *,
//C     		fact_d_role_expression *r);
fact_axiom * fact_set_d_functional(fact_reasoning_kernel *, fact_d_role_expression *r);
//C     FPP_EXPORT fact_axiom *fact_set_inverse_functional (fact_reasoning_kernel *,
//C     		fact_o_role_expression *r);
fact_axiom * fact_set_inverse_functional(fact_reasoning_kernel *, fact_o_role_expression *r);

//C     FPP_EXPORT fact_axiom *fact_instance_of (fact_reasoning_kernel *,
//C     		fact_individual_expression *i,
//C     		fact_concept_expression *c);
fact_axiom * fact_instance_of(fact_reasoning_kernel *, fact_individual_expression *i, fact_concept_expression *c);
//C     FPP_EXPORT fact_axiom *fact_related_to (fact_reasoning_kernel *,
//C     		fact_individual_expression *i,
//C     		fact_o_role_expression *r,
//C     		fact_individual_expression *j);
fact_axiom * fact_related_to(fact_reasoning_kernel *, fact_individual_expression *i, fact_o_role_expression *r, fact_individual_expression *j);
//C     FPP_EXPORT fact_axiom *fact_related_to_not (fact_reasoning_kernel *,
//C     		fact_individual_expression *i,
//C     		fact_o_role_expression *r,
//C     		fact_individual_expression *j);
fact_axiom * fact_related_to_not(fact_reasoning_kernel *, fact_individual_expression *i, fact_o_role_expression *r, fact_individual_expression *j);
//C     FPP_EXPORT fact_axiom *fact_value_of (fact_reasoning_kernel *,
//C     		fact_individual_expression *i,
//C     		fact_d_role_expression *a,
//C     		fact_data_value_expression *v);
fact_axiom * fact_value_of(fact_reasoning_kernel *, fact_individual_expression *i, fact_d_role_expression *a, fact_data_value_expression *v);
//C     FPP_EXPORT fact_axiom *fact_value_of_not (fact_reasoning_kernel *,
//C     		fact_individual_expression *i,
//C     		fact_d_role_expression *a,
//C     		fact_data_value_expression *v);
fact_axiom * fact_value_of_not(fact_reasoning_kernel *, fact_individual_expression *i, fact_d_role_expression *a, fact_data_value_expression *v);
//C     FPP_EXPORT fact_axiom *fact_process_same (fact_reasoning_kernel *);
fact_axiom * fact_process_same(fact_reasoning_kernel *);
//C     FPP_EXPORT fact_axiom *fact_process_different (fact_reasoning_kernel *);
fact_axiom * fact_process_different(fact_reasoning_kernel *);
//C     FPP_EXPORT fact_axiom *fact_set_fairness_constraint (fact_reasoning_kernel *);
fact_axiom * fact_set_fairness_constraint(fact_reasoning_kernel *);

//C     FPP_EXPORT void fact_retract (fact_reasoning_kernel *, fact_axiom *axiom);
void  fact_retract(fact_reasoning_kernel *, fact_axiom *axiom);

//C     FPP_EXPORT int fact_is_kb_consistent (fact_reasoning_kernel *);
int  fact_is_kb_consistent(fact_reasoning_kernel *);
//C     FPP_EXPORT void fact_preprocess_kb (fact_reasoning_kernel *);
void  fact_preprocess_kb(fact_reasoning_kernel *);
//C     FPP_EXPORT void fact_classify_kb (fact_reasoning_kernel *);
void  fact_classify_kb(fact_reasoning_kernel *);
//C     FPP_EXPORT void fact_realise_kb (fact_reasoning_kernel *);
void  fact_realise_kb(fact_reasoning_kernel *);

//C     FPP_EXPORT int fact_is_o_functional (fact_reasoning_kernel *, fact_o_role_expression *r);
int  fact_is_o_functional(fact_reasoning_kernel *, fact_o_role_expression *r);
//C     FPP_EXPORT int fact_is_d_functional (fact_reasoning_kernel *,
//C     		fact_d_role_expression *r);
int  fact_is_d_functional(fact_reasoning_kernel *, fact_d_role_expression *r);
//C     FPP_EXPORT int fact_is_inverse_functional (fact_reasoning_kernel *,
//C     		fact_o_role_expression *r);
int  fact_is_inverse_functional(fact_reasoning_kernel *, fact_o_role_expression *r);
//C     FPP_EXPORT int fact_is_transitive (fact_reasoning_kernel *, fact_o_role_expression *r);
int  fact_is_transitive(fact_reasoning_kernel *, fact_o_role_expression *r);
//C     FPP_EXPORT int fact_is_symmetric (fact_reasoning_kernel *, fact_o_role_expression *r);
int  fact_is_symmetric(fact_reasoning_kernel *, fact_o_role_expression *r);
//C     FPP_EXPORT int fact_is_asymmetric (fact_reasoning_kernel *, fact_o_role_expression *r);
int  fact_is_asymmetric(fact_reasoning_kernel *, fact_o_role_expression *r);
//C     FPP_EXPORT int fact_is_reflexive (fact_reasoning_kernel *, fact_o_role_expression *r);
int  fact_is_reflexive(fact_reasoning_kernel *, fact_o_role_expression *r);
//C     FPP_EXPORT int fact_is_irreflexive (fact_reasoning_kernel *, fact_o_role_expression *r);
int  fact_is_irreflexive(fact_reasoning_kernel *, fact_o_role_expression *r);
//C     FPP_EXPORT int fact_is_sub_o_roles (fact_reasoning_kernel *, fact_o_role_expression *r,
//C     		fact_o_role_expression *s);
int  fact_is_sub_o_roles(fact_reasoning_kernel *, fact_o_role_expression *r, fact_o_role_expression *s);
//C     FPP_EXPORT int fact_is_sub_d_roles (fact_reasoning_kernel *, fact_d_role_expression *r,
//C     		fact_d_role_expression *s);
int  fact_is_sub_d_roles(fact_reasoning_kernel *, fact_d_role_expression *r, fact_d_role_expression *s);
//C     FPP_EXPORT int fact_is_disjoint_o_roles (fact_reasoning_kernel *,
//C     		fact_o_role_expression *r,
//C     		fact_o_role_expression *s);
int  fact_is_disjoint_o_roles(fact_reasoning_kernel *, fact_o_role_expression *r, fact_o_role_expression *s);
//C     FPP_EXPORT int fact_is_disjoint_d_roles (fact_reasoning_kernel *,
//C     		fact_d_role_expression *r,
//C     		fact_d_role_expression *s);
int  fact_is_disjoint_d_roles(fact_reasoning_kernel *, fact_d_role_expression *r, fact_d_role_expression *s);
//C     FPP_EXPORT int fact_is_disjoint_roles (fact_reasoning_kernel *);
int  fact_is_disjoint_roles(fact_reasoning_kernel *);
//C     FPP_EXPORT int fact_is_sub_chain (fact_reasoning_kernel *, fact_o_role_expression *r);
int  fact_is_sub_chain(fact_reasoning_kernel *, fact_o_role_expression *r);

//C     FPP_EXPORT int fact_is_satisfiable (fact_reasoning_kernel *, fact_concept_expression *c);
int  fact_is_satisfiable(fact_reasoning_kernel *, fact_concept_expression *c);
//C     FPP_EXPORT int fact_is_subsumed_by (fact_reasoning_kernel *, fact_concept_expression *c,
//C     		fact_concept_expression *d);
int  fact_is_subsumed_by(fact_reasoning_kernel *, fact_concept_expression *c, fact_concept_expression *d);
//C     FPP_EXPORT int fact_is_disjoint (fact_reasoning_kernel *, fact_concept_expression *c,
//C     		fact_concept_expression *d);
int  fact_is_disjoint(fact_reasoning_kernel *, fact_concept_expression *c, fact_concept_expression *d);
//C     FPP_EXPORT int fact_is_equivalent (fact_reasoning_kernel *, fact_concept_expression *c,
//C     		fact_concept_expression *d);
int  fact_is_equivalent(fact_reasoning_kernel *, fact_concept_expression *c, fact_concept_expression *d);

//C     FPP_EXPORT void fact_get_sup_concepts (fact_reasoning_kernel *, fact_concept_expression *c,
//C     		int direct, fact_actor **actor);
void  fact_get_sup_concepts(fact_reasoning_kernel *, fact_concept_expression *c, int direct, fact_actor **actor);
//C     FPP_EXPORT void fact_get_sub_concepts (fact_reasoning_kernel *, fact_concept_expression *c,
//C     		int direct, fact_actor **actor);
void  fact_get_sub_concepts(fact_reasoning_kernel *, fact_concept_expression *c, int direct, fact_actor **actor);
//C     FPP_EXPORT void fact_get_equivalent_concepts (fact_reasoning_kernel *,
//C     		fact_concept_expression *c,
//C     		fact_actor **actor);
void  fact_get_equivalent_concepts(fact_reasoning_kernel *, fact_concept_expression *c, fact_actor **actor);
//C     FPP_EXPORT void fact_get_disjoint_concepts (fact_reasoning_kernel *,
//C     		fact_concept_expression *c,
//C     		fact_actor **actor);
void  fact_get_disjoint_concepts(fact_reasoning_kernel *, fact_concept_expression *c, fact_actor **actor);

//C     FPP_EXPORT void fact_get_sup_roles (fact_reasoning_kernel *, fact_role_expression *r,
//C     		int direct, fact_actor **actor);
void  fact_get_sup_roles(fact_reasoning_kernel *, fact_role_expression *r, int direct, fact_actor **actor);
//C     FPP_EXPORT void fact_get_sub_roles (fact_reasoning_kernel *, fact_role_expression *r,
//C     		int direct, fact_actor **actor);
void  fact_get_sub_roles(fact_reasoning_kernel *, fact_role_expression *r, int direct, fact_actor **actor);
//C     FPP_EXPORT void fact_get_equivalent_roles (fact_reasoning_kernel *, fact_role_expression *r,
//C     		fact_actor **actor);
void  fact_get_equivalent_roles(fact_reasoning_kernel *, fact_role_expression *r, fact_actor **actor);
//C     FPP_EXPORT void fact_get_o_role_domain (fact_reasoning_kernel *, fact_o_role_expression *r,
//C     		int direct, fact_actor **actor);
void  fact_get_o_role_domain(fact_reasoning_kernel *, fact_o_role_expression *r, int direct, fact_actor **actor);
//C     FPP_EXPORT void fact_get_d_role_domain (fact_reasoning_kernel *, fact_d_role_expression *r,
//C     		int direct, fact_actor **actor);
void  fact_get_d_role_domain(fact_reasoning_kernel *, fact_d_role_expression *r, int direct, fact_actor **actor);
//C     FPP_EXPORT void fact_get_role_range (fact_reasoning_kernel *, fact_o_role_expression *r,
//C     		int direct, fact_actor **actor);
void  fact_get_role_range(fact_reasoning_kernel *, fact_o_role_expression *r, int direct, fact_actor **actor);
//C     FPP_EXPORT void fact_get_direct_instances (fact_reasoning_kernel *,
//C     		fact_concept_expression *c, fact_actor **actor);
void  fact_get_direct_instances(fact_reasoning_kernel *, fact_concept_expression *c, fact_actor **actor);
//C     FPP_EXPORT void fact_get_instances (fact_reasoning_kernel *, fact_concept_expression *c,
//C     		fact_actor **actor);
void  fact_get_instances(fact_reasoning_kernel *, fact_concept_expression *c, fact_actor **actor);
//C     FPP_EXPORT void fact_get_types (fact_reasoning_kernel *, fact_individual_expression *i,
//C     		int direct, fact_actor **actor);
void  fact_get_types(fact_reasoning_kernel *, fact_individual_expression *i, int direct, fact_actor **actor);
//C     FPP_EXPORT void fact_get_same_as (fact_reasoning_kernel *,
//C     		fact_individual_expression *i, fact_actor **actor);
void  fact_get_same_as(fact_reasoning_kernel *, fact_individual_expression *i, fact_actor **actor);

//C     FPP_EXPORT int fact_is_same_individuals (fact_reasoning_kernel *,
//C     		fact_individual_expression *i,
//C     		fact_individual_expression *j);
int  fact_is_same_individuals(fact_reasoning_kernel *, fact_individual_expression *i, fact_individual_expression *j);
//C     FPP_EXPORT int fact_is_instance (fact_reasoning_kernel *,
//C     		fact_individual_expression *i,
//C     		fact_concept_expression *c);
int  fact_is_instance(fact_reasoning_kernel *, fact_individual_expression *i, fact_concept_expression *c);
/*
void fact_get_related_roles (fact_reasoning_kernel *,
			     fact_individual_expression *i,
			     int data, int needI,
			     fact_names_vector **result);
void fact_get_role_fillers (fact_reasoning_kernel *,
			    fact_individual_expression *i,
			    fact_o_role_expression *r,
			    fact_individual_set **result);
 */
//C     FPP_EXPORT int fact_is_related (fact_reasoning_kernel *,
//C     		 fact_individual_expression *i,
//C     		 fact_o_role_expression *r,
//C     		 fact_individual_expression *j);
int  fact_is_related(fact_reasoning_kernel *, fact_individual_expression *i, fact_o_role_expression *r, fact_individual_expression *j);

//C     FPP_EXPORT fact_actor* fact_concept_actor_new();
fact_actor * fact_concept_actor_new(va_list);
//C     FPP_EXPORT fact_actor* fact_individual_actor_new();
fact_actor * fact_individual_actor_new(va_list);
//C     FPP_EXPORT fact_actor* fact_o_role_actor_new();
fact_actor * fact_o_role_actor_new(va_list);
//C     FPP_EXPORT fact_actor* fact_d_role_actor_new();
fact_actor * fact_d_role_actor_new(va_list);
//C     FPP_EXPORT void fact_actor_free(fact_actor*);
void  fact_actor_free(fact_actor *);
/* get 1-d NULL-terminated array of synonyms of the 1st entry(necessary for Equivalents, for example) */
//C     FPP_EXPORT const char** fact_get_synonyms ( fact_actor* );
immutable(char)* * fact_get_synonyms(fact_actor *);
/* get NULL-terminated 2D array of all required elements of the taxonomy */
//C     FPP_EXPORT const char*** fact_get_elements_2d ( fact_actor* );
immutable(char)* ** fact_get_elements_2d(fact_actor *);
/* get NULL-terminated 1D array of all required elements of the taxonomy */
//C     FPP_EXPORT const char** fact_get_elements_1d ( fact_actor* );
immutable(char)* * fact_get_elements_1d(fact_actor *);

/* opens new argument list */
//C     FPP_EXPORT void fact_new_arg_list ( fact_reasoning_kernel *k );
void  fact_new_arg_list(fact_reasoning_kernel *k);
/* add argument _a_rG to the current argument list */
//C     FPP_EXPORT void fact_add_arg ( fact_reasoning_kernel *k,fact_expression* e );
void  fact_add_arg(fact_reasoning_kernel *k, fact_expression *e);

/* create expressions methods */

/* concepts */

/* get _t_o_p concept */
//C     FPP_EXPORT fact_concept_expression* fact_top ( fact_reasoning_kernel *k );
fact_concept_expression * fact_top(fact_reasoning_kernel *k);
/* get _b_o_t_t_o_m concept */
//C     FPP_EXPORT fact_concept_expression* fact_bottom ( fact_reasoning_kernel *k );
fact_concept_expression * fact_bottom(fact_reasoning_kernel *k);
/* get named concept */
//C     FPP_EXPORT fact_concept_expression* fact_concept ( fact_reasoning_kernel *k,const char* name );
fact_concept_expression * fact_concept(fact_reasoning_kernel *k, immutable(char)* name);
/* get negation of a concept c */
//C     FPP_EXPORT fact_concept_expression* fact_not ( fact_reasoning_kernel *k,fact_concept_expression* c );
fact_concept_expression * fact_not(fact_reasoning_kernel *k, fact_concept_expression *c);
/* get an n-ary conjunction expression; take the arguments from the last argument list */
//C     FPP_EXPORT fact_concept_expression* fact_and ( fact_reasoning_kernel *k );
fact_concept_expression * fact_and(fact_reasoning_kernel *k);
/* get an n-ary disjunction expression; take the arguments from the last argument list */
//C     FPP_EXPORT fact_concept_expression* fact_or ( fact_reasoning_kernel *k );
fact_concept_expression * fact_or(fact_reasoning_kernel *k);
/* get an n-ary one-of expression; take the arguments from the last argument list */
//C     FPP_EXPORT fact_concept_expression* fact_one_of ( fact_reasoning_kernel *k );
fact_concept_expression * fact_one_of(fact_reasoning_kernel *k);

/* get self-reference restriction of an object role r */
//C     FPP_EXPORT fact_concept_expression* fact_self_reference ( fact_reasoning_kernel *k,fact_o_role_expression* r );
fact_concept_expression * fact_self_reference(fact_reasoning_kernel *k, fact_o_role_expression *r);
/* get value restriction wrt an object role r and an individual i */
//C     FPP_EXPORT fact_concept_expression* fact_o_value ( fact_reasoning_kernel *k,fact_o_role_expression* r, fact_individual_expression* i );
fact_concept_expression * fact_o_value(fact_reasoning_kernel *k, fact_o_role_expression *r, fact_individual_expression *i);
/* get existential restriction wrt an object role r and a concept c */
//C     FPP_EXPORT fact_concept_expression* fact_o_exists ( fact_reasoning_kernel *k,fact_o_role_expression* r, fact_concept_expression* c );
fact_concept_expression * fact_o_exists(fact_reasoning_kernel *k, fact_o_role_expression *r, fact_concept_expression *c);
/* get universal restriction wrt an object role r and a concept c */
//C     FPP_EXPORT fact_concept_expression* fact_o_forall ( fact_reasoning_kernel *k,fact_o_role_expression* r, fact_concept_expression* c );
fact_concept_expression * fact_o_forall(fact_reasoning_kernel *k, fact_o_role_expression *r, fact_concept_expression *c);
/* get min cardinality restriction wrt number _n, an object role r and a concept c */
//C     FPP_EXPORT fact_concept_expression* fact_o_min_cardinality ( fact_reasoning_kernel *k,unsigned int n, fact_o_role_expression* r, fact_concept_expression* c );
fact_concept_expression * fact_o_min_cardinality(fact_reasoning_kernel *k, uint n, fact_o_role_expression *r, fact_concept_expression *c);
/* get max cardinality restriction wrt number _n, an object role r and a concept c */
//C     FPP_EXPORT fact_concept_expression* fact_o_max_cardinality ( fact_reasoning_kernel *k,unsigned int n, fact_o_role_expression* r, fact_concept_expression* c );
fact_concept_expression * fact_o_max_cardinality(fact_reasoning_kernel *k, uint n, fact_o_role_expression *r, fact_concept_expression *c);
/* get exact cardinality restriction wrt number _n, an object role r and a concept c */
//C     FPP_EXPORT fact_concept_expression* fact_o_cardinality ( fact_reasoning_kernel *k,unsigned int n, fact_o_role_expression* r, fact_concept_expression* c );
fact_concept_expression * fact_o_cardinality(fact_reasoning_kernel *k, uint n, fact_o_role_expression *r, fact_concept_expression *c);

/* get value restriction wrt a data role r and a data value v */
//C     FPP_EXPORT fact_concept_expression* fact_d_value ( fact_reasoning_kernel *k,fact_d_role_expression* r, fact_data_value_expression* v );
fact_concept_expression * fact_d_value(fact_reasoning_kernel *k, fact_d_role_expression *r, fact_data_value_expression *v);
/* get existential restriction wrt a data role r and a data expression e */
//C     FPP_EXPORT fact_concept_expression* fact_d_exists ( fact_reasoning_kernel *k,fact_d_role_expression* r, fact_data_expression* e );
fact_concept_expression * fact_d_exists(fact_reasoning_kernel *k, fact_d_role_expression *r, fact_data_expression *e);
/* get universal restriction wrt a data role r and a data expression e */
//C     FPP_EXPORT fact_concept_expression* fact_d_forall ( fact_reasoning_kernel *k,fact_d_role_expression* r, fact_data_expression* e );
fact_concept_expression * fact_d_forall(fact_reasoning_kernel *k, fact_d_role_expression *r, fact_data_expression *e);
/* get min cardinality restriction wrt number _n, a data role r and a data expression e */
//C     FPP_EXPORT fact_concept_expression* fact_d_min_cardinality ( fact_reasoning_kernel *k,unsigned int n, fact_d_role_expression* r, fact_data_expression* e );
fact_concept_expression * fact_d_min_cardinality(fact_reasoning_kernel *k, uint n, fact_d_role_expression *r, fact_data_expression *e);
/* get max cardinality restriction wrt number _n, a data role r and a data expression e */
//C     FPP_EXPORT fact_concept_expression* fact_d_max_cardinality ( fact_reasoning_kernel *k,unsigned int n, fact_d_role_expression* r, fact_data_expression* e );
fact_concept_expression * fact_d_max_cardinality(fact_reasoning_kernel *k, uint n, fact_d_role_expression *r, fact_data_expression *e);
/* get exact cardinality restriction wrt number _n, a data role r and a data expression e */
//C     FPP_EXPORT fact_concept_expression* fact_d_cardinality ( fact_reasoning_kernel *k,unsigned int n, fact_d_role_expression* r, fact_data_expression* e );
fact_concept_expression * fact_d_cardinality(fact_reasoning_kernel *k, uint n, fact_d_role_expression *r, fact_data_expression *e);

/* individuals */

/* get named individual */
//C     FPP_EXPORT fact_individual_expression* fact_individual ( fact_reasoning_kernel *k,const char* name );
fact_individual_expression * fact_individual(fact_reasoning_kernel *k, immutable(char)* name);

/* object roles */

/* get _t_o_p object role */
//C     FPP_EXPORT fact_o_role_expression* fact_object_role_top ( fact_reasoning_kernel *k );
fact_o_role_expression * fact_object_role_top(fact_reasoning_kernel *k);
/* get _b_o_t_t_o_m object role */
//C     FPP_EXPORT fact_o_role_expression* fact_object_role_bottom ( fact_reasoning_kernel *k );
fact_o_role_expression * fact_object_role_bottom(fact_reasoning_kernel *k);
/* get named object role */
//C     FPP_EXPORT fact_o_role_expression* fact_object_role ( fact_reasoning_kernel *k,const char* name );
fact_o_role_expression * fact_object_role(fact_reasoning_kernel *k, immutable(char)* name);
/* get an inverse of a given object role expression r */
//C     FPP_EXPORT fact_o_role_expression* fact_inverse ( fact_reasoning_kernel *k,fact_o_role_expression* r );
fact_o_role_expression * fact_inverse(fact_reasoning_kernel *k, fact_o_role_expression *r);
/* get a role chain corresponding to _r1 o ... o _rn; take the arguments from the last argument list */
//C     FPP_EXPORT fact_o_role_complex_expression* fact_compose ( fact_reasoning_kernel *k );
fact_o_role_complex_expression * fact_compose(fact_reasoning_kernel *k);
/* get a expression corresponding to r projected from c */
//C     FPP_EXPORT fact_o_role_complex_expression* fact_project_from ( fact_reasoning_kernel *k,fact_o_role_expression* r, fact_concept_expression* c );
fact_o_role_complex_expression * fact_project_from(fact_reasoning_kernel *k, fact_o_role_expression *r, fact_concept_expression *c);
/* get a expression corresponding to r projected into c */
//C     FPP_EXPORT fact_o_role_complex_expression* fact_project_into ( fact_reasoning_kernel *k,fact_o_role_expression* r, fact_concept_expression* c );
fact_o_role_complex_expression * fact_project_into(fact_reasoning_kernel *k, fact_o_role_expression *r, fact_concept_expression *c);

/* data roles */

/* get _t_o_p data role */
//C     FPP_EXPORT fact_d_role_expression* fact_data_role_top ( fact_reasoning_kernel *k );
fact_d_role_expression * fact_data_role_top(fact_reasoning_kernel *k);
/* get _b_o_t_t_o_m data role */
//C     FPP_EXPORT fact_d_role_expression* fact_data_role_bottom ( fact_reasoning_kernel *k );
fact_d_role_expression * fact_data_role_bottom(fact_reasoning_kernel *k);
/* get named data role */
//C     FPP_EXPORT fact_d_role_expression* fact_data_role ( fact_reasoning_kernel *k,const char* name );
fact_d_role_expression * fact_data_role(fact_reasoning_kernel *k, immutable(char)* name);

/* data expressions */

/* get _t_o_p data element */
//C     FPP_EXPORT fact_data_expression* fact_data_top ( fact_reasoning_kernel *k );
fact_data_expression * fact_data_top(fact_reasoning_kernel *k);
/* get _b_o_t_t_o_m data element */
//C     FPP_EXPORT fact_data_expression* fact_data_bottom ( fact_reasoning_kernel *k );
fact_data_expression * fact_data_bottom(fact_reasoning_kernel *k);

/* get named data type */
//C     FPP_EXPORT fact_data_type_expression* fact_data_type ( fact_reasoning_kernel *k,const char* name );
fact_data_type_expression * fact_data_type(fact_reasoning_kernel *k, immutable(char)* name);
/* get basic string data type */
//C     FPP_EXPORT fact_data_type_expression* fact_getr_data_type ( fact_reasoning_kernel *k );
fact_data_type_expression * fact_getr_data_type(fact_reasoning_kernel *k);
/* get basic integer data type */
//C     FPP_EXPORT fact_data_type_expression* fact_get_int_data_type ( fact_reasoning_kernel *k );
fact_data_type_expression * fact_get_int_data_type(fact_reasoning_kernel *k);
/* get basic floating point data type */
//C     FPP_EXPORT fact_data_type_expression* fact_get_real_data_type ( fact_reasoning_kernel *k );
fact_data_type_expression * fact_get_real_data_type(fact_reasoning_kernel *k);
/* get basic boolean data type */
//C     FPP_EXPORT fact_data_type_expression* fact_get_bool_data_type ( fact_reasoning_kernel *k );
fact_data_type_expression * fact_get_bool_data_type(fact_reasoning_kernel *k);
/* get basic date-time data type */
//C     FPP_EXPORT fact_data_type_expression* fact_get_time_data_type ( fact_reasoning_kernel *k );
fact_data_type_expression * fact_get_time_data_type(fact_reasoning_kernel *k);

/* get basic boolean data type */
//C     FPP_EXPORT fact_data_type_expression* fact_restricted_type ( fact_reasoning_kernel *k,fact_data_type_expression* type, fact_facet_expression* facet );
fact_data_type_expression * fact_restricted_type(fact_reasoning_kernel *k, fact_data_type_expression *type, fact_facet_expression *facet);

/* get data value with given _v_a_lU_e and _tY_p_e; */
/* _f_iX_m_e!! now change the type to the basic type of the given one */
/* _that is, value of a type positive_integer will be of a type _integer */
//C     FPP_EXPORT fact_data_value_expression* fact_data_value ( fact_reasoning_kernel *k,const char* value, fact_data_type_expression* type );
fact_data_value_expression * fact_data_value(fact_reasoning_kernel *k, immutable(char)* value, fact_data_type_expression *type);
/* get negation of a data expression e */
//C     FPP_EXPORT fact_data_expression* fact_data_not ( fact_reasoning_kernel *k,fact_data_expression* e );
fact_data_expression * fact_data_not(fact_reasoning_kernel *k, fact_data_expression *e);
/* get an n-ary data conjunction expression; take the arguments from the last argument list */
//C     FPP_EXPORT fact_data_expression* fact_data_and ( fact_reasoning_kernel *k );
fact_data_expression * fact_data_and(fact_reasoning_kernel *k);
/* get an n-ary data disjunction expression; take the arguments from the last argument list */
//C     FPP_EXPORT fact_data_expression* fact_data_or ( fact_reasoning_kernel *k );
fact_data_expression * fact_data_or(fact_reasoning_kernel *k);
/* get an n-ary data one-of expression; take the arguments from the last argument list */
//C     FPP_EXPORT fact_data_expression* fact_data_one_of ( fact_reasoning_kernel *k );
fact_data_expression * fact_data_one_of(fact_reasoning_kernel *k);

/* get min_inclusive facet with a given _v */
//C     FPP_EXPORT fact_facet_expression* fact_facet_min_inclusive ( fact_reasoning_kernel *k,fact_data_value_expression* v );
fact_facet_expression * fact_facet_min_inclusive(fact_reasoning_kernel *k, fact_data_value_expression *v);
/* get min_exclusive facet with a given _v */
//C     FPP_EXPORT fact_facet_expression* fact_facet_min_exclusive ( fact_reasoning_kernel *k,fact_data_value_expression* v );
fact_facet_expression * fact_facet_min_exclusive(fact_reasoning_kernel *k, fact_data_value_expression *v);
/* get max_inclusive facet with a given _v */
//C     FPP_EXPORT fact_facet_expression* fact_facet_max_inclusive ( fact_reasoning_kernel *k,fact_data_value_expression* v );
fact_facet_expression * fact_facet_max_inclusive(fact_reasoning_kernel *k, fact_data_value_expression *v);
/* get max_exclusive facet with a given _v */
//C     FPP_EXPORT fact_facet_expression* fact_facet_max_exclusive ( fact_reasoning_kernel *k,fact_data_value_expression* v );
fact_facet_expression * fact_facet_max_exclusive(fact_reasoning_kernel *k, fact_data_value_expression *v);

//C     #ifdef __cplusplus
//C     }
//C     #endif

//C     #endif
