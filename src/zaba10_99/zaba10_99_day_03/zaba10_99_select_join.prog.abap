*&---------------------------------------------------------------------*
*& Report ZABA10_99_SELECT_JOIN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_99_SELECT_JOIN.

SELECT *
*  spfli~carrid, scarr~carrname
   FROM spfli JOIN scarr
  ON spfli~carrid = scarr~carrid
  INTO TABLE @data(my_join_tab).

  cl_demo_output=>display( my_join_tab ).
