*&---------------------------------------------------------------------*
*& Report ZABA10_99_STRUCT_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_99_STRUCT_1.

data gs_my_first_struct TYPE spfli.

gs_my_first_struct-airpfrom = 'MSC'.
gs_my_first_struct-arrtime = '170000'.

gs_my_first_struct = VALUE #( airpfrom = 'MSC' arrtime = '170000' ).


data gs_my_agency TYPE TRAVELAG.

gs_my_agency-company = 'My comp'.

gs_my_agency = VALUE #( BASE gs_my_agency
                         planetype = 'MS-21' seatsmax = 190 ).


*WRITE: gs_my_first_struct-airpfrom, gs_my_first_struct-arrtime.



cl_demo_output=>display(

    data    = gs_my_agency

).


data gs_my_scarr TYPE scarr.
gs_my_scarr-carrname = 'Aeroflot'.

*cl_demo_output=>display(
*
*    data    = gs_my_scarr
*).
