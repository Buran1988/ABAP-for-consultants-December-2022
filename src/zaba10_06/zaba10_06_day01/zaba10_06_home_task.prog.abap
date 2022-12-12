*&---------------------------------------------------------------------*
*& Report ZABA10_06_HOME_TASK
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_06_home_task.

TYPES my_c_typ(10) TYPE c.
*=
TYPES customer_name TYPE c LENGTH 10.

DATA gv_my_i TYPE i.
DATA gv_my_c TYPE my_c_typ.
DATA number_of_employees TYPE i.

TYPES: my_n_typ(7) TYPE n,
       my_p_typ(3) TYPE p DECIMALS 2.

TYPES number_of_unpaid_invoices TYPE n LENGTH 7.
TYPES creation_date TYPE d.
TYPES last_changed_at TYPE t.

TYPES BEGIN OF my_struc_type.

TYPES field1 TYPE my_c_typ.
TYPES field2 TYPE i.
TYPES field3 TYPE n.
TYPES field4 TYPE d.
TYPES field5 TYPE t.

TYPES END OF my_struc_type.

TYPES: BEGIN OF customer_structure,
         name            TYPE customer_name,
         n_employees     LIKE number_of_employees,
         unpaid_invoices TYPE number_of_unpaid_invoices,
         creation_date   TYPE d,
         last_changed_at TYPE t,
       END OF customer_structure.

DATA: gv_my_n TYPE my_n_typ,
      gv_my_d TYPE d,
      gv_my_t TYPE t,
      gv_my_p TYPE my_p_typ,
      max     TYPE my_n_typ.

CONSTANTS myconst TYPE my_p_typ VALUE '365.89'.

gv_my_i = 100.
gv_my_c = 'hello'.
gv_my_n = 5.
gv_my_d = sy-datlo.
gv_my_t = sy-uzeit.
gv_my_p = 903.
*gv_my_date = sy-datlo.
*gv_my_time = sy-uzeit.

WRITE: gv_my_i, /, gv_my_c, /, gv_my_n, /, gv_my_d, /, gv_my_t,
 /, gv_my_p , /, myconst.
