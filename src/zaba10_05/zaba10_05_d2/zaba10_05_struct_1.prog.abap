*&---------------------------------------------------------------------*
*& Report ZABA10_05_STRUCT_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_STRUCT_1.


data gs_my_struct type spfli.
gs_my_struct-AIRPFROM = 'MSC'.

cl_demo_output=>display(
data  = gs_my_struct  ).

data gs_my_scarr type scarr.
gs_my_scarr-CARRNAME = 'aeroflot'.
cl_demo_output=>display(
data  = gs_my_scarr ).
