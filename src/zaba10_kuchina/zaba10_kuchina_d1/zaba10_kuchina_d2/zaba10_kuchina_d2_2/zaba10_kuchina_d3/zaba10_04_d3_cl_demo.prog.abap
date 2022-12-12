*&---------------------------------------------------------------------*
*& Report ZABA10_04_D3_CL_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_D3_CL_DEMO.
DATA: go_worker TYPE REF TO Zclaba10_04_class,
    go_manager TYPE REF TO Zclaba10_04_class.

 CREATE OBJECT go_worker.
go_worker->nane = 'Иван'.

go_worker->position = 'аналитик'.

CREATE OBJECT go_manager.
go_manager->nane = 'Дима'.

go_manager->position = 'манагер'.

Write |Создан объект должности:{ go_manager->position } |.
