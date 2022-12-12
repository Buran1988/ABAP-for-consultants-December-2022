*&---------------------------------------------------------------------*
*& Report ZABA10_06_STRUCT_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_STRUCT_1.

data gs_my_first_struct type spfli.



gs_my_first_struct-airpfrom = 'MSC'.

gs_my_first_struct-arrtime = '170000'.

data gs_my_agency type TRAVELAG.

gs_my_agency = value #( company = 'My comp' planetype = 'MS-21' seatsmax = 190 ).

*cl_demo_output=>display{
*exporting

cl_demo_output=>display(
*  EXPORTING
    data    = gs_my_agency
*    name    =
*    exclude =
*    include =
).

data gs_my_scarr type scarr.
gs_my_scarr-carrname = 'Aeroflot'.

*cl_demo_output=>display(
*
*    data    = gs_my_scarr
*).
