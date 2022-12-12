*&---------------------------------------------------------------------*
*& Report ZABA10_06_DATA_TYPES2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_DATA_TYPES2.

data: gv_my_carr_id type s_carr_ID VALUE 'AA'.

PARAMETERS p_par1 type s_carr_ID.

gv_my_carr_id = p_par1.

write |Вы выбрали { gv_my_carr_id }|.
