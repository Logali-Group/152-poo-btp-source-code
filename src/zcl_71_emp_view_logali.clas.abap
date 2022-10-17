class zcl_71_emp_view_logali definition
  public
  final
  create public .

  public section.

     methods display_employee importing iv_name type string
                                        iv_role type string
                                        io_out  type ref to if_oo_adt_classrun_out.
  protected section.
  private section.
endclass.



class zcl_71_emp_view_logali implementation.
  method display_employee.
    io_out->write( |{ iv_name }---{ iv_role }| ).
  endmethod.

endclass.
