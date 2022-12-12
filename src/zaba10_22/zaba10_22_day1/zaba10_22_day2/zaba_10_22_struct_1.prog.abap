*&---------------------------------------------------------------------*
*& Report ZABA_10_22_STRUCT_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA_10_22_STRUCT_1.

data gs_my_first_struct TYPE spfli.
gs_my_first_struct-airpfrom = 'MSC'.

gs_my_first_struct-ARRTIME = '170000'.

data gs_my_scarr TYPE scarr.
gs_my_scarr-carrname = 'Aeroflot'.
