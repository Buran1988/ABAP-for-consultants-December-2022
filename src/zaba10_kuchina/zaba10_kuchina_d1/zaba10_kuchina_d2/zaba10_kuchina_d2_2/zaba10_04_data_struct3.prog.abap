*&---------------------------------------------------------------------*
*& Report ZABA10_04_DATA_STRUCT3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_DATA_STRUCT3.

TYPES: BEGIN OF st_flightinfo,
  carrid TYPE s_carr_id,
  connid TYPE s_conn_id,
  fldate TYPE s_date,
  seatsmax TYPE sflight-seatsmax,
  seatsocc TYPE sflight-seatsocc,
  persentage(3) TYPE p DECIMALS 2,
  END OF st_flightinfo.

  DATA wa_flightinfo TYPE st_flightinfo.

*gs_my_first_struct-airpfrom = 'MSC'.
  wa_flightinfo-carrid = 'Aefoflot'.
  wa_flightinfo-connid = 'abc'.
  wa_flightinfo-fldate = '01.01.22'.
  wa_flightinfo-seatsmax = '250'.

  Cl_demo_output=>display(
  Data = wa_flightinfo ).
