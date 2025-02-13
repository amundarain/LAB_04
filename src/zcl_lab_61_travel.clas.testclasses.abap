*"* use this source file for your ABAP unit test classes
class ltcl_travel_test_inject definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      get_travel_test for testing raising cx_static_check.
      CLASS-METHODS: class_setup,
                     class_teardown.
      METHODS: setup,
               teardown.
      DATA mo_cut TYPE REF TO zcl_lab_61_travel.
endclass.


class ltcl_travel_test_inject implementation.

  method get_travel_test.
    me->mo_cut->get_travel( IMPORTING ev_travel = DATA(ls_travel) ).
    IF cl_abap_unit_assert=>assert_equals(
         act                  = |{ ls_travel-plane_type_id }|
         exp                  = 'A340-600'

       ) EQ abap_true.
     cl_abap_unit_assert=>fail( 'Implement your first test here' ).
    ENDIF.
  endmethod.

  method class_setup.

  endmethod.

  method class_teardown.

  endmethod.

  method setup.
   me->mo_cut = new zcl_lab_61_travel(  ).
   TEST-INJECTION select_travel.
    lv_plane_type_id           = 'A340-600'.
    lv_travel                  = 'SQ'.
    lv_connection_id           = '0001'.
    ls_travel-plane_type_id    = lv_plane_type_id.
    ls_travel-carrier_id       = lv_travel .
    ls_travel-connection_id    = lv_connection_id.
    ls_travel-currency_code    = 'US'.

   END-TEST-INJECTION.

  endmethod.

  method teardown.
   CLEAR mo_cut.
  endmethod.

endclass.
