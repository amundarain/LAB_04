CLASS zcl_lab__60__test_calc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.
  "! @testing zcl_lab_59_calculator
   METHODS sum_up_testing FOR TESTING. "UTM
  PROTECTED SECTION.
  PRIVATE SECTION.
   DATA mo_cut TYPE REF TO zcl_lab_59_calculator.
   METHODS setup.
   METHODS teardown.
ENDCLASS.



CLASS zcl_lab__60__test_calc IMPLEMENTATION.

 METHOD sum_up_testing.
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
     cl_abap_unit_assert=>assert_equals(
       EXPORTING
         act                  = result
         exp                  = 15

     ).

  ENDMETHOD.

  METHOD setup.
   mo_cut = new zcl_lab_59_calculator(  ).
  ENDMETHOD.

  METHOD teardown.
   clear mo_cut.
  ENDMETHOD.
ENDCLASS.
