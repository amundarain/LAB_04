CLASS zcl_lab_59_calculator DEFINITION
  PUBLIC
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS sum_up IMPORTING  iv_sum1  TYPE I
                             iv_sum2  TYPE I
                  RETURNING VALUE(rv_suma) TYPE I.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_59_calculator IMPLEMENTATION.
  METHOD sum_up.
   rv_suma = iv_sum1 + iv_sum2.
  ENDMETHOD.

ENDCLASS.
