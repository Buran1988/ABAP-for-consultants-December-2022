*----------------------------------------------------------------------*
***INCLUDE ZABA10_99_MY_CALC_1_F01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Form get_sum
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM get_sum USING var_a var_b CHANGING resultat.
  resultat = var_a + var_b.

ENDFORM.
