CLASS zaba10_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: name TYPE string.
    DATA: position TYPE string.
    DATA: salary TYPE i.

    METHODS to_print_form RETURNING VALUE(result) type string.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZABA10_CLASS IMPLEMENTATION.


  METHOD to_print_form.

    data lv_report type string.
    lv_report = |name { name }. position { position }. salary { salary }.|.

    result = lv_report.

  ENDMETHOD.
ENDCLASS.
