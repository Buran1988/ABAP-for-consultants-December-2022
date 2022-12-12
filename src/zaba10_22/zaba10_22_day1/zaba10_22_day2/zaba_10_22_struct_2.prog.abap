*&---------------------------------------------------------------------*
*& Report ZABA_10_22_STRUCT_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA_10_22_STRUCT_2.
TYPES my_type_c(8) TYPE c.

TYPES: BEGIN OF st_flight_info,
  "" carrid TYPE s_carr_id,
    "" connid TYPE s_conn_id,
  carrid TYPE my_type_c,
  connid TYPE i,
  END of st_flight_info.

  data gs_my_first_struct TYPE st_flight_info.

  gs_my_first_struct-carrid = 'S7'.
  gs_my_first_struct-connid = 1500.

  cl_demo_output=>display( gs_my_first_struct ).
