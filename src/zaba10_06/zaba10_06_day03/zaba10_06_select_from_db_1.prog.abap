*&---------------------------------------------------------------------*
*& Report ZABA10_06_SELECT_FROM_DB_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_06_select_from_db_1.

*1) Заранее объявляю рабочую область
* - заведем внутреннюю таблицу
DATA my_itab TYPE TABLE OF scarr.

*SELECT carrid carrname from scarr into CORRESPONDING FIELDS OF TABLE my_itab.
SELECT * FROM scarr INTO TABLE my_itab.

*  * 2) Определяем рабочую область по месту

SELECT * FROM scarr INTO TABLE @DATA(my_itab2)
  WHERE carrid = 'AA'
  ORDER BY carrname ASCENDING.

*SELECT * FROM sflight INTO TABLE @DATA(my_flights) WHERE seatsmax_b = 31.
SELECT * FROM sflight INTO @DATA(my_flights) WHERE seatsmax_b = 31.
  WRITE: / my_flights-carrid, my_flights-planetype.

ENDSELECT.
*sort my_itab2 by carrname DESCENDING.

*IF sy-subrc = 0.
*  cl_demo_output=>display( my_flights ).
*ENDIF.

SELECT * FROM spfli JOIN scarr
  ON spfli~carrid = scarr~carrid
  INTO TABLE @DATA(my_join_tab).

cl_demo_output=>display( my_join_tab ).
