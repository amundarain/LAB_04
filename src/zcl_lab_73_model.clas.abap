CLASS zcl_lab_73_model DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS constructor IMPORTING iv_carrier_id  TYPE  /dmo/carrier_id.
   METHODS set_flight  IMPORTING iv_carried_id  TYPE  /dmo/carrier_id.
   METHODS get_flight  EXPORTING ev_carried_id  TYPE  /dmo/carrier_id.
  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA carrier_id TYPE   /dmo/carrier_id.
  DATA agency_name TYPE  /dmo/agency_name.
ENDCLASS.



CLASS zcl_lab_73_model IMPLEMENTATION.
  METHOD constructor.
   me->carrier_id = iv_carrier_id.
  ENDMETHOD.

  METHOD get_flight.
   ev_carried_id = me->carrier_id.
  ENDMETHOD.

  METHOD set_flight.
   me->carrier_id = iv_carried_id.
  ENDMETHOD.

ENDCLASS.
