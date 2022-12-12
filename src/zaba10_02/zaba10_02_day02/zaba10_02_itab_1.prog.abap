*&---------------------------------------------------------------------*
*& Report ZABA10_02_ITAB_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_ITAB_1.

DATA gt_sv_first_table TYPE TABLE OF spfli.

DATA gs_sv_line TYPE spfli.

gs_sv_line-carrid = 234.
gs_sv_line-distance = 1500.
gs_sv_line-arrtime = '150000'.

DO 10 TIMES.
  APPEND gs_sv_line TO gt_sv_first_table.
  gs_sv_line-distance = gs_sv_line-distance + 100.
  gs_sv_line-arrtime = gs_sv_line-arrtime + 10.
ENDDO.

DATA(gs_sv_struct) = VALUE spfli( distance = 1550 arrtime = '160400' ).

APPEND gs_sv_struct TO gt_sv_first_table.

DATA(gt_sv_new_tab) = VALUE flprice_t(
                              ( price = 1000 currency = 'RUB' )
                              ( price = 100 currency = 'EUR' )
                              ( price = 150 currency = 'USD' )
                              ).

cl_demo_output=>display( gt_sv_first_table ).
