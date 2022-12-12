*&---------------------------------------------------------------------*
*& Report ZABA10_D2_PRIMER
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_D2_PRIMER.

types: begin of str_flightinfo,
  carrid type s_Carr_id,
  connid type s_conn_id,
  fldate type s_date,
  seatsmax type sflight-seatsmax,
  seatsocc type sflight-seatsocc,
  percentage(3) type p decimals 2,
  end of str_flightinfo.

  data wa_flightinfo type str_flightinfo.

wa_flightinfo = value #( carrid = '10'
  connid = '123'
  fldate = sy-datlo
  seatsmax = 3
  seatsocc = 24
  percentage = '4.56').

cl_demo_output=>display(
data = wa_flightinfo
      ).
