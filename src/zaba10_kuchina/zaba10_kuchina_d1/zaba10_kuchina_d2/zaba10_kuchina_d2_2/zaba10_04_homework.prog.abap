*&---------------------------------------------------------------------*
*& Report ZABA10_04_HOMEWORK
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_HOMEWORK.
*DATA single_booking TYPE sbook.

*DATA: BEGIN OF some_components_of_one_flight,
*  carrid TYPE sflight-carrid,
*  connid TYPE sflight-connid,
*  fldate TYPE sflight-fldate,
*  price TYPE sflight-price,
*  END OF some_components_of_one_flight.
*
*  Cl_demo_output=>display(
*  Data = some_components_of_one_flight ).

*DATA: BEGIN OF sbook_with_phone.
*  INCLUDE STRUCTURE sbook.
*  DATA phone TYPE scustom-telephone.
*  DATA END OF sbook_with_phone.
*
*  Cl_demo_output=>display(
*Data = sbook_with_phone ).

TYPES: BEGIN OF ty_sbook,
  carrid TYPE sbook-carrid,
  connid TYPE sbook-connid,
  fldate TYPE sbook-fldate,
  bookid TYPE sbook-bookid,
  customer_id TYPE sbook-customid,
  END OF ty_sbook.
  TYPES ty_itab_sbook type TABLE OF ty_sbook WITH KEY carrid connid fldate bookid.
  DATA itab_sbook TYPE ty_itab_sbook.

  Cl_demo_output=>display(
Data = itab_sbook ).
