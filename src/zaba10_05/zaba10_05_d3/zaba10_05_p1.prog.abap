*&---------------------------------------------------------------------*
*& Report ZABA10_05_P1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_P1.
PARAMETERS p_sel TYPE sflight-carrid.

SELECT * FROM sflight INTO TABLE @DATA(gt_sv_tab) WHERE sflight~carrid = @p_sel.

DATA gv_perc TYPE p DECIMALS 2.

LOOP AT gt_sv_tab INTO DATA(gs_sv_line) .
  gv_perc = gs_sv_line-seatsocc / gs_sv_line-seatsmax * 100.
  WRITE: / |ID рейса : { gs_sv_line-connid } | ,
           |Дата рейса : { gs_sv_line-fldate } |,
           |Процент заполненности самолета { gv_perc } |.
ENDLOOP.
