*&---------------------------------------------------------------------*
*& Report ZABA10_99_DATA_TYPES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_99_data_types.

TYPES my_type_c(8) TYPE c.

DATA gv_var TYPE i.
DATA: gv_my_date TYPE d,

      gv_my_time TYPE t,
      gv_my_char TYPE c LENGTH 8
      .




data gv_my_char2 TYPE my_type_c.


gv_var = 3.
gv_my_date = sy-datum.
gv_my_time = sy-uzeit.



WRITE gv_var.
WRITE: / gv_my_date,
/, |Текущее время { gv_my_time }|,
/, 'Текущее время ' && '    ' && gv_my_time .
