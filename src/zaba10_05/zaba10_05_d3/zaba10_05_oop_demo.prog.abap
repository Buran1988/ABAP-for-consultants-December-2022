*&---------------------------------------------------------------------*
*& Report ZABA10_05_OOP_DEMO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_OOP_DEMO.
data: go_worker type ref to zaba10_class,
go_manager type ref to zaba10_class.
create object go_worker.
go_worker->name = 'Ivan'.
go_worker->position = 'Worker'.
go_worker->salary = 1000.

write / go_worker->to_print_form( ).
* |object created { go_worker->position }|.

create object go_manager.
go_manager->name = 'Petr'.
go_manager->position = 'Manager'.
go_manager->salary = 10008.
write / go_manager->to_print_form( ).
*|object created { go_manager->position }|.
