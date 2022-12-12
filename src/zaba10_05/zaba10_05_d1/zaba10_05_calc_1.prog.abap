*&---------------------------------------------------------------------*
*& Report ZABA10_05_CALC_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_05_calc_1 MESSAGE-ID zaba10_result.

PARAMETERS p_a TYPE i.
PARAMETERS p_oper TYPE c.
PARAMETERS p_b TYPE i.

DATA gv_result TYPE i.

CASE p_oper.
WHEN '+'.

PERFORM get_sum
USING p_a p_b
      CHANGING gv_result.


  WHEN  '-'.
gv_result = p_a - p_b.
  WHEN '*'.
gv_result = p_a * p_b.


  WHEN  '/'.
    IF p_b = 0.
      write 'на 0 делить нельзя' COLOR COL_NEGATIVE.
      exit.
  else.
      gv_result = p_a / p_b.
    ENDIF.


  WHEN OTHERS.
ENDCASE.


*gv_result = p_a + p_b.

WRITE |result: { gv_result }|.
MESSAGE s000.
*&---------------------------------------------------------------------*
*& Form 2
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM get_sum using var_a var_b CHANGING result .

ENDFORM.
