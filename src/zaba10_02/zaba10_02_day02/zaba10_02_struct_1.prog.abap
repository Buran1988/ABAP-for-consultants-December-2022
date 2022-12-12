*&---------------------------------------------------------------------*
*& Report ZABA10_02_STRUCT_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_STRUCT_1.

DATA gs_sv_structure TYPE spfli.
gs_sv_structure-airpfrom = 'MSC'.


*cl_demo_output=>display(
*      data      = gs_sv_structure
*).

DATA gs_sv_agency TYPE travelag.

gs_sv_agency = VALUE #( company = 'SV' planetype = 'MS-21' seatsmax = '10' ).

cl_demo_output=>display(
      data = gs_sv_agency
).

DATA gs_sv_scarr TYPE scarr.
gs_sv_scarr-carrname = 'Aeroflot'.

*cl_demo_output=>display(
*      data = gs_sv_scarr
*).
