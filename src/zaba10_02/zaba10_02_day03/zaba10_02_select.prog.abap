*&---------------------------------------------------------------------*
*& Report ZABA10_02_SELECT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_02_select.

DATA sv_itab TYPE TABLE OF scarr.

*SELECT * FROM scarr INTO TABLE sv_itab where carrid = 'AA' ORDER BY carrname ASCENDING.
*SELECT carrid carrname from scarr
*  INTO CORRESPONDING FIELDS OF TABLE sv_itab.

*cl_demo_output=>display( sv_itab ).

*SELECT * FROM scarr INTO TABLE @DATA(sv_itab_2).

*SORT sv_itab_2 BY carrid.

*cl_demo_output=>display( sv_itab_2 ).

*SELECT * FROM sflight INTO TABLE @DATA(sv_flights)
*  WHERE seatsmax_b > 20 ORDER BY carrid.

SELECT * FROM sflight INTO @DATA(sv_flight) WHERE seatsmax_b = 31.
  WRITE: / sv_flight-carrid, sv_flight-planetype.
ENDSELECT.


*IF sy-subrc = 0.
*  cl_demo_output=>display( sv_flight ).
*ENDIF.
