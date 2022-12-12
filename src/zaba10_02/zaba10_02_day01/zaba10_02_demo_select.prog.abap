*&---------------------------------------------------------------------*
*& Report ZABA10_02_DEMO_SELECT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_DEMO_SELECT.

PARAMETERS: pa_sum TYPE i.
DATA sv_words TYPE spell.

CALL FUNCTION 'SPELL_AMOUNT'
  EXPORTING
    amount    = pa_sum                 " Сумма/число для преобразования
    currency  = space            " Для сумм - валюта, для чисел - пробел
*    filler    = space            " Заполнитель для поля вывода
*    language  = SY-LANGU         " Код языка для преобразования прописью
  IMPORTING
    in_words  = sv_words                 " Строка полей с суммой/числом и цифрами прописью
  EXCEPTIONS
    not_found = 1                " Аргумент в T015Z не найден
    too_large = 2                " Сумма для преобразования слишком велика
    others    = 3
  .
IF SY-SUBRC <> 0.
* MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*   WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
ENDIF.

WRITE sv_words-word.
