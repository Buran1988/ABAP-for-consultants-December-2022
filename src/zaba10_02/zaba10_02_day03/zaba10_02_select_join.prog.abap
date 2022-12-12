*&---------------------------------------------------------------------*
*& Report ZABA10_02_SELECT_JOIN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_SELECT_JOIN.

SELECT spfli~carrid, scarr~carrname FROM spfli JOIN scarr
  ON spfli~carrid = scarr~carrid
  INTO TABLE @DATA(sv_join_tab).

cl_demo_output=>display( sv_join_tab ).
