*&---------------------------------------------------------------------*
*& Report ZABA10_D3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_d3.

*"1 объявление рабочей области
*"заводим внутр таблицу
"DATA my_itab TYPE TABLE OF scarr.
*
*SELECT carrid carrname FROM scarr INTO CORRESPONDING FIELDS OF TABLE my_itab. "CORRESPONDING FIELDS добавляем для вывода корректных данных для отдельных столбцов
*"select * from scarr into table my_itab. все данные из таблицы
*cl_demo_output=>display( my_itab ).
"2 определить рабочую область по месту
"SELECT * FROM scarr INTO TABLE @DATA(my_itab2)  where carrid = 'AA' order by carrname DESCENDING.
" if sy-subrc = 0.
*cl_demo_output=>display( my_itab2 ).


*SELECT
*  * FROM sflight INTO @DATA(my_itab2)  where seatsmax_b = '31'.
*  write: / my_itab2-carrid, my_itab2-planetype.
*  endselect.
*
*  if sy-subrc = 0.
*  cl_demo_output=>display( my_itab2 ).
*endif.

*"select join
*select * from spfli join scarr
*  on spfli~carrid = scarr~carrid
*  into table @data(my_join_nab).
*  cl_demo_output=>display( my_join_nab ).

*PARAMETERS p_sel TYPE sflight-carrid.
*
*SELECT * FROM sflight INTO TABLE @DATA(tab1) WHERE sflight~carrid = @p_sel.
*
*DATA perc TYPE p DECIMALS 2.
*
*LOOP AT tab1 INTO DATA(my_line).
*
*  perc = my_line-seatsocc / my_line-seatsmax * 100.
*
*  WRITE: / |Id рейса: { my_line-connid }|,
*   |Дата рейса: { my_line-fldate }|,
*   |Процент купленных мест: { perc }|.
*ENDLOOP.
*
*
*"cl_demo_output=>display( tab1 ).
