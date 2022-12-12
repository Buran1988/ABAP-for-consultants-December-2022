*&---------------------------------------------------------------------*
*& Report ZABA10_06_MY_CALC_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_06_my_calc_1 MESSAGE-ID zaba10_06_my_calc_1.

PARAMETERS p_a TYPE i.
PARAMETERS p_b TYPE i.
PARAMETERS p_oper TYPE c.

DATA gv_resultat TYPE f.

CASE p_oper.
  WHEN '+'.

    PERFORM get_sum
    using p_a p_b
          CHANGING gv_resultat.
*    gv_resultat = p_a + p_b.

  WHEN '-'.
    gv_resultat = p_a - p_b.
  WHEN '*'.
    gv_resultat = p_a * p_b.

  WHEN '/'.

    IF p_b = 0.
      WRITE 'На 0 делить нельзя!' COLOR COL_NEGATIVE.
      EXIT.
    ELSE.
      gv_resultat = p_a / p_b.
    ENDIF.
  WHEN ','.
    gv_resultat = p_a mod p_b.

  WHEN OTHERS.
    WRITE 'Ошибка!'.
ENDCASE.



WRITE |Ответ: { gv_resultat }|.

MESSAGE s000.

INCLUDE zabaa10_06_my_calc_1_f01.
