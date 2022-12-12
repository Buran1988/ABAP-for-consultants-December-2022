*&---------------------------------------------------------------------*
*& Report ZABA_10_DATA_TYPES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA_10_DATA_TYPES.
data:  gv_var type i,
        gv_my_date TYPE d,
       gv_my_time TYPE t,
       gv_my_char TYPE c LENGTH 8.

gv_var = 3.
gv_my_date = sy-datum.
gv_my_time = sy-uzeit.

write gv_var.
write gv_my_date.
WRITE |Текущее время { sy-uzeit }|.
