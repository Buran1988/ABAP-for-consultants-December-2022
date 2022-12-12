*&---------------------------------------------------------------------*
*& Report ZABA10_05_DATA_TYPES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_DATA_TYPES.

data my_var type i.
data: gv_my_date type d,
      gv_my_time type T.

my_var = 3.
gv_my_date = sy-datum.
gv_my_time = sy-uzeit.


write my_var.
write / gv_my_date.
write / |my time { gv_my_time }|.
*write / 'my time' && gv_my_time.
