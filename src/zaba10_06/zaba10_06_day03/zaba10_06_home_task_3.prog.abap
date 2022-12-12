*&---------------------------------------------------------------------*
*& Report ZABA10_06_HOME_TASK_3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_06_home_task_3.

**11
*
*TYPES table_type_with_number TYPE TABLE OF i.
*
*DATA odd_numbers TYPE table_type_with_number.
*DATA even_numbers TYPE table_type_with_number.
*
*START-OF-SELECTION.
*
*APPEND: 1 TO odd_numbers,
*3 TO odd_numbers,
*5 TO odd_numbers,
*7 TO odd_numbers,
*9 TO odd_numbers.
*
*APPEND: 2 TO even_numbers,
*4 TO even_numbers,
*6 TO even_numbers,
*8 TO even_numbers,
*10 TO even_numbers.

*12

*TYPES table_type_sflight TYPE TABLE OF sflight.
*
*DATA sflight_work_area TYPE LINE OF table_type_sflight.
*
*DATA table_sflight TYPE table_type_sflight.
*
*START-OF-SELECTION.
*  sflight_work_area-carrid = 'AA'.
*  sflight_work_area-connid = '0017'.
*  sflight_work_area-fldate = 20131225. "Christmas
*  sflight_work_area-price = '500.12'.
*
*  APPEND sflight_work_area TO table_sflight.
*  sflight_work_area-carrid = 'AA'.
*  sflight_work_area-connid = '064'.
*  sflight_work_area-fldate = 20131225.
*  sflight_work_area-price = '500.12'.
*  APPEND sflight_work_area TO table_sflight.
*
**13

TYPES: BEGIN OF some_components_sflight_2,
         carrid    TYPE sflight-carrid,
         connid    TYPE sflight-connid,
         fldate    TYPE sflight-fldate,
         price     TYPE sflight-price,
         currency  TYPE sflight-currency,
         planetype TYPE sflight-planetype,
         seatsmax  TYPE sflight-seatsmax,
         seatsocc  TYPE sflight-seatsocc,
       END OF some_components_sflight_2.
TYPES table_type_short_sflight TYPE TABLE OF some_components_sflight_2 WITH KEY
carrid connid fldate.

*14

TYPES: BEGIN OF some_components_SBOOK_2,
         carrid   TYPE sbook-carrid,
         connid   TYPE sbook-connid,
         fldate   TYPE sbook-fldate,
         bookid   TYPE sbook-bookid,
         customid TYPE sbook-customid,
       END OF some_components_SBOOK_2.
TYPES table_type_short_SBOOK TYPE TABLE OF some_components_SBOOK_2 WITH KEY carrid connid
fldate customid.

*15

*DATA gv_char TYPE c LENGTH 10.
*gv_char = 'Hello ABAP'.
*WRITE gv_char.

*=

DATA message TYPE c LENGTH 10 VALUE 'Hello ABAP'.
*WRITE message.
*16
DATA nomer TYPE n LENGTH 4 VALUE '1234'.
*WRITE nomer.
*17
DATA nomer2 TYPE i VALUE '42'.
*WRITE nomer2.
*18
DATA nomer3 TYPE i VALUE '12.72'.
*WRITE nomer3.
*19
DATA date1 TYPE d VALUE '20230501'.
*WRITE date1.
*20
DATA gv_pack TYPE p DECIMALS 7 VALUE '20.230501'.
*WRITE gv_pack.
*21
DATA gv_type1 TYPE s_carr_id.
*22
DATA air_line_code TYPE spfli-carrid.
*23
DATA flight_date TYPE sflight-fldate.
*24
DATA single_booking TYPE sbook.
*25
DATA: BEGIN OF some_components_of_one_flight,
        carrid    TYPE sflight-carrid,
        connid    TYPE sflight-connid,
        fldate    TYPE sflight-fldate,
        price     TYPE sflight-price,
        currency  TYPE sflight-currency,
        planetype TYPE sflight-planetype,
        seatsmax  TYPE sflight-seatsmax,
        seatsocc  TYPE sflight-seatsocc,
      END OF some_components_of_one_flight.
*26 Структура со всеми полями таблицы SBOOK и полем TELEPHONE из таблицы SCUSTOM
DATA: BEGIN OF sbook_with_phone.
        INCLUDE STRUCTURE sbook.
DATA phone TYPE scustom-telephone.
DATA END OF sbook_with_phone.

*27 внутренняя таблица с полями таблицы SBOOK
*CARRID, CONNID, FLDATE, BOOKID, CUSTOMID
TYPES: BEGIN OF ty_sbook ,
         carrid      TYPE sbook-carrid,
         connid      TYPE sbook-connid,
         fldate      TYPE sbook-fldate,
         bookid      TYPE sbook-bookid,
         customer_id TYPE sbook-customid,
       END OF ty_sbook.
TYPES ty_itab_sbook TYPE TABLE OF ty_sbook WITH KEY carrid connid fldate bookid.
DATA itab_sbook TYPE ty_itab_sbook.

*28 Объявите внутреннюю таблицу со всеми полями таблицы из таблицы SCARR.
DATA gv_my_tab_SCARR TYPE STANDARD TABLE OF scarr.
DATA it_scarr TYPE STANDARD TABLE OF scarr.
*29 Объявите внутреннюю таблицу со всеми полями таблицы SPFLI.
TYPES gs_struct_SPFLI TYPE spfli.
DATA gs_table_SPFLI TYPE TABLE OF gs_struct_SPFLI.

*30 Объявите внутреннюю таблицу со всеми полями таблицы из SCARR
*и полем TELEPHONE из таблицы SCUSTOM.
TYPES: BEGIN OF ty_scarr_telephone.
         INCLUDE TYPE scarr.
TYPES:   phone TYPE scustom-telephone,
       END OF ty_scarr_telephone,
       ty_itab_scarr_telephone TYPE SORTED TABLE OF ty_scarr_telephone
       WITH UNIQUE KEY carrid.
DATA itab TYPE ty_itab_scarr_telephone.
