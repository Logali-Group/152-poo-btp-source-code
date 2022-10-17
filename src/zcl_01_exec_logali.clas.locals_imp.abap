*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
*class cl_building definition.
*
*  public section.
*
*    events blocked_entrance exporting value(ev_entry) type string.
*
*    methods close_entry.
*
*    data entry type string.
*
*endclass.
*
*class cl_building implementation.
*
*  method close_entry.
*    raise event blocked_entrance exporting ev_entry = me->entry.
**    clear me->entry.
*  endmethod.
*
*endclass.
*
*class cl_access definition.
*
*  public section.
*
*  methods constructor.
*    methods on_blocked_entrance for event blocked_entrance of cl_building
*                                importing ev_entry.
*
*    class-data table_blocked_entries type table of string.
*endclass.
*
*class cl_access implementation.
*
*  method on_blocked_entrance.
*     append |{ ev_entry } entry blocked| to table_blocked_entries.
*  endmethod.
*
*  method constructor.
*     set handler me->on_blocked_entrance for all instances.
*  endmethod.
*
*endclass.







*class cl_mail definition.
*
*  public section.
*
*    class-events new_mail exporting value(subject) type string.
*
*    class-methods new_email.
*
*endclass.
*
*class cl_mail implementation.
*
*  method new_email.
*    raise event new_mail exporting subject = |ABAP programmer job offer: { cl_abap_context_info=>get_system_time(  ) }|.
*  endmethod.
*
*endclass.
*
*class cl_smtp_logali definition.
*
*  public section.
*
*    class-methods on_new_mail for event new_mail of cl_mail
*      importing subject.
*
*    class-data inbox type table of string.
*endclass.
*
*class cl_smtp_logali implementation.
*
*  method on_new_mail.
*     append subject to inbox.
*  endmethod.
*
*endclass.

*class lcl_timer definition.
*
*  public section.
*
*    events time_out exporting value(hour) type i.
*
*    methods: increment_counter importing iv_counter type i, "syst_uzeit
*      check_limit.
*
*  private section.
*    data counter type i.
*endclass.
*
*class lcl_timer implementation.
*
*  method check_limit.
*    if me->counter ge 5.
*      get time stamp field data(lv_timestamp).
*      convert time stamp lv_timestamp time zone space into time data(lv_time).
*
*      data(lv_system_time) = cl_abap_context_info=>get_system_time(  ).
*      raise event time_out exporting hour = conv #( lv_system_time ).
*    endif.
*  endmethod.
*
*  method increment_counter.
*    me->counter += iv_counter.
*  endmethod.
*
*endclass.
*
*class cl_conexion definition.
*
*  public section.
*
*    methods on_time_out for event time_out of lcl_timer
*                        importing hour.
*endclass.
*
*
*class cl_conexion implementation.
*
*  method on_time_out.
*
**    write: / 'Usuario deconectado ', hora environment time format.
*
** llamar a métodos logout
*
*  endmethod.
*
*endclass.
