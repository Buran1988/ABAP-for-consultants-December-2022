*&---------------------------------------------------------------------*
*& Report ZABA10_06_STRUCT_3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_STRUCT_3.

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



*wa_flightinfo-carrid = 'S12'.
*
*wa_flightinfo = value #( base wa_flightinfo-carrid
*wa_flightinfo-connid = 60
*wa_flightinfo-fldate = '20221231'
*wa_flightinfo-seatsmax = 150
*wa_flightinfo-seatsocc = 4
*wa_flightinfo-percentage = 3 ).

cl_demo_output=>display( wa_flightinfo ).
