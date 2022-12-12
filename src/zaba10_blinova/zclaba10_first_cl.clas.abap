class ZCLABA10_FIRST_CL definition
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: name TYPE string.
    DATA: position TYPE string.
    DATA: salary TYPE i.

    METHODS to_print_form IMPORTING iv_report_type type string
                           RETURNING VALUE(result) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCLABA10_FIRST_CL IMPLEMENTATION.


  METHOD to_print_form.

    DATA lv_report TYPE string.

    CASE iv_report_type.
      WHEN 'For big boss'.
        lv_report = |------> Имя работника { name }. Должность работника { position }. Зарплата работника { salary }. <-------|.
      WHEN 'For accounts'.
        lv_report = |Имя работника { name }. Должность работника { position }. Зарплата работника { salary }. |.
      WHEN OTHERS.
    ENDCASE.



    result = lv_report.

  ENDMETHOD.
ENDCLASS.
