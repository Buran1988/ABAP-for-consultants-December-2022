*&---------------------------------------------------------------------*
*& Report ZABA10_99_FM_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_99_fm_demo.

PARAMETERS: pa_sum TYPE i.
DATA my_words TYPE spell.

CALL FUNCTION 'SPELL_AMOUNT'
  EXPORTING
    amount    = pa_sum * 100
    currency  = 'RUB'
*   FILLER    = ' '
*   LANGUAGE  = SY-LANGU
  IMPORTING
    in_words  = my_words
  EXCEPTIONS
    not_found = 1
    too_large = 2
    OTHERS    = 3.
IF sy-subrc <> 0.
* Implement suitable error handling here
ENDIF.


WRITE my_words-word.
