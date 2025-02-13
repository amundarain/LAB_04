CLASS zcl_lab_65_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS CREATE_FILE IMPORTING iv_create_file TYPE STRING
                                 RETURNING VALUE(ro_create_file) Type   REF TO zif_lab_06_file.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_65_factory IMPLEMENTATION.
  METHOD create_file.
   CASE iv_create_file.
   WHEN 'Work File'.
    ro_create_file = new zcl_lab_63_work_file(  ).
   WHEN 'Supply File'.
    ro_create_file = new zcl_lab_64_supply_file(  ).

   ENDCASE.
  ENDMETHOD.

ENDCLASS.
