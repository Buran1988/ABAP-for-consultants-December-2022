*&---------------------------------------------------------------------*
*& Report ZABA10_02_ITAB_LOOPS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_ITAB_LOOPS.

DATA(gt_sv_new_tab) = VALUE flprice_t(
                              ( price = 1000 currency = 'RUB' )
                              ( price = 100 currency = 'EUR' )
                              ( price = 150 currency = 'USD' )
                              ).

*DATA gs_sv_line TYPE flprice_s.

*LOOP AT gt_sv_new_tab INTO DATA(gs_sv_line).
*  gs_sv_line-price = gs_sv_line-price * '1.1'.
*  WRITE: / |Цена : { gs_sv_line-price }, Валюта { gs_sv_line-currency } |.
*  MODIFY gt_sv_new_tab FROM gs_sv_line.
*ENDLOOP.

LOOP AT gt_sv_new_tab ASSIGNING FIELD-SYMBOL(<gs_my_adr_line>).
*  <gs_my_adr_line> = VALUE #( BASE <gs_my_adr_line>
*                              price = <gs_my_adr_line>-price * '1.1'
*                              currency = <gs_my_adr_line>-currency
*                              ).
  WRITE: / |Цена : { <gs_my_adr_line>-price }, Валюта { <gs_my_adr_line>-currency } |.
ENDLOOP.
