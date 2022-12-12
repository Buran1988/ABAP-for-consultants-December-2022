class ZCLABA10_02_MY_CLASS definition
  public
  final
  create public .

public section.
  DATA: name TYPE string,
        position TYPE string,
        salary TYPE i.

  METHODS to_print_form IMPORTING iv_report_type TYPE string
                        RETURNING VALUE(result) TYPE string.

protected section.
private section.
ENDCLASS.



CLASS ZCLABA10_02_MY_CLASS IMPLEMENTATION.


  METHOD to_print_form.
*
*    DATA lv_report TYPE string.
*
*    lv_report = |Имя работника { name }. Должность работника { position }. Зарплата { salary }|.
*
*    result = lv_report.

CASE iv_report_type.
  WHEN 'For Big Boss'.
    result = |Имя работника { name }. Должность работника { position }. Зарплата { salary }|.
  WHEN 'For accounts'.
    result = |----->Имя работника { name }. Должность работника { position }. Зарплата { salary }<-----|.
  WHEN OTHERS.
ENDCASE.

*    result = |Имя работника { name }. Должность работника { position }. Зарплата { salary }|.

  ENDMETHOD.
ENDCLASS.
