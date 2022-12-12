*&---------------------------------------------------------------------*
*& Report ZABA_10_22_SELECT_FROM_DB_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA_10_22_SELECT_FROM_DB_1.
*1) Заранее объявляю рабочую область
* Заведу внутреннюю таблицу
data my_itab type table of scarr.
**select * from scarr INTO table my_itab.

  select carrid carrname from scarr INTO CORRESPONDING FIELDS OF table my_itab.



***Рабочая область по месту

  SELECT * from sflight INTO @data(my_flight) where seatsmax_b = 31.
    write: / my_flight-carrid.
   ENDSELECT.

    cl_demo_output=>display( my_flight ) .
