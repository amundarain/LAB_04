CLASS zcl_lab_75_controller DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS set_model IMPORTING io_model TYPE REF TO zcl_lab_73_model.
   METHODS get_model RETURNING VALUE(rv_model) TYPE REF TO zcl_lab_73_model.
   METHODS set_view IMPORTING io_view   TYPE REF TO zcl_lab_74_view.
   METHODS get_view RETURNING VALUE(rv_view)   TYPE REF TO zcl_lab_74_view.
  PROTECTED SECTION.
  PRIVATE SECTION.
   DATA MODEL TYPE REF TO zcl_lab_73_model.
   DATA VIEW TYPE REF TO zcl_lab_74_view.
ENDCLASS.



CLASS zcl_lab_75_controller IMPLEMENTATION.
  METHOD get_model.
   rv_model = me->model.
  ENDMETHOD.

  METHOD get_view.
   rv_view = me->view.
  ENDMETHOD.

  METHOD set_model.
   me->model = io_model .
  ENDMETHOD.

  METHOD set_view.
   me->view = io_view.
  ENDMETHOD.

ENDCLASS.
