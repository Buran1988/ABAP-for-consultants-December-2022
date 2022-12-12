*&---------------------------------------------------------------------*
*& Report ZABA10_06_SELECT_FROM_DB_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_06_select_from_db_2.

PARAMETERS p_sel TYPE sflight-carrid.

SELECT * FROM sflight INTO TABLE @DATA(gt_sv_tab)
  WHERE sflight~carrid = @p_sel.
* ORDER BY carrname ASCENDING.

data gv_perc TYPE p DECIMALS 2.

LOOP AT gt_sv_tab INTO DATA(gs_sv_line) .

  gv_perc = gs_sv_line-seatsocc / gs_sv_line-seatsmax * 100.
  WRITE: / |ID рейса : { gs_sv_line-carrid } | ,
  |Дата рейса : { gs_sv_line-fldate } | ,
  |Процент заполнения самолета : { gv_perc } | .
endloop.

*  cl_demo_output=>display( gs_sv_line ).
