*"* use this source file for your ABAP unit test classes
class ltcl_business_process definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      factorial_local_test for testing raising cx_static_check.
    class-methods class_setup.
    class-methods class_teardown.

    methods setup.
    methods teardown.

    data mo_cut type ref to zcl_55_business_pr_logali.

endclass.


class ltcl_business_process implementation.

  method factorial_local_test.

    "Given
    data(lv_number_ut) = 4.
    data lv_factorial_ut type i.

    "When
    mo_cut->get_factorial( exporting iv_number    = lv_number_ut
                           importing ev_factorial = lv_factorial_ut ).

    "Then
    if cl_abap_unit_assert=>assert_equals(
      exporting
        act                  = lv_factorial_ut
        exp                  = 24 ) eq abap_true.

      cl_abap_unit_assert=>fail( 'Factorial process failed' ).

    endif.

  endmethod.

  method class_setup.

  endmethod.

  method class_teardown.

  endmethod.

  method setup.
    mo_cut = new zcl_55_business_pr_logali(  ).
  endmethod.

  method teardown.
    clear mo_cut.
  endmethod.

endclass.
