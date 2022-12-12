*&---------------------------------------------------------------------*
*& Report ZABA10_04_D3_SELECT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_D3_SELECT.

*DATA my_itab TYPE TABLE OF scarr.
*Select * FROM scarr into table my_itab.

* *Select * Select FROM scarr into table  @DATA(my_itab2) ORDER BY carrname DESCENDING WHERE Carrid = 'AA'.
*
*SELECT * FROM spfli JOIN scarr
*  ON spfli-carrid = scarr-carrid
*  INTO TABLE @DATA(My_join_tab).

PARAMETERS p_sel TYPE sflight-carrid.

SELECT * FROM sflight INTO TABLE @DATA(gt_sv_tab) where sflight~carrid = @p_sel.
   DATA gv_perc TYPE f.

LOOP AT gt_sv_tab INTO DATA(gs_sv_line) .
 gv_perc = gs_sv_line-seatsocc /  gs_sv_line-seatsmax * 100.

  WRITE : / |ID рейса: { gs_sv_line-carrid } |,
            |дата рейса: { gs_sv_line-fldate } |,
            |Процент: { gv_perc } |.

ENDLOOP.



 cl_demo_output=>display( gt_sv_tab ).
