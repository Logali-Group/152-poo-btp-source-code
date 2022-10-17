*"* use this source file for your ABAP unit test classes
class ltcl_test_inj definition final for testing
  duration short
  risk level harmless.

  public section.

    interfaces if_a4c_bc_handler partially implemented.

  private section.

    methods:
      get_customer_test for testing raising cx_static_check.

    class-methods class_setup.
    class-methods class_teardown.

    methods setup.
    methods teardown.

    data mo_cut type ref to zcl_57_test_inj_logali.

endclass.


class ltcl_test_inj implementation.

  method get_customer_test.

    me->mo_cut->get_customer( importing es_customer = data(ls_customer) ).

    if cl_abap_unit_assert=>assert_equals(
      exporting act = |{ ls_customer-customer_id }-{ ls_customer-country_code }|
                exp = '000015-US' ) eq abap_true.
      cl_abap_unit_assert=>fail( 'Get Customer process failed---zcl_57_test_inj_logali->get_customer' ).
    endif.
  endmethod.

  method class_setup.

  endmethod.

  method class_teardown.

  endmethod.

  method setup.
    me->mo_cut = new zcl_57_test_inj_logali(  ).
    test-injection select_data.
      lv_customer = '000015'.
      ls_customer-customer_id = lv_customer.
      ls_customer-country_code = 'US'.
      ls_customer-city = 'New York'.
    end-test-injection.
  endmethod.

  method teardown.
    clear me->mo_cut.
  endmethod.


  method if_a4c_bc_handler~add_to_transport_request.

  endmethod.

endclass.
