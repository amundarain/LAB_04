CLASS zcl_lab_04_ejec_t100598 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_04_ejec_t100598 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*   DATA(lo_check_user) = new zcl_lab_53_check_user(  ).
*   DATA: ln_result TYPE I,
*         ln_num1   TYPE I VALUE 10,
*         ln_num2   TYPE I.
*   TRY.
**    "lo_check_user->check_user( iv_user_name = sy-uname ).
*   ln_result = ln_num1 / ln_num2.
*
*   CATCH zcx_lab_52_operations INTO DATA(lx_operations).
*    out->write( lx_operations->get_text(  ) ).
*   CATCH cx_sy_zerodivide INTO DATA(lx_zerodivide).
*    out->write( lx_zerodivide->get_text(  ) ).
*   ln_num2 = 2.
*    RETRY.
*   ENDTRY.

* DATA(lo_check_resumable) = new zcl_lab_54_bank(  ).
*
* TRY.
*  lo_check_resumable->transfer( 'ES95 4329 8765 4321' ).
*  out->write( 'CONTINUA CON LA LOGICA' ).
*  CATCH BEFORE UNWIND zcx_lab_55_auth_iban INTO DATA(lx_resumable).
*   out->write( lx_resumable->get_text(  ) ).
*   IF lx_resumable->is_resumable EQ abap_true.
*    resume.
*   ENDIF.
* ENDTRY.


* DATA(lo_execution) = NEW zcl_lab_58_date_analyzer(  ).
*  TRY.
*
*   TRY.
*     lo_execution->analyze_date(  ).
*   CATCH  zcx_lab_56_no_date INTO DATA(lx_date).
*    lo_execution->analyze_format( iv_format_previous = lx_date ).
*   ENDTRY.
*       CATCH  zcx_lab_57_format_unknown INTO DATA(lx_format).
*        out->write( lx_format->get_text(  ) ).
*        out->write( lx_format->previous->get_text(  ) ).
*  ENDTRY.
*
*  DATA(lo_travel) = new zcl_lab_61_travel(  ).
*  lo_travel->get_travel( IMPORTING  ev_travel = DATA(ls_travel) ).
*  out->write( ls_travel-plane_type_id  ).


  "1. SINGLENTON
*  DATA go_singleton_1 TYPE REF TO zcl_lab_62_context.
*  DATA go_singleton_2 TYPE REF TO zcl_lab_62_context.
*
*  go_singleton_1 = zcl_lab_62_context=>get_instance(  ).
*  wait up to 2 seconds.
*  go_singleton_2 = zcl_lab_62_context=>get_instance(  ).
*
*  out->write( |go_singleton_1= { go_singleton_1->mv_time } - go_singleton_2= { go_singleton_2->mv_time }| ).

  "1. SINGLENTON
*  DATA go_shape       TYPE REF TO zif_lab_06_file.
*  DATA go_factory     TYPE REF TO zcl_lab_65_factory.
*
*  go_factory = new #(  ).
*  go_shape = go_factory->create_file( 'Supply File' ).
*
*
*  out->write( |go_shape = { go_shape->get_file_type(  ) }| ).

   "Patrón de diseño Observer
*   DATA(go_process) = NEW zcl_lab_69_blog(  ).
*   DATA(go_admin)   = NEW zcl_lab_71_administrator(  ).
*   DATA(go_users)   = NEW zcl_lab_72_users(  ).
*
*   SET HANDLER go_admin->on_modified_blog FOR go_process.
*   SET HANDLER go_users->on_modified_blog FOR go_process.
*
*   go_process->set_blog( 'MESSAGES 01' ).
*   out->write( go_admin->state  ).
*   out->write( go_users->state  ).

   "Patrón de diseño MODEL-VIEW-CONTROLLER
   DATA lv_carried_id TYPE /dmo/carrier_id VALUE 'SQ'.
   DATA(go_model) = new zcl_lab_73_model( lv_carried_id ).
   DATA(go_view) = new zcl_lab_74_view(  ).
   DATA(go_controller) = new zcl_lab_75_controller(  ).

   go_controller->set_model( go_model ).
   go_controller->set_view( go_view ).

   go_controller->get_view(  )->display_flight(
     iv_carried_id  = 'SQ'
     iv_agency_name = '1'
     io_out         = out
   ).





  ENDMETHOD.

ENDCLASS.
