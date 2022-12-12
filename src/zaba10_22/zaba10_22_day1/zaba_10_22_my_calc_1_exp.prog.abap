*&---------------------------------------------------------------------*
*& Report ZABA_10_22_MY_CALC_1_EXP
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA_10_22_MY_CALC_1_EXP MESSAGE-ID ZABA_10_22_MY_CALC_1.


PARAMETERS p_a TYPE i.
PARAMETERS p_b TYPE i.
PARAMETERS p_oper TYPE c.

DATA gv_resultat TYPE i.

CASE p_oper.
  WHEN '+'.
   gv_resultat = p_a + p_b.
  WHEN '-'.
    gv_resultat = p_a - p_b.
   WHEN '*'.
   gv_resultat = p_a * p_b.
   WHEN '/'.
     CASE p_b.
     	WHEN 0.
     	MESSAGE i001. "(на нуль делить нельзя!)"
      EXIT.
     	WHEN OTHERS.
      gv_resultat = p_a / p_b.
     ENDCASE.


  WHEN OTHERS.
    WRITE 'Ошибка'.
ENDCASE.



WRITE |Ответ { gv_resultat } |.
MESSAGE i000.
