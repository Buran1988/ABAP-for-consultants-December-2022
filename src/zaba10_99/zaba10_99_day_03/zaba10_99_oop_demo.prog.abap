*&---------------------------------------------------------------------*
*& Report ZABA10_99_OOP_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_99_oop_demo.

DATA: go_worker TYPE REF TO zclaba10_first_class,
      go_manager TYPE REF TO zclaba10_first_class.

CREATE OBJECT go_worker.

go_worker->name = 'Ваня'.
go_worker->position = 'Инженер'.
go_worker->salary = 10000.

WRITE / go_worker->to_print_form( EXPORTING iv_report_type = 'For big boss' ).


CREATE OBJECT go_manager.

go_manager->name = 'Петя'.
go_manager->position = 'Начальник'.
go_manager->salary = 1000000.

WRITE / go_manager->to_print_form( EXPORTING iv_report_type = 'For accounts' ).
