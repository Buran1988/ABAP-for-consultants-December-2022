*&---------------------------------------------------------------------*
*& Report ZABA10_99_STRUCT_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_99_STRUCT_2.


TYPES my_type_c(8) TYPE c.

TYPES: BEGIN OF st_flight_info,
  carrid TYPE my_type_c, "s_carr_id,
  connid TYPE i, "s_conn_id,
  END OF st_flight_info.

DATA gs_my_new_struct TYPE st_flight_info.

gs_my_new_struct-carrid = 'S7'.
gs_my_new_struct-connid = 1500.


cl_demo_output=>display( gs_my_new_struct ).


*data my_var TYPE my_type_c.
*my_var = 'TestTest123'.
*WRITE my_var.
