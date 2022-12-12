*&---------------------------------------------------------------------*
*& Report ZABA10_04_DATA_TYPES2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_DATA_TYPES2 Message-ID ZABA10_04.
Parameters p_a TYPE i.
Parameters p_b type i.
Parameters p_oper type c.

Data gv_resultat Type f.

CASE p_oper.
  WHEN '+' .
 PERFORM get_sum USING p_a p_b CHANGING gv_resultat.

*gv_resultat = p_a + p_b.
  WHEN  '-'.
    gv_resultat = p_a - p_b.
      WHEN  '*'.
  gv_resultat = p_a * p_b.
            WHEN  '/'.
              IF p_b = 0.
                write 'На 0 делить нельзя!' Color Col_Negative.
                EXIT.
           else.
             gv_resultat = p_a / p_b.
              ENDIF.

  WHEN OTHERS.
ENDCASE.

Write |Ответ: { gv_resultat }|.
Message S000.

INCLUDE zaba10_04_data_types2_f01.
