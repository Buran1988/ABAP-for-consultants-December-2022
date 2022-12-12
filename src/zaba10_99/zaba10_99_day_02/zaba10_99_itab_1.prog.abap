*&---------------------------------------------------------------------*
*& Report ZABA10_99_ITAB_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_99_itab_1.

DATA gtd_my_first_itab TYPE TABLE OF spfli.

* 1) Классический подход (APPEND), wa (work area, рабочая область)

* Заводим рабочую область
DATA gs_my_line TYPE spfli.
gs_my_line-airpfrom = 'MSC'.
gs_my_line-arrtime = '170000'.

APPEND VALUE #( airpfrom = 'MSC' arrtime = '170000' ) to gtd_my_first_itab.

DO 50 TIMES.
  add 1 to gs_my_line-arrtime .
*  gs_my_line-arrtime = gs_my_line-arrtime  + 1.
  APPEND gs_my_line TO gtd_my_first_itab.
ENDDO.

* 2) Подход с помощью VALUE

data(gs_my_struct) = VALUE spfli( airpfrom = 'MSC' arrtime = '170000' ).
*FLPRICE_T
DATA(gtd_my_new_tab) = VALUE FLPRICE_T(
                                ( price = '1000' currency = 'RUB' )
                                ( price = '100' currency = 'EUR' )
                                ( price = '150' currency = 'DOL' )
                                     ).
SORT gtd_my_new_tab BY price.

data my_super_tab type table of FLPRICE_T.


APPEND gs_my_struct to gtd_my_first_itab.

cl_demo_output=>display( gtd_my_new_tab ).
