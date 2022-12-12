*&---------------------------------------------------------------------*
*& Report ZABA10_99_DATA_TYPES_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_99_DATA_TYPES_2.

data: gv_my_carr_id type s_carr_id VALUE 'AA'.

PARAMETERS p_par1 type s_carr_id.



gv_my_carr_id = p_par1.

WRITE |Вы выбрали { gv_my_carr_id }|.
