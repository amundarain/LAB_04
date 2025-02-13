CLASS zcl_lab_53_check_user DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS check_user IMPORTING iv_user_name TYPE syuname
                                             RAISING zcx_lab_52_operations.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_53_check_user IMPLEMENTATION.
  METHOD check_user.

  IF iv_user_name = 'CB9980007490'.
   RAISE EXCEPTION TYPE  zcx_lab_52_operations
     EXPORTING
       textid   = zcx_lab_52_operations=>no_access
        msgv1    = |{ sy-uname }|.
  ELSE.
   RAISE EXCEPTION TYPE  zcx_lab_52_operations
     EXPORTING
       textid   = zcx_lab_52_operations=>no_execute
        msgv1    = |{ sy-uname }|.
  ENDIF.

  ENDMETHOD.

ENDCLASS.
