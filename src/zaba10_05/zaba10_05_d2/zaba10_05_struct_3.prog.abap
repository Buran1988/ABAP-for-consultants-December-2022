*&---------------------------------------------------------------------*
*& Report ZABA10_05_STRUCT_3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_STRUCT_3.
types: BEGIN OF st_flightinfo,
  carrid type s_carr_id,
  connid type s_conn_id,
  fldate type s_date,
  seatsmax type sflight-seatsmax,
  seatsocc type sflight-seatsocc,
  percentage(3) type p decimals 2,
  END OF st_flightinfo.

  data wa_flightinfo type st_flightinfo.
  wa_flightinfo = VALUE #( carrid = 'AF' connid = '170' fldate = '20221207' seatsmax = '50' seatsocc = '5' percentage = '10').
  cl_demo_output=>display(
   data = wa_flightinfo ).
