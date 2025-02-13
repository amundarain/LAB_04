CLASS zcl_lab_58_date_analyzer DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS ANALYZE_DATE   IMPORTING iv_date_previous   TYPE REF TO CX_ROOT OPTIONAL RAISING zcx_lab_56_no_date.

   METHODS ANALYZE_FORMAT IMPORTING iv_format_previous TYPE REF TO CX_ROOT OPTIONAL  RAISING zcx_lab_57_format_unknown.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_58_date_analyzer IMPLEMENTATION.
  METHOD analyze_date.

   RAISE EXCEPTION TYPE  zcx_lab_56_no_date
     EXPORTING previous = iv_date_previous.


  ENDMETHOD.

  METHOD analyze_format.

     RAISE EXCEPTION TYPE  zcx_lab_57_format_unknown
     EXPORTING previous = iv_format_previous.

  ENDMETHOD.

ENDCLASS.
