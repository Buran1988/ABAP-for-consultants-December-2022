*&---------------------------------------------------------------------*
*& Report ZABA10_05_FM_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_FM_DEMO.

PARAMETERS: pa_sum type i.
data my_word type spell.
call function 'SPELL_AMOUNT'
EXPORTING
   amount    = pa_sum * 100                " Amount/Number to Be Spelled Out
    currency  = 'rub'            " Currency for Amounts, Blank for Numbers
*    filler    = space            " Filler for Padding the Output Field
*    language  = SY-LANGU         " Language Indicator
  IMPORTING
    in_words  = my_word             " Character String with Amount/Number Spelled Out
  EXCEPTIONS
    not_found = 1                " Argument Not Found in T015Z
    too_large = 2                " Amount Too Large to Be Spelled Out
    others    = 3
  .
IF SY-SUBRC <> 0.
* MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*   WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
ENDIF.

write my_word-word.
