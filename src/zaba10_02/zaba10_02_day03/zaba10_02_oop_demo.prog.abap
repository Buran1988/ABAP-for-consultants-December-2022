*&---------------------------------------------------------------------*
*& Report ZABA10_02_OOP_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_02_OOP_DEMO.

DATA: go_sv_worker TYPE REF TO ZCLABA10_02_MY_CLASS,
      go_sv_manager TYPE REF TO ZCLABA10_02_MY_CLASS.

CREATE OBJECT go_sv_worker.

go_sv_worker->name = 'Ваня'.
go_sv_worker->position = 'Инженер'.
go_sv_worker->salary = 100000.

WRITE / go_sv_worker->to_print_form( EXPORTING iv_report_type = 'For Big Boss' ) .

CREATE OBJECT go_sv_manager.

go_sv_manager->name = 'Петя'.
go_sv_manager->position = 'Начальник'.
go_sv_manager->salary = 10000000.

*WRITE / |Создан объект должности { go_sv_manager->position }|.
WRITE / go_sv_manager->to_print_form( EXPORTING iv_report_type = 'For accounts' ).
