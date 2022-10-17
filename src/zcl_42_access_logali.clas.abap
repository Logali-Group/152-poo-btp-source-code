class zcl_42_access_logali definition
  public
  final
  create public .

  public section.

    methods constructor.

    methods on_blocked_entrance for event blocked_entrance
                                of zcl_41_building_logali
                                importing ev_entry.

    class-data table_blocked_entries type table of string.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_42_ACCESS_LOGALI IMPLEMENTATION.


  method on_blocked_entrance.
     append |{ ev_entry } entry blocked| to table_blocked_entries.
  endmethod.


  method constructor.
    set handler me->on_blocked_entrance for all instances.
  endmethod.
ENDCLASS.
