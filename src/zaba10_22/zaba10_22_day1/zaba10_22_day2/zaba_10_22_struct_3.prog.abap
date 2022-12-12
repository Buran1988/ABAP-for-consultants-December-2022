*&---------------------------------------------------------------------*
*& Report ZABA_10_22_STRUCT_3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA_10_22_STRUCT_3.

TYPES: BEGIN OF st_flightinfo,
  carrid  TYPE s_carr_id,
  connid TYPE s_conn_id,
  fldate TYPE s_date,
  seatsmax TYPE sflight-seatsmax,
  seatsocc TYPE sflight-seatsocc,
  percentage(3) TYPE p DECIMALS 2,
  END OF st_flightinfo.

  DATA wa_flightinfo TYPE st_flightinfo.
  wa_flightinfo = VALUE #(
  carrid = 'S7'
  connid = 1500
  fldate = 22122022
  seatsmax = 1
  seatsocc = 2
  percentage = '4.5' ).
  cl_demo_output=>display( wa_flightinfo ).
