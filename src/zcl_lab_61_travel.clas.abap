CLASS zcl_lab_61_travel DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS get_travel EXPORTING ev_travel TYPE /dmo/flight.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_61_travel IMPLEMENTATION.
  METHOD get_travel.
   DATA: ls_travel         TYPE  /dmo/flight,
         lv_travel         TYPE  /dmo/carrier_id ,
         lv_connection_id  TYPE  /dmo/connection_id ,
         lv_plane_type_id  TYPE  /dmo/plane_type_id .

   lv_travel        = 'SQ'.
   lv_connection_id = '0001'.
   lv_plane_type_id = '767-200'.

   SELECT SINGLE
   FROM  /dmo/flight
   FIELDS *
   WHERE  carrier_id    = @lv_travel
   AND    connection_id = @lv_connection_id
   AND    plane_type_id = @lv_plane_type_id
   INTO @ev_travel.

   TEST-SEAM SELECT_TRAVEL.
    SELECT SINGLE
    FROM  /dmo/flight
    FIELDS *
    WHERE  carrier_id    = @lv_travel
    AND    connection_id = @lv_connection_id
    AND    plane_type_id = @lv_plane_type_id
    INTO @ls_travel.

   END-TEST-SEAM.

   IF lv_plane_type_id  EQ 'A340-600'.
    ev_travel = CORRESPONDING #( ls_travel ).
   ENDIF.

  ENDMETHOD.

ENDCLASS.
