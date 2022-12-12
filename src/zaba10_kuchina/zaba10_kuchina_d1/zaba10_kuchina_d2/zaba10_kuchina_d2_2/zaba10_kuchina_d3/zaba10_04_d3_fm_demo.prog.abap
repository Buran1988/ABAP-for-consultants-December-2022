*&---------------------------------------------------------------------*
*& Report ZABA10_04_D3_FM_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_D3_FM_DEMO.

PARAMETERS: pa_sum TYPE i.
DATA my_words TYPE spell.

CALL FUNCTION 'SPELL_AMOUNT'
EXPORTING
AMOUNT          = pa_sum *  100
CURRENCY        = 'RUB'
*   FILLER          = ' '
*   LANGUAGE        = SY-LANGU
 IMPORTING
IN_WORDS        = my_words
* EXCEPTIONS
*   NOT_FOUND       = 1
*   TOO_LARGE       = 2
*   OTHERS          = 3
          .
IF sy-subrc <> 0.
* Implement suitable error handling here
ENDIF.

write my_words-word.
