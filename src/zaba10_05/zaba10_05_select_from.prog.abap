*&---------------------------------------------------------------------*
*& Report ZABA10_05_SELECT_FROM
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_SELECT_FROM.



DATA my_itab TYPE TABLE OF scarr.

SELECT * FROM scarr INTO  TABLE my_itab.

* Определяю рабочую область по месту

SELECT * FROM scarr INTO  TABLE @DATA(my_itab2).

cl_demo_output=>display( my_itab2 ).
