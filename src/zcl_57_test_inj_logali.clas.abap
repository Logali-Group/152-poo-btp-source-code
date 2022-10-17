class zcl_57_test_inj_logali definition
  public
  final
  create public .

  public section.

     methods get_customer exporting es_customer type /dmo/customer.
  protected section.
  private section.
endclass.



class zcl_57_test_inj_logali implementation.

  method get_customer.

     data: ls_customer type /dmo/customer,
           lv_customer type /dmo/customer_id.

     lv_customer = '000001'.

     select single from /dmo/customer
           fields *
           where customer_id eq @lv_customer
           into @es_customer.

     test-seam select_data.
        select single from /dmo/customer
               fields *
               where customer_id  eq @lv_customer
               into @ls_customer.
     end-test-seam.

     if lv_customer eq '000015'.
        es_customer = corresponding #( ls_customer ).
     endif.

  endmethod.

endclass.
