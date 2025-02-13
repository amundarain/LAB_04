CLASS zcl_lab_72_users DEFINITION INHERITING FROM zcl_lab_70_observer
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA state TYPE STRING.
    METHODS: on_modified_blog REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_72_users IMPLEMENTATION.
  METHOD on_modified_blog.
   me->state = ev_event_new_blog.
  ENDMETHOD.

ENDCLASS.
