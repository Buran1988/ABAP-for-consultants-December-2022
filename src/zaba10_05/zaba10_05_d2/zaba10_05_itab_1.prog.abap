*&---------------------------------------------------------------------*
*& Report ZABA10_05_ITAB_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_ITAB_1.


data gtd_my_first_itab type table of spfli.

*заполнение рабочей области


DATA gs_my_line TYPE spfli.
gs_my_line-airpfrom = 'MSC'.
gs_my_line-arrtime = '170000'.

DO 50 TIMES.
  APPEND gs_my_line TO gtd_my_first_itab.
ENDDO.

*заполнение с помощью  Value
data(gs_my_struct) = VALUE spfli( airpfrom = 'MSC' arrtime = '170000' ).
*FLPRICE_T
DATA(gtd_my_new_tab) = VALUE FLPRICE_T(
                                ( price = '1000' currency = 'RUB' )
                                ( price = '100' currency = 'EUR' )
                                ( price = '150' currency = 'DOL' )
                                     ).

APPEND gs_my_struct to gtd_my_first_itab.

*cl_demo_output=>display( gtd_my_new_tab ).


cl_demo_output=>display( gtd_my_first_itab ).
