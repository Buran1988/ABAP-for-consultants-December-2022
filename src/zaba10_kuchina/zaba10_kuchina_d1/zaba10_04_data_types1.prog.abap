*&---------------------------------------------------------------------*
*& Report ZABA10_04_DATA_TYPES1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_DATA_TYPES1.
Data: gv_my_carr_id type s_carr_id.
PARAMETERS p_parl type s_carr_id.
gv_my_carr_id = p_parl.
write |ваше значение { gv_my_carr_id }|.
