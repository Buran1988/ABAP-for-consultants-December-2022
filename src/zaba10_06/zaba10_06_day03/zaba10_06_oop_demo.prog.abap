*&---------------------------------------------------------------------*
*& Report ZABA10_06_OOP_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_OOP_DEMO.

DATA: go_worker TYPE REF TO zclaba10_06_first,
      go_manager TYPE REF TO zclaba10_06_first.

CREATE OBJECT go_worker.

go_worker->name = 'Ваня'.
go_worker->position = 'Инженер'.
go_worker->salary = '10000'.

*WRITE / |Создан объект должности { go_worker->position } |.
WRITE / go_worker->to_print_form( EXPORTING iv_report_type = 'For big boss' ).

CREATE OBJECT go_manager.

go_manager->name = 'Cаня'.
go_manager->position = 'Начальник'.
go_manager->salary = '100000'.

*WRITE / |Создан объект должности { go_manager->position } |.
*WRITE / go_manager->to_print_form( ).
