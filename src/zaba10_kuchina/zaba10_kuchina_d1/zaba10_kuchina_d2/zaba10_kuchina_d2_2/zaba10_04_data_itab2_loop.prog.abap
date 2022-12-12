*&---------------------------------------------------------------------*
*& Report ZABA10_04_DATA_ITAB2_LOOP
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_DATA_ITAB2_LOOP.

Data(gtd_my_new_tab) = VALUE FLPRICE_T(
      ( price = '1000' currency = 'rub' )
       ( price = '100' currency = 'usd' ) ).
       data gs_my_line TYPE FLPRICE_S.

       LOOP AT gtd_my_new_tab INTO gs_my_line.
       gs_my_line-price = gs_my_line-price * '1.05'.
       Write: / |Цена: { gs_my_line-price }, валюта { gs_my_line-currency } |.
       Modify gtd_my_new_tab from gs_my_line.

       ENDLOOP.
