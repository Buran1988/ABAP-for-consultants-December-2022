*&---------------------------------------------------------------------*
*& Report ZABA10_06_ITAB_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_06_itab_1.

DATA gtd_my_first_itab TYPE TABLE OF spfli.

* 1) Классический подход, wa (work area)

*Заводим рабочую область
DATA gs_my_line TYPE spfli.

gs_my_line-airpfrom = 'MSC'.
gs_my_line-arrtime = '170000'.

DO 50 TIMES.
  gs_my_line-arrtime = gs_my_line-arrtime + 1.
  APPEND gs_my_line TO gtd_my_first_itab.

ENDDO.

*write 'hg'.

* 2) подходс помощью VALUE (версия 7.40 и выше)
DATA(gs_my_struct) = VALUE spfli( airpfrom = 'Msc' arrtime = '170000' ).

DATA(gtd_my_new_tab) = VALUE flprice_t(
( price = '1000' currency = 'RUB' )
( price = '100' currency = 'EUR' )
( price = '150' currency = 'DOL' )
).

sort gtd_my_new_tab by price.

append gs_my_struct to gtd_my_first_itab.

cl_demo_output=>display( gtd_my_new_tab ).

*cl_demo_output=>display( gtd_my_first_itab ).
