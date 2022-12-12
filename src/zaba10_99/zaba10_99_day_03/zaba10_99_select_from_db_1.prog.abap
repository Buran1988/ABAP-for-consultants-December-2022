*&---------------------------------------------------------------------*
*& Report ZABA10_99_SELECT_FROM_DB_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_99_select_from_db_1.
*1) Заранее объявляю рабочую область
* - Заведу внутреннюю таблицу
DATA my_itab TYPE TABLE OF scarr.

*SELECT * FROM scarr INTO  TABLE my_itab .

*2) Определяю рабочую область по месту

*SELECT * FROM scarr INTO  TABLE @DATA(my_itab2) WHERE carrid = 'AA'
*  ORDER BY carrname ASCENDING  .

*SELECT * FROM sflight INTO TABLE @DATA(my_flights) WHERE seatsmax_b = 31.


SELECT * FROM sflight INTO TABLE @DATA(my_flight) WHERE seatsmax_b = 31.
*  WRITE: / my_flight-carrid, my_flight-planetype.

*ENDSELECT.

IF sy-subrc = 0.

  cl_demo_output=>display( my_flight ).
ENDIF.

*SORT my_itab2 BY carrname DESCENDING.
