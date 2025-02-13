CLASS zcx_lab_52_operations DEFINITION   INHERITING FROM cx_static_check
  PUBLIC


  CREATE PUBLIC .

  PUBLIC SECTION.
   CONSTANTS:
    begin of no_execute,
      msgid type symsgid value 'ZMC_T100598_LAB04',
      msgno type symsgno value '001',
      attr1 type scx_attrname value 'MV_MSGV1',
      attr2 type scx_attrname value 'MV_MSGV2',
      attr3 type scx_attrname value 'MV_MSGV3',
      attr4 type scx_attrname value 'MV_MSGV4',
    end of no_execute.

   CONSTANTS:
    begin of no_access,
      msgid type symsgid value 'ZMC_T100598_LAB04',
      msgno type symsgno value '002',
      attr1 type scx_attrname value 'MV_MSGV1',
      attr2 type scx_attrname value 'MV_MSGV2',
      attr3 type scx_attrname value 'MV_MSGV3',
      attr4 type scx_attrname value 'MV_MSGV4',
    end of no_access.

    DATA mv_msgv1 TYPE STRING.
    DATA mv_msgv2 TYPE STRING.
    DATA mv_msgv3 TYPE STRING.
    DATA mv_msgv4 TYPE STRING.


    INTERFACES if_t100_message .
    INTERFACES if_t100_dyn_msg .


    METHODS constructor
      IMPORTING
        !textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL
         msgv1 TYPE STRING   OPTIONAL
         msgv2 TYPE STRING   OPTIONAL
         msgv3 TYPE STRING   OPTIONAL
         msgv4 TYPE STRING   OPTIONAL.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcx_lab_52_operations IMPLEMENTATION.


  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    CALL METHOD super->constructor
      EXPORTING
        previous = previous.
    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.
    me->mv_msgv1 = msgv1.
    me->mv_msgv2 = msgv2.
    me->mv_msgv3 = msgv3.
    me->mv_msgv4 = msgv4.
  ENDMETHOD.


ENDCLASS.
