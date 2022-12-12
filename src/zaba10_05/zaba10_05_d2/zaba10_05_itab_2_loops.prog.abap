*&---------------------------------------------------------------------*
*& Report ZABA10_05_ITAB_2_LOOPS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_ITAB_2_LOOPS.

*FLPRICE_T
DATA(gtd_my_new_tab) = VALUE flprice_t(
                                ( price = '1000' currency = 'RUB' )
                                ( price = '100' currency = 'EUR' )
                                ( price = '150' currency = 'DOL' )
                                     ).
*DATA gs_my_line TYPE flprice_s.

LOOP AT gtd_my_new_tab INTO data(gs_my_line).
  gs_my_line-price = gs_my_line-price * '1.05'.
  WRITE: / |Цена : { gs_my_line-price }, валюта { gs_my_line-currency } |.
  MODIFY gtd_my_new_tab FROM gs_my_line.

ENDLOOP.
