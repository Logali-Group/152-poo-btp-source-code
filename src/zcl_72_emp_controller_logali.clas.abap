class zcl_72_emp_controller_logali definition
  public
  final
  create public .

  public section.

    methods set_model importing io_model type ref to zcl_70_emp_model_logali.
    methods get_model returning value(ro_model) type ref to zcl_70_emp_model_logali.

    methods set_view importing io_view type ref to zcl_71_emp_view_logali.
    methods get_view returning value(ro_view) type ref to zcl_71_emp_view_logali.

  protected section.
  private section.
     data: model type ref to zcl_70_emp_model_logali,
           view  type ref to zcl_71_emp_view_logali.
endclass.



class zcl_72_emp_controller_logali implementation.
  method get_model.
    ro_model = me->model.
  endmethod.

  method get_view.
     ro_view = me->view.
  endmethod.

  method set_model.
    me->model = io_model.
  endmethod.

  method set_view.
     me->view = io_view.
  endmethod.

endclass.
