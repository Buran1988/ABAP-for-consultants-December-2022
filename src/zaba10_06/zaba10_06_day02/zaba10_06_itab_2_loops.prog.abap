*&---------------------------------------------------------------------*
*& Report ZABA10_06_ITAB_2_LOOPS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_ITAB_2_LOOPS.

DATA(gtd_my_new_tab) = VALUE flprice_t(
( price = '1000' currency = 'RUB' )
( price = '100' currency = 'EUR' )
( price = '150' currency = 'DOL' )
).

*FIELD-SYMBOLS <qs_my_adres_line> TYPE flprice_s.

*data gs_my_line type flprice_s.
**LOOP at gtd_my_new_tab into gs_my_line.
*LOOP at gtd_my_new_tab into data(gs_my_line).
*  gs_my_line-price = gs_my_line-price * '1.05'.
*  write: / |Цена : { gs_my_line-price }, валюта { gs_my_line-currency } |.
*  modify gtd_my_new_tab from gs_my_line.
*ENDLOOP.

LOOP AT gtd_my_new_tab ASSIGNING FIELD-SYMBOL(<qs_my_adres_line>).
*<qs_my_adres_line> = value #( base <qs_my_adres_line>-price * '1.05' currency = <qs_my_adres_line>-currency ).
WRITE: / |Цена: { <qs_my_adres_line>-price }, валюта { <qs_my_adres_line>-currency }|.
ENDLOOP.

write 'Конец программы'.
