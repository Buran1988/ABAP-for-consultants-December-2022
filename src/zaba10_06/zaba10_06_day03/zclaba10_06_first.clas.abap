CLASS zclaba10_06_first DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: name TYPE string.
    DATA: position TYPE string.
    DATA: salary TYPE i.

    METHODS to_print_form IMPORTING iv_report_type TYPE string
                          RETURNING VALUE(result)  TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCLABA10_06_FIRST IMPLEMENTATION.


  METHOD to_print_form.

    DATA lv_report TYPE string.

    CASE iv_report_type.
      WHEN 'For big boss'.
        lv_report = |----> Имя работника { name }. | .
      WHEN OTHERS.
    ENDCASE.

    lv_report = |Имя работника { name }. Должность работника { position }. Зарплата работника { salary } |.

    result = lv_report.

  ENDMETHOD.
ENDCLASS.
