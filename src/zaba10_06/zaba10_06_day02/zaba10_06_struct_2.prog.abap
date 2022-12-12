*&---------------------------------------------------------------------*
*& Report ZABA10_06_STRUCT_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_06_struct_2.

TYPES: my_type_c(8) TYPE c.

DATA my_var TYPE my_type_c.

*my_var = 'Test'.
*WRITE my_var.

*TYPES: BEGIN OF st_flight_info,
*         carrid TYPE my_type_c, " s_carr_id,
*         connid TYPE i, "S_conn_id,
*       END OF st_flight_info.
*
*data gs_my_new_struct Type st_flight_info.

*gs_my_new_struct-carrid = 'S7'.
*gs_my_new_struct-connid = 1500.

*cl_demo_output=>display(
**  EXPORTING
*    data    = gs_my_new_struct
**    name    =
**    exclude =
**    include =
*).
*cl_demo_output=>display( gs_my_new_struct ).

TYPES: BEGIN OF st_flightinfo,
         carrid TYPE s_carr_id,
         connid TYPE S_conn_id,
         fldate TYPE s_date,
         seatsmax TYPE sflight-seatsmax,
         seatsocc TYPE sflight-seatsocc,
         percentage(3) TYPE p decimals 2,
       END OF st_flightinfo.

data wa_flightinfo Type st_flightinfo.

wa_flightinfo-carrid = 'S12'.
wa_flightinfo-connid = 60.
wa_flightinfo-fldate = '20221231'.
wa_flightinfo-seatsmax = 150.
wa_flightinfo-seatsocc = 4.
wa_flightinfo-percentage = 3.

cl_demo_output=>display( wa_flightinfo ).
