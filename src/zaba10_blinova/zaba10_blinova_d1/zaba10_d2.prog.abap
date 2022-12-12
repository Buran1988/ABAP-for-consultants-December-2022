*&---------------------------------------------------------------------*
*& Report ZABA10_D2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_d2.

"DATA my_str TYPE spfli.
"my_str-airpfrom = 'Msc'.

"DATA my_scarr TYPE scarr.
"my_scarr-carrname = 'Aeroflot'.

"cl_demo_output=>display(
*  EXPORTING
    "data    = my_str
*    name    =
*    exclude =
*    include =
").

"cl_demo_output=>display(
"data = my_scarr
      ").


*types: my_type_c(8) type c.
*
*types: BEGIN OF str_flightinfo,
*  carrid type my_type_c,"s_carr_id,
*  connid type i, "s_conn_id,
*  end of str_flightinfo.
*
*  Data str1 type str_flightinfo.
*  str1-carrid = '57'.
*  str1-connid = 1500.
*
* cl_demo_output=>display(
*data = str1
*      ).

"data my_var type my_type_c.
"my_var = 'testTest123'.
"write my_var.

"таблицы
*data gtd_my_firt_itab type table of spfli.
*
*"wa work area
*data my_line type spfli.
*my_line-airpfrom = 'msk'.
*my_line-arrtime = '170000'.
*
*do 50 times.
*  add 1 to my_line-arrtime.
*APPEND my_line to gtd_my_firt_itab.
*enddo.
*
*cl_demo_output=>display(
*data = gtd_my_firt_itab
*      ).
*
*data(str_tab) = value spfli( airpfrom = 'msk' arrtime = '170000' ).

*data(tab) = value flprice_t( ( price = '1000' currency = 'rub')
*                             ( price = '100' currency = 'eur')
*                             ( price = '150' currency = 'dol') ).
*cl_demo_output=>display(
*data = tab
*      ).

"loops
data(tab) = value flprice_t( ( price = '1000' currency = 'rub')
                             ( price = '100' currency = 'eur')
                             ( price = '150' currency = 'dol') ).

"data my_line type FLPRICE_S.

LOOP AT tab into data(my_line).
  my_line-price = my_line-price * '1.05'.
  write: / |price : { my_line-price }, currency { my_line-currency } |.
MODIFY tab from my_line.

ENDLOOP.

write / 'end of program'.
