*&---------------------------------------------------------------------*
*& Report ZABA_10_DATA_TYPES_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA_10_DATA_TYPES_2.
data gv_my_carr_id type s_carr_id.
parameters p_par1 type s_carr_id.
gv_my_carr_id = p_par1.

write |Вы выбрали { gv_my_carr_id }|.
