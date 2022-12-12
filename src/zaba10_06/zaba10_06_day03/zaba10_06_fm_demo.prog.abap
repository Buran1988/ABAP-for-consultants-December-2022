*&---------------------------------------------------------------------*
*& Report ZABA10_06_FM_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_FM_DEMO.

PARAMETERS: pa_sum TYPE i.
data my_words TYPE spell.

call FUNCTION 'SPELL_AMOUNT'
  EXPORTING
    amount    = pa_sum * 100                " Сумма/число для преобразования
    currency  = 'RUB'            " Для сумм - валюта, для чисел - пробел
*    filler    = space            " Заполнитель для поля вывода
*    language  = SY-LANGU         " Код языка для преобразования прописью
  IMPORTING
    in_words  = my_words                 " Строка полей с суммой/числом и цифрами прописью
  EXCEPTIONS
    not_found = 1                " Аргумент в T015Z не найден
    too_large = 2                " Сумма для преобразования слишком велика
    others    = 3
  .
IF SY-SUBRC <> 0.
* MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*   WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
ENDIF.

write my_words-word.
