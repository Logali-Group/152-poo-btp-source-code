class zcl_56_test_logali definition
  public
  final
  create public
  for testing
  duration short "medium long
  risk level harmless. "dangerous critical

  public section.
      "! @testing zcl_55_business_pr_logali
      methods factorial_test for testing. "UTM - Unit Test Method

  protected section.
  private section.

     class-methods class_setup.
     class-methods class_teardown.

     methods setup.
     methods teardown.

     data mo_cut type ref to zcl_55_business_pr_logali. "CUT - Class Under Test

endclass.



class zcl_56_test_logali implementation.

  method setup.
     mo_cut = new zcl_55_business_pr_logali(  ).
  endmethod.

  method factorial_test.

       "Given
       data(lv_number_ut) = 4.
       data lv_factorial_ut type i.

       "When
       mo_cut->get_factorial( exporting iv_number    = lv_number_ut
                              importing ev_factorial = lv_factorial_ut ).


       "Then
       cl_abap_unit_assert=>assert_equals(
         exporting
           act                  = lv_factorial_ut
           exp                  = 24 ).


  endmethod.


  method teardown.
    clear mo_cut.
  endmethod.

  method class_setup.

  endmethod.

  method class_teardown.

  endmethod.

endclass.
