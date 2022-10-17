class zcl_35_timer_logali definition
  public
  final
  create public .

  public section.

    events time_out exporting value(ev_hour) type zsyst_uzeit.

    methods constructor.

    methods increment_counter importing iv_counter type i.
    methods check_limit.

    data user type string.

  protected section.
  private section.
    data counter type i.
ENDCLASS.



CLASS ZCL_35_TIMER_LOGALI IMPLEMENTATION.


  method check_limit.
    if me->counter ge 5.
      raise event time_out exporting ev_hour = cl_abap_context_info=>get_system_time(  ).
    endif.
  endmethod.


  method increment_counter.
    me->counter += iv_counter.
    me->check_limit(  ).
  endmethod.


  method constructor.
    me->user = sy-uname.
  endmethod.
ENDCLASS.
