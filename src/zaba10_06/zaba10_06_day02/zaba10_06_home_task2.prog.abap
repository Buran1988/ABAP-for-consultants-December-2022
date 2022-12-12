*&---------------------------------------------------------------------*
*& Report ZABA10_06_HOME_TASK2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_06_home_task2.
TYPES my_c_typ(8) TYPE c.


* 5
TYPES BEGIN OF my_struc_type.

TYPES field1 TYPE my_c_typ.
TYPES field2 TYPE i.
TYPES field3 TYPE n.
TYPES field4 TYPE d.
TYPES field5 TYPE t.

TYPES END OF my_struc_type.

DATA my_struct1 TYPE my_struc_type.

*cl_demo_output=>display( data = my_struct1 ).

* 6
DATA my_struct2 TYPE sflight.

*cl_demo_output=>display( data = my_struct2 ).

*7

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

DATA my_struct3 TYPE some_components_sflight_2.

*cl_demo_output=>display( data = my_struct3 ).

*8

TYPES: BEGIN OF flight_booking,
         carrid   TYPE sbook-carrid,
         connid   TYPE sbook-connid,
         fldate   TYPE sbook-fldate,
         bookid   TYPE sbook-bookid,
         customid TYPE sbook-customid,
       END OF flight_booking.

DATA my_struct4 TYPE flight_booking.

*cl_demo_output=>display( data = my_struct4 ).

*9

* structure flight_booking

TYPES: BEGIN OF sflight_sbook.
INCLUDE TYPE some_components_sflight_2.
INCLUDE TYPE flight_booking AS book RENAMING WITH SUFFIX _book.
TYPES END OF sflight_sbook.
START-OF-SELECTION. " F8 To Execute
DATA one_record TYPE sflight_sbook.
BREAK-POINT. " See one_record using the debugger

*cl_demo_output=>display( data = my_struct5 ).

*10



DATA gtd_my_itab1 TYPE TABLE OF n.

cl_demo_output=>display( gtd_my_itab1 ).
