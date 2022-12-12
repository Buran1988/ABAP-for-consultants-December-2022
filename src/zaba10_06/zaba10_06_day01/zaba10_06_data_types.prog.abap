*&---------------------------------------------------------------------*
*& Report ZABA10_06_DATA_TYPES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_DATA_TYPES.

data gv_var type i.
data gv_my_date type d.
data: gv_my_time type t,
      gv_my_char type c LENGTH 8.

types my_type_c(8) type c.
data gv_my_char2 type my_type_c.

gv_var = 3.
gv_my_date = sy-datlo.
gv_my_time = sy-uzeit.

write gv_var.
write / gv_my_date.
write / |Текущее время { gv_my_time }| && ' dshgjhds'.
write / |Текущее время | && gv_my_time.

*CONCATENATE
