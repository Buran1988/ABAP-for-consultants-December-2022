*&---------------------------------------------------------------------*
*& Report ZABA10_02_MY_CALC
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_MY_CALC MESSAGE-ID ZABA10_02_MY_CALC.

PARAMETERS: p_a TYPE i,
            p_b TYPE i,
            p_oper TYPE c.

DATA gv_result TYPE f.

CASE p_oper.
  WHEN '+'.
    PERFORM get_sum(zaba10_02_my_calc)
    USING p_a p_b
    CHANGING gv_result.

*    gv_result = p_a + p_b.
  WHEN '-'.
    gv_result = p_a - p_b.
  WHEN '*'.
    gv_result = p_a * p_b.
  WHEN '/'.
    IF p_b = 0.
      WRITE 'На 0 делить нельзя' COLOR COL_NEGATIVE.
      EXIT.
    ELSE.
      gv_result = p_a / p_b.
    ENDIF.

  WHEN OTHERS.
    WRITE 'Ошибка!'.
ENDCASE.

MESSAGE i000.

WRITE: |Ответ:  { gv_result }|.

MESSAGE s000.

INCLUDE zaba10_02_my_calc_f01.
