*&---------------------------------------------------------------------*
*& Report ZABA10_D1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_d1 message-id zaba10_d1.

DATA my_var TYPE i."переменная может быть gv_var глобальная вариативная переменная, sy-системная переменная (счетчики напрмер)
DATA gv_var_date TYPE d.
DATA my_time TYPE t.
DATA my_char TYPE c LENGTH 8.

my_var = 3.
gv_var_date = sy-datlo.
my_time = sy-uzeit.

WRITE my_var.
WRITE / gv_var_date.
WRITE / | текущее время { my_time }|. " другой способ - write 'текущее время' && my_time.


"вывод селекционного экрана из таблицы
DATA: gv_my_carr_id TYPE s_carr_id VALUE 'AA'.
PARAMETERS p_parl TYPE s_carr_id. "вывод полня с выбором
gv_my_carr_id = p_parl.
WRITE / |вы выбрали { gv_my_carr_id }|.

"простая арифметика
PARAMETERS p_a TYPE i.
PARAMETERS p_b TYPE i.
PARAMETERS p_oper TYPE c.


DATA gv_result TYPE f.

CASE p_oper.
  WHEN '+'.

    PERFORM summ "процедура к данной операции
    USING p_a p_b
          CHANGING gv_result.

    "gv_result = p_a + p_b.
  WHEN '-'.
    gv_result = p_a - p_b.
  WHEN '*'.
    gv_result = p_a * p_b.
  WHEN '/'.
    IF p_b = 0.
      WRITE / 'на ноль делить нельзя' COLOR COL_NEGATIVE.
      exit.
    ELSE.
      gv_result = p_a / p_b.
    ENDIF.

  WHEN OTHERS.
    WRITE / 'error. please use simple arithmetic'.
ENDCASE.

"gv_result = p_a + p_b.

WRITE / |answer: { gv_result }|.
MESSAGE s000. "i - отдельное окно s- строка внизу страницы

INCLUDE zabaa10_d1_f01.
