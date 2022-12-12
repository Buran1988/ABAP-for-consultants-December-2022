*&---------------------------------------------------------------------*
*& Report ZABA10_02_HW
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_HW.

TYPES: var1(10) TYPE c, "1
       var3(7) TYPE n,  "3
       var4 TYPE d,     "4
       var5 TYPE t.     "5

DATA var2 TYPE i.       "2

TYPES: BEGIN OF gt_sv_str,       "6
       field_1 TYPE var1,
       field_2 LIKE var2,
       field_3 TYPE var3,
       field_4 TYPE var4,
       field_5 TYPE var5,
END OF gt_sv_str.

TYPES var7 TYPE sflight.      "7

TYPES: BEGIN OF gt_sv_sflight,  "8
       carrid    TYPE sflight-carrid,
       connid    TYPE sflight-connid,
       fldate    TYPE sflight-fldate,
       price     TYPE sflight-price,
       currency  TYPE sflight-currency,
       planetype TYPE sflight-planetype,
       seatsmax  TYPE sflight-seatsmax,
       seatsocc  TYPE sflight-seatsocc,
END OF gt_sv_sflight.

TYPES: BEGIN OF gt_sv_sbook,   "9
       carrid    TYPE sbook-carrid,
       connid    TYPE sbook-connid,
       fldate    TYPE sbook-fldate,
       bookid    TYPE sbook-bookid,
       customid  TYPE sbook-customid,
END OF gt_sv_sbook.

TYPES: BEGIN OF gt_sv_custom,   "10
       carrid       TYPE sflight-carrid,
       connid       TYPE sflight-connid,
       fldate       TYPE sflight-fldate,
       price        TYPE sflight-price,
       currency     TYPE sflight-currency,
       planetype    TYPE sflight-planetype,
       seatsmax     TYPE sflight-seatsmax,
       seatsocc     TYPE sflight-seatsocc,
       carrid_b     TYPE sbook-carrid,
       connid_b     TYPE sbook-connid,
       fldate_b     TYPE sbook-fldate,
       bookid_b     TYPE sbook-bookid,
       customid_b   TYPE sbook-customid,
END OF gt_sv_custom.

*DATA gv_sv_var TYPE gt_sv_custom.
*gv_sv_var = VALUE #( carrid = 123
*                     fldate = '20220315'
**                     carrid_1 = 153
*                     ).
*
*cl_demo_output=>display(
*      data = gv_sv_var
*).

"11

TYPES gt_sv_tab_i TYPE TABLE OF i. "12



*DATA gt_test TYPE gt_sv_sflight.
*gt_test = VALUE #( carrid = 123 fldate = '22020315' ).
*
**MOVE-CORRESPONDING gv_sv_var TO gt_test.
*
*cl_demo_output=>display(
*      data = gt_test
*).

TYPES gv_sv_test8 TYPE TABLE OF gt_sv_sflight.  "13

TYPES: BEGIN OF gv_sv_test14,                   "14
                CARRID TYPE sbook-carrid,
                CONNID TYPE sbook-connid,
                FLDATE TYPE sbook-fldate,
                BOOKID TYPE sbook-bookid,
                CUSTOMID TYPE sbook-customid,
END OF gv_sv_test14.

"15-
DATA gv_sv_char(10) TYPE c VALUE 'Hello ABAP'.

DATA gv_sv_int TYPE i VALUE 1234.

DATA gv_sv_int2 TYPE i VALUE 42.

DATA gv_sv_int3 TYPE i VALUE '12.72'.

DATA gv_sv_date TYPE d VALUE '20220501'.

DATA gv_sv_fl TYPE p DECIMALS 7 VALUE 12.

DATA gv_sv_sci TYPE s_carr_id VALUE 123.

DATA gv_sv_field22 TYPE spfli-deptime VALUE '170000'. "22

DATA gv_sv_field23 TYPE sflight-fldate.

TYPES gs_sv_struct TYPE sbook.

WRITE: / gv_sv_int,
       / gv_sv_int2,
       / gv_sv_int3,
       / gv_sv_date,
       / gv_sv_fl,
       / gv_sv_sci,
       / gv_sv_field22.
