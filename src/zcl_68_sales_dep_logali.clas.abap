class zcl_68_sales_dep_logali definition inheriting from zcl_67_observer_logali
  public
  final
  create public .

  public section.
    data state type string.
    methods: on_modified_state redefinition.
  protected section.
  private section.
endclass.



class zcl_68_sales_dep_logali implementation.
  method on_modified_state.
    me->state = ev_new_state.
  endmethod.

endclass.
