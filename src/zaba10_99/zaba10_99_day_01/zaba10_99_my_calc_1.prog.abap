*&---------------------------------------------------------------------*
*& Report ZABA10_99_MY_CALC_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_99_my_calc_1 MESSAGE-ID ZABA10_99_MY_CALC_1.


PARAMETERS p_a TYPE i.
PARAMETERS p_b TYPE i.
PARAMETERS p_oper TYPE c.

DATA gv_resultat TYPE f.

CASE p_oper.
  WHEN '+'.

    PERFORM get_sum
      USING p_a p_b
      CHANGING gv_resultat.



*    gv_resultat = p_a + p_b.

  WHEN '-'.
    gv_resultat = p_a - p_b.
  WHEN '*'.
    gv_resultat = p_a * p_b.

  WHEN '/'.

    IF p_b = 0.
      WRITE 'На ноль делить нельзя!' COLOR COL_NEGATIVE.
      EXIT.
    ELSE.
      gv_resultat = p_a / p_b.
    ENDIF.

  WHEN OTHERS.
    WRITE 'Ошибка!'.
ENDCASE.


WRITE |Ответ: { gv_resultat }|.

MESSAGE S000.

*INCLUDE zaba10_99_my_calc_1_f01.
INCLUDE zaba10_02_my_calc_f01.
