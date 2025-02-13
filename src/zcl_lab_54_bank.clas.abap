CLASS zcl_lab_54_bank DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS transfer IMPORTING iv_iban TYPE STRING
                                     RAISING
                                     RESUMABLE(zcx_lab_55_auth_iban).
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_54_bank IMPLEMENTATION.
  METHOD transfer.
   IF iv_iban eq 'ES95 4329 8765 4321'.
    RAISE RESUMABLE EXCEPTION TYPE zcx_lab_55_auth_iban
    EXPORTING textid = zcx_lab_55_auth_iban=>no_auth_iban .
   ENDIF.
  ENDMETHOD.

ENDCLASS.
