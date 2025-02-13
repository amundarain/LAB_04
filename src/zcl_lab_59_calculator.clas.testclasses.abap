*"* use this source file for your ABAP unit test classes
class ltcl_59_calculator definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      local_sum_up for testing raising cx_static_check.
         DATA mo_cut TYPE REF TO zcl_lab_59_calculator.
   METHODS setup.
   METHODS teardown.
endclass.


class ltcl_59_calculator implementation.

  method local_sum_up.
   DATA sum1 TYPE I VALUE 5.
   DATA sum2 TYPE I VALUE 10.
   DATA result TYPE I.
   mo_cut->sum_up(
      EXPORTING
        iv_sum1 = sum1
        iv_sum2 = sum2
      RECEIVING
        rv_suma = result
    ).
     IF cl_abap_unit_assert=>assert_equals(
       EXPORTING
         act                  = result
         exp                  = 15

      ) eq abap_true.
    cl_abap_unit_assert=>fail( 'Implement your first test here' ).
    endif.
  endmethod.

  method setup.
   mo_cut = new zcl_lab_59_calculator(  ).
  endmethod.

  method teardown.
   clear mo_cut.
  endmethod.

endclass.
