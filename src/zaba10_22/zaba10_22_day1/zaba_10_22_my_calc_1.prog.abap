*&---------------------------------------------------------------------*
*& Report ZABA_10_22_MY_CALC_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA_10_22_MY_CALC_1 MESSAGE-ID ZABA_10_22_MY_CALC_1.

PARAMETERS p_a TYPE i.
PARAMETERS p_b TYPE i.
PARAMETERS p_oper TYPE c.

DATA gv_resultat TYPE i.

CASE p_oper.
  WHEN '+'.

PERFORM get_sum USING p_a p_b CHANGING gv_resultat.


* gv_resultat = p_a + p_b.
  WHEN '-'.
    gv_resultat = p_a - p_b.
   WHEN '*'.
   gv_resultat = p_a * p_b.
   WHEN '/'.
 IF p_b = 0.
       WRITE |На нуль делить нельзя!|.
       MESSAGE i001.
       EXIT.
 Else. gv_resultat = p_a / p_b.
   ENDIF.


  WHEN OTHERS.
    MESSAGE i002.
    EXIT.
ENDCASE.



WRITE |Ответ { gv_resultat } |.
MESSAGE s000.

INCLUDE zaba_10_22_my_calc_1_f01.
