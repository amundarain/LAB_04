CLASS zcl_lab_70_observer DEFINITION ABSTRACT
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS on_modified_blog ABSTRACT
           FOR EVENT modified_blog OF zcl_lab_69_blog
           IMPORTING ev_event_new_blog .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_70_observer IMPLEMENTATION.
ENDCLASS.
