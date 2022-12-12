*&---------------------------------------------------------------------*
*& Report ZABA10_04_DATA_TYPES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_DATA_TYPES.
Data gv_var type i.
Data gv_my_date TYPE d.
Data gv_my_time type t.

gv_var = 3000.
gv_my_date = sy-datlo.
gv_my_time = sy-uzeit.

Write gv_var.
write gv_my_date.
write 'текущее время' && gv_my_time.
