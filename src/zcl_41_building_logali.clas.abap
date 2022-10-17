class zcl_41_building_logali definition
  public
  final
  create public .

  public section.

    events blocked_entrance exporting value(ev_entry) type string.

    methods close_entry.

    data entry type string.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_41_BUILDING_LOGALI IMPLEMENTATION.


  method close_entry.
    raise event blocked_entrance exporting ev_entry = me->entry.
  endmethod.
ENDCLASS.
