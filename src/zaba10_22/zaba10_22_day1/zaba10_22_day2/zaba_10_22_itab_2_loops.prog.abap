*&---------------------------------------------------------------------*
*& Report ZABA_10_22_ITAB_2_LOOPS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba_10_22_itab_2_loops.

*FLPRICE_T
DATA(gtd_my_new_tab) = VALUE flprice_t(
                                ( price = '1000' currency = 'RUB' )
                                ( price = '100' currency = 'EUR' )
                                ( price = '150' currency = 'DOL' )
                                     ).
DATA gs_my_line TYPE flprice_s.

FIELD-SYMBOLS <gs_my_line> TYPE flprice_s.
*
*LOOP AT gtd_my_new_tab INTO gs_my_line.
*  gs_my_line-price = gs_my_line-price * '1.05'.
*  WRITE: / |Цена : { gs_my_line-price }, валюта { gs_my_line-currency } |.
*  MODIFY gtd_my_new_tab FROM gs_my_line.
*
*ENDLOOP.


LOOP AT gtd_my_new_tab ASSIGNING <gs_my_line>.
*  <gs_my_adres_line> = VALUE #( base <gs_my_adres_line> price = <gs_my_adres_line>-price * '1.05' currency = <gs_my_adres_line>-currency ).
  <gs_my_line>-price = <gs_my_line>-price * '1.05'.
  WRITE: / |Цена: { <gs_my_line>-price }, валюта { <gs_my_line>-currency }|.
ENDLOOP.

write: / |Осталось значение { <gs_my_line>-currency }|.

cl_demo_output=>display( gtd_my_new_tab ).
*WRITE 'Конец программы'.
