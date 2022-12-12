*&---------------------------------------------------------------------*
*& Report ZABA10_02_STRUCT_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_STRUCT_2.

TYPES sv_type(8) TYPE c.

TYPES: BEGIN OF st_flight_info,
  carrid TYPE sv_type, "s_carr_id,
  connid TYPE i, "s_conn_id,
END OF st_flight_info.

DATA gs_sv_new_struct TYPE st_flight_info.

gs_sv_new_struct-carrid = 'S7'.
gs_sv_new_struct-connid = 1500.

*cl_demo_output=>display( data = gs_sv_new_struct ).


TYPES: BEGIN OF st_flightinfo,
  carrid        TYPE s_carr_id,
  connid        TYPE s_conn_id,
  fldate        TYPE s_date,
  seatsmax      TYPE sflight-seatsmax,
  seatsocc      TYPE sflight-seatsocc,
  percentage(3) TYPE p DECIMALS 2,
END OF st_flightinfo.

DATA wa_flightinfo TYPE st_flightinfo.

wa_flightinfo-carrid = 'S7'.
wa_flightinfo-connid = 1357.
wa_flightinfo = VALUE #( BASE wa_flightinfo
                         fldate = '20220215'
                         seatsmax = 100
                         seatsocc = '10'
                         percentage = '57').


cl_demo_output=>display(
*  EXPORTING
    data    = wa_flightinfo
*    name    =
*    exclude =
*    include =
).
