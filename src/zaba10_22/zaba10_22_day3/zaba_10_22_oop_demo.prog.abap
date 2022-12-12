*&---------------------------------------------------------------------*
*& Report ZABA_10_22_OOP_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA_10_22_OOP_DEMO.

data go_worker TYPE REF TO ZCLABA10_FIRST_CLASS_1.
data go_manager TYPE REF TO ZCLABA10_FIRST_CLASS_1.
create OBJECT go_worker.

go_worker->name = 'Олег'.
go_worker->position = 'Инженер'.
go_worker->salary = 1000.

WRITE / | Создан объект должности { go_worker->position }|.

create OBJECT go_manager.

go_manager->name = 'Дмитрий'.
go_manager->position = 'Шеф'.
go_manager->salary = 271000.

WRITE / | Создан объект должности { go_manager->position }|.
