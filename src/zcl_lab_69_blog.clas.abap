CLASS zcl_lab_69_blog DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS set_blog IMPORTING iv_blog TYPE STRING.
   METHODS get_blog RETURNING VALUE(rv_blog) TYPE STRING.

   EVENTS modified_blog EXPORTING VALUE(ev_event_new_blog) TYPE STRING.

  PROTECTED SECTION.
  PRIVATE SECTION.
   DATA current_blog TYPE STRING.
ENDCLASS.



CLASS zcl_lab_69_blog IMPLEMENTATION.
  METHOD get_blog.
   rv_blog = me->current_blog.
  ENDMETHOD.

  METHOD set_blog.
      me->current_blog = iv_blog.
   RAISE EVENT modified_blog EXPORTING ev_event_new_blog = me->current_blog.
  ENDMETHOD.

ENDCLASS.
