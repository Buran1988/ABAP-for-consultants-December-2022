*&---------------------------------------------------------------------*
*& Report ZABA_10_22_SELECT_3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA_10_22_SELECT_3.

PARAMETERS p_sel type sflight-carrid.

SELECT * from sflight INTO TABLE @DATA(gt_sv_tab) where sflight~carrid = @p_sel.

  data gv_perc type p decimals 2.

LOOP AT gt_sv_tab into data(gs_sv_line).
  gv_perc = gs_sv_line-seatsocc / gs_sv_line-seatsmax * 100.

  write: / |ID Рейса : { gs_sv_line-connid } |,
            |Дата рейса: { gs_sv_line-fldate }|,
            |Процент заполненности самолёта: { gs_sv_line-fldate }|.

            endloop.
