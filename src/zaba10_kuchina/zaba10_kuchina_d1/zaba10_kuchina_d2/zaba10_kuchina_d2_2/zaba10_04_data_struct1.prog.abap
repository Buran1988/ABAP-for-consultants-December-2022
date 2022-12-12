*&---------------------------------------------------------------------*
*& Report ZABA10_04_DATA_STRUCT1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_DATA_STRUCT1.
data gs_my_first_struct Type spfli.
gs_my_first_struct-airpfrom = 'MSC'.
gs_my_first_struct-arrtime = '170000'.

cl_demo_output=>display(
data = gs_my_first_struct ).
