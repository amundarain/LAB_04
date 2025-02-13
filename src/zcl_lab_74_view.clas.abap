CLASS zcl_lab_74_view DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS display_flight IMPORTING iv_carried_id        TYPE /dmo/carrier_id
                                    iv_agency_name       TYPE /dmo/agency_name
                                    io_out               TYPE  REF TO if_oo_adt_classrun_out.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_74_view IMPLEMENTATION.
  METHOD display_flight.
   io_out->write( |{ iv_carried_id } -- { iv_agency_name }| ).
  ENDMETHOD.

ENDCLASS.
