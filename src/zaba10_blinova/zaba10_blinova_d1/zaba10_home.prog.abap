*&---------------------------------------------------------------------*
*& Report ZABA10_HOME
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_home.

"1
TYPES var1 TYPE c LENGTH 10.
"2
DATA var2 TYPE i.
"3
TYPES var3 TYPE n LENGTH 7.

TYPES: var4 TYPE d, "4
       var5 TYPE t  "5
       .
"6
TYPES: BEGIN OF my_str,
         field_1 TYPE var1,
         field_2 LIKE var2,
         field_3 TYPE var3,
         field_4 TYPE var4,
         field_5 TYPE var5,
       END OF my_str.

"7
TYPES var7 TYPE sflight.

"8
TYPES: BEGIN OF str_sflight,
         carrid    TYPE sflight-carrid,
         connid    TYPE sflight-connid,
         fldate    TYPE sflight-fldate,
         price     TYPE sflight-price,
         currency  TYPE sflight-currency,
         planetype TYPE sflight-planetype,
         seatsmax  TYPE sflight-seatsmax,
         seatsocc  TYPE sflight-seatsocc,
       END OF str_sflight.

"9
TYPES: BEGIN OF str_sbook,
         carrid   TYPE sbook-carrid,
         connid   TYPE sbook-connid,
         fldate   TYPE sbook-fldate,
         bookid   TYPE sbook-bookid,
         customid TYPE sbook-customid,
       END OF str_sbook.

"10 ?
TYPES: BEGIN OF str_sflight_sbook,
         carrid_sflight TYPE sflight-carrid,
         connid_sflight TYPE sflight-connid,
         fldate_sflight TYPE sflight-fldate,
         price          TYPE sflight-price,
         currency       TYPE sflight-currency,
         planetype      TYPE sflight-planetype,
         seatsmax       TYPE sflight-seatsmax,
         seatsocc       TYPE sflight-seatsocc,
         carrid_sbook   TYPE sbook-carrid,
         connid_sbook   TYPE sbook-connid,
         fldate_sbook   TYPE sbook-fldate,
         bookid         TYPE sbook-bookid,
         customid       TYPE sbook-customid,
       END OF str_sflight_sbook.

"11 ?

"12 ?

"13
TYPES: BEGIN OF str_sflight2,
         carrid    TYPE sflight-carrid,
         connid    TYPE sflight-connid,
         fldate    TYPE sflight-fldate,
         price     TYPE sflight-price,
         currency  TYPE sflight-currency,
         planetype TYPE sflight-planetype,
         seatsmax  TYPE sflight-seatsmax,
         seatsocc  TYPE sflight-seatsocc,
       END OF str_sflight2.
types tab_str_sflight type table of str_sflight2. " в решении WITH KEY carrid connid fldate.для чего?

"14 тот же вопрос что и в 13

"15
data var8 type c LENGTH 10 VALUE 'Hello ABAP'.

"16
data var9 type n LENGTH 4 VALUE '1234'.

"17
data var10 type i VALUE '42'.

"18
data var11 type i VALUE '12.72'.

"19
data var12 type d.
var12 = '20220501'.

"20
data var13 type p LENGTH 10 DECIMALS 7.

"21
data var14 type s_carr_id.

"22
TYPES var15 TYPE spfli.
data var16 type spfli-DISTANCE.

"23
TYPES var17 TYPE sflight.
data var18 type sflight-flDATE.

"24
data var19 type sbook.

"25
TYPES: BEGIN OF str_sflight3,
         carrid    TYPE sflight-carrid,
         connid    TYPE sflight-connid,
         fldate    TYPE sflight-fldate,
         price     TYPE sflight-price,
         currency  TYPE sflight-currency,
         planetype TYPE sflight-planetype,
         seatsmax  TYPE sflight-seatsmax,
         seatsocc  TYPE sflight-seatsocc,
       END OF str_sflight3.

"26
data: BEGIN OF str_sbook_telephone.
  include STRUCTURE sbook.
  data var20 type scustom-telephone.
  data end of str_sbook_telephone.

"31
CONSTANTS var21 type string value 'Julia'.

"32
TYPES true_false type c.
CONSTANTS var22 type true_false value 'x'.
CONSTANTS var23 type true_false value space.

"33
CONSTANTS var24 TYPE p LENGTH 7 DECIMALS 5 VALUE '3.14159'.

"34
