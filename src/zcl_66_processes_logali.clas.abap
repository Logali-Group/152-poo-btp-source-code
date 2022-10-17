class zcl_66_processes_logali definition
  public
  final
  create public .

  public section.
     methods set_state importing iv_state type string.
     methods get_state returning value(rv_state) type string.

     events modified_state exporting value(ev_new_state) type string.

  protected section.
  private section.
    data current_state type string.
endclass.



class zcl_66_processes_logali implementation.

  method set_state.
    me->current_state = iv_state.
    raise event modified_state exporting ev_new_state = me->current_state.
  endmethod.

  method get_state.
    rv_state = me->current_state.
  endmethod.

endclass.
