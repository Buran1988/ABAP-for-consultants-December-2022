CLASS zclaba10_04_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA nane TYPE string.
    DATA position TYPE string.
    METHODS to_print_form RETURNING VALUE(result) Type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCLABA10_04_CLASS IMPLEMENTATION.


  METHOD to_print_form .
    DATA lv_report TYPE string.
    lv_report = |Имя работника { nane }. Должность { position }|.
  ENDMETHOD.
ENDCLASS.
