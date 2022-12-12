*&---------------------------------------------------------------------*
*& Report ZABA10_04_DATA_ITAB1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_DATA_ITAB1.


Data gtd_my_first_itab TYPE TABLE OF spfli.
DATA gs_my_line TYPE spfli.
gs_my_line-airpfrom = 'MSC'.
gs_my_line-arrtime = '170000'.

DO 50 TIMES.
gs_my_line-arrtime = gs_my_line-arrtime + '1'.
APPEND gs_my_line TO gtd_my_first_itab.

ENDDO.

Data(gtd_my_new_tab) = VALUE FLPRICE_T(
      ( price = '1000' currency = 'rub' )
       ( price = '100' currency = 'usd' )
       ) .

Cl_demo_output=>display(
  EXPORTING
 data    = gtd_my_new_tab
*    name    =
*    exclude =
*    include =
).
